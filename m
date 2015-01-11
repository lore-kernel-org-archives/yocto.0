Return-Path: <csmiley@icontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7BADE008FF; Sun, 11 Jan 2015 15:15:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.113 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4822 seconds by postgrey-1.32 at yocto-www;
	Sun, 11 Jan 2015 15:15:26 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0113.outbound.protection.outlook.com [207.46.100.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51C32E008A6
	for <yocto@yoctoproject.org>; Sun, 11 Jan 2015 15:15:26 -0800 (PST)
Received: from BL2PR05MB034.namprd05.prod.outlook.com (10.255.228.147) by
	BL2PR05MB033.namprd05.prod.outlook.com (10.255.228.139) with Microsoft
	SMTP Server (TLS) id 15.1.53.17; Sun, 11 Jan 2015 21:39:39 +0000
Received: from BL2PR05MB034.namprd05.prod.outlook.com ([169.254.15.119]) by
	BL2PR05MB034.namprd05.prod.outlook.com ([169.254.15.119]) with mapi id
	15.01.0053.000; Sun, 11 Jan 2015 21:39:39 +0000
From: Colin Smiley <csmiley@icontrol.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-java: Problems creating image inside VM? openjdk-6 build
	gets killed by host OOM killer.
Thread-Index: AQHQLecZtejot/Drokehcb6GA2srTg==
Date: Sun, 11 Jan 2015 21:39:39 +0000
Message-ID: <D0D849B8.8909%csmiley@icontrol.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.114.229.189]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=csmiley@icontrol.com; 
x-dmarcaction-test: None
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(3005003);SRVR:BL2PR05MB033;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa: BCL:0;PCL:0;RULEID:;SRVR:BL2PR05MB033;
x-forefront-prvs: 045315E1EE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(479174004)(189002)(199003)(110136001)(122556002)(450100001)(77156002)(62966003)(40100003)(36756003)(87936001)(2656002)(229853001)(66066001)(106356001)(99286002)(101416001)(106116001)(2351001)(107886001)(19273905006)(68736005)(97736003)(2501002)(2900100001)(86362001)(15975445007)(1720100001)(102836002)(551544002)(46102003)(54356999)(92566002)(19580395003)(64706001)(50986999)(94096001)(563064011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR05MB033;
	H:BL2PR05MB034.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: icontrol.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: icontrol.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2015 21:39:39.1413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 56af53c7-f954-4c24-b63a-3d793c349485
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR05MB033
Subject: meta-java: Problems creating image inside VM? openjdk-6 build gets killed by host OOM killer.
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
X-List-Received-Date: Sun, 11 Jan 2015 23:15:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <51BB5720855C324B96A7989ADEE6296C@namprd05.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable


I need help.

I am trying to use yocto and bitbake to create a QEMU-x86 image containing
the openjdk-6 jvm. I am using open-embedded and meta-java for this.

Since I am running on a Mac, I am attempting creation from inside a VMWare
VM (similar to the Yocto Build Appliance). I have tried using Ubuntu 14.04
Server, Fedora Core 18, 19, & 20 and met with the same results. My VM has
4 cores, and 8GB of RAM, and with the OOM killer involved I=B9ve tried
giving it 10GB and 12GB as well.

With all VMs, the failure is the same. OOM killer kills the qemu-i386 when
running the following:

GENERATING=20
/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
zes.32


Here are the steps and configuration I follow:

1) Create a VM with either Ubuntu or Fedora (failure has been same for
all). VM has 50GB of disk and 8GB of RAM (although have tried increasing
to 10GB and 12GB with same result).

2) Perform os updates per yocto page here:
http://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#required-pa
ckages-for-the-host-development-system

3) Check out appropriate version and branches, per meta-java readme.
$ git clone http://git.yoctoproject.org/git/poky
$ cd poky
$ git checkout -b daisy origin/daisy
$ git clone git://git.openembedded.org/meta-openembedded
$ cd meta-openembedded
$ git checkout -b daisy origin/daisy
$ cd ..
$ git clone git://git.yoctoproject.org/meta-java

