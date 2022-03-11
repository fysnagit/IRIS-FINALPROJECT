// C++ program for the above approach
#include <iostream>
#include <filesystem>
#include <opencv2/opencv.hpp>
#include "ros/ros.h"
#include"finalpro/data.h"

using namespace cv;
using namespace std;

//Reading file path


class Kamera
{
private:
    Mat foto,foto_proses;
    vector<vector<Point>>kontur;
    vector<Vec4i>hierarki;
    Point2f titik_tengah;
    float radius;
public:
    Kamera(String lokasi){
        this->foto = imread(lokasi,IMREAD_COLOR);
        resize(foto,foto,Size(1200,800));
    }
    
    void detect_ball(){
        //Convert ball color
        cvtColor(this->foto,this->foto_proses,COLOR_BGR2HSV);
        inRange(this->foto_proses,Scalar(0,31,0),Scalar(28,255,255),this->foto_proses);
        findContours(this->foto_proses,this->kontur,this->hierarki,RETR_EXTERNAL,CHAIN_APPROX_SIMPLE);
        for (int i = 0; i < kontur.size(); i++)
        {
            vector<Point>kontur_baru;
            kontur_baru = kontur[i];
            minEnclosingCircle(kontur_baru,titik_tengah,radius);
            circle(foto,titik_tengah,radius,Scalar(0,0,255),3);
        }
        imshow("BOLA",foto);

        waitKey(1);
    }

    void getCenter(int *xnya,int *ynya){
        this->detect_ball();
        *xnya = (int)this->titik_tengah.y;
        *ynya = (int)this->titik_tengah.x;
    }

};

//class Sender
class PakPos
{
private:
    ros::NodeHandle n;
    ros::Publisher cent_sender = n.advertise<finalpro::data>("center",1000);
    finalpro::data data_center;

public:
    void send_center(int datax,int datay){
        this->data_center.centerx = datax;
        this->data_center.centery = datay;
        cent_sender.publish(this->data_center);
    }
};



int main(int argc, char** argv)
{
    int x,y;
    ros::init(argc,argv,"kamera");
    PakPos kurir;
    ros::Rate loop_rate(10);

    while (ros::ok())
    {
        Kamera cam1("/home/fysna/SampleImage/1.jpeg");
        cam1.getCenter(&x,&y);
        kurir.send_center(x,y);
        
        ros::spinOnce();
        loop_rate.sleep();
    }
    
    

    return 0;
}