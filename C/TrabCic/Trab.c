#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
    int op,n;
    float p,r,dr,q,e,w,po,pa;

    do{
        printf("****************************ENTRE COM A OPCAO DESEJADA:******************************\n*                                                                                   *\n");
        printf("*   1 - Evapotranspiracao em um dado periodo.                                       *\n");
        printf("*   2 - Evaporacao do solo para um certo periodo(fitzgerald)                        *\n");
        printf("*   3 - Evaporacao do solo para um certo periodo(servicos hidrologicos U.R.S.S.)    *\n");
        printf("*   4 - Forca de resistencia radicular                                              *\n");
        printf("*   0 - Sair                                                                        *\n*                                                                                   *");
        printf("\n*************************************************************************************\n");


        printf("\t opcao:\t");
        scanf("%d",&op);

        switch(op){

        case 1: system("cls");

                printf("EVAPOTRANSPIRACAO EM DADO PERIODO:\n\n");

                printf("Definir precipitação media anual sobre a bacia hidrografica( em mm): \t P = ");
                scanf("%f",&p);

                printf("Definir o volume de agua escoado pela seccao S do curso da agua: \t Q = ");
                scanf("%f",&q);

                printf("Definir a reserva de agua subterranea no inicio do periodo: \t R = ");
                scanf("%f",&r);

                printf("Definir a reserva de agua subterranea no final do periodo: \t R+AR = ");
                scanf("%f",&dr);

                system("cls");

                printf("EVAPOTRANSPIRACAO EM DADO PERIODO:\n\n");
                e=p+r-q-dr;
                printf("\nE = %.2f \n\n",e);

                system("pause");
                system("cls");

            break;

        case 2: system("cls");
                printf("Evaporacao do solo para um certo periodo(fitzgerald)\n");

                printf("Definir velocidade do vento(Km/h) a 2m da superficie da agua: \t W = ");
                scanf("%f",&w);

                printf("Definir pressao de saturacao do vapor, em milimetros de mercurio: \t Po = ");
                scanf("%f",&po);

                printf("Definir pressao efetiva do vapor de agua no ar atmosferico, em mm de mercurio,\n a 2 m da superficie da agua: \t Pa = ");
                scanf("%f",&pa);

                printf("EVAPORACAO DO SOLO CALCULADO POR FITZGERALD");

                e=12*(1-(0.31*w))*(po-pa);
                printf("\nE = %.2f \n\n",e);

                system("pause");
                system("cls");
            break;

        case 3: system("cls");
                printf("Evaporacao do solo para um certo periodo(servicos hidrologicos U.R.S.S.)\n");

                printf("Definir numero de dias do mes considerado: \t N = ");
                scanf("%d",&n);

                printf("Definir velocidade do vento(m/s) a 2m da superficie da agua: \t W = ");
                scanf("%f",&w);

                printf(" \n\n 1 MILIBAR = 1 000 DINAS POR CENTIMETRO QUADRADO, APROX 0.75 MM DE COLUNA DE MERCURIO\n\n");

                printf("Definir pressao de saturacao do vapor, em MILIBARES: \t Po = ");
                scanf("%f",&po);

                printf("Definir pressao efetiva do vapor de agua no ar atmosferico, em MILIBARES, a 2 m da superficie da agua: \t Pa = ");
                scanf("%f",&pa);

                printf("EVAPORACAO DO SOLO CALCULADO PELA EQUACAO DOS SERVICOS HIDROLOGICOS DA U.R.S.S.\n\n");

                e=(0.15*n)*(1+(0.072*w))*(po-pa);
                printf("\nE = %.2f \n\n",e);

                system("pause");
                system("cls");
            break;

        case 4: system("cls");
                printf("Força de resistencia radicular\n");


                system("pause");
                system("cls");
            break;

        case 0:
            system("exit");
            break;

        default:
                printf("\tERRO: \n %d nao consta no menu!!\n",op);
                system("pause");
                system("cls");
            break;


        }


    }while(op!=0);
                system("cls");
}

