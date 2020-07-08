Subject: Configuring UIO to handle GPIO interrupt #yocto #linux
To: yocto@lists.yoctoproject.org
From: sdw@inea.com
X-Originating-Location: Nashua, New Hampshire, US (24.63.67.55)
X-Originating-Platform: Windows Chrome 83
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Jul 2020 07:15:17 -0700
Message-ID: <xX9c.1594217717668483382.XXBG@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto community,

I am hoping that you can provide advice on configuring UIO to handle a GPI=
O interrupt from user space.  I found an excellent summary at https://yurov=
sky.github.io/2014/10/10/linux-uio-gpio-interrupt.html and have tried to fo=
llow it as well as I can, being a newcomer to Yocto and embedded Linux.=20

We are using a Variscite DART-MX8M-MINI development kit, with the i.MX8M M=
ini processor on a System-on-Module.  I have enabled spidev, which I am usi=
ng to communicate with an ADS1299 EEG analog front end from TI.  It generat=
es a =E2=80=9Cdata ready=E2=80=9D interrupt DRDY# (active low).  I=E2=80=99=
d like to be able to handle this falling-edge interrupt by connecting it to=
 a GPIO (GPIO1_0) and either read() or poll() to wait for an interrupt, and=
 can then read the acquired data using /dev/spidev0.0.=20

In my device tree, I have added the following under my &ecspi1 node.  I am=
 not certain this is the correct place to add this information, or if I can=
 simply add it within the device tree =E2=80=9Croot=E2=80=9D node =E2=80=9C=
/ {=E2=80=9C.  I would appreciate your advice on the best place add this in=
formation!
       // Added for DRDY# interrupt on GPIO1_0 from user space=20
       user_io@0 {=20
              compatible =3D "mydevice,generic-uio,ui_pdrv";=20
              status =3D "okay";=20
              interrupt-parent =3D <&gpio1>;=20
              interrupts =3D <0 IRQ_TYPE_EDGE_FALLING>;=20
              pinctrl-names =3D "default";=20
              pinctrl-0 =3D <&pinctrl_user_io>;=20
       };=20

Under my dts &iomuxc node, the various pinctrl groups are defined.  I adde=
d the following for GPIO1_0:=20
              // Added for DRDY# interrupt on GPIO1_0 from user space=20
              pinctrl_user_io: user_io-0 {=20
                     fsl,pins =3D <=20
                           MX8MM_IOMUXC_GPIO1_IO00_GPIO1_IO0           0x1=
c0=20
                     >;=20
              };
This should configure the pin to enable a pull-up.

I have modified my kernel .config file via 'bitbake -c menuconfig virtual/=
kernel', and it contains the following entries:=20
CONFIG_UIO=3Dy
CONFIG_UIO_PDRV_GENIRQ=3Dm=20
  
The =E2=80=9Cy=E2=80=9D setting for CONFIG_UIO was evidently due to other =
dependencies in the provided configuration.  I then built the SD card image=
 using 'bitbake fsl-image-qt5', and programmed it onto my SD card.

However, when I boot the board up, I cannot see /dev/uio0 or run the modpr=
obe command as specified in the description at the link provided above:=20
root@imx8mm-var-dart:~# ls /dev/u*
/dev/ubi_ctrl  /dev/udev_network_queue  /dev/uhid  /dev/uinput  /dev/urand=
om root@imx8mm-var-dart:~# modprobe uio_pdrv_genirq of_id=3D"mydevice,gener=
ic-uio,ui_pdrv"=20
modprobe: FATAL: Module uio_pdrv_genirq not found in directory /lib/module=
s/4.19.35-imx8mm+ge6d3e3fefe4e=20

I used grep to look for =E2=80=9Cuio=E2=80=9D in the /lib/modules director=
y, and only found the following:=20
root@imx8mm-var-dart:/lib/modules/4.19.35-imx8mm+ge6d3e3fefe4e# grep -RnI =
uio .=20
./modules.builtin:270:kernel/drivers/uio/uio.ko=20

I am stumped, and think I must have something wrong in my .dts file, my .c=
onfig file, or in the packages/libraries added to the Yocto image.  Do you =
have any suggestions for how to diagnose/fix this problem?  I can provide m=
y .config file, .dts file, or any other information, but I am not sure how =
they should be added for access by the group.

UIO apparently is a "preferred" way to handle writing simple device driver=
s from user space.  Do I need to add something to Yocto to enable UIO and U=
IO_PDRV_GENIRQ?

Thank you for your help, and kind regards,=20
Scott
