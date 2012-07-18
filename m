Return-Path: <vidal.develone@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3C09E00348
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 17:54:02 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so1259370ggn.35
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 17:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=g56WYyiAZnAsB6kuWFVJSkVMpmPEq6uijcEKcNrr848=;
	b=ta0x3zZcloyRyg7Js8XX/ImFvOSNl5FACcJBJRYELph8WJRq3L4ecrmiZelG0Z1C4p
	s9EMGZnx+ABGZxZVFYSYhCPl4TKw8zffsr3vl7BXtVNxZt7Hqa5of5WF5is0rxnc/2lj
	dDF3CeBtrdRUUZdO18XfcDrcdxSz4lMN/X5QK2Rd9FxIHFtamkVXGkWrbPL/OkhOdnEC
	0fqj82hQI46+FymjiyG6bnm4uz3lR81jGU+wB8GKufsiQAmEVZRErncRk7vKgW1tafEm
	dNj5oKJHKuecisKd0q5CCyx8/IZSG7/JFZlWSk8PlR5m5Le1TlH7ZRHCs3TlEHbksBrZ
	oNkw==
MIME-Version: 1.0
Received: by 10.50.184.129 with SMTP id eu1mr498217igc.18.1342572841903; Tue,
	17 Jul 2012 17:54:01 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Tue, 17 Jul 2012 17:54:01 -0700 (PDT)
Date: Tue, 17 Jul 2012 18:54:01 -0600
Message-ID: <CANwz6nwhuBHFHKr491qAXrfX8jYe_aedoA1oQQyfLwy66e-0ag@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 00:54:03 -0000
Content-Type: multipart/alternative; boundary=14dae9340eb553a74b04c51019ba

--14dae9340eb553a74b04c51019ba
Content-Type: text/plain; charset=ISO-8859-1

Hello,
The beagleboard that I am using is XM.

I did not modify the kernel at

 this is with no uEnv.txt
[vidal@ws009 ~]$ cat no_boot_scr.txt
* - * Qodem 0.1.2 Capture Generated Sun, 15 Jul 2012 09:12:08 -0600 BEGIN *
- *



Texas Instruments X-Loader 1.5.0 (Jul 11 2012 - 21:01:18)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 11 2012 - 21:01:18)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  0
OMAP3 beagleboard.org # printenv
baudrate=115200
bootcmd=if mmc rescan ${mmcdev}; then echo SD/MMC found on device
${mmcdev};if r
un loadbootenv; then run importbootenv;fi;if test -n $uenvcmd; then echo
Running
 uenvcmd ...;run uenvcmd;fi;if run loaduimage; then run mmcboot;fi;fi;run
nandbo
ot;
bootdelay=10
buddy=none
console=ttyS2,115200n8
defaultdisplay=dvi
dieid#=158000029ff800000160a7450b02602d
dvimode=1024x768MR-16@60
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $
filesize
loadaddr=0x82000000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} uEnv.txt
loaduimage=fatload mmc ${mmcdev} ${loadaddr} uImage
mmcargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapf
b.mode=dvi:${dvimode} omapfb.debug=y omapdss.def_disp=${defaultdisplay}
root=${m
mcroot} rootfstype=${mmcrootfstype}
mmcboot=echo Booting from mmc ...; run mmcargs; bootm ${loadaddr}
mmcdev=0
mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
mpurate=auto
nandargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omap
fb.mode=dvi:${dvimode} omapfb.debug=y omapdss.def_disp=${defaultdisplay}
root=${
nandroot} rootfstype=${nandrootfstype}
nandboot=echo Booting from nand ...; run nandargs; nand read ${loadaddr}
280000
400000; bootm ${loadaddr}
nandroot=/dev/mtdblock4 rw
nandrootfstype=jffs2
usbtty=cdc_acm
vram=12M

Environment size: 1371/131068 bytes
OMAP3 beagleboard.org #
* - * Qodem 0.1.2 Capture Generated Sun, 15 Jul 2012 09:12:58 -0600 END * -
*
[vidal@ws009 ~]$
I added the entry mmcroot=/dev/b302 which I saw when I gt a kernel panic.
this did not work either.

What should be in uEnv.txt

mpurate=auto

dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="tty0 console=ttyO2,115200n8"
with this a kernel panic
Thanks All help will be appreciated.

