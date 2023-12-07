Return-Path: <iurascu_teo@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1393C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 13:35:56 +0000 (UTC)
Subject: Re: Static library created by recipe arch is not correct #yocto #sdk
To: yocto@lists.yoctoproject.org
From: "Iurascu Teodor" <iurascu_teo@hotmail.com>
X-Originating-Location: Iasi, RO (81.180.209.110)
X-Originating-Platform: Linux Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 07 Dec 2023 05:35:50 -0800
References: <49B96581-E340-47A0-B858-858DDB5690C0@arm.com>
In-Reply-To: <49B96581-E340-47A0-B858-858DDB5690C0@arm.com>
Message-ID: <8726.1701956150907740081@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SguRS4jdJ9Dc3FEpx05h"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 13:35:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61830

--SguRS4jdJ9Dc3FEpx05h
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply Ross!

This is the whole Makefile:

LIB_PATH =3D ./BBBio_lib/
DEMO_PATH =3D ./Demo/
TOOLKIT_PATH =3D ./Toolkit/
LAB_PATH =3D ./Lab/

LIBRARIES =3D iobb

cc =3D"gcc"

all : libiobb.a LED ADT7301 SEVEN_SCAN SMOTOR LED_GPIO DEBOUNCING 4x4keypad=
 ADC ADC_VOICE GPIO_STATUS EP_STATUS ADC_CALC lcd3-test test-outputs pb-tes=
t-outputs test-inputs pb-test-inputs

libiobb.a : ${ LIB_PATH } BBBiolib.c ${ LIB_PATH } BBBiolib.h BBBiolib_PWMS=
S.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cfunc.o
${ cc } -c ${ LIB_PATH } BBBiolib.c -o ${ LIB_PATH } BBBiolib.o
ar -rs ${ LIB_PATH } libiobb.a ${ LIB_PATH } BBBiolib.o ${ LIB_PATH } BBBio=
lib_PWMSS.o ${ LIB_PATH } BBBiolib_McSPI.o ${ LIB_PATH } BBBiolib_ADCTSC.o =
${ LIB_PATH } i2cfunc.o
cp ${ LIB_PATH } libiobb.a ./
cp ${ LIB_PATH } BBBiolib.h ./iobb.h
cp ${ LIB_PATH } BBBiolib_ADCTSC.h ./
cp ${ LIB_PATH } BBBiolib_McSPI.h ./
cp ${ LIB_PATH } BBBiolib_PWMSS.h ./
cp ${ LIB_PATH } i2cfunc.h ./

BBBiolib_PWMSS.o : ${ LIB_PATH } BBBiolib_PWMSS.c ${ LIB_PATH } BBBiolib_PW=
MSS.h
${ cc } -c ${ LIB_PATH } BBBiolib_PWMSS.c -o ${ LIB_PATH } BBBiolib_PWMSS.o=
 -W

BBBiolib_McSPI.o : ${ LIB_PATH } BBBiolib_McSPI.c ${ LIB_PATH } BBBiolib_PW=
MSS.h
${ cc } -c ${ LIB_PATH } BBBiolib_McSPI.c -o ${ LIB_PATH } BBBiolib_McSPI.o=
 -W

BBBiolib_ADCTSC.o : ${ LIB_PATH } BBBiolib_ADCTSC.c ${ LIB_PATH } BBBiolib_=
ADCTSC.h
${ cc } -c ${ LIB_PATH } BBBiolib_ADCTSC.c -o ${ LIB_PATH } BBBiolib_ADCTSC=
.o -W

i2cfunc.o : ${ LIB_PATH } i2cfunc.c ${ LIB_PATH } i2cfunc.h
${ cc } -c ${ LIB_PATH } i2cfunc.c -o ${ LIB_PATH } i2cfunc.o

install :
ifndef locatie
$( info locatie is [${ locatie }])
rm -f /usr/local/include/BBBiolib.h
cp ${ LIB_PATH } libiobb.a /usr/local/lib
cp ${ LIB_PATH } BBBiolib.h /usr/local/include/iobb.h
cp ${ LIB_PATH } BBBiolib_ADCTSC.h /usr/local/include
cp ${ LIB_PATH } BBBiolib_McSPI.h /usr/local/include
cp ${ LIB_PATH } BBBiolib_PWMSS.h /usr/local/include
cp ${ LIB_PATH } i2cfunc.h /usr/local/include
ln -s /usr/local/include/iobb.h /usr/local/include/BBBiolib.h
else
$( info locatie is [${ locatie }])
rm -f $( locatie ) /usr/local/include/BBBiolib.h
mkdir -p $( locatie ) /usr/local/lib
mkdir -p $( locatie ) /usr/local/include
cp ${ LIB_PATH } libiobb.a $( locatie ) /usr/local/lib
cp ${ LIB_PATH } BBBiolib.h $( locatie ) /usr/local/include/iobb.h
cp ${ LIB_PATH } BBBiolib_ADCTSC.h $( locatie ) /usr/local/include
cp ${ LIB_PATH } BBBiolib_McSPI.h $( locatie ) /usr/local/include
cp ${ LIB_PATH } BBBiolib_PWMSS.h $( locatie ) /usr/local/include
cp ${ LIB_PATH } i2cfunc.h $( locatie ) /usr/local/include
cp $( locatie ) /usr/local/include/iobb.h $( locatie ) /usr/local/include/B=
BBiolib.h
endif

