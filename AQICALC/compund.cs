using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AQICALC
{
    public class compund
    {
        //o3 pm2.5 co nh3 pm10
        float vo3=0, vpm2=0, vpm1=0, vnh3=0, vco=0;
        public float O3(float val)
        {
            if (val <= 50)
                this.vo3 = val;
            else if (val > 50 && val <= 100)
                this.vo3 = 50 + (val - 50);
            else if (val > 100 && val <= 168)
                this.vo3 = 100 + (val - 100) * 100 / 68;
            else if (val > 168 && val <= 208)
                this.vo3 = 200 +(val-168)*100/40;
            else if (val > 208 && val <= 748)
                this.vo3 = 300 + (val - 208) * 100 / 539;
            else
                this.vo3 = 400 + (val - 400) * 100 / 539;
            return this.vo3;
        }

        public float Pm2_5(float val)
        {
            if (val <= 30)
                this.vpm2 = val *(50/30);
            else if (val > 30 && val <= 60)
                this.vpm2 = 50 + (val - 30) * (50 / 30);
            else if (val > 60 && val <= 90)
                this.vpm2 = 100 + (val - 100) * (100 / 30);
            else if (val > 90 && val <= 120)
                this.vpm2 = 200 + (val - 168) * (100 / 30);
            else if (val > 120 && val <= 250)
                this.vpm2 = 300 + (val - 208) * (100 / 130);
            else
                this.vpm2 = 400 + (val - 400) * (100 / 130);
            return this.vpm2;
        }

        public float Co(float val)
        {
            if (val <= 1)
                this.vco = val * 50;
            else if (val > 1 && val <= 2)
                this.vco = 50 + (val - 1) * 50;
            else if (val > 2 && val <= 10)
                this.vco = 100 + (val - 2) * (100 / 8);
            else if (val > 10 && val <= 17)
                this.vco = 200 + (val - 10) * (100 / 7);
            else if (val > 17 && val <= 34)
                this.vco = 300 + (val - 17) * (100 / 17);
            else
                this.vco = 400 + (val - 34) * (100 / 17);
            return this.vco;
        }

        public float Pm10(float val)
        {
            if (val <= 100)
                this.vpm1 = val;
            else if (val > 100 && val <= 250)
                this.vpm1 = 100 + (val - 100) * (100 / 50);
            else if (val > 250 && val <= 350)
                this.vpm1 = 200 + (val - 250);
            else if (val > 350 && val <= 430)
                this.vpm1 = 300 + (val - 350) * (100 / 80);
            else
                this.vpm1 = 400 + (val - 430) * (100 / 80);
            return this.vpm1;
        }

        public float Nh3(float val)
        {
            if (val <= 200)
                this.vnh3 = val * (50 / 200);
            else if (val > 200 && val <= 400)
                this.vnh3 = 50 + (val - 200) * (50 / 200);
            else if (val > 400 && val <= 800)
                this.vnh3 = 100 + (val - 400) * (100 / 400);
            else if (val > 800 && val <= 1200)
                this.vnh3 = 200 + (val - 800) * (100 / 400);
            else if (val > 1200 && val <= 1800)
                this.vnh3 = 300 + (val - 1200) * (100 / 800);
            else
                this.vnh3 = 0;
            return this.vnh3;
        }
        public float maxval()
        {
            float[] m = {vpm1,vpm2,vco,vnh3,vo3};
            return m.Max();
        }
    }
}