4) Since I only want java 6, copy meta-java=B9s java-test-image.bb recipe,
calling it java-6-test-image.bb. It reads:

LICENSE =3D "MIT"
inherit core-image
IMAGE_LINGUAS =3D " "
IMAGE_INSTALL =3D "busybox modutils-initscripts initscripts opkg udev
sysvinit netbase base-files base-passwd busybox-hwclock \
                 ${ROOTFS_PKGMANAGE_BOOTSTRAP} ${CORE_IMAGE_EXTRA_INSTALL}
\
openjdk-6-jre openjdk-6-vm-zero openjdk-6-vm-jamvm openjdk-6-vm-cacao \
                 strace dropbear binutils \
                 classpath \
                 classpath-common \
                 classpath-examples \
                 classpath-tools \
                 jamvm \
                 cacao \
"

5) Set up environment with `. ./oe-init-build-env`


6) Modify build/conf/local.conf and add (I have tried setting threads and
parallel_make to 1, 2, 4, and 8 with the same results):
# Added for OpenJDK6
PREFERRED_PROVIDER_virtual/java-initial =3D "cacao-initial"
PREFERRED_PROVIDER_virtual/java-native =3D "jamvm-native"
PREFERRED_PROVIDER_virtual/javac-native =3D "ecj-bootstrap-native"
PREFERRED_VERSION_openjdk-6-jre =3D "6b24-1.11.9"
PREFERRED_PROVIDER_openjdk-6-jre =3D "openjdk-6-jre"
PREFERRED_VERSION_icedtea6-native =3D "1.8.11"
# The maximum number of tasks BitBake should run in parallel at any one
time
BB_NUMBER_THREADS =3D "8"
# Extra options passed to the make command during the do_compile task in
order to specify parallel compilation on the local build host.
PARALLEL_MAKE =3D "-j 8"

7) Modify build/conf/bblayers.conf

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /home/csmiley/yocto/poky/meta \
  /home/csmiley/yocto/poky/meta-yocto \
  /home/csmiley/yocto/poky/meta-yocto-bsp \
  /home/csmiley/yocto/poky/meta-openembedded/meta-oe \
  /home/csmiley/yocto/poky/meta-java \
  "
BBLAYERS_NON_REMOVABLE ?=3D " \
  /home/csmiley/yocto/poky/meta \
  /home/csmiley/yocto/poky/meta-yocto \
  "

8) Run `bitbake java-6-test-image`. This runs until compilation failure,
due to a date bug introduced in meta-java on 12/31/14, with:

/home/csmiley/yacto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/build/bootstrap/jdk1.6.0/bin/java  -client -Xmx896m -Xms128m
-XX:PermSize=3D32m -XX:MaxPermSize=3D160m -jar
/home/csmiley/yacto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/build/openjdk.build-ecj/btjars/generatecurrencydata.jar -o
/home/csmiley/yacto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/build/openjdk.build-ecj/lib/currency.data.temp \
| 	< ../../../src/share/classes/java/util/CurrencyData.properties
| Error: time is more than 10 years from present: 1104530400000
| java.lang.RuntimeException: time is more than 10 years from present:
1104530400000
| 	at=20
build.tools.generatecurrencydata.GenerateCurrencyData.makeSpecialCaseEntry(
GenerateCurrencyData.java:285)
| 	at=20
build.tools.generatecurrencydata.GenerateCurrencyData.buildMainAndSpecialCa
seTables(GenerateCurrencyData.java:225)
| 	at=20
build.tools.generatecurrencydata.GenerateCurrencyData.main(GenerateCurrency
Data.java:154)

9) Fix above problem by editing all instances of
build/tmp/work/work/=8A/CurrencyData.properties to get rid of Turkish
Currency Issue.


