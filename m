Return-Path: <pierre.jozwicki@hotmail.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54CDBE008DC; Fri, 27 Feb 2015 05:34:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pierre.jozwicki[at]hotmail.fr)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.2.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Feb 2015 05:34:34 PST
Received: from DUB004-OMC3S1.hotmail.com (dub004-omc3s1.hotmail.com
	[157.55.2.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B9ECE0077E
	for <yocto@yoctoproject.org>; Fri, 27 Feb 2015 05:34:34 -0800 (PST)
Received: from DUB127-W30 ([157.55.2.7]) by DUB004-OMC3S1.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Fri, 27 Feb 2015 05:33:32 -0800
X-TMN: [M1+V6ahcnoSvv+g26AhFx3cHjyF/5L3Fif19kSlcvK0=]
X-Originating-Email: [pierre.jozwicki@hotmail.fr]
Message-ID: <DUB127-W3039B4C87264D7D0BE224E8D150@phx.gbl>
From: pierre jozwicki <pierre.jozwicki@hotmail.fr>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 27 Feb 2015 14:33:32 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Feb 2015 13:33:32.0384 (UTC)
	FILETIME=[FAB7F600:01D05291]
X-Mailman-Approved-At: Mon, 02 Mar 2015 06:35:17 -0800
Subject: Eclipse configuration : Battery Charger : Cross compilation on imx28evk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Feb 2015 13:34:38 -0000
Content-Type: multipart/alternative;
	boundary="_f663f44d-89fd-4d03-826f-0dd4aafc0dec_"

--_f663f44d-89fd-4d03-826f-0dd4aafc0dec_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C
First of all=2C thank you very much if you can take the time to read my ema=
il and give me some answers to my questions.I'm sorry for this mail beeing =
quite long but I'm trying to give you the necessary details so you would ha=
ve more chances to help me out =3B)
I am pretty new to cross compilation methods and a big newbie in Linux arch=
itecture=2C user's and kernel space.I'm working on an imx28evk board=2C lin=
ux kernel 2.6.35 and to start with this board I'm trying to write a simple =
code for Battery Monitoring.
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -=
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- - - - - - - - - -=20
In this document (Using the PMU + Battery Charger) : http://cache.freescale=
.com/files/32bit/doc/app_note/AN4199.pdfand making a ctlf +f with keyword "=
modif"=2C shows that (Kernel side):
1/- in file /linux-2.6.35.3/arch/arm/mach-mx28/bus_freq.c : VDDIO can be mo=
dified- in file /linux-2.6.35.3/arch/arm/mach-mx28/device.c : the values of=
 u16ChargingCurrent=2C  u16ChargingThresholdCurrent can be modified.
2/In power_prep.c the brownout level can be modified according to the batte=
ry reference voltage.
Correct me if I'm wrong but for me the changes made to the files described =
in 1/ and 2/ have to be done on the git downloaded archive and prior to bit=
baking an image. Then the image obtained contains the battery charger confi=
gured in the way we specified it in those files.Is this correct ?
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -=
 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - =
- - - - - - - - - -=20
But now what to do if I want to for example write a C code with Eclipse con=
figured using autotools to monitor the Battery Charger ?
To configure eclipse=2C I followed the steps in section 4.2.2 of : http://w=
ww.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#modifying-tempora=
ry-source-code
As the image I bitbaked is a core-image-sato-sdk I have a rootfs directory =
inside the core-image-sato-sdk directory and I don't know if this is the on=
e to use or to use the sysroot directory in /fsl-community/build/tmp/sysroo=
ts.
Toolchain root location: /home/pjo/fsl-community/buildSysroot Location : /h=
ome/pjo/fsl-community/build/tmp/work/imx28evk-poky-linux-gnueabi/core-image=
-sato-sdk/1.0-ro/rootfsTarget architecture : armv5te-poky-linux-gnueabi
The Hello World project is working well when exported on the target.

But now when I try to add to the Hello World project some headers like for =
example : #include"ddi_bc_hw.h" or "ddi_bc_internal.h"=2C I  created an env=
ironment variable called INCLUDES =3D -I/home/pjo/fsl-community-bsp/build/t=
mp/sysroots/imx28evk/usr/src/kernel/drivers/power/mxs -I/home/pjo/fsl-commu=
nity-bsp/build/tmp/sysroots/imx28evk/usr/src/kernel/arch/arm/plat-mxs/inclu=
de/mach
The headers are now recognized. But when I try to access the function ddi_b=
c_hwGetBatteryVoltage() :=20
voltage =3D ddi_bc_hwGetBatteryVoltage()=3Bprintf("Voltage =3D %u \n"=2C vo=
ltage)=3B
There is an undefined reference to this function (defined in ddi_bc_hw.h)


In this document chapter 27 the functions for Battery Charger are described=
: http://www.element14.com/community/servlet/JiveServlet/download/56891-1-4=
4201/Freescale-i.MX28-MCIMX281AVM4B-Gallery%20MCU-Reference%20Manuals-Frees=
cale.Reference_Maunal_1.pdf
So now my question is the following: Is it possible to use those headers wh=
en programming ? or are they in kernel space and not accessible by the appl=
ication developper ? If not : Will the battery charger behaviour be the sam=
e all the time after the image is copied on a SD card ?If yes : How to get =
rid of the undefined reference ?
I tried to use readelf to find the libs that match the headers. But it was =
unsuccessfull. So I added to several environment variables in Eclipse all t=
he folders named "include" so Eclipse ca n find the libs in the correct pat=
hs. I tried to get some documentation on how to add packages to the build=
=2C or modules. I've read some documentation on ioctl's but according to th=
e reference manual above ioctl's are only for frame buffer driver=2C pixel =
pipeline etc ... (but not battery charger ?)
All I found is a file : /home/pjo/fsl-community-bsp/build/tmp/work/imx28evk=
-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0/rootfs/usr/lib/matchbox-pane=
l/libbattery.so
But it seems like this is not the correct lib to add and it gererates many =
errors during build : all of this type : /home/pjo/fsl-community-bsp/build/=
tmp/sysroots/imx28evk/usr/include/gtk/gtk.h:32:21: fatal error: gdk/gdk.h: =
No such file or directorySo i create the symbolic links so the files are fo=
und but I don't think it's the correct way.

All I can do right now is a program like this :  (which is capable of retri=
eving the voltage in user space)
int main(void) {        puts("Hello World")=3B        char voltage_from_fil=
e[12] =3D ""=3B        FILE* fd =3D NULL=3B        fd =3D fopen("/sys/class=
/power_supply/battery/voltage_now"=2C "r")=3B
        if (fd !=3D NULL)        {            fgets(voltage_from_file=2C 12=
=2C fd)=3B            printf("Voltage : %s"=2C voltage_from_file)=3B       =
     fclose(fd)=3B        }        return 0=3B}
But if I want to use this value to set the charging current using uint16_t =
u16ChargingCurrent=3B=0A=
uint16_t u16ChargingThresholdCurrent=3B or cut the battery or anything else=
 I'm stuck....
If think that my problem is global understanding of the Linux architecture =
and Kernel space=2C and linking libraries to the makefile...=20
But I would be really grateful if you could help me out=2C answer my previo=
us questions or at least tell me what is the correct way to develop this si=
mple application. Maybe what I'm trying to do=2C and on which I'm stuck for=
 more than 2 weeks now is simply not possible=2C but I'd like to be sure ab=
out it ^^
Thank you in advance for your help=2C and sorry for this long email.
Kind regards=2C
Pierre Jozwicki





 		 	   		  =

--_f663f44d-89fd-4d03-826f-0dd4aafc0dec_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<div><br></div><div>First o=
f all=2C thank you very much if you can take the time to read my email and =
give me some answers to my questions.</div><div>I'm sorry for this mail bee=
ing quite long but I'm trying to give you the necessary details so you woul=
d have more chances to help me out =3B)</div><div><br></div><div>I am prett=
y new to cross compilation methods and a big newbie in Linux architecture=
=2C user's and kernel space.</div><div>I'm working on an imx28evk board=2C =
linux kernel 2.6.35 and to start with this board I'm trying to write a simp=
le code for Battery Monitoring.</div><div><br></div><div>- - - - -&nbsp=3B<=
span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"fo=
nt-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B=
">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=
=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span =
style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-si=
ze: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- -=
 - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</=
span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=
=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 1=
2pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - =
-&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span>=
<span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"f=
ont-size: 12pt=3B">- - - - -&nbsp=3B</span></div><div><br></div><div>In thi=
s document (Using the PMU + Battery Charger) :&nbsp=3B<a href=3D"http://cac=
he.freescale.com/files/32bit/doc/app_note/AN4199.pdf" target=3D"_blank" sty=
le=3D"font-size: 12pt=3B">http://cache.freescale.com/files/32bit/doc/app_no=
te/AN4199.pdf</a></div><div>and making a ctlf +f with keyword "modif"=2C sh=
ows that (Kernel side):</div><div><br></div><div>1/</div><div>- in file&nbs=
p=3B/linux-2.6.35.3/arch/arm/mach-mx28/bus_freq.c : VDDIO can be modified</=
div><div>- in file&nbsp=3B/linux-2.6.35.3/arch/arm/mach-mx28/device.c :&nbs=
p=3Bthe values of u16ChargingCurrent=2C  u16ChargingThresholdCurrent&nbsp=
=3Bcan be modified.</div><div><br></div><div>2/</div><div>In power_prep.c t=
he brownout level can be modified according to the battery reference voltag=
e.</div><div><br></div><div>Correct me if I'm wrong but for me the changes =
made to the files described in 1/ and 2/ have to be done on the git downloa=
ded archive and prior to bitbaking an image. Then the image obtained contai=
ns the battery charger configured in the way we specified it in those files=
.</div><div>Is this correct ?</div><div><br></div><div>- - - - -&nbsp=3B<sp=
an style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font=
-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">=
- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=
=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span =
style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-si=
ze: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- -=
 - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</=
span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=
=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 1=
2pt=3B">- - - - -&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - =
-&nbsp=3B</span><span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span>=
<span style=3D"font-size: 12pt=3B">- - - - -&nbsp=3B</span><span style=3D"f=
ont-size: 12pt=3B">- - - - -&nbsp=3B</span></div><div><br></div><div>But no=
w what to do if I want to for example write a C code with Eclipse configure=
d using autotools to monitor the Battery Charger ?</div><div><br></div><div=
>To configure eclipse=2C I followed the steps in section 4.2.2 of :&nbsp=3B=
<a href=3D"http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.htm=
l#modifying-temporary-source-code" target=3D"_blank" style=3D"font-size: 12=
pt=3B">http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#mo=
difying-temporary-source-code</a></div><div><br></div><div><span style=3D"f=
ont-size: 12pt=3B">As the image I bitbaked is a core-image-sato-sdk I have =
a rootfs directory inside the core-image-sato-sdk directory and I don't kno=
w if this is the one to use or to use the sysroot directory in /fsl-communi=
ty/build/tmp/sysroots.</span></div><div><span style=3D"font-size: 12pt=3B">=
<br></span></div><div>Toolchain root location: /home/pjo/fsl-community/buil=
d</div><div>Sysroot Location : /home/pjo/fsl-community/build/tmp/work/imx28=
evk-poky-linux-gnueabi/core-image-sato-sdk/1.0-ro/rootfs</div><div>Target a=
rchitecture : armv5te-poky-linux-gnueabi</div><div><br></div><div>The Hello=
 World project is working well when exported on the target.</div><div><br><=
/div><div><br></div><div>But now when I try to add to the Hello World proje=
ct some headers like for example : #include"ddi_bc_hw.h" or "ddi_bc_interna=
l.h"=2C I &nbsp=3Bcreated an environment variable called INCLUDES =3D -I/ho=
me/pjo/fsl-community-bsp/build/tmp/sysroots/imx28evk/usr/src/kernel/drivers=
/power/mxs -I/home/pjo/fsl-community-bsp/build/tmp/sysroots/imx28evk/usr/sr=
c/kernel/arch/arm/plat-mxs/include/mach</div><div><br></div><div>The header=
s are now recognized. But when I try to access the function ddi_bc_hwGetBat=
teryVoltage() :&nbsp=3B</div><div><br></div><div>voltage =3D ddi_bc_hwGetBa=
tteryVoltage()=3B</div><div>printf("Voltage =3D %u \n"=2C voltage)=3B</div>=
<div><br></div><div>There is an undefined reference to this function (defin=
ed in ddi_bc_hw.h)</div><div><br></div><div><br></div><div><br></div><div>I=
n this document chapter 27 the functions for Battery Charger are described:=
&nbsp=3B<a href=3D"http://www.element14.com/community/servlet/JiveServlet/d=
ownload/56891-1-44201/Freescale-i.MX28-MCIMX281AVM4B-Gallery%20MCU-Referenc=
e%20Manuals-Freescale.Reference_Maunal_1.pdf" target=3D"_blank" style=3D"fo=
nt-size: 12pt=3B">http://www.element14.com/community/servlet/JiveServlet/do=
wnload/56891-1-44201/Freescale-i.MX28-MCIMX281AVM4B-Gallery%20MCU-Reference=
%20Manuals-Freescale.Reference_Maunal_1.pdf</a></div><div><br></div><div>So=
 now my question is the following: Is it possible to use those headers when=
 programming ? or are they in kernel space and not accessible by the applic=
ation developper ?&nbsp=3B</div><div>If not : Will the battery charger beha=
viour be the same all the time after the image is copied on a SD card ?</di=
v><div>If yes : How to get rid of the undefined reference ?</div><div><br><=
/div><div>I tried to use readelf to find the libs that match the headers. B=
ut it was unsuccessfull. So I added to several environment variables in Ecl=
ipse all the folders named "include" so Eclipse ca n find the libs in the c=
orrect paths. I tried to get some documentation on how to add packages to t=
he build=2C or modules. I've read some documentation on ioctl's but accordi=
ng to the reference manual above ioctl's are only for frame buffer driver=
=2C pixel pipeline etc ... (but not battery charger ?)</div><div><br></div>=
<div>All I found is a file :&nbsp=3B/home/pjo/fsl-community-bsp/build/tmp/w=
ork/imx28evk-poky-linux-gnueabi/core-image-sato-sdk/1.0-r0/rootfs/usr/lib/m=
atchbox-panel/libbattery.so</div><div><br></div><div>But it seems like this=
 is not the correct lib to add and it gererates many errors during build : =
all of this type :&nbsp=3B</div><div><div>/home/pjo/fsl-community-bsp/build=
/tmp/sysroots/imx28evk/usr/include/gtk/gtk.h:32:21: fatal error: gdk/gdk.h:=
 No such file or directory</div></div><div>So i create the symbolic links s=
o the files are found but I don't think it's the correct way.</div><div><br=
></div><div><br></div><div>All I can do right now is a program like this : =
&nbsp=3B(<span style=3D"font-size: 12pt=3B">which is capable of retrieving =
the voltage in user space)</span></div><div><br></div><div><div>int main(vo=
id) {</div><div>&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B puts("Hello World")=3B<=
/div><div>&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B char voltage_from_file[12] =
=3D ""=3B</div><div><span style=3D"font-size: 12pt=3B">&nbsp=3B &nbsp=3B &n=
bsp=3B &nbsp=3B FILE* fd =3D NULL=3B</span></div><div><span style=3D"font-s=
ize: 12pt=3B">&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B fd =3D fopen("/sys/class/=
power_supply/battery/voltage_now"=2C "r")=3B</span></div><div><br></div><di=
v>&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B if (fd !=3D NULL)</div><div>&nbsp=3B =
&nbsp=3B &nbsp=3B &nbsp=3B {</div><div>&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B =
&nbsp=3B &nbsp=3B&nbsp=3Bfgets(voltage_from_file=2C 12=2C fd)=3B</div><div>=
&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B printf("Voltage : %s"=
=2C voltage_from_file)=3B</div><div><span style=3D"font-size: 12pt=3B">&nbs=
p=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B fclose(fd)=3B</span></div=
><div>&nbsp=3B &nbsp=3B &nbsp=3B &nbsp=3B }</div><div>&nbsp=3B &nbsp=3B &nb=
sp=3B &nbsp=3B return 0=3B</div><div>}</div></div><div><br></div><div>But i=
f I want to use this value to set the charging current using uint16_t u16Ch=
argingCurrent=3B=0A=
uint16_t u16ChargingThresholdCurrent=3B or cut the battery or anything else=
 I'm stuck....</div><div><br></div><div>If think that my problem is global =
understanding of the Linux architecture and Kernel space=2C and linking lib=
raries to the makefile...&nbsp=3B</div><div><br></div><div>But I would be r=
eally grateful if you could help me out=2C answer my previous questions or =
at least tell me what is the correct way to develop this simple application=
. Maybe what I'm trying to do=2C and on which I'm stuck for more than 2 wee=
ks now is simply not possible=2C but I'd like to be sure about it ^^</div><=
div><br></div><div>Thank you in advance for your help=2C and sorry for this=
 long email.</div><div><br></div><div>Kind regards=2C</div><div><br></div><=
div>Pierre Jozwicki</div><div><br></div><div><br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div> 		 	   		  </div></body>
</html>=

--_f663f44d-89fd-4d03-826f-0dd4aafc0dec_--