#---------------------------------------------------
# Demo
#---------------------------------------------------

test-outputs : test-io/test-outputs.c libiobb.a
${ cc } -o test-outputs test-io/test-outputs.c -I. -L. -liobb

pb-test-outputs : test-io/pb-test-outputs.c libiobb.a
${ cc } -o pb-test-outputs test-io/pb-test-outputs.c -I. -L. -liobb

test-inputs : test-io/test-inputs.c libiobb.a
${ cc } -o test-inputs test-io/test-inputs.c -I. -L. -liobb

pb-test-inputs : test-io/pb-test-inputs.c libiobb.a
${ cc } -o pb-test-inputs test-io/pb-test-inputs.c -I. -L. -liobb

LED : ${ DEMO_PATH } Demo_LED/LED.c libiobb.a
${ cc } -o LED ${ DEMO_PATH } Demo_LED/LED.c -L ${ LIB_PATH } -liobb

lcd3-test : ${ DEMO_PATH } Demo_I2C/lcd3-test.c libiobb.a
${ cc } -o lcd3-test ${ DEMO_PATH } Demo_I2C/lcd3-test.c -I. -L ${ LIB_PATH=
 } -liobb

ADT7301 : ${ DEMO_PATH } Demo_ADT7301/ADT7301.c libiobb.a
${ cc } -o ADT7301 ${ DEMO_PATH } Demo_ADT7301/ADT7301.c -L ${ LIB_PATH } -=
liobb

ADXL345 : ${ DEMO_PATH } Demo_ADXL345/ADXL345.c libiobb.a
${ cc } -o ADXL345 ${ DEMO_PATH } Demo_ADXL345/ADXL345.c -L ${ LIB_PATH } -=
liobb
ADXL345_NET : ${ DEMO_PATH } Demo_ADXL345/ADXL345_net.c libiobb.a
${ cc } -o ADXL345 ${ DEMO_PATH } Demo_ADXL345/ADXL345_net.c -L ${ LIB_PATH=
 } -liobb

L3G4200D : ${ DEMO_PATH } Demo_L3G4200D/L3G4200D.c libiobb.a
${ cc } -o L3G4200D ${ DEMO_PATH } Demo_L3G4200D/L3G4200D.c -L ${ LIB_PATH =
} -liobb

SEVEN_SCAN : ${ DEMO_PATH } Demo_SevenScan/SevenScan.c libiobb.a
${ cc } -o SevenScan ${ DEMO_PATH } Demo_SevenScan/SevenScan.c -L ${ LIB_PA=
TH } -liobb

SMOTOR : ${ DEMO_PATH } Demo_ServoMotor/ServoMotor.c libiobb.a
${ cc } -o SMOTOR ${ DEMO_PATH } Demo_ServoMotor/ServoMotor.c -L ${ LIB_PAT=
H } -liobb

LED_GPIO : ${ DEMO_PATH } Demo_LED_GPIO/LED_GPIO.c libiobb.a
${ cc } -o LED_GPIO ${ DEMO_PATH } Demo_LED_GPIO/LED_GPIO.c -L ${ LIB_PATH =
} -liobb -pthread

DEBOUNCING : ${ DEMO_PATH } Demo_Debouncing/Debouncing.c libiobb.a
${ cc } -o Debouncing ${ DEMO_PATH } Demo_Debouncing/Debouncing.c -L ${ LIB=
_PATH } -liobb

4x4keypad : ${ DEMO_PATH } Demo_4x4keypad/4x4keypad.c libiobb.a
${ cc } -o 4x4keypad ${ DEMO_PATH } Demo_4x4keypad/4x4keypad.c -L ${ LIB_PA=
TH } -liobb

PWM : ${ DEMO_PATH } Demo_PWM/PWM.c libiobb.a
${ cc } -o PWM ${ DEMO_PATH } Demo_PWM/PWM.c -L ${ LIB_PATH } -liobb

ADC : ${ DEMO_PATH } Demo_ADC/ADC.c libiobb.a
${ cc } -o ADC ${ DEMO_PATH } Demo_ADC/ADC.c -L ${ LIB_PATH } -liobb -lm

ADC_VOICE : ${ DEMO_PATH } Demo_ADC/ADC_voice.c libiobb.a
${ cc } -o ADC_VOICE ${ DEMO_PATH } Demo_ADC/ADC_voice.c -L ${ LIB_PATH } -=
liobb -lm -pthread -O3

