#include<iostream>
#include"ros/ros.h"
#include"finalpro/posmesin.h"
#include"finalpro/messagetomotor.h"

using namespace std;

//SETUP AWAL
int BATAS_LEBAR = 1200;
int BATAS_TINGGI = 800;
int POS_AWAL_X_MESIN = 0;
int POS_AWAL_Y_MESIN = 0;
int POS_AWAL_SUDUT_MESIN = 0;



class Mesin{
    private:
    int pos_x_sekarang = POS_AWAL_X_MESIN;
    int pos_y_sekarang = POS_AWAL_Y_MESIN;
    int sudut_sekarang = POS_AWAL_SUDUT_MESIN;

    //KONTROL KECEPATAN
    int kec_x =0;
    int kec_y =0;
    int kec_sudut = 0;

    //KONTROL TARGET
    int target_x=0;
    int target_y = 0;
    int target_sudut = 0;

    public:
    void getDataMesin(int *posx,int *posy, int *sudut){
        *posx = this->pos_x_sekarang;
        *posy = this->pos_y_sekarang;
        *sudut = this->sudut_sekarang;
    }

    void sendDataProperties(int bolax, int bolay, int trgtsudut, int kecx, int kecy, int kecsudut){
        this->target_x = bolax;
        this->target_y = bolay;
        this->target_sudut =trgtsudut;
        this->kec_x =kecx;
        this->kec_y =kecy;
        this->kec_sudut=kecsudut;

    }

    void printInformation(){
        printf("       |\t X \t Y \t SUDUT\n");
        printf("NOW    |\t %d \t %d \t %d\n",this->pos_x_sekarang,this->pos_y_sekarang,this->sudut_sekarang);
        printf("TARGET |\t %d \t %d \t %d\n",this->target_x,this->target_y,this->target_sudut);
        printf("SPEED  |\t %d \t %d \t %d\n",this->kec_x,this->kec_y,this->kec_sudut);
        printf("\n");
    }

    void bataspergerakan(){
        if (this->pos_x_sekarang<0)
        {
            this->pos_x_sekarang=0;
        }
        if (this->pos_x_sekarang>1200)
        {
            this->pos_x_sekarang=1200;
        }
        if (this->pos_y_sekarang<-800)
        {
            this->pos_y_sekarang=-800;
        }
        if (this->pos_x_sekarang>0)
        {
            this->pos_x_sekarang=0;
        }
    }

    void pergerakan_sudut(){
            if (this->sudut_sekarang > this->target_sudut)
            {
                this->sudut_sekarang-=this->kec_sudut;
            }
            if (this->sudut_sekarang < this->target_sudut)
            {
                this->sudut_sekarang+=this->kec_sudut;
            }
    }

    void pergerakan_x_y(){
        if (this->pos_x_sekarang > this->target_x)
        {
            this->pos_x_sekarang -= this->kec_x;
        }
        if (this->pos_x_sekarang < this->target_x)
        {
            this->pos_x_sekarang+=this->kec_x;
        }
        if (this->pos_y_sekarang > this->target_y)
        {
            this->pos_y_sekarang-=this->kec_y;
        }
        if (this->pos_y_sekarang < this->target_y)
        {
            this->pos_y_sekarang+=this->kec_y;
        }
    }

    void pergerakan_mesin(){
        // this->bataspergerakan();
        this->pergerakan_sudut();
        this->pergerakan_x_y();
    }

};
Mesin motor;




//CallbackArea
void cb_motor(const finalpro::messagetomotor::ConstPtr& datamotor){
    motor.sendDataProperties(datamotor->centx,datamotor->centy,datamotor->sudut,datamotor->kec_x,datamotor->kec_y,datamotor->kec_sudut);
    motor.printInformation();
}

class PakPos
{
private:
    ros::NodeHandle n;
    ros::Publisher pos_sender = n.advertise<finalpro::posmesin>("pos_mesin",1000);
    finalpro::posmesin message_mesin;

public:
    void send_posisi_mesin(int posisix,int posisiy,int posisisudut){
        this-> message_mesin.posx = posisix;
        this->message_mesin.posy = posisiy;
        this->message_mesin.sudut = posisisudut;
        pos_sender.publish(message_mesin);
    }
    ros::Subscriber penerima_data_pc = n.subscribe("data_motor",1000,cb_motor);
};





int main(int argc, char **argv)
{
    ros::init(argc,argv,"motor");
    PakPos kurir;
    ros::Rate loop_rate(10);
    int posx,posy,sudut;
    kurir.penerima_data_pc;

    while (ros::ok())
    {
        motor.pergerakan_mesin();
        motor.getDataMesin(&posx,&posy,&sudut);
        kurir.send_posisi_mesin(posx,posy,sudut);
        ros::spinOnce();
        loop_rate.sleep();
    }
    ros::spin();

    return 0;
}
