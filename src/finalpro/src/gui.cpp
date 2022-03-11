#include<iostream>
#include<opencv2/opencv.hpp>
#include"ros/ros.h"
#include"finalpro/messagetomotor.h"
using namespace std;
using namespace cv;

struct mesin
{
    int posx;
    int posy;
};

struct bola
{
    int centerx;
    int centery;
};



int main(int argc, char **argv)
{
    struct mesin motor;
    struct bola ball;
    ros::init(argc,argv,"motor");

    Mat lapangan;
    while (true)
    {
        lapangan = imread("/home/fysna/SampleImage/lapangan.png");

        //FOR BALL OBJECT
        circle(lapangan,Point2d(766,340),10,Scalar(255,0,0),-1);
        //FOR MOTOR OBJECT
        circle(lapangan,Point2d(x,0),20,Scalar(0,0,255),-1);
        imshow("GUI",lapangan);
        x+=1;
        char key = (char)waitKey(1);
        if (key == 'q')
        {
            break;
        }   
    }
    destroyAllWindows();
    return 0;
}
