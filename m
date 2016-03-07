Return-Path: <alanhughes@e2eservices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7144E0086B; Mon,  7 Mar 2016 12:16:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Mar 2016 12:15:57 PST
Received: from mail.e2eservices.co.uk (unknown [83.218.151.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 357F2E00803
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 12:15:57 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.e2eservices.co.uk (Postfix) with ESMTP id 4322910040DA7
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 20:10:42 +0000 (GMT)
X-Amavis-Modified: Mail body modified (using disclaimer) -
	pollux.e2eservices.co.uk
X-Virus-Scanned: amavisd-new at e2eservices.co.uk
Received: from mail.e2eservices.co.uk ([127.0.0.1])
	by localhost (pollux.e2eservices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 3iOKPEs3UNxS for <yocto@yoctoproject.org>;
	Mon,  7 Mar 2016 20:10:40 +0000 (GMT)
Received: from pollux.e2eservices.co.uk (localhost [127.0.0.1])
	by mail.e2eservices.co.uk (Postfix) with ESMTP id A740F1006B020
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 20:10:40 +0000 (GMT)
From: =?utf-8?Q?Alan_Hughes?= <alanhughes@e2eservices.co.uk>
To: =?utf-8?Q?yocto=40yoctoproject=2Eorg?= <yocto@yoctoproject.org>
Date: Mon, 7 Mar 2016 20:10:40 +0000
Mime-Version: 1.0
X-Priority: 3 (Normal)
X-Mailer: Zarafa 7.1.5-42059
Message-Id: <zarafa.56dde040.2181.51baa63704937b48@pollux.e2eservices.co.uk>
Subject: Raspberry Pi 2 BSP build problem
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
X-List-Received-Date: Mon, 07 Mar 2016 20:16:01 -0000
X-Groupsio-MsgNum: 28892
Content-Type: multipart/mixed; 
	boundary="=_01uT0DoH1NFbEZ65pjxDfaHq9FcYvW7sVyfyLCjwF0xY+eL0"

--=_01uT0DoH1NFbEZ65pjxDfaHq9FcYvW7sVyfyLCjwF0xY+eL0
Content-Type: multipart/alternative; 
 boundary="=_01uTgPHGNKvkT5OoxKwa7snoiOmP+kKAqI82Sv5VWtJinG8y"

--=_01uTgPHGNKvkT5OoxKwa7snoiOmP+kKAqI82Sv5VWtJinG8y
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I've been trying to build a BSP using Yocto 2.0 (Jethro) targetting a Ras=
pberry Pi 2. Everything goes OK until we reach the point of building the =
"u-boot-rpi" package, at which point it blows up saying that it cannot fi=
nd the file "linux/compiler-gcc5.h". I've looked on the web for any clues=
, but to date have not found anything relevent. If anyone has any suggest=
ions I would be more than happy to try them out.=0D=0A=0D=0A=C2=A0=0D=0AN=
ote: error messages attached below.=0D=0A=0D=0A=C2=A0=0D=0AAlan=0D=0A=0D=0A=
=C2=A0=0D=0A--------------------------------=0D=0A=C2=A0=0D=0AWARNING: Ho=
st distribution "CentOS-Linux-7.2.1511" has not been validated with this =
version of the build system; you may possibly experience unexpected failu=
res. It is recommended that you use a tested distribution.=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20=0D=0A=
Parsing recipes: 100% |##################################################=
################################| ETA:=C2=A0 00:00:00=0D=0AParsing of 191=
9 .bb files complete (0 cached, 1919 parsed). 2489 targets, 141 skipped, =
0 masked, 0 errors.=0D=0ANOTE: Resolving any missing task queue dependenc=
ies=0D=0A=0D=0ABuild Configuration:=0D=0ABB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D "1.28.0"=0D=0ABUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux"=0D=0ANATIVELSBSTRING=C2=A0=C2=A0=
 =3D "CentOS-Linux-7.2.1511"=0D=0ATARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D "arm-poky-linux-gnueabi"=0D=0AMACHINE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "raspberrypi2"=0D=0ADISTRO=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "poky=
"=0D=0ADISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "2.0.1"=0D=0ATUNE_FEATURES=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7a vfp thumb neon callconvention-hard =
vfpv4 cortexa7"=0D=0ATARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =3D "vfp-vfpv4-neon"=0D=0Ameta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20=0D=0Ameta-yocto=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=20=0D=0Ameta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "je=
thro:7fe17a2942ff03e2ec47d566fd5393f52b2eb736"=0D=0Ameta-oe=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20=0D=0Ameta-systemd=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=20=0D=0Ameta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=20=0D=0Ameta-networking=C2=A0=C2=A0=20=0D=0Ameta-multimedia=C2=A0=C2=A0=
 =3D "jethro:dc5634968b270dde250690609f0015f881db81f2"=0D=0Ameta-java=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "master:4c9dfc2b14676db414=
d915ba3bab9e101de73e05"=0D=0Ameta-oracle-java=C2=A0 =3D "master:f7c98706f=
80a2488ad2628e5b0c6d3f9f80c24fd"=0D=0Ameta-raspberrypi=C2=A0 =3D "jethro:=
f2cff839f52a6e6211337fc45c7c3eabf0fac113"=0D=0A=0D=0ANOTE: Preparing RunQ=
ueue=0D=0ANOTE: Executing SetScene Tasks=0D=0ANOTE: Executing RunQueue Ta=
sks=0D=0AWARNING: Failed to fetch URL ftp://invisible-island.net/ncurses/=
current/ncurses-5.9-20150329.tgz, attempting MIRRORS if available=0D=0AWA=
RNING: Failed to fetch URL http://www.openssl.org/source/openssl-1.0.2d.t=
ar.gz, attempting MIRRORS if available=0D=0AERROR: oe_runmake failed=0D=0A=
ERROR: Function failed: do_compile (log file is located at /home/sde/Proj=
ects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-=
rpi/git-r0/temp/log.do_compile.44274)=0D=0AERROR: Logfile of failure stor=
ed in: /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-=
linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_compile.44274=0D=0ALog data f=
ollows:=0D=0A| DEBUG: Executing shell function do_compile=0D=0A| NOTE: ma=
ke -j 4 CROSS_COMPILE=3Darm-poky-linux-gnueabi- CC=3Darm-poky-linux-gnuea=
bi-gcc=C2=A0 --sysroot=3D/home/sde/Projects/neataccess-lite/bsp/tmp/sysro=
ots/raspberrypi2 V=3D1 HOSTCC=3Dgcc=C2=A0 -isystem/home/sde/Projects/neat=
access-lite/bsp/tmp/sysroots/x86_64-linux/usr/include -O2 -pipe -L/home/s=
de/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib -L/home=
/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/lib -Wl,-rpat=
h-link,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/u=
sr/lib -Wl,-rpath-link,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroot=
s/x86_64-linux/lib -Wl,-rpath,/home/sde/Projects/neataccess-lite/bsp/tmp/=
sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/sde/Projects/neataccess-li=
te/bsp/tmp/sysroots/x86_64-linux/lib -Wl,-O1 rpi_b=0D=0A| Configuring for=
 rpi_b board...=0D=0A| make=0D=0A| make[1]: Entering directory `/home/sde=
/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-=
boot-rpi/git-r0/git'=0D=0A| Generating include/autoconf.mk=0D=0A| Generat=
ing include/autoconf.mk.dep=0D=0A| In file included from /home/sde/Projec=
ts/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rp=
i/git-r0/git/include/linux/compiler.h:40:0,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 from /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-pok=
y-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/byteorder/little_endi=
an.h:12,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/sde/Projects/neatac=
cess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/=
git/include/asm/byteorder.h:29,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /=
home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gn=
ueabi/u-boot-rpi/git-r0/git/include/compiler.h:112,=0D=0A|=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 from /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspber=
rypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/image.h:36,=0D=0A|=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 from include/common.h:118:=0D=0A| /home/sde/P=
rojects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-bo=
ot-rpi/git-r0/git/include/linux/compiler-gcc.h:87:30: fatal error: linux/=
compiler-gcc5.h: No such file or directory=0D=0A| compilation terminated.=
=0D=0A| In file included from /home/sde/Projects/neataccess-lite/bsp/tmp/=
work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/=
compiler.h:40:0,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/sde/Projec=
ts/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rp=
i/git-r0/git/include/linux/byteorder/little_endian.h:12,=0D=0A|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 from /home/sde/Projects/neataccess-lite/bsp/tmp/work/rasp=
berrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteorder.h=
:29,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/sde/Projects/neatacces=
s-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git=
/include/compiler.h:112,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/s=
de/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/=
u-boot-rpi/git-r0/git/include/image.h:36,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 from include/common.h:118:=0D=0A| /home/sde/Projects/neataccess-lite/bsp=
/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/l=
inux/compiler-gcc.h:87:30: fatal error: linux/compiler-gcc5.h: No such fi=
le or directory=0D=0A| compilation terminated.=0D=0A| make[1]: Leaving di=
rectory `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-pok=
y-linux-gnueabi/u-boot-rpi/git-r0/git'=0D=0A| make[1]: Entering directory=
 `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux=
-gnueabi/u-boot-rpi/git-r0/git'=0D=0A| arm-poky-linux-gnueabi-gcc=C2=A0 -=
-sysroot=3D/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/raspberryp=
i2 -DDO_DEPS_ONLY \=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -g=C2=A0 -=
Os=C2=A0 -fno-common -ffixed-r8 -D__KERNEL__ -I/home/sde/Projects/neatacc=
ess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/g=
it/include -fno-builtin -ffreestanding -nostdinc -isystem /home/sde/Proje=
cts/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib/arm-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/include -pipe -DCONFIG_ARM -D__A=
RM__ -marm -mno-thumb-interwork -mabi=3Daapcs-linux -Wall -Wstrict-protot=
ypes -fno-stack-protector -Wno-format-nonliteral -Wno-format-security -fs=
tack-usage=C2=A0=C2=A0 \=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -o li=
b/asm-offsets.s lib/asm-offsets.c -c -S=0D=0A| if [ -f arch/arm/cpu/arm11=
76/bcm2835/asm-offsets.c ];then \=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 arm-poky-linux-gnueabi-gcc=C2=A0 --sysroot=3D/home/sde/Projects/neata=
ccess-lite/bsp/tmp/sysroots/raspberrypi2 -DDO_DEPS_ONLY \=0D=0A|=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 -g=C2=A0 -Os=C2=A0 -fno-common -ffixed-r8 -D_=
_KERNEL__ -I/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-=
poky-linux-gnueabi/u-boot-rpi/git-r0/git/include -fno-builtin -ffreestand=
ing -nostdinc -isystem /home/sde/Projects/neataccess-lite/bsp/tmp/sysroot=
s/x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
5.2.0/include -pipe -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork -ma=
bi=3Daapcs-linux -Wall -Wstrict-prototypes -fno-stack-protector -Wno-form=
at-nonliteral -Wno-format-security -fstack-usage=C2=A0=C2=A0 \=0D=0A|=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 -o arch/arm/cpu/arm1176/bcm2835/asm-offsets.s arch/arm/cpu/arm1176/bc=
m2835/asm-offsets.c -c -S; \=0D=0A| else \=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 touch arch/arm/cpu/arm1176/bcm2835/asm-offsets.s; \=0D=0A| f=
i=0D=0A| In file included from /home/sde/Projects/neataccess-lite/bsp/tmp=
/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux=
/compiler.h:40:0,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/sde/Projec=
ts/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rp=
i/git-r0/git/include/linux/byteorder/little_endian.h:12,=0D=0A|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 from /home/sde/Projects/neataccess-lite/bsp/tmp/work/rasp=
berrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteorder.h=
:29,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/sde/Projects/neatacces=
s-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git=
/include/compiler.h:112,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from /home/s=
de/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/=
u-boot-rpi/git-r0/git/include/image.h:36,=0D=0A|=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 from /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-l=
inux-gnueabi/u-boot-rpi/git-r0/git/include/common.h:118,=0D=0A|=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 from lib/asm-offsets.c:18:=0D=0A| /home/sde/Projects/neat=
access-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r=
0/git/include/linux/compiler-gcc.h:87:30: fatal error: linux/compiler-gcc=
5.h: No such file or directory=0D=0A| compilation terminated.=0D=0A| Gene=
rating include/generated/asm-offsets.h=0D=0A| tools/scripts/make-asm-offs=
ets arch/arm/cpu/arm1176/bcm2835/asm-offsets.s include/generated/asm-offs=
ets.h=0D=0A| make[1]: *** [lib/asm-offsets.s] Error 1=0D=0A| make[1]: ***=
 Waiting for unfinished jobs....=0D=0A| make[1]: Leaving directory `/home=
/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueab=
i/u-boot-rpi/git-r0/git'=0D=0A| make: *** [rpi_b] Error 2=0D=0A| ERROR: o=
e_runmake failed=0D=0A| ERROR: Function failed: do_compile (log file is l=
ocated at /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-po=
ky-linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_compile.44274)=0D=0AERROR:=
 Task 196 (/opt/yocto/2.0/meta-raspberrypi/recipes-bsp/u-boot/u-boot-rpi_=
git.bb, do_compile) failed with exit code '1'=0D=0A=0D=0A=C2=A0=0D=0A
This email and any files transmitted with it are confidential and intended solely for the use of the individual or entity to which they are addressed. If you have received this email in error please notify the sender immediately and then delete the email from your system. =0A=0AInternet communications are not secure and therefore e2E Services Ltd does not accept any liability for the contents of this message. Any views or opinions presented are solely those of the author and do not necessarily represent those of e2E Services Ltd.=0A=0AAlthough this email and any attachments have been scanned for viruses, the success of scanning products is not guaranteed.  The recipient(s) should therefore carry out any checks that they believe to be appropriate in this respect.=0A=0Ae2E Services Ltd. is a limited company registered in the UK, No. 3878701. Registered Office: e2E Services Ltd, George Court, Bartholomews Walk,  Ely, Cambridgeshire, CB7 4JW =0A

--=_01uTgPHGNKvkT5OoxKwa7snoiOmP+kKAqI82Sv5VWtJinG8y
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://ww=
w.w3.org/TR/html4/loose.dtd"><html>=0A<head>=0A  <meta name=3D"Generator"=
 content=3D"Zarafa WebAccess v7.1.5-42059">=0A  <meta http-equiv=3D"Conte=
nt-Type" content=3D"text/html; charset=3Dutf-8">=0A  <title>Raspberry Pi =
2 BSP build problem</title>=0A  <style type=3D"text/css">=0A      body=0D=
=0A      {=0D=0A        font-family: Arial, Verdana, Sans-Serif ! importa=
nt;=0D=0A        font-size: 12px;=0D=0A        padding: 5px 5px 5px 5px;=0D=
=0A        margin: 0px;=0D=0A        border-style: none;=0D=0A        bac=
kground-color: #ffffff;=0D=0A      }=0D=0A=0D=0A      p, ul, li=0D=0A    =
  {=0D=0A        margin-top: 0px;=0D=0A        margin-bottom: 0px;=0D=0A =
     }=0D=0A  </style>=0A</head>=0A<body>=0A<p>I&#39;ve been trying to bu=
ild a BSP using Yocto 2.0 (Jethro) targetting a Raspberry Pi 2. Everythin=
g goes OK until we reach the point of building the &quot;u-boot-rpi&quot;=
 package, at which point it blows up saying that it cannot find the file =
&quot;linux/compiler-gcc5.h&quot;. I&#39;ve looked on the web for any clu=
es, but to date have not found anything relevent. If anyone has any sugge=
stions I would be more than happy to try them out.</p><p>&nbsp;</p><p>Not=
e: error messages attached below.</p><p>&nbsp;</p><p>Alan</p><p>&nbsp;</p=
><hr /><p>&nbsp;</p><p>WARNING: Host distribution &quot;CentOS-Linux-7.2.=
1511&quot; has not been validated with this version of the build system; =
you may possibly experience unexpected failures. It is recommended that y=
ou use a tested distribution.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />Parsing recipes: 100% |####=
#########################################################################=
#####| ETA:&nbsp; 00:00:00<br />Parsing of 1919 .bb files complete (0 cac=
hed, 1919 parsed). 2489 targets, 141 skipped, 0 masked, 0 errors.<br />NO=
TE: Resolving any missing task queue dependencies<br /><br />Build Config=
uration:<br />BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;1.28.0&quot;<br />BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; =3D &quot;x86_64-linux&quot;<br />NATIVELSBSTRING&nbsp;&nbsp; =3D =
&quot;CentOS-Linux-7.2.1511&quot;<br />TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;<br />MACHINE&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;raspb=
errypi2&quot;<br />DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<br />DISTRO_VERSION&nbsp;&nbsp;&n=
bsp; =3D &quot;2.0.1&quot;<br />TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D=
 &quot;arm armv7a vfp thumb neon callconvention-hard vfpv4 cortexa7&quot;=
<br />TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;vfp-=
vfpv4-neon&quot;<br />meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; <br />meta-yocto-bsp&nbsp;&nbsp;&nbsp; =3D &quot;jethro=
:7fe17a2942ff03e2ec47d566fd5393f52b2eb736&quot;<br />meta-oe&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />meta-systemd&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; <br />meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp; <br />meta-networking&nbsp;&nbsp; <br />meta-multimedia&nbsp;&nbsp; =
=3D &quot;jethro:dc5634968b270dde250690609f0015f881db81f2&quot;<br />meta=
-java&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:4c=
9dfc2b14676db414d915ba3bab9e101de73e05&quot;<br />meta-oracle-java&nbsp; =
=3D &quot;master:f7c98706f80a2488ad2628e5b0c6d3f9f80c24fd&quot;<br />meta=
-raspberrypi&nbsp; =3D &quot;jethro:f2cff839f52a6e6211337fc45c7c3eabf0fac=
113&quot;<br /><br />NOTE: Preparing RunQueue<br />NOTE: Executing SetSce=
ne Tasks<br />NOTE: Executing RunQueue Tasks<br />WARNING: Failed to fetc=
h URL ftp://invisible-island.net/ncurses/current/ncurses-5.9-20150329.tgz=
, attempting MIRRORS if available<br />WARNING: Failed to fetch URL http:=
//www.openssl.org/source/openssl-1.0.2d.tar.gz, attempting MIRRORS if ava=
ilable<br />ERROR: oe_runmake failed<br />ERROR: Function failed: do_comp=
ile (log file is located at /home/sde/Projects/neataccess-lite/bsp/tmp/wo=
rk/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_compile.=
44274)<br />ERROR: Logfile of failure stored in: /home/sde/Projects/neata=
ccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0=
/temp/log.do_compile.44274<br />Log data follows:<br />| DEBUG: Executing=
 shell function do_compile<br />| NOTE: make -j 4 CROSS_COMPILE=3Darm-pok=
y-linux-gnueabi- CC=3Darm-poky-linux-gnueabi-gcc&nbsp; --sysroot=3D/home/=
sde/Projects/neataccess-lite/bsp/tmp/sysroots/raspberrypi2 V=3D1 HOSTCC=3D=
gcc&nbsp; -isystem/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86=
_64-linux/usr/include -O2 -pipe -L/home/sde/Projects/neataccess-lite/bsp/=
tmp/sysroots/x86_64-linux/usr/lib -L/home/sde/Projects/neataccess-lite/bs=
p/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/home/sde/Projects/neatac=
cess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/sde=
/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/lib -Wl,-rpath,/h=
ome/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib -W=
l,-rpath,/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/x86_64-linux=
/lib -Wl,-O1 rpi_b<br />| Configuring for rpi_b board...<br />| make<br /=
>| make[1]: Entering directory `/home/sde/Projects/neataccess-lite/bsp/tm=
p/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git&#39;<br />| =
Generating include/autoconf.mk<br />| Generating include/autoconf.mk.dep<=
br />| In file included from /home/sde/Projects/neataccess-lite/bsp/tmp/w=
ork/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/c=
ompiler.h:40:0,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Projec=
ts/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rp=
i/git-r0/git/include/linux/byteorder/little_endian.h:12,<br />|&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; from /home/sde/Projects/neataccess-lite/bsp/tmp/work/=
raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteord=
er.h:29,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Projects/neat=
access-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r=
0/git/include/compiler.h:112,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /h=
ome/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnu=
eabi/u-boot-rpi/git-r0/git/include/image.h:36,<br />|&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp; from include/common.h:118:<br />| /home/sde/Projects/neataccess=
-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/=
include/linux/compiler-gcc.h:87:30: fatal error: linux/compiler-gcc5.h: N=
o such file or directory<br />| compilation terminated.<br />| In file in=
cluded from /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-=
poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/compiler.h:40:0,<b=
r />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Projects/neataccess-lit=
e/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/incl=
ude/linux/byteorder/little_endian.h:12,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; from /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky=
-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/byteorder.h:29,<br />|&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Projects/neataccess-lite/bsp/t=
mp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/com=
piler.h:112,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Projects/=
neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/g=
it-r0/git/include/image.h:36,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from in=
clude/common.h:118:<br />| /home/sde/Projects/neataccess-lite/bsp/tmp/wor=
k/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/linux/com=
piler-gcc.h:87:30: fatal error: linux/compiler-gcc5.h: No such file or di=
rectory<br />| compilation terminated.<br />| make[1]: Leaving directory =
`/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-=
gnueabi/u-boot-rpi/git-r0/git&#39;<br />| make[1]: Entering directory `/h=
ome/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnu=
eabi/u-boot-rpi/git-r0/git&#39;<br />| arm-poky-linux-gnueabi-gcc&nbsp; -=
-sysroot=3D/home/sde/Projects/neataccess-lite/bsp/tmp/sysroots/raspberryp=
i2 -DDO_DEPS_ONLY \<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -g&nbsp; -=
Os&nbsp; -fno-common -ffixed-r8 -D__KERNEL__ -I/home/sde/Projects/neatacc=
ess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/g=
it/include -fno-builtin -ffreestanding -nostdinc -isystem /home/sde/Proje=
cts/neataccess-lite/bsp/tmp/sysroots/x86_64-linux/usr/lib/arm-poky-linux-=
gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/include -pipe -DCONFIG_ARM -D__A=
RM__ -marm -mno-thumb-interwork -mabi=3Daapcs-linux -Wall -Wstrict-protot=
ypes -fno-stack-protector -Wno-format-nonliteral -Wno-format-security -fs=
tack-usage&nbsp;&nbsp; \<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -o li=
b/asm-offsets.s lib/asm-offsets.c -c -S<br />| if [ -f arch/arm/cpu/arm11=
76/bcm2835/asm-offsets.c ];then \<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; arm-poky-linux-gnueabi-gcc&nbsp; --sysroot=3D/home/sde/Projects/neata=
ccess-lite/bsp/tmp/sysroots/raspberrypi2 -DDO_DEPS_ONLY \<br />|&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; -g&nbsp; -Os&nbsp; -fno-common -ffixed-r8 -D_=
_KERNEL__ -I/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-=
poky-linux-gnueabi/u-boot-rpi/git-r0/git/include -fno-builtin -ffreestand=
ing -nostdinc -isystem /home/sde/Projects/neataccess-lite/bsp/tmp/sysroot=
s/x86_64-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/=
5.2.0/include -pipe -DCONFIG_ARM -D__ARM__ -marm -mno-thumb-interwork -ma=
bi=3Daapcs-linux -Wall -Wstrict-prototypes -fno-stack-protector -Wno-form=
at-nonliteral -Wno-format-security -fstack-usage&nbsp;&nbsp; \<br />|&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; -o arch/arm/cpu/arm1176/bcm2835/asm-offsets.s arch/arm/cpu/arm117=
6/bcm2835/asm-offsets.c -c -S; \<br />| else \<br />|&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; touch arch/arm/cpu/arm1176/bcm2835/asm-offsets.s; \<br /=
>| fi<br />| In file included from /home/sde/Projects/neataccess-lite/bsp=
/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/l=
inux/compiler.h:40:0,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/=
Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-b=
oot-rpi/git-r0/git/include/linux/byteorder/little_endian.h:12,<br />|&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Projects/neataccess-lite/bsp/tmp=
/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/asm/b=
yteorder.h:29,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from /home/sde/Project=
s/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi=
/git-r0/git/include/compiler.h:112,<br />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f=
rom /home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-lin=
ux-gnueabi/u-boot-rpi/git-r0/git/include/image.h:36,<br />|&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; from /home/sde/Projects/neataccess-lite/bsp/tmp/work/rasp=
berrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/git/include/common.h:118,<b=
r />|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from lib/asm-offsets.c:18:<br />| /hom=
e/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi2-poky-linux-gnuea=
bi/u-boot-rpi/git-r0/git/include/linux/compiler-gcc.h:87:30: fatal error:=
 linux/compiler-gcc5.h: No such file or directory<br />| compilation term=
inated.<br />| Generating include/generated/asm-offsets.h<br />| tools/sc=
ripts/make-asm-offsets arch/arm/cpu/arm1176/bcm2835/asm-offsets.s include=
/generated/asm-offsets.h<br />| make[1]: *** [lib/asm-offsets.s] Error 1<=
br />| make[1]: *** Waiting for unfinished jobs....<br />| make[1]: Leavi=
ng directory `/home/sde/Projects/neataccess-lite/bsp/tmp/work/raspberrypi=
2-poky-linux-gnueabi/u-boot-rpi/git-r0/git&#39;<br />| make: *** [rpi_b] =
Error 2<br />| ERROR: oe_runmake failed<br />| ERROR: Function failed: do=
_compile (log file is located at /home/sde/Projects/neataccess-lite/bsp/t=
mp/work/raspberrypi2-poky-linux-gnueabi/u-boot-rpi/git-r0/temp/log.do_com=
pile.44274)<br />ERROR: Task 196 (/opt/yocto/2.0/meta-raspberrypi/recipes=
-bsp/u-boot/u-boot-rpi_git.bb, do_compile) failed with exit code &#39;1&#=
39;<br /><br />&nbsp;</p>=0A
<br>=
<BR CLEAR=3D"ALL">=0A<HR width=3D"100%" />=0A<P style=3D"font-family: sans-serif; font-style: normal; font-size: 9pt; color: gray;">=0A=0AThis email and any files transmitted with it are confidential and intended solely for the use of the individual or entity to which they are addressed. If you have received this email in error please notify the sender immediately and then delete the email from your system. =0A<br>=0A<br>=0AInternet communications are not secure and therefore e2E Services Ltd does not accept any liability for the contents of this message. Any views or opinions presented are solely those of the author and do not necessarily represent those of e2E Services Ltd.=0A<br>=0A<br>=0AAlthough this email and any attachments have been scanned for viruses, the success of scanning products is not guaranteed.  The recipient(s) should therefore carry out any checks that they believe to be appropriate in this respect.=0A<br>=0A<br>=0Ae2E Services Ltd. is a limited company re
 gistered in the UK, No. 3878701. Registered Office: e2E Services Ltd, George Court, Bartholomews Walk,  Ely, Cambridgeshire, CB7 4JW=0A=0A</P>=0A
<br>=
</body>=0A</html>

--=_01uTgPHGNKvkT5OoxKwa7snoiOmP+kKAqI82Sv5VWtJinG8y--

--=_01uT0DoH1NFbEZ65pjxDfaHq9FcYvW7sVyfyLCjwF0xY+eL0
Content-Type: application/ms-tnef; name=winmail.dat
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=winmail.dat

eJ8+IgAAAQOQBgAkNQAAEAAAAAIBExABAAAAHDQAADwhRE9DVFlQRSBIVE1MIFBVQkxJQyAiLS8v
VzNDLy9EVEQgSFRNTCA0LjAxIFRyYW5zaXRpb25hbC8vRU4iICJodHRwOi8vd3d3LnczLm9yZy9U
Ui9odG1sNC9sb29zZS5kdGQiPjxodG1sPgo8aGVhZD4KICA8bWV0YSBuYW1lPSJHZW5lcmF0b3Ii
IGNvbnRlbnQ9IlphcmFmYSBXZWJBY2Nlc3MgdjcuMS41LTQyMDU5Ij4KICA8bWV0YSBodHRwLWVx
dWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11dGYtOCI+CiAg
PHRpdGxlPlJhc3BiZXJyeSBQaSAyIEJTUCBidWlsZCBwcm9ibGVtPC90aXRsZT4KICA8c3R5bGUg
dHlwZT0idGV4dC9jc3MiPgogICAgICBib2R5DQogICAgICB7DQogICAgICAgIGZvbnQtZmFtaWx5
OiBBcmlhbCwgVmVyZGFuYSwgU2Fucy1TZXJpZiAhIGltcG9ydGFudDsNCiAgICAgICAgZm9udC1z
aXplOiAxMnB4Ow0KICAgICAgICBwYWRkaW5nOiA1cHggNXB4IDVweCA1cHg7DQogICAgICAgIG1h
cmdpbjogMHB4Ow0KICAgICAgICBib3JkZXItc3R5bGU6IG5vbmU7DQogICAgICAgIGJhY2tncm91
bmQtY29sb3I6ICNmZmZmZmY7DQogICAgICB9DQoNCiAgICAgIHAsIHVsLCBsaQ0KICAgICAgew0K
ICAgICAgICBtYXJnaW4tdG9wOiAwcHg7DQogICAgICAgIG1hcmdpbi1ib3R0b206IDBweDsNCiAg
ICAgIH0NCiAgPC9zdHlsZT4KPC9oZWFkPgo8Ym9keT4KPHA+SSYjMzk7dmUgYmVlbiB0cnlpbmcg
dG8gYnVpbGQgYSBCU1AgdXNpbmcgWW9jdG8gMi4wIChKZXRocm8pIHRhcmdldHRpbmcgYSBSYXNw
YmVycnkgUGkgMi4gRXZlcnl0aGluZyBnb2VzIE9LIHVudGlsIHdlIHJlYWNoIHRoZSBwb2ludCBv
ZiBidWlsZGluZyB0aGUgJnF1b3Q7dS1ib290LXJwaSZxdW90OyBwYWNrYWdlLCBhdCB3aGljaCBw
b2ludCBpdCBibG93cyB1cCBzYXlpbmcgdGhhdCBpdCBjYW5ub3QgZmluZCB0aGUgZmlsZSAmcXVv
dDtsaW51eC9jb21waWxlci1nY2M1LmgmcXVvdDsuIEkmIzM5O3ZlIGxvb2tlZCBvbiB0aGUgd2Vi
IGZvciBhbnkgY2x1ZXMsIGJ1dCB0byBkYXRlIGhhdmUgbm90IGZvdW5kIGFueXRoaW5nIHJlbGV2
ZW50LiBJZiBhbnlvbmUgaGFzIGFueSBzdWdnZXN0aW9ucyBJIHdvdWxkIGJlIG1vcmUgdGhhbiBo
YXBweSB0byB0cnkgdGhlbSBvdXQuPC9wPjxwPiZuYnNwOzwvcD48cD5Ob3RlOiBlcnJvciBtZXNz
YWdlcyBhdHRhY2hlZCBiZWxvdy48L3A+PHA+Jm5ic3A7PC9wPjxwPkFsYW48L3A+PHA+Jm5ic3A7
PC9wPjxociAvPjxwPiZuYnNwOzwvcD48cD5XQVJOSU5HOiBIb3N0IGRpc3RyaWJ1dGlvbiAmcXVv
dDtDZW50T1MtTGludXgtNy4yLjE1MTEmcXVvdDsgaGFzIG5vdCBiZWVuIHZhbGlkYXRlZCB3aXRo
IHRoaXMgdmVyc2lvbiBvZiB0aGUgYnVpbGQgc3lzdGVtOyB5b3UgbWF5IHBvc3NpYmx5IGV4cGVy
aWVuY2UgdW5leHBlY3RlZCBmYWlsdXJlcy4gSXQgaXMgcmVjb21tZW5kZWQgdGhhdCB5b3UgdXNl
IGEgdGVzdGVkIGRpc3RyaWJ1dGlvbi4mbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsgPGJyIC8+UGFyc2luZyByZWNpcGVzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjfCBFVEE6Jm5ic3A7IDAwOjAwOjAwPGJyIC8+UGFyc2luZyBvZiAxOTE5IC5iYiBmaWxl
cyBjb21wbGV0ZSAoMCBjYWNoZWQsIDE5MTkgcGFyc2VkKS4gMjQ4OSB0YXJnZXRzLCAxNDEgc2tp
cHBlZCwgMCBtYXNrZWQsIDAgZXJyb3JzLjxiciAvPk5PVEU6IFJlc29sdmluZyBhbnkgbWlzc2lu
ZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2llczxiciAvPjxiciAvPkJ1aWxkIENvbmZpZ3VyYXRpb246
PGJyIC8+QkJfVkVSU0lPTiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyA9ICZxdW90OzEuMjguMCZxdW90OzxiciAvPkJVSUxEX1NZUyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA9ICZxdW90O3g4Nl82NC1saW51eCZxdW90Ozxi
ciAvPk5BVElWRUxTQlNUUklORyZuYnNwOyZuYnNwOyA9ICZxdW90O0NlbnRPUy1MaW51eC03LjIu
MTUxMSZxdW90OzxiciAvPlRBUkdFVF9TWVMmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsgPSAmcXVvdDthcm0tcG9reS1saW51eC1nbnVlYWJpJnF1b3Q7PGJyIC8+TUFD
SElORSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyA9ICZxdW90O3Jhc3BiZXJyeXBpMiZxdW90OzxiciAvPkRJU1RSTyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA9
ICZxdW90O3Bva3kmcXVvdDs8YnIgLz5ESVNUUk9fVkVSU0lPTiZuYnNwOyZuYnNwOyZuYnNwOyA9
ICZxdW90OzIuMC4xJnF1b3Q7PGJyIC8+VFVORV9GRUFUVVJFUyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyA9ICZxdW90O2FybSBhcm12N2EgdmZwIHRodW1iIG5lb24gY2FsbGNvbnZlbnRpb24taGFy
ZCB2ZnB2NCBjb3J0ZXhhNyZxdW90OzxiciAvPlRBUkdFVF9GUFUmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPSAmcXVvdDt2ZnAtdmZwdjQtbmVvbiZxdW90OzxiciAv
Pm1ldGEmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPGJyIC8+bWV0YS15b2N0byZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8YnIgLz5tZXRhLXlvY3RvLWJzcCZuYnNwOyZu
YnNwOyZuYnNwOyA9ICZxdW90O2pldGhybzo3ZmUxN2EyOTQyZmYwM2UyZWM0N2Q1NjZmZDUzOTNm
NTJiMmViNzM2JnF1b3Q7PGJyIC8+bWV0YS1vZSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyA8YnIgLz5tZXRhLXN5c3RlbWQmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgPGJyIC8+bWV0YS1weXRob24mbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsgPGJyIC8+bWV0YS1uZXR3b3JraW5nJm5ic3A7Jm5ic3A7IDxi
ciAvPm1ldGEtbXVsdGltZWRpYSZuYnNwOyZuYnNwOyA9ICZxdW90O2pldGhybzpkYzU2MzQ5Njhi
MjcwZGRlMjUwNjkwNjA5ZjAwMTVmODgxZGI4MWYyJnF1b3Q7PGJyIC8+bWV0YS1qYXZhJm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7ID0gJnF1b3Q7bWFzdGVy
OjRjOWRmYzJiMTQ2NzZkYjQxNGQ5MTViYTNiYWI5ZTEwMWRlNzNlMDUmcXVvdDs8YnIgLz5tZXRh
LW9yYWNsZS1qYXZhJm5ic3A7ID0gJnF1b3Q7bWFzdGVyOmY3Yzk4NzA2ZjgwYTI0ODhhZDI2Mjhl
NWIwYzZkM2Y5ZjgwYzI0ZmQmcXVvdDs8YnIgLz5tZXRhLXJhc3BiZXJyeXBpJm5ic3A7ID0gJnF1
b3Q7amV0aHJvOmYyY2ZmODM5ZjUyYTZlNjIxMTMzN2ZjNDVjN2MzZWFiZjBmYWMxMTMmcXVvdDs8
YnIgLz48YnIgLz5OT1RFOiBQcmVwYXJpbmcgUnVuUXVldWU8YnIgLz5OT1RFOiBFeGVjdXRpbmcg
U2V0U2NlbmUgVGFza3M8YnIgLz5OT1RFOiBFeGVjdXRpbmcgUnVuUXVldWUgVGFza3M8YnIgLz5X
QVJOSU5HOiBGYWlsZWQgdG8gZmV0Y2ggVVJMIGZ0cDovL2ludmlzaWJsZS1pc2xhbmQubmV0L25j
dXJzZXMvY3VycmVudC9uY3Vyc2VzLTUuOS0yMDE1MDMyOS50Z3osIGF0dGVtcHRpbmcgTUlSUk9S
UyBpZiBhdmFpbGFibGU8YnIgLz5XQVJOSU5HOiBGYWlsZWQgdG8gZmV0Y2ggVVJMIGh0dHA6Ly93
d3cub3BlbnNzbC5vcmcvc291cmNlL29wZW5zc2wtMS4wLjJkLnRhci5neiwgYXR0ZW1wdGluZyBN
SVJST1JTIGlmIGF2YWlsYWJsZTxiciAvPkVSUk9SOiBvZV9ydW5tYWtlIGZhaWxlZDxiciAvPkVS
Uk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxvZyBmaWxlIGlzIGxvY2F0ZWQgYXQg
L2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3dvcmsvcmFzcGJlcnJ5
cGkyLXBva3ktbGludXgtZ251ZWFiaS91LWJvb3QtcnBpL2dpdC1yMC90ZW1wL2xvZy5kb19jb21w
aWxlLjQ0Mjc0KTxiciAvPkVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9t
ZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29yay9yYXNwYmVycnlwaTIt
cG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL3RlbXAvbG9nLmRvX2NvbXBpbGUu
NDQyNzQ8YnIgLz5Mb2cgZGF0YSBmb2xsb3dzOjxiciAvPnwgREVCVUc6IEV4ZWN1dGluZyBzaGVs
bCBmdW5jdGlvbiBkb19jb21waWxlPGJyIC8+fCBOT1RFOiBtYWtlIC1qIDQgQ1JPU1NfQ09NUElM
RT1hcm0tcG9reS1saW51eC1nbnVlYWJpLSBDQz1hcm0tcG9reS1saW51eC1nbnVlYWJpLWdjYyZu
YnNwOyAtLXN5c3Jvb3Q9L2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1w
L3N5c3Jvb3RzL3Jhc3BiZXJyeXBpMiBWPTEgSE9TVENDPWdjYyZuYnNwOyAtaXN5c3RlbS9ob21l
L3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC9zeXNyb290cy94ODZfNjQtbGlu
dXgvdXNyL2luY2x1ZGUgLU8yIC1waXBlIC1ML2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3Mt
bGl0ZS9ic3AvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvbGliIC1ML2hvbWUvc2RlL1By
b2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC9saWIg
LVdsLC1ycGF0aC1saW5rLC9ob21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3Rt
cC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2xpYiAtV2wsLXJwYXRoLWxpbmssL2hvbWUvc2Rl
L1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC9s
aWIgLVdsLC1ycGF0aCwvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAv
c3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9saWIgLVdsLC1ycGF0aCwvaG9tZS9zZGUvUHJvamVj
dHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L2xpYiAtV2ws
LU8xIHJwaV9iPGJyIC8+fCBDb25maWd1cmluZyBmb3IgcnBpX2IgYm9hcmQuLi48YnIgLz58IG1h
a2U8YnIgLz58IG1ha2VbMV06IEVudGVyaW5nIGRpcmVjdG9yeSBgL2hvbWUvc2RlL1Byb2plY3Rz
L25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3dvcmsvcmFzcGJlcnJ5cGkyLXBva3ktbGludXgtZ251
ZWFiaS91LWJvb3QtcnBpL2dpdC1yMC9naXQmIzM5OzxiciAvPnwgR2VuZXJhdGluZyBpbmNsdWRl
L2F1dG9jb25mLm1rPGJyIC8+fCBHZW5lcmF0aW5nIGluY2x1ZGUvYXV0b2NvbmYubWsuZGVwPGJy
IC8+fCBJbiBmaWxlIGluY2x1ZGVkIGZyb20gL2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3Mt
bGl0ZS9ic3AvdG1wL3dvcmsvcmFzcGJlcnJ5cGkyLXBva3ktbGludXgtZ251ZWFiaS91LWJvb3Qt
cnBpL2dpdC1yMC9naXQvaW5jbHVkZS9saW51eC9jb21waWxlci5oOjQwOjAsPGJyIC8+fCZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBmcm9tIC9ob21lL3NkZS9Q
cm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxp
bnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvbGludXgvYnl0ZW9yZGVy
L2xpdHRsZV9lbmRpYW4uaDoxMiw8YnIgLz58Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7IGZyb20gL2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9i
c3AvdG1wL3dvcmsvcmFzcGJlcnJ5cGkyLXBva3ktbGludXgtZ251ZWFiaS91LWJvb3QtcnBpL2dp
dC1yMC9naXQvaW5jbHVkZS9hc20vYnl0ZW9yZGVyLmg6MjksPGJyIC8+fCZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBmcm9tIC9ob21lL3NkZS9Qcm9qZWN0cy9u
ZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVh
YmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvY29tcGlsZXIuaDoxMTIsPGJyIC8+fCZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBmcm9tIC9ob21lL3Nk
ZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5
LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvaW1hZ2UuaDozNiw8
YnIgLz58Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IGZyb20g
aW5jbHVkZS9jb21tb24uaDoxMTg6PGJyIC8+fCAvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vz
cy1saXRlL2JzcC90bXAvd29yay9yYXNwYmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9v
dC1ycGkvZ2l0LXIwL2dpdC9pbmNsdWRlL2xpbnV4L2NvbXBpbGVyLWdjYy5oOjg3OjMwOiBmYXRh
bCBlcnJvcjogbGludXgvY29tcGlsZXItZ2NjNS5oOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
PGJyIC8+fCBjb21waWxhdGlvbiB0ZXJtaW5hdGVkLjxiciAvPnwgSW4gZmlsZSBpbmNsdWRlZCBm
cm9tIC9ob21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3Bi
ZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUv
bGludXgvY29tcGlsZXIuaDo0MDowLDxiciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsgZnJvbSAvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRl
L2JzcC90bXAvd29yay9yYXNwYmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkv
Z2l0LXIwL2dpdC9pbmNsdWRlL2xpbnV4L2J5dGVvcmRlci9saXR0bGVfZW5kaWFuLmg6MTIsPGJy
IC8+fCZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBmcm9tIC9o
b21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBp
Mi1wb2t5LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvYXNtL2J5
dGVvcmRlci5oOjI5LDxiciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsgZnJvbSAvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAv
d29yay9yYXNwYmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dp
dC9pbmNsdWRlL2NvbXBpbGVyLmg6MTEyLDxiciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsgZnJvbSAvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1s
aXRlL2JzcC90bXAvd29yay9yYXNwYmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1y
cGkvZ2l0LXIwL2dpdC9pbmNsdWRlL2ltYWdlLmg6MzYsPGJyIC8+fCZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBmcm9tIGluY2x1ZGUvY29tbW9uLmg6MTE4Ojxi
ciAvPnwgL2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3dvcmsvcmFz
cGJlcnJ5cGkyLXBva3ktbGludXgtZ251ZWFiaS91LWJvb3QtcnBpL2dpdC1yMC9naXQvaW5jbHVk
ZS9saW51eC9jb21waWxlci1nY2MuaDo4NzozMDogZmF0YWwgZXJyb3I6IGxpbnV4L2NvbXBpbGVy
LWdjYzUuaDogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeTxiciAvPnwgY29tcGlsYXRpb24gdGVy
bWluYXRlZC48YnIgLz58IG1ha2VbMV06IExlYXZpbmcgZGlyZWN0b3J5IGAvaG9tZS9zZGUvUHJv
amVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29yay9yYXNwYmVycnlwaTItcG9reS1saW51
eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dpdCYjMzk7PGJyIC8+fCBtYWtlWzFdOiBFbnRl
cmluZyBkaXJlY3RvcnkgYC9ob21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3Rt
cC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAv
Z2l0JiMzOTs8YnIgLz58IGFybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjJm5ic3A7IC0tc3lzcm9v
dD0vaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvc3lzcm9vdHMvcmFz
cGJlcnJ5cGkyIC1ERE9fREVQU19PTkxZIFw8YnIgLz58Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7IC1nJm5ic3A7IC1PcyZuYnNwOyAtZm5vLWNvbW1vbiAtZmZpeGVkLXI4IC1E
X19LRVJORUxfXyAtSS9ob21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93
b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0
L2luY2x1ZGUgLWZuby1idWlsdGluIC1mZnJlZXN0YW5kaW5nIC1ub3N0ZGluYyAtaXN5c3RlbSAv
aG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvc3lzcm9vdHMveDg2XzY0
LWxpbnV4L3Vzci9saWIvYXJtLXBva3ktbGludXgtZ251ZWFiaS9nY2MvYXJtLXBva3ktbGludXgt
Z251ZWFiaS81LjIuMC9pbmNsdWRlIC1waXBlIC1EQ09ORklHX0FSTSAtRF9fQVJNX18gLW1hcm0g
LW1uby10aHVtYi1pbnRlcndvcmsgLW1hYmk9YWFwY3MtbGludXggLVdhbGwgLVdzdHJpY3QtcHJv
dG90eXBlcyAtZm5vLXN0YWNrLXByb3RlY3RvciAtV25vLWZvcm1hdC1ub25saXRlcmFsIC1Xbm8t
Zm9ybWF0LXNlY3VyaXR5IC1mc3RhY2stdXNhZ2UmbmJzcDsmbmJzcDsgXDxiciAvPnwmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgLW8gbGliL2FzbS1vZmZzZXRzLnMgbGliL2Fz
bS1vZmZzZXRzLmMgLWMgLVM8YnIgLz58IGlmIFsgLWYgYXJjaC9hcm0vY3B1L2FybTExNzYvYmNt
MjgzNS9hc20tb2Zmc2V0cy5jIF07dGhlbiBcPGJyIC8+fCZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyBhcm0tcG9reS1saW51eC1nbnVlYWJpLWdjYyZuYnNwOyAtLXN5c3Jvb3Q9
L2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3N5c3Jvb3RzL3Jhc3Bi
ZXJyeXBpMiAtRERPX0RFUFNfT05MWSBcPGJyIC8+fCZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyAtZyZuYnNwOyAtT3MmbmJzcDsgLWZuby1jb21tb24gLWZmaXhlZC1yOCAtRF9f
S0VSTkVMX18gLUkvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29y
ay9yYXNwYmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dpdC9p
bmNsdWRlIC1mbm8tYnVpbHRpbiAtZmZyZWVzdGFuZGluZyAtbm9zdGRpbmMgLWlzeXN0ZW0gL2hv
bWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3AvdG1wL3N5c3Jvb3RzL3g4Nl82NC1s
aW51eC91c3IvbGliL2FybS1wb2t5LWxpbnV4LWdudWVhYmkvZ2NjL2FybS1wb2t5LWxpbnV4LWdu
dWVhYmkvNS4yLjAvaW5jbHVkZSAtcGlwZSAtRENPTkZJR19BUk0gLURfX0FSTV9fIC1tYXJtIC1t
bm8tdGh1bWItaW50ZXJ3b3JrIC1tYWJpPWFhcGNzLWxpbnV4IC1XYWxsIC1Xc3RyaWN0LXByb3Rv
dHlwZXMgLWZuby1zdGFjay1wcm90ZWN0b3IgLVduby1mb3JtYXQtbm9ubGl0ZXJhbCAtV25vLWZv
cm1hdC1zZWN1cml0eSAtZnN0YWNrLXVzYWdlJm5ic3A7Jm5ic3A7IFw8YnIgLz58Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7IC1vIGFyY2gvYXJtL2NwdS9hcm0xMTc2L2JjbTI4MzUvYXNtLW9m
ZnNldHMucyBhcmNoL2FybS9jcHUvYXJtMTE3Ni9iY20yODM1L2FzbS1vZmZzZXRzLmMgLWMgLVM7
IFw8YnIgLz58IGVsc2UgXDxiciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsgdG91Y2ggYXJjaC9hcm0vY3B1L2FybTExNzYvYmNtMjgzNS9hc20tb2Zmc2V0cy5zOyBcPGJy
IC8+fCBmaTxiciAvPnwgSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC9ob21lL3NkZS9Qcm9qZWN0cy9u
ZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVh
YmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvbGludXgvY29tcGlsZXIuaDo0MDowLDxi
ciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgZnJvbSAv
aG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29yay9yYXNwYmVycnlw
aTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dpdC9pbmNsdWRlL2xpbnV4
L2J5dGVvcmRlci9saXR0bGVfZW5kaWFuLmg6MTIsPGJyIC8+fCZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBmcm9tIC9ob21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNj
ZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVhYmkvdS1i
b290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvYXNtL2J5dGVvcmRlci5oOjI5LDxiciAvPnwmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgZnJvbSAvaG9tZS9zZGUv
UHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29yay9yYXNwYmVycnlwaTItcG9reS1s
aW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dpdC9pbmNsdWRlL2NvbXBpbGVyLmg6MTEy
LDxiciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgZnJv
bSAvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29yay9yYXNwYmVy
cnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dpdC9pbmNsdWRlL2lt
YWdlLmg6MzYsPGJyIC8+fCZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyBmcm9tIC9ob21lL3NkZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3Jr
L3Jhc3BiZXJyeXBpMi1wb2t5LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2lu
Y2x1ZGUvY29tbW9uLmg6MTE4LDxiciAvPnwmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsgZnJvbSBsaWIvYXNtLW9mZnNldHMuYzoxODo8YnIgLz58IC9ob21lL3Nk
ZS9Qcm9qZWN0cy9uZWF0YWNjZXNzLWxpdGUvYnNwL3RtcC93b3JrL3Jhc3BiZXJyeXBpMi1wb2t5
LWxpbnV4LWdudWVhYmkvdS1ib290LXJwaS9naXQtcjAvZ2l0L2luY2x1ZGUvbGludXgvY29tcGls
ZXItZ2NjLmg6ODc6MzA6IGZhdGFsIGVycm9yOiBsaW51eC9jb21waWxlci1nY2M1Lmg6IE5vIHN1
Y2ggZmlsZSBvciBkaXJlY3Rvcnk8YnIgLz58IGNvbXBpbGF0aW9uIHRlcm1pbmF0ZWQuPGJyIC8+
fCBHZW5lcmF0aW5nIGluY2x1ZGUvZ2VuZXJhdGVkL2FzbS1vZmZzZXRzLmg8YnIgLz58IHRvb2xz
L3NjcmlwdHMvbWFrZS1hc20tb2Zmc2V0cyBhcmNoL2FybS9jcHUvYXJtMTE3Ni9iY20yODM1L2Fz
bS1vZmZzZXRzLnMgaW5jbHVkZS9nZW5lcmF0ZWQvYXNtLW9mZnNldHMuaDxiciAvPnwgbWFrZVsx
XTogKioqIFtsaWIvYXNtLW9mZnNldHMuc10gRXJyb3IgMTxiciAvPnwgbWFrZVsxXTogKioqIFdh
aXRpbmcgZm9yIHVuZmluaXNoZWQgam9icy4uLi48YnIgLz58IG1ha2VbMV06IExlYXZpbmcgZGly
ZWN0b3J5IGAvaG9tZS9zZGUvUHJvamVjdHMvbmVhdGFjY2Vzcy1saXRlL2JzcC90bXAvd29yay9y
YXNwYmVycnlwaTItcG9reS1saW51eC1nbnVlYWJpL3UtYm9vdC1ycGkvZ2l0LXIwL2dpdCYjMzk7
PGJyIC8+fCBtYWtlOiAqKiogW3JwaV9iXSBFcnJvciAyPGJyIC8+fCBFUlJPUjogb2VfcnVubWFr
ZSBmYWlsZWQ8YnIgLz58IEVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IGRvX2NvbXBpbGUgKGxvZyBm
aWxlIGlzIGxvY2F0ZWQgYXQgL2hvbWUvc2RlL1Byb2plY3RzL25lYXRhY2Nlc3MtbGl0ZS9ic3Av
dG1wL3dvcmsvcmFzcGJlcnJ5cGkyLXBva3ktbGludXgtZ251ZWFiaS91LWJvb3QtcnBpL2dpdC1y
MC90ZW1wL2xvZy5kb19jb21waWxlLjQ0Mjc0KTxiciAvPkVSUk9SOiBUYXNrIDE5NiAoL29wdC95
b2N0by8yLjAvbWV0YS1yYXNwYmVycnlwaS9yZWNpcGVzLWJzcC91LWJvb3QvdS1ib290LXJwaV9n
aXQuYmIsIGRvX2NvbXBpbGUpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAmIzM5OzEmIzM5OzxiciAv
PjxiciAvPiZuYnNwOzwvcD4KPC9ib2R5Pgo8L2h0bWw+AwAPNP0/BQAUAEtmAgDWHQUABgACAcJn
AQAAABAAAAANkVfMIX5I8Z/T1B4qKEIECwCjgQggBgAAAAAAwAAAAAAAAEYAAAAAA4UAAAAAAAAL
ALSBCCAGAAAAAADAAAAAAAAARgAAAAAUhQAAAQAAAB8A0IEIIAYAAAAAAMAAAAAAAABGAAAAADCF
AAABAAAAAgAAAAAAAAADABcAAQAAAB8AGgABAAAAEgAAAEkAUABNAC4ATgBvAHQAZQAAAAAACwAp
AAAAAAADADYAAAAAAAsAYwABAAAACwAXDAEAAAADAJAQAAAAAAMAlRAAAAAAAwDeP+n9AACkIA==

--=_01uT0DoH1NFbEZ65pjxDfaHq9FcYvW7sVyfyLCjwF0xY+eL0--
