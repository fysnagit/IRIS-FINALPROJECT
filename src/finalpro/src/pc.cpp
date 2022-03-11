#include<iostream>
#include"ros/ros.h"
#include"finalpro/data.h"
#include"finalpro/posmesin.h"
#include"finalpro/messagetomotor.h"

using namespace std;


//setting for MESIN

int KEC_MESIN_X =1;
int KEC_MESIN_Y =1;
int KEC_SUDUT =1;

class PCEngine{
  private:
    int bola_x=0,bola_y=0,pos_x=0,pos_y=0,sudut=0;
    int speed_x=KEC_MESIN_X,speed_y =KEC_MESIN_Y,speed_sudut=KEC_SUDUT;
  public:
    void setting_ball_properties(int bolax,int bolay){
        this->bola_x=bolax;
        this->bola_y = bolay;
    }

    void setting_mesin_properties(int posx,int posy){
        this->pos_x=posx;
        this->pos_y =posy;
    }

    void Calcsudut(){
        float perhitungan = atan2(this->bola_x-this->pos_x,this->bola_y-this->pos_y)*180/3.141;
        this->sudut = (int)perhitungan*-1;
    }

    void getSudut(){
        this->Calcsudut();
    }
    void returnAllProperties(int *bolx,int *boly, int *sudut, int *kecx, int *kecy, int *kecsudut){
        this->Calcsudut();
        *bolx = this->bola_x;
        *boly = this->bola_y;
        *sudut = this->sudut;
        *kecx = this->speed_x;
        *kecy = this->speed_y;
        *kecsudut = this->speed_sudut;
    }
  
};


PCEngine mesin;

//CALLBACK AREA
void cb_kamera(const finalpro::data::ConstPtr& datacam){
    mesin.setting_ball_properties(datacam->centerx,datacam->centery);
    mesin.getSudut();
}

void cb_mesin(const finalpro::posmesin::ConstPtr& datamesin){
    // ROS_INFO("[MOTOR] %d %d ",datamesin->posx,datamesin->posy);
    mesin.setting_mesin_properties(datamesin->posx,datamesin->posy);
    mesin.getSudut();
}


//Class Area
class AdminPos{
    private:
        ros::NodeHandle n;
        ros::Publisher pengirim_kemotor = n.advertise<finalpro::messagetomotor>("data_motor",1000);
        finalpro::messagetomotor data_motor;

    public:
            ros::Subscriber penerima_kamera = this->n.subscribe("center",1000,cb_kamera);
            ros::Subscriber penerima_mesin = this->n.subscribe("pos_mesin",1000,cb_mesin);
            
            void send_data_motor(int centerx,int centery,int sudutnya,int kecex,int kecey,int kecesudut){
                this->data_motor.centx=centerx;
                this->data_motor.centy=centery;
                this->data_motor.sudut=sudutnya;
                this->data_motor.kec_x=kecex;
                this->data_motor.kec_y=kecey;
                this->data_motor.kec_sudut=kecesudut;

                pengirim_kemotor.publish(this->data_motor);
            }
};



int main(int argc, char **argv)
{
    ros::init(argc,argv,"PC");
    AdminPos rizal;
    int bolx,boly,sudut,kecx,kecy,kecsudut;
    ros::Rate loop_rate(10);
    // mesin.returnAllProperties(&bolx,&boly,&sudut,&kecx,&kecy,&kecsudut);
    rizal.penerima_kamera;
    rizal.penerima_mesin;
    while (ros::ok())
    {
        mesin.returnAllProperties(&bolx,&boly,&sudut,&kecx,&kecy,&kecsudut);
        rizal.send_data_motor(bolx,boly,sudut,kecx,kecy,kecsudut);
        ros::spinOnce();
        loop_rate.sleep();
    }
    
    ros::spin();
    
    return 0;
}