--14dae9340eb553a74b04c51019ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>The beagleboard that I am using is XM.<br><br>I did not modify th=
e kernel at <br><br>=A0this is with no uEnv.txt <br>[vidal@ws009 ~]$ cat no=
_boot_scr.txt <br>* - * Qodem 0.1.2 Capture Generated Sun, 15 Jul 2012 09:1=
2:08 -0600 BEGIN * - *<br>
<br><br><br>Texas Instruments X-Loader 1.5.0 (Jul 11 2012 - 21:01:18)<br>Be=
agle xM<br>Reading boot sector<br>Loading u-boot.bin from mmc<br><br><br>U-=
Boot 2011.06 (Jul 11 2012 - 21:01:18)<br><br>OMAP3630/3730-GP ES2.1, CPU-OP=
P2, L3-165MHz, Max CPU Clock 1 Ghz<br>
OMAP3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>=
NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() fail=
ed, using default environment<br><br>In:=A0=A0=A0 serial<br>Out:=A0=A0 seri=
al<br>Err:=A0=A0 serial<br>
Beagle unknown 0x02<br>No EEPROM on expansion board<br>Die ID #158000029ff8=
00000160a7450b02602d<br>Hit any key to stop autoboot: 10=A0 9=A0 0 <br>OMAP=
3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # printenv<br>baud=
rate=3D115200<br>
bootcmd=3Dif mmc rescan ${mmcdev}; then echo SD/MMC found on device ${mmcde=
v};if r<br>un loadbootenv; then run importbootenv;fi;if test -n $uenvcmd; t=
hen echo Running<br>=A0uenvcmd ...;run uenvcmd;fi;if run loaduimage; then r=
un mmcboot;fi;fi;run nandbo<br>
ot;<br>bootdelay=3D10<br>buddy=3Dnone<br>console=3DttyS2,115200n8<br>defaul=
tdisplay=3Ddvi<br>dieid#=3D158000029ff800000160a7450b02602d<br>dvimode=3D10=
24x768MR-16@60<br>importbootenv=3Decho Importing environment from mmc ...; =
env import -t $loadaddr $<br>
filesize<br>loadaddr=3D0x82000000<br>loadbootenv=3Dfatload mmc ${mmcdev} ${=
loadaddr} uEnv.txt<br>loaduimage=3Dfatload mmc ${mmcdev} ${loadaddr} uImage=
<br>mmcargs=3Dsetenv bootargs console=3D${console} mpurate=3D${mpurate} vra=
m=3D${vram} omapf<br>
b.mode=3Ddvi:${dvimode} omapfb.debug=3Dy omapdss.def_disp=3D${defaultdispla=
y} root=3D${m<br>mcroot} rootfstype=3D${mmcrootfstype}<br>mmcboot=3Decho Bo=
oting from mmc ...; run mmcargs; bootm ${loadaddr}<br>mmcdev=3D0<br>mmcroot=
=3D/dev/mmcblk0p2 rw<br>
mmcrootfstype=3Dext3 rootwait<br>mpurate=3Dauto<br>nandargs=3Dsetenv bootar=
gs console=3D${console} mpurate=3D${mpurate} vram=3D${vram} omap<br>fb.mode=
=3Ddvi:${dvimode} omapfb.debug=3Dy omapdss.def_disp=3D${defaultdisplay} roo=
t=3D${<br>nandroot} rootfstype=3D${nandrootfstype}<br>
nandboot=3Decho Booting from nand ...; run nandargs; nand read ${loadaddr} =
280000 <br>400000; bootm ${loadaddr}<br>nandroot=3D/dev/mtdblock4 rw<br>nan=
drootfstype=3Djffs2<br>usbtty=3Dcdc_acm<br>vram=3D12M<br><br>Environment si=
ze: 1371/131068 bytes<br>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # <br>* - * Qo=
dem 0.1.2 Capture Generated Sun, 15 Jul 2012 09:12:58 -0600 END * - *<br>[v=
idal@ws009 ~]$ <br>I added the entry mmcroot=3D/dev/b302 which I saw when I=
 gt a kernel panic.<br>
this did not work either.<br><br>What should be in uEnv.txt <br><br>mpurate=
=3Dauto<br><br>dvimode=3D&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>=
vram=3D16M<br>optargs=3D&quot;consoleblank=3D0&quot;<br>console=3D&quot;tty=
0 console=3DttyO2,115200n8&quot;<br>
with this a kernel panic <br>Thanks All help will be appreciated.<br><br>

--14dae9340eb553a74b04c51019ba--