10) Restart by running `bitbake java-6-test-image`. This now fails when
doing the generation on Sizes.32 with:
| i586-poky-linux-gcc  -m32 -march=3Di586
--sysroot=3D/home/csmiley/yocto/poky/build/tmp/sysroots/qemux86  -O2 -pipe
-g -feliminate-unused-debug-types   -fno-strict-aliasing -fPIC -W -Wall
-Wno-unused -Wno-parentheses -m32 -D_LITTLE_ENDIAN -g   -DARCH=3D'"i586"'
-Di586 -DLINUX -DRELEASE=3D'"1.6.0_24"' -D_LARGEFILE64_SOURCE -D_GNU_SOURCE
-D_REENTRANT -I.=20
-I/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b2
4-1.11.9-r22.1/icedtea6-1.11.9/build/openjdk.build-ecj/tmp/sun/sun.awt.X11/
xawt/CClassHeaders -I../../../src/solaris/javavm/export
-I../../../src/share/javavm/export -I../../../src/share/javavm/include
-I../../../src/solaris/javavm/include -I../../../src/share/native/common
-I../../../src/solaris/native/common
-I../../../src/share/native/sun/awt/X11
-I../../../src/solaris/native/sun/awt/X11
-I/home/csmiley/yocto/poky/build/tmp/sysroots/qemux86/usr/include -DXAWT
-DXAWT_HACK=20
-I/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b2
4-1.11.9-r22.1/icedtea6-1.11.9/build/openjdk.build-ecj/tmp/sun/sun.awt.X11/
xawt/../../sun.awt/awt/CClassHeaders -I../../../src/solaris/native/sun/awt
-I../../../src/solaris/native/sun/xawt
-I../../../src/solaris/native/sun/jdga
-I../../../src/share/native/sun/awt/debug
-I../../../src/share/native/sun/awt/image/cvutils
-I../../../src/share/native/sun/java2d
-I../../../src/share/native/sun/java2d/loops
-I../../../src/share/native/sun/awt/image/cvutils
-I../../../src/share/native/sun/awt/image
-I../../../src/share/native/sun/font
-I../../../src/solaris/native/sun/java2d
-I../../../src/share/native/sun/java2d/pipe
-I../../../src/share/native/sun/java2d/opengl
-I../../../src/solaris/native/sun/java2d/opengl
-I../../../src/solaris/native/sun/java2d/x11
-I../../../src/share/native/sun/dc/path
-I../../../src/share/native/sun/dc/doe
-I../../../src/share/native/sun/awt/alphacomposite
-I../../../src/share/native/sun/awt/medialib
-I../../../src/solaris/native/sun/awt/medialib
-I../../../src/solaris/native/sun/font -I../../../src/share/native/sun/awt
-I../../../src/solaris/native/sun/awt -o
/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
zer.32=20
/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
zer.32.c
| GENERATING=20
/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24-
1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/si
zes.32
| Killed
| make[5]: ***=20
[/home/csmiley/yocto/poky/build/tmp/work/i586-poky-linux/openjdk-6-jre/6b24
-1.11.9-r22.1/icedtea6-1.11.9/build/generated.build/sun/awt/X11/generator/s
izes.32] Error 137



System console has the message:
Jan 11 02:00:47 yoctomatic kernel: [59600.572556] Out of memory: Kill
process 69268 (qemu-i386) score 944 or sacrifice child
Jan 11 02:00:47 yoctomatic kernel: [59600.573756] Killed process 69268
(qemu-i386) total-vm:15519392kB, anon-rss:7674264kB, file-rss:32kB



I have tried the following while diagnosing:

* Build core-image-minimal (works)
* Build java-6-test-image without java/jdk portions (dependencies only)
(works)
* Builds varying number of threads/parallel make, memory of VM, OS of VM
(all break in same place).

I would like some help diagnosing this. Please help!


Thanks,


Colin




