Return-Path: <Gianpaolo_Macario@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C637E014F4
	for <yocto@yoctoproject.org>; Mon,  8 Apr 2013 06:44:22 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1UPCMv-0004Ln-QS from Gianpaolo_Macario@mentor.com 
	for yocto@yoctoproject.org; Mon, 08 Apr 2013 06:44:21 -0700
Received: from SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 8 Apr 2013 06:44:21 -0700
Received: from EU-MBX-02.mgc.mentorg.com ([169.254.3.230]) by
	SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) with mapi id
	14.01.0289.001; Mon, 8 Apr 2013 14:44:20 +0100
From: "Macario, Gianpaolo" <Gianpaolo_Macario@mentor.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-ivi] No recipes available for:
	meta-ivi/recipes-graphics/xorg-xserver/xserver-xorg_1.14.0.bbappend
Thread-Index: Ac40XpXXgRzr1hxfRdSk4Bqb3WTh0Q==
Date: Mon, 8 Apr 2013 13:44:20 +0000
Message-ID: <0CCD6BBA210ECA418BCD82271FCFD94C544B22F7@EU-MBX-02.mgc.mentorg.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
X-OriginalArrivalTime: 08 Apr 2013 13:44:21.0887 (UTC)
	FILETIME=[2CD2C0F0:01CE345F]
Subject: [meta-ivi] No recipes available for: meta-ivi/recipes-graphics/xorg-xserver/xserver-xorg_1.14.0.bbappend
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
X-List-Received-Date: Mon, 08 Apr 2013 13:44:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello

I am afraid I discovered a bug against the GENIVI Foton-0.1 Yocto Baseline.
I followed the instructions at http://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-ivi/tree/README.md?h=3D4.0

I suspect some misalignment between meta-ivi and poky SHA - however I belie=
ve I followed what the README.me says.

Thank you in advance for any help or suggestions!

Login as gmacario@mv-linux-powerhorse

mkdir $HOME/genivi-baseline
cd $HOME/genivi-baseline
git clone git://git.yoctoproject.org/poky
cd poky; git checkout d823759b4594143d522eae0b2a2498436a6dcb1e; cd -
git clone git://git.yoctoproject.org/meta-ivi
cd meta-ivi; git checkout 4.0; cd -

Read http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/README.md?h=3D=
4.0

Initialize Build Environment

source poky/oe-init-build-env
Backup configuration files (will hand edit them later on)

cp conf/bblayers.conf conf/bblayers.conf.ORIG
cp conf/local.conf conf/local.conf.ORIG
Edit conf/bblayers.conf

gmacario@mv-linux-powerhorse:/scratch/gmacario/genivi-baseline/build$ diff =
-uw conf/bblayers.conf.ORIG conf/bblayers.conf
--- conf/bblayers.conf.ORIG     2013-04-08 15:03:16.000000000 +0200
+++ conf/bblayers.conf  2013-04-08 15:07:59.000000000 +0200
@@ -6,6 +6,7 @@
 BBFILES ?=3D ""

 BBLAYERS ?=3D " \
+  /scratch/gmacario/genivi-baseline/meta-ivi \
   /scratch/gmacario/genivi-baseline/poky/meta \
   /scratch/gmacario/genivi-baseline/poky/meta-yocto \
   /scratch/gmacario/genivi-baseline/poky/meta-yocto-bsp \
gmacario@mv-linux-powerhorse:/scratch/gmacario/genivi-baseline/build$
Edit conf/local.conf

gmacario@mv-linux-powerhorse:/scratch/gmacario/genivi-baseline/build$ diff =
-uw conf/local.conf.ORIG conf/local.conf
--- conf/local.conf.ORIG        2013-04-08 15:04:43.000000000 +0200
+++ conf/local.conf     2013-04-08 15:11:26.000000000 +0200
@@ -17,12 +17,12 @@
 # These two options control how much parallelism BitBake should use. The f=
irst
 # option determines how many tasks bitbake should run in parallel:
 #
-#BB_NUMBER_THREADS =3D "4"
+BB_NUMBER_THREADS =3D "4"
 #
 # The second option controls how many processes make should run in paralle=
l when
 # running compile tasks:
 #
-#PARALLEL_MAKE =3D "-j 4"
+PARALLEL_MAKE =3D "-j 4"
 #
 # For a quad-core machine, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-=
j 4" would
 # be appropriate for example.
@@ -48,7 +48,8 @@
 #MACHINE ?=3D "routerstationpro"
 #
 # This sets the default machine to be qemux86 if no other machine is selec=
ted:
-MACHINE ??=3D "qemux86"
+#MACHINE ??=3D "qemux86"
+MACHINE ??=3D "vexpressa9"

 #
 # Where to place downloads
@@ -63,6 +64,8 @@
 #
 #DL_DIR ?=3D "${TOPDIR}/downloads"

+INCOMPATIBLE_LICENSE =3D "GPLv3"
+
 #
 # Where to place shared-state files
 #
@@ -99,7 +102,7 @@
 # Ultimately when creating custom policy, people will likely end up subcla=
ssing
 # these defaults.
 #
-DISTRO ?=3D "poky"
+DISTRO ?=3D "poky-ivi-systemd"
 # As an example of a subclass there is a "bleeding" edge policy configurat=
ion
 # where many versions are set to the absolute latest code from the upstrea=
m
 # source control systems. This is just mentioned here as an example, its n=
ot
gmacario@mv-linux-powerhorse:/scratch/gmacario/genivi-baseline/build$
(2013-04-08 15:14 CEST)
Start the build

time bitbake foton-image
Result

gmacario@mv-linux-powerhorse:/scratch/gmacario/genivi-baseline/build$ time =
bitbake -k foton-image
Pseudo is not present but is required, building this first before the main =
build
Parsing recipes: 100% |####################################################=
#################################| Time: 00:00:19
Parsing of 828 .bb files complete (0 cached, 828 parsed). 1136 targets, 82 =
skipped, 0 masked, 0 errors.
ERROR: No recipes available for:
  /scratch/gmacario/genivi-baseline/meta-ivi/recipes-graphics/xorg-xserver/=
xserver-xorg_1.14.0.bbappend
ERROR: Command execution failed: Exited with 1

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

real    0m27.805s
user    2m37.490s
sys     0m4.904s
gmacario@mv-linux-powerhorse:/scratch/gmacario/genivi-baseline/build$

Cordiali Saluti / Best Regards

--
Gianpaolo Macario
Senior Member Technical Staff
Mentor Graphics - Linux Transportation Solutions
email:=A0gianpaolo_macario@mentor.com
phone: +39-02-249894.208
http://www.mentor.com/ivi