#---------------------------------------------------
# toolkit
#---------------------------------------------------

GPIO_STATUS : ${ TOOLKIT_PATH } Toolkit_GPIO_CLK_Status/GPIO_status.c libio=
bb.a
${ cc } -o GPIO_CLK_status ${ TOOLKIT_PATH } Toolkit_GPIO_CLK_Status/GPIO_s=
tatus.c -L ${ LIB_PATH } -liobb

EP_STATUS : ${ TOOLKIT_PATH } Toolkit_EP_Status/EP_status.c libiobb.a
${ cc } -o EP_status ${ TOOLKIT_PATH } Toolkit_EP_Status/EP_status.c -L ${ =
LIB_PATH } -liobb

ADC_CALC : ${ TOOLKIT_PATH } Toolkit_ADC_CALC/ADC_CALC.c
${ cc } -o ADC_CALC ${ TOOLKIT_PATH } Toolkit_ADC_CALC/ADC_CALC.c

#---------------------------------------------------
# Lab
#---------------------------------------------------

RA : ${ LAB_PATH } Lab_Robot_Arm/Robot_Arm.c libiobb.a
${ cc } -o RA ${ LAB_PATH } Lab_Robot_Arm/Robot_Arm.c -L ${ LIB_PATH } -lio=
bb -lm

VD : ${ LAB_PATH } Voice_Door/voice_door.cpp libiobb.a
g++ -o VD ${ LAB_PATH } Voice_Door/voice_door.cpp -L ${ LIB_PATH } -liobb -=
lfftw3 -lm -pthread -O3

.PHONY : clean
clean :
rm -rf ${ LIB_PATH } *.o ${ LIB_PATH } libiobb.a libiobb.a iobb.h BBBiolib_=
ADCTSC.h BBBiolib_McSPI.h i2cfunc.h lcd3-test test-inputs pb-test-inputs te=
st-outputs pb-test-outputs BBBiolib_PWMSS.h LED ADT7301 GPIO_CLK_status Sev=
enScan Ultrasonic28015 TMP SMOTOR LED_GPIO Debouncing 4x4keypad EP_status P=
WM RA ADXL345 ADC ADC_CALC L3G4200D

It looks like cc is used everywhere.

Running file on libiobb.a returns:
$ file libiobb.a
libiobb.a: current ar archive I'm not sure what the correct output should b=
e. Running file on any object files in the archive returns:
$ file BBBiolib.o
BBBiolib.o: ELF 64-bit LSB relocatable, x86-64, version 1 (SYSV), not strip=
ped

Thanks for the heads up about IOBB being dead, I'll search for an alternati=
ve, after I get this working, if it doesn't meet my needs.

Thank you!

PS: Sorry for the mishap, the forum sets the sender to Private instead of t=
o Group

--SguRS4jdJ9Dc3FEpx05h
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply Ross!<br /><br />This is the whole Makefile:<br />
<div style=3D"color: #cccccc; background-color: #1f1f1f; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre; --darkreader-inline-color: #c8c3bc; -=
-darkreader-inline-bgcolor: #17191a;" data-darkreader-inline-color=3D"" dat=
a-darkreader-inline-bgcolor=3D""><br />
<div><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> =
=3D ./BBBio_lib/</span></div>
<div><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 =3D ./Demo/</span></div>
<div><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">TOOLKIT_PATH</span><span style=3D"color: #c=
ccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D=
""> =3D ./Toolkit/</span></div>
<div><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">LAB_PATH</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> =
=3D ./Lab/</span></div>
<br /><br />
<div><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">LIBRARIES</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 =3D iobb</span></div>
<br />
<div><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">cc</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=3D"gcc=
"</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">all</span><span style=3D"color: #cccccc; --=
darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : lib=
iobb.a LED ADT7301 SEVEN_SCAN SMOTOR LED_GPIO DEBOUNCING 4x4keypad ADC ADC_=
VOICE GPIO_STATUS EP_STATUS ADC_CALC lcd3-test test-outputs pb-test-outputs=
 test-inputs pb-test-inputs</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">libiobb.a</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b=
;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe=
; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LI=
B_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf9=
47b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
BBBiolib.c </span><span style=3D"color: #ce9178; --darkreader-inline-color:=
 #cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color:=
 #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib.h BBBiolib_PWMSS.o BBBiolib_McSPI.o BBBiolib_ADCTSC.o i2cf=
