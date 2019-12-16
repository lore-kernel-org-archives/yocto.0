Subject: Problem with rootfs boot on my raspberrypi. #raspberrypi
To: yocto@lists.yoctoproject.org
From: wojciech.st@tutanota.com
X-Originating-Location: Głogów, Lower Silesia, PL (77.255.204.221)
X-Originating-Platform: Linux Firefox 71
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 16 Dec 2019 14:04:46 -0800
Message-ID: <z9kc.1576533886254370509.mtN6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cxV10OZiEiZYriX0wFdh"

--cxV10OZiEiZYriX0wFdh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
I am building simple image for my raspbery pi 3 A+ and connect to the pi v=
ia USB-UART converter and see the following in the console
...
[ 2.071459] Run /bin/init as init process
[ 2.076507] Run /bin/sh as init process
sh: cannot set terminal process group (-1): Inappropriate ioctl for device
sh: no job control in this shell
sh-4.4#

I build with the "bitbake core-image-base" and tried to run it on rpi 3A+,=
 3B, 3B+ and the problem is always the same it cannot switch to the rootfs =
on the sd card it seem like it stack at initramfs or some middle ground.

I burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.04 host m=
achine.
I tried with two branches thud and warrior and the problem is exactly the =
same.
The strange thing is that in this initramfs there are no tools like find g=
rep modprobe etc. but I see my extra tools " i2c-tools vim"

Here is my local.conf adjustments:
MACHINE ?=3D "raspberrypi3"
ENABLE_I2C =3D "1"
ENABLE_UART =3D "1"
IMAGE_INSTALL +=3D "i2c-tools vim"

and the bblayer.conf
BBLAYERS ?=3D " \
/media/dave/Develop/yoctopi/warrior/sources/poky/meta \
/media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \
/media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \
/media/dave/Develop/yoctopi/warrior/sources/meta-openembedded/meta-oe \
/media/dave/Develop/yoctopi/warrior/sources/meta-raspberrypi \
"

I tried also to build with the deprecated image "bitbake rpi-basic-image" =
but then I did not get my extra tools "i2c-tools vim".

Anyone have any idea what can be wrong with my approach ?

Regards,

Wojciech

--cxV10OZiEiZYriX0wFdh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi <br />I am building simple image for my raspbery pi 3 A+ and connect to =
the pi via USB-UART converter and see the following in the console <br /><s=
pan style=3D"font-family: courier_newregular, courier;">...</span><br /><sp=
an style=3D"font-family: courier_newregular, courier;">[ 2.071459] Run /bin=
/init as init process </span><br /><span style=3D"font-family: courier_newr=
egular, courier;">[ 2.076507] Run /bin/sh as init process </span><br /><spa=
n style=3D"font-family: courier_newregular, courier;">sh: cannot set termin=
al process group (-1): Inappropriate ioctl for device </span><br /><span st=
yle=3D"font-family: courier_newregular, courier;">sh: no job control in thi=
s shell </span><br /><span style=3D"font-family: courier_newregular, courie=
r;">sh-4.4#<br /><br /></span><br /><span style=3D"font-family: helvetica n=
eue;"><br />I build with the "bitbake core-image-base" and tried to run it =
on rpi 3A+, 3B, 3B+ and the problem is always the same it cannot switch to =
the rootfs on the sd card it seem like it stack at initramfs or some middle=
 ground. <br /></span><br /><span style=3D"font-family: helvetica neue;">I =
burn the *.rpi-sdimg image to SD card with dd from my Ubuntu16.04 host mach=
ine.<br />I tried with two branches thud and warrior and the problem is exa=
ctly the same. <br />The strange thing is that in this initramfs there are =
no tools like find grep modprobe etc. but I see my extra tools "</span><spa=
n style=3D"font-family: courier_newregular, courier;"><span style=3D"font-f=
amily: helvetica neue;">i2c-tools vim"</span><br /><br /><span style=3D"fon=
t-family: helvetica neue;">Here is my local.conf adjustments:</span><br />M=
ACHINE ?=3D "raspberrypi3"<br />ENABLE_I2C =3D "1"<br />ENABLE_UART =3D "1"=
<br />IMAGE_INSTALL +=3D "i2c-tools vim"<br /><br /><span style=3D"font-fam=
ily: helvetica neue;">and the bblayer.conf</span><br />BBLAYERS ?=3D " \<br=
 />&nbsp; /media/dave/Develop/yoctopi/warrior/sources/poky/meta \<br />&nbs=
p; /media/dave/Develop/yoctopi/warrior/sources/poky/meta-poky \<br />&nbsp;=
 /media/dave/Develop/yoctopi/warrior/sources/poky/meta-yocto-bsp \<br />&nb=
sp; /media/dave/Develop/yoctopi/warrior/sources/meta-openembedded/meta-oe \=
 <br />&nbsp; /media/dave/Develop/yoctopi/warrior/sources/meta-raspberrypi =
\<br />&nbsp; "<br /><br /><span style=3D"font-family: helvetica neue;">I t=
ried also to build with the deprecated image "bitbake rpi-basic-image" but =
then I did not get my extra tools </span></span><span style=3D"font-family:=
 courier_newregular, courier;"><span style=3D"font-family: helvetica neue;"=
>"i2c-tools vim".</span><br /><br /><span style=3D"font-family: helvetica n=
eue;">Anyone have any idea what can be wrong with my approach ?</span><br /=
><br /><span style=3D"font-family: helvetica neue;">Regards,</span><br /><b=
r /><span style=3D"font-family: helvetica neue;">Wojciech</span></span>

--cxV10OZiEiZYriX0wFdh--
