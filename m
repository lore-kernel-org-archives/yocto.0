Subject: Enabling Serial console via uart1(serial1) in cm3(rpi3) kernel 5.4. #cm3 #dunfell
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Firefox 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Feb 2021 05:24:40 -0800
Message-ID: <gBp3.1613049880489523374.fNiM@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jhNQdVE2mGLmNihxCRG7"

--jhNQdVE2mGLmNihxCRG7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Team,

I'm using poky-dunfell=C2=A0 to get os for my raspberrypi-cm3.
I need to get the stdout data to serial console via uart1(serial1).

I given change in my cmdline.txt as:=C2=A0=C2=A0 dwc_otg.lpm_enable=3D0 co=
nsole=3Dserial1,115200 consol=3Dtty1 root=3D/dev/mmcblk0p2 rootfstype=3Dext=
4 rootwait kgdboc=3Dserial0,115200
and in=C2=A0 config.txt=C2=A0 as:

dtoverlay=3Dpi3-disable-bt
dtparam=3Duart1=3Don
# Enable UART
enable_uart=3D1
dtoverlay=3Duart1,txd1_pin=3D32,rxd1_pin=3D33
core_freq=3D250
force_turbo=3D1

then also I'm not getting the serial output in my serial1.

Please help to resolve this issue.

Thanks & Regards.

--jhNQdVE2mGLmNihxCRG7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Team,<br /><br />I'm using poky-dunfell&nbsp; to get os for my raspber=
rypi-cm3.<br />I need to get the stdout data to serial console via uart1(se=
rial1).<br /><br />I given change in my cmdline.txt as:&nbsp;&nbsp; dwc_otg=
.lpm_enable=3D0 console=3Dserial1,115200 consol=3Dtty1 root=3D/dev/mmcblk0p=
2 rootfstype=3Dext4 rootwait kgdboc=3Dserial0,115200<br />and in&nbsp; conf=
ig.txt&nbsp; as:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />dtov=
erlay=3Dpi3-disable-bt<br />dtparam=3Duart1=3Don<br /># Enable UART<br />en=
able_uart=3D1<br />dtoverlay=3Duart1,txd1_pin=3D32,rxd1_pin=3D33<br />core_=
freq=3D250<br />force_turbo=3D1<br /><br />then also I'm not getting the se=
rial output in my serial1.<br /><br />Please help to resolve this issue.<br=
 /><br />Thanks &amp; Regards.

--jhNQdVE2mGLmNihxCRG7--