unc.o</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -c </span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><spa=
n style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkre=
ader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><s=
pan style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-dark=
reader-inline-color=3D"">BBBiolib.c -o </span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${=
</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" =
data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;=
" data-darkreader-inline-color=3D"">BBBiolib.o</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> ar -rs </span><span style=3D"color: #ce917=
8; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$=
{</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;"=
 data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc=
;" data-darkreader-inline-color=3D"">libiobb.a </span><span style=3D"color:=
 #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #8=
7d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: =
#c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib.o </span><span style=
=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-in=
line-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline=
-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inli=
ne-color: #c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib_PWMSS.o </sp=
an><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data=
-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --dar=
kreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH<=
/span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" d=
ata-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">BBBioli=
b_McSPI.o </span><span style=3D"color: #ce9178; --darkreader-inline-color: =
#cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: =
#9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib_ADCTSC.o </span><span style=3D"color: #ce9178; --darkreade=
r-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><span =
style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkread=
er-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkre=
ader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><spa=
n style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkre=
ader-inline-color=3D"">i2cfunc.o</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">libiobb.a ./</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib.h ./iobb.h</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_ADCTSC.h ./</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_McSPI.h ./</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_PWMSS.h ./</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">i2cfunc.h ./</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">BBBiolib_PWMSS.o</span><span style=3D"color=
: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-colo=
r=3D""> : </span><span style=3D"color: #ce9178; --darkreader-inline-color: =
#cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: =
#9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib_PWMSS.c </span><span style=3D"color: #ce9178; --darkreader=
-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><span s=
tyle=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreade=
r-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><span=
 style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkrea=
der-inline-color=3D"">BBBiolib_PWMSS.h</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -c </span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><spa=
n style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkre=
ader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><s=
pan style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-dark=
reader-inline-color=3D"">BBBiolib_PWMSS.c -o </span><span style=3D"color: #=
ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #8=
7d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: =
#c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib_PWMSS.o -W </span></di=
v>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">BBBiolib_McSPI.o</span><span style=3D"color=
: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-colo=
r=3D""> : </span><span style=3D"color: #ce9178; --darkreader-inline-color: =
#cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: =
#9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib_McSPI.c </span><span style=3D"color: #ce9178; --darkreader=
-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><span s=
tyle=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreade=
r-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><span=
 style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkrea=
der-inline-color=3D"">BBBiolib_PWMSS.h</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -c </span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><spa=
n style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkre=
ader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><s=
pan style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-dark=
reader-inline-color=3D"">BBBiolib_McSPI.c -o </span><span style=3D"color: #=
ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #8=
7d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: =
#c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib_McSPI.o -W</span></div=
>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">BBBiolib_ADCTSC.o</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D""> : </span><span style=3D"color: #ce9178; --darkreader-inline-color:=
 #cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color:=
 #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">BBBiolib_ADCTSC.c </span><span style=3D"color: #ce9178; --darkreade=
r-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><span =
style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkread=
er-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkre=
ader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><spa=
n style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkre=
ader-inline-color=3D"">BBBiolib_ADCTSC.h</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -c </span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><spa=
n style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkre=
ader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><s=
pan style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-dark=
reader-inline-color=3D"">BBBiolib_ADCTSC.c -o </span><span style=3D"color: =
#ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #8=
7d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: =
#c8c3bc;" data-darkreader-inline-color=3D"">BBBiolib_ADCTSC.o -W</span></di=
v>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">i2cfunc.o</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b=
;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe=
; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LI=
B_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf9=
47b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
i2cfunc.c </span><span style=3D"color: #ce9178; --darkreader-inline-color: =
#cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: =
#9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D"">i2cfunc.h</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -c </span><span style=3D"color: #ce9178; --darkrea=
der-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><spa=
n style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkre=
ader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><s=
pan style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-dark=
reader-inline-color=3D"">i2cfunc.c -o </span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${<=
/span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" d=
ata-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce91=
78; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">=
}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;"=
 data-darkreader-inline-color=3D"">i2cfunc.o</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">install</span><span style=3D"color: #cccccc=
; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> :=
 </span></div>
<div><span style=3D"color: #c586c0; --darkreader-inline-color: #c688c1;" da=
ta-darkreader-inline-color=3D"">ifndef</span><span style=3D"color: #cccccc;=
 --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> lo=
catie</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$(</span=
><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" data-d=
arkreader-inline-color=3D"">info</span><span style=3D"color: #ce9178; --dar=
kreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""> locatie =
is [${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d=
5fe;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color:=
 #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">}])</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> rm -f /usr/local/include/BBBiolib.h</span>=
</div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">libiobb.a /usr/local/lib</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib.h /usr/local/include/iobb.h</span=
></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_ADCTSC.h /usr/local/include</span=
></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_McSPI.h /usr/local/include</span>=
</div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_PWMSS.h /usr/local/include</span>=
</div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">i2cfunc.h /usr/local/include</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> ln -s /usr/local/include/iobb.h /usr/local=
/include/BBBiolib.h</span></div>
<div><span style=3D"color: #c586c0; --darkreader-inline-color: #c688c1;" da=
ta-darkreader-inline-color=3D"">else</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$(</span=
><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" data-d=
arkreader-inline-color=3D"">info</span><span style=3D"color: #ce9178; --dar=
kreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""> locatie =
is [${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d=
5fe;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color:=
 #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">}])</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> rm -f </span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$(=
</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" =
data-darkreader-inline-color=3D"">locatie</span><span style=3D"color: #ce91=
78; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">=
)</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;"=
 data-darkreader-inline-color=3D"">/usr/local/include/BBBiolib.h</span></di=
v>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> mkdir -p </span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe=
;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color: #c=
e9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D=
"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3b=
c;" data-darkreader-inline-color=3D"">/usr/local/lib</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> mkdir -p </span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe=
;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color: #c=
e9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D=
"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3b=
c;" data-darkreader-inline-color=3D"">/usr/local/include</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">libiobb.a </span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5f=
e;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color: #=
ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8=
c3bc;" data-darkreader-inline-color=3D"">/usr/local/lib</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib.h </span><span style=3D"color: #c=
e9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D=
"">$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5=
fe;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color: =
#ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8=
c3bc;" data-darkreader-inline-color=3D"">/usr/local/include/iobb.h</span></=
div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_ADCTSC.h </span><span style=3D"co=
lor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-c=
olor=3D"">$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color=
: #87d5fe;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"=
color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline=
-color=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inline-colo=
r: #c8c3bc;" data-darkreader-inline-color=3D"">/usr/local/include</span></d=
iv>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_McSPI.h </span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color:=
 #87d5fe;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"c=
olor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-=
color=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color=
: #c8c3bc;" data-darkreader-inline-color=3D"">/usr/local/include</span></di=
v>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">BBBiolib_PWMSS.h </span><span style=3D"col=
or: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-co=
lor=3D"">$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color:=
 #87d5fe;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"c=
olor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-=
color=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color=
: #c8c3bc;" data-darkreader-inline-color=3D"">/usr/local/include</span></di=
v>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">i2cfunc.h </span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">$(</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5f=
e;" data-darkreader-inline-color=3D"">locatie</span><span style=3D"color: #=
ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8=
c3bc;" data-darkreader-inline-color=3D"">/usr/local/include</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> cp </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$(</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">locatie</span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">)</=
span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D"">/usr/local/include/iobb.h </span><span styl=
e=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-i=
nline-color=3D"">$(</span><span style=3D"color: #9cdcfe; --darkreader-inlin=
e-color: #87d5fe;" data-darkreader-inline-color=3D"">locatie</span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">)</span><span style=3D"color: #cccccc; --darkreader-inli=
ne-color: #c8c3bc;" data-darkreader-inline-color=3D"">/usr/local/include/BB=
Biolib.h</span></div>
<div><span style=3D"color: #c586c0; --darkreader-inline-color: #c688c1;" da=
ta-darkreader-inline-color=3D"">endif</span></div>
<div>&nbsp;</div>
<br />
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D"">#------------------------------------------=
---------</span></div>
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D""># Demo</span></div>
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D"">#------------------------------------------=
---------</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">test-outputs</span><span style=3D"color: #c=
ccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D=
"">: test-io/test-outputs.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o test-outputs test-io/test-outputs.c -I. -L. -li=
obb</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">pb-test-outputs</span><span style=3D"color:=
 #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=
=3D"">: test-io/pb-test-outputs.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o pb-test-outputs test-io/pb-test-outputs.c -I. -=
L. -liobb</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">test-inputs</span><span style=3D"color: #cc=
cccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"=
">: test-io/test-inputs.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o test-inputs test-io/test-inputs.c -I. -L. -liob=
b</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">pb-test-inputs</span><span style=3D"color: =
#cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=
=3D"">: test-io/pb-test-inputs.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o pb-test-inputs test-io/pb-test-inputs.c -I. -L.=
 -liobb</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">LED</span><span style=3D"color: #cccccc; --=
darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : </s=
pan><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" dat=
a-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --da=
rkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEMO_PAT=
H</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;"=
 data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; -=
-darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">Demo_=
LED/LED.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o LED </span><span style=3D"color: #ce9178; --dar=
kreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span>=
<span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-da=
rkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</sp=
an><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data=
-darkreader-inline-color=3D"">Demo_LED/LED.c -L </span><span style=3D"color=
: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-colo=
r=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #=
87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"co=
lor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-c=
olor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color:=
 #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">lcd3-test</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
: </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;=
" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe;=
 --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEM=
O_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf9=
47b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
Demo_I2C/lcd3-test.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o lcd3-test </span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${<=
/span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" d=
ata-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;=
" data-darkreader-inline-color=3D"">Demo_I2C/lcd3-test.c -I. -L </span><spa=
n style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkre=
ader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader=
-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><=
span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-dar=
kreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkread=
er-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span>=
</div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">ADT7301</span><span style=3D"color: #cccccc=
; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> :=
 </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;"=
 data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; =
--darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEMO=
_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf94=
7b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">D=
emo_ADT7301/ADT7301.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o ADT7301 </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce917=
8; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}=
</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" =
data-darkreader-inline-color=3D"">Demo_ADT7301/ADT7301.c -L </span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inl=
ine-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span=
 style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkrea=
der-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreader-i=
nline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span></di=
v>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">ADXL345</span><span style=3D"color: #cccccc=
; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> :=
 </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;"=
 data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; =
--darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEMO=
_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf94=
7b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">D=
emo_ADXL345/ADXL345.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o ADXL345 </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce917=
8; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}=
</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" =
data-darkreader-inline-color=3D"">Demo_ADXL345/ADXL345.c -L </span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inl=
ine-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span=
 style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkrea=
der-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreader-i=
nline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span></di=
v>
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">ADXL345_NET</span><span style=3D"color: #cc=
cccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"=
"> : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf94=
7b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdc=
fe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">=
DEMO_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #=
cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #c=
ccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D=
"">Demo_ADXL345/ADXL345_net.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o ADXL345 </span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</s=
pan><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" dat=
a-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce917=
8; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}=
</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" =
data-darkreader-inline-color=3D"">Demo_ADXL345/ADXL345_net.c -L </span><spa=
n style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkre=
ader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader=
-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><=
span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-dar=
kreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkread=
er-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span>=
</div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">L3G4200D</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> =
: </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;=
" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe;=
 --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEM=
O_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf9=
47b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
Demo_L3G4200D/L3G4200D.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o L3G4200D </span><span style=3D"color: #ce9178; =
--darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</=
span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce91=
78; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">=
}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;"=
 data-darkreader-inline-color=3D"">Demo_L3G4200D/L3G4200D.c -L </span><span=
 style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkrea=
der-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-=
inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><s=
pan style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-dark=
reader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreade=
r-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span><=
/div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">SEVEN_SCAN</span><span style=3D"color: #ccc=
ccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""=
> : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947=
b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcf=
e; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">D=
EMO_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #c=
f947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cc=
cccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"=
">Demo_SevenScan/SevenScan.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o SevenScan </span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${<=
/span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" d=
ata-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;=
" data-darkreader-inline-color=3D"">Demo_SevenScan/SevenScan.c -L </span><s=
pan style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-dark=
reader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkread=
er-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span=
><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-d=
arkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkre=
ader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</spa=
n></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">SMOTOR</span><span style=3D"color: #cccccc;=
 --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : =
</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" =
data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; -=
-darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEMO_=
PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947=
b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc=
; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">De=
mo_ServoMotor/ServoMotor.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o SMOTOR </span><span style=3D"color: #ce9178; --=
darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</sp=
an><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data=
-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}<=
/span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" d=
ata-darkreader-inline-color=3D"">Demo_ServoMotor/ServoMotor.c -L </span><sp=
an style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkr=
eader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreade=
r-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span>=
<span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-da=
rkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkrea=
der-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span=
></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">LED_GPIO</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> =
: </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;=
" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe;=
 --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEM=
O_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf9=
47b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
Demo_LED_GPIO/LED_GPIO.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o LED_GPIO </span><span style=3D"color: #ce9178; =
--darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</=
span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce91=
78; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">=
}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;"=
 data-darkreader-inline-color=3D"">Demo_LED_GPIO/LED_GPIO.c -L </span><span=
 style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkrea=
der-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-=
inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><s=
pan style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-dark=
reader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreade=
r-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb -pthrea=
d</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">DEBOUNCING</span><span style=3D"color: #ccc=
ccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""=
> : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947=
b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcf=
e; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">D=
EMO_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #c=
f947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cc=
cccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"=
">Demo_Debouncing/Debouncing.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o Debouncing </span><span style=3D"color: #ce9178=
; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${=
</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" =
data-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc=
;" data-darkreader-inline-color=3D"">Demo_Debouncing/Debouncing.c -L </span=
><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-d=
arkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkr=
eader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</s=
pan><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" dat=
a-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --dar=
kreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</=
span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">4x4keypad</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b=
;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe=
; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DE=
MO_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf=
947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #ccc=
ccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""=
>Demo_4x4keypad/4x4keypad.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o 4x4keypad </span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${<=
/span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" d=
ata-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;=
" data-darkreader-inline-color=3D"">Demo_4x4keypad/4x4keypad.c -L </span><s=
pan style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-dark=
reader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkread=
er-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span=
><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-d=
arkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkre=
ader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</spa=
n></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">PWM</span><span style=3D"color: #cccccc; --=
darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : </s=
pan><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" dat=
a-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --da=
rkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEMO_PAT=
H</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;"=
 data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; -=
-darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">Demo_=
PWM/PWM.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o PWM </span><span style=3D"color: #ce9178; --dar=
kreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span>=
<span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-da=
rkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</sp=
an><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data=
-darkreader-inline-color=3D"">Demo_PWM/PWM.c -L </span><span style=3D"color=
: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-colo=
r=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #=
87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"co=
lor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-c=
olor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color:=
 #c8c3bc;" data-darkreader-inline-color=3D""> -liobb</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">ADC</span><span style=3D"color: #cccccc; --=
darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : </s=
pan><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" dat=
a-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --da=
rkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DEMO_PAT=
H</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;"=
 data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; -=
-darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">Demo_=
ADC/ADC.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o ADC </span><span style=3D"color: #ce9178; --dar=
kreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span>=
<span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-da=
rkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9178; -=
-darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</sp=
an><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data=
-darkreader-inline-color=3D"">Demo_ADC/ADC.c -L </span><span style=3D"color=
: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-colo=
r=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #=
87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"co=
lor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-c=
olor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color:=
 #c8c3bc;" data-darkreader-inline-color=3D""> -liobb -lm</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">ADC_VOICE</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b=
;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe=
; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">DE=
MO_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf=
947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #ccc=
ccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""=
>Demo_ADC/ADC_voice.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o ADC_VOICE </span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${<=
/span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" d=
ata-darkreader-inline-color=3D"">DEMO_PATH</span><span style=3D"color: #ce9=
178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D""=
>}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;=
" data-darkreader-inline-color=3D"">Demo_ADC/ADC_voice.c -L </span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inl=
ine-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span=
 style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkrea=
der-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreader-i=
nline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb -lm -pthre=
ad -O3</span></div>
<br /><br /><br />
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D"">#------------------------------------------=
---------</span></div>
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D""># toolkit </span></div>
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D"">#------------------------------------------=
---------</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">GPIO_STATUS</span><span style=3D"color: #cc=
cccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"=
"> : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf94=
7b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdc=
fe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">=
TOOLKIT_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color=
: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color:=
 #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=
=3D"">Toolkit_GPIO_CLK_Status/GPIO_status.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o GPIO_CLK_status </span><span style=3D"color: #c=
e9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D=
"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5=
fe;" data-darkreader-inline-color=3D"">TOOLKIT_PATH</span><span style=3D"co=
lor: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-c=
olor=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color:=
 #c8c3bc;" data-darkreader-inline-color=3D"">Toolkit_GPIO_CLK_Status/GPIO_s=
tatus.c -L </span><span style=3D"color: #ce9178; --darkreader-inline-color:=
 #cf947b;" data-darkreader-inline-color=3D"">${</span><span style=3D"color:=
 #9cdcfe; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=
=3D"">LIB_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-col=
or: #cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"colo=
r: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-col=
or=3D""> -liobb</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">EP_STATUS</span><span style=3D"color: #cccc=
cc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">=
 : </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b=
;" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe=
; --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">TO=
OLKIT_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: =
#cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #=
cccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=
=3D"">Toolkit_EP_Status/EP_status.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o EP_status </span><span style=3D"color: #ce9178;=
 --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${<=
/span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" d=
ata-darkreader-inline-color=3D"">TOOLKIT_PATH</span><span style=3D"color: #=
ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8=
c3bc;" data-darkreader-inline-color=3D"">Toolkit_EP_Status/EP_status.c -L <=
/span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" d=
ata-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --=
darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PA=
TH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;=
" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; =
--darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -li=
obb</span></div>
<br /><br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">ADC_CALC</span><span style=3D"color: #ccccc=
c; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> =
: </span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;=
" data-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe;=
 --darkreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">TOO=
LKIT_PATH</span><span style=3D"color: #ce9178; --darkreader-inline-color: #=
cf947b;" data-darkreader-inline-color=3D"">}</span><span style=3D"color: #c=
ccccc; --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D=
"">Toolkit_ADC_CALC/ADC_CALC.c</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o ADC_CALC </span><span style=3D"color: #ce9178; =
--darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</=
span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" da=
ta-darkreader-inline-color=3D"">TOOLKIT_PATH</span><span style=3D"color: #c=
e9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D=
"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3b=
c;" data-darkreader-inline-color=3D"">Toolkit_ADC_CALC/ADC_CALC.c</span></d=
iv>
<br /><br />
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D"">#------------------------------------------=
---------</span></div>
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D""># Lab</span></div>
<div><span style=3D"color: #6a9955; --darkreader-inline-color: #86b173;" da=
ta-darkreader-inline-color=3D"">#------------------------------------------=
---------</span></div>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">RA</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : </sp=
an><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data=
-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --dar=
kreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LAB_PATH<=
/span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" d=
ata-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">Lab_Rob=
ot_Arm/Robot_Arm.c libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> </span><span style=3D"color: #ce9178; --da=
rkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span=
><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-d=
arkreader-inline-color=3D"">cc</span><span style=3D"color: #ce9178; --darkr=
eader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span><sp=
an style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-darkr=
eader-inline-color=3D""> -o RA </span><span style=3D"color: #ce9178; --dark=
reader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">${</span><=
span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;" data-dar=
kreader-inline-color=3D"">LAB_PATH</span><span style=3D"color: #ce9178; --d=
arkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">}</span=
><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" data-d=
arkreader-inline-color=3D"">Lab_Robot_Arm/Robot_Arm.c -L </span><span style=
=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-in=
line-color=3D"">${</span><span style=3D"color: #9cdcfe; --darkreader-inline=
-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</span><span st=
yle=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-darkreader=
-inline-color=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inli=
ne-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb -lm</span></d=
iv>
<br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">VD</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> : </sp=
an><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data=
-darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --dar=
kreader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LAB_PATH<=
/span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" d=
ata-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --d=
arkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">Voice_D=
oor/voice_door.cpp libiobb.a</span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> g++ -o VD </span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5f=
e;" data-darkreader-inline-color=3D"">LAB_PATH</span><span style=3D"color: =
#ce9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=
=3D"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8=
c3bc;" data-darkreader-inline-color=3D"">Voice_Door/voice_door.cpp -L </spa=
n><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" data-=
darkreader-inline-color=3D"">${</span><span style=3D"color: #9cdcfe; --dark=
reader-inline-color: #87d5fe;" data-darkreader-inline-color=3D"">LIB_PATH</=
span><span style=3D"color: #ce9178; --darkreader-inline-color: #cf947b;" da=
ta-darkreader-inline-color=3D"">}</span><span style=3D"color: #cccccc; --da=
rkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> -liobb =
-lfftw3 -lm -pthread -O3</span></div>
<br /><br />
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">.PHONY</span><span style=3D"color: #cccccc;=
 --darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D"">: c=
lean</span></div>
<div><span style=3D"color: #dcdcaa; --darkreader-inline-color: #d8d89f;" da=
ta-darkreader-inline-color=3D"">clean</span><span style=3D"color: #cccccc; =
--darkreader-inline-color: #c8c3bc;" data-darkreader-inline-color=3D""> :</=
span></div>
<div><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc;" da=
ta-darkreader-inline-color=3D""> rm -rf </span><span style=3D"color: #ce917=
8; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">$=
{</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;"=
 data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #ce=
9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"=
">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3bc=
;" data-darkreader-inline-color=3D"">*.o </span><span style=3D"color: #ce91=
78; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D"">=
${</span><span style=3D"color: #9cdcfe; --darkreader-inline-color: #87d5fe;=
" data-darkreader-inline-color=3D"">LIB_PATH</span><span style=3D"color: #c=
e9178; --darkreader-inline-color: #cf947b;" data-darkreader-inline-color=3D=
"">}</span><span style=3D"color: #cccccc; --darkreader-inline-color: #c8c3b=
c;" data-darkreader-inline-color=3D"">libiobb.a libiobb.a iobb.h BBBiolib_A=
DCTSC.h BBBiolib_McSPI.h i2cfunc.h lcd3-test test-inputs pb-test-inputs tes=
t-outputs pb-test-outputs BBBiolib_PWMSS.h LED ADT7301 GPIO_CLK_status Seve=
nScan Ultrasonic28015 TMP SMOTOR LED_GPIO Debouncing 4x4keypad EP_status PW=
M RA ADXL345 ADC ADC_CALC L3G4200D</span></div>
<br /><br /><br />It looks like cc is used everywhere.<br /><br />Running f=
ile on libiobb.a returns:<br /><span style=3D"font-family: monospace;"><spa=
n style=3D"color: #000000; background-color: #ffffff; --darkreader-inline-c=
olor: #e8e6e3; --darkreader-inline-bgcolor: #181a1b;" data-darkreader-inlin=
e-color=3D"" data-darkreader-inline-bgcolor=3D"">$ file libiobb.a &nbsp;</s=
pan><br />libiobb.a: current ar archive I'm not sure what the correct outpu=
t should be. Running file on any object files in the archive returns:<br />=
</span><span style=3D"font-family: monospace;"><span style=3D"color: #00000=
0; background-color: #ffffff; --darkreader-inline-color: #e8e6e3; --darkrea=
der-inline-bgcolor: #181a1b;" data-darkreader-inline-color=3D"" data-darkre=
ader-inline-bgcolor=3D"">$ file BBBiolib.o &nbsp;</span><br />BBBiolib.o: E=
LF 64-bit LSB relocatable, x86-64, version 1 (SYSV), not stripped<br /><br =
/></span><span style=3D"font-family: monospace;">Thanks for the heads up ab=
out IOBB being dead, I'll search for an alternative, after I get this worki=
ng, if it doesn't meet my needs.<br /><br />Thank you!<br /><br />PS: Sorry=
 for the mishap, the forum sets the sender to Private instead of to Group<b=
r /><br /><br /></span></div>

--SguRS4jdJ9Dc3FEpx05h--

