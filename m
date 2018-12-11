Return-Path: <MohamedYouseif@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58A63E00CA3; Tue, 11 Dec 2018 19:41:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.71.87 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mohamedyouseif[at]outlook.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 39690 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Dec 2018 19:41:31 PST
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092071087.outbound.protection.outlook.com [40.92.71.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F09BE00C9F
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 19:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=r+5Gcg1Sy4afwVpOeJCa5T2egtpT+vwzvy4DLnkzATg=;
	b=HlXdaG1qcRyikiwekH24w1o62WFplchp8unelOsDiyyv4UGLYOM45zARpqcUHF63GdOANtQA+aow5ko4roZrm/czzt7+cmLH/tW/hVkvZ7ooyXKVi4Lht4yNrQSlW1yH5G1uSgpLI2LZi85rzbGn6s9FUV8DTNHmxn4px4Ycs9BDcvCzq1im/Ikrdnb4IZo8dVNwnZsq/kT//w4BhMjm24BVAAFVPR1C+bX9di+8OqGc4SXZhPEWZZIgtmLUX1NQwMXcx+1s2UexfR3ffRryYE+Ngm+s7nu8ejwPNqx8hoOWP5ahZFxroTzDsvVaHn8CZlqAQwdo9RIh6eE/H3UxgA==
Received: from AM5EUR03FT009.eop-EUR03.prod.protection.outlook.com
	(10.152.16.59) by AM5EUR03HT173.eop-EUR03.prod.protection.outlook.com
	(10.152.16.189) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1382.18;
	Tue, 11 Dec 2018 12:08:26 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM (10.152.16.52) by
	AM5EUR03FT009.mail.protection.outlook.com (10.152.16.110) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1382.18 via Frontend Transport; Tue, 11 Dec 2018 12:08:26 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::e4b0:7f83:9a64:5144]) by HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::e4b0:7f83:9a64:5144%5]) with mapi id 15.20.1404.026;
	Tue, 11 Dec 2018 12:08:26 +0000
From: Mohamed Youseif <MohamedYouseif@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enable PACKAGECONFIG Feature
Thread-Index: AQHUkUo4E4nM28RvfE6KPpv+/UE0+Q==
Date: Tue, 11 Dec 2018 12:08:26 +0000
Message-ID: <HE1P195MB036292F42DABDA874AFBFB73C1A60@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
References: <mailman.6424.1544522247.2881.yocto@yoctoproject.org>
In-Reply-To: <mailman.6424.1544522247.2881.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:095C9D029126EA19A22EC09404CDFC43B348A810C33F371236A6C71184A38CE9;
	UpperCasedChecksum:B8206FBFD7F26AC954D437C31253863A89E72E2606ABF54465FE9DA401392E4C;
	SizeAsReceived:6940; Count:45
x-tmn: [ynVNwqPxIQEkqbCg+gNOfKNFkoHz/tl7]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT173;
	6:IZDgnCVTESC70lANU4qQw5Vg8/vPEnLkVmSmAYuoVjNqit9sthQaMIcaoeH1pQXbeNnXuLPI/J2L/58BoRHsRuZ0aLBQd1yg1emftDje9y/Vgg5ittGkg9JYej5I78s7M6Y3gRFrK+34BMQ7AGK6QjGzn3CoC8KFMgfbb/gTTPnrfA6OQ/Tyy97My4hfRblTpf9bFr2f63dVEQMGl2udvuA0nr+Sq0qNgT9t7Rk1NuxgiGc89bJLHxhCzRSkyNSd+e7VzMnSvtGyGeJIdRDeW4PYIyNZjoEUaVklPWi+tkFGUidTKVUfKdcgNpQI/pWhet1jMQ1GIgDFC+U1n0W/1sROUk9Y3sBQtRarkbIcwju1bWIT1yIPhkMETcE738zTMOIF5wJzGxtODoBgBa9+QpTLvuaUHofuzfR2GbHIlsuZ0qmUjZoYaLlzL6YrICRYKgpfI2p+acAKF4TnpooiqQ==;
	5:pYDMr9fqkOcSCRpb/xBftY6hozQxZ6c3Y/x9x26nn5BhvPZm+ndTcv6E/1WGHPaVnzzcSXcM1xxg0OaNhhoX6bH6W8DjBIeMO0AU/L5s1eJo/Vz6uvQFr/MMzKXVI6Bh7nwsfhjbBSh/nQ/CI2DsgC8l7J0Ugde8Yase1Jl74Mo=;
	7:Rq1JZieGsNaBM2R/1PglcQHl+HWJ4HEDlraDGRRI0XrFZ+9nYsPW+aatCXoUlbVxaoQLo4b545BQ7Pf/Afk5OG0JosXYrVEDMJ8mB3q1az1vLnz0df5qDVqd0fNxOtIWDwH8v3mWjwTbuLj0IayP5Q==
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390098)(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:AM5EUR03HT173; 
x-ms-traffictypediagnostic: AM5EUR03HT173:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:AM5EUR03HT173; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT173; 
x-microsoft-antispam-message-info: rkcSlECnnqKYnzoSGmyJtEpqvqxBSCkRtqcUcRrTJZbpBDs1JR2IZiXEOztCq13y
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-Network-Message-Id: 41537e98-cf38-4b71-2d2d-08d65f615b54
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2018 12:08:26.7362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT173
Subject: Enable PACKAGECONFIG Feature
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
X-List-Received-Date: Wed, 12 Dec 2018 03:41:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1P195MB036292F42DABDA874AFBFB73C1A60HE1P195MB0362EURP_"

--_000_HE1P195MB036292F42DABDA874AFBFB73C1A60HE1P195MB0362EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm asking about how to enable PACKAGECONFIG feature from local.conf file, =
let's say that i have the following pacakgeconfig in a recipe
PACKAGECONFIG =3D " f1 f2  "
PACKAGECONFIG[f1] =3D "-DENABLE_f1=3DON,-DENABLE_f1=3DOFF,f1,"

so i need to add line in local.conf file to enable this feature for my imag=
e?
I tried to use the following line to loca.conf but it does not help:

PACKAGECONFIG_pn-<my-recipe-name>_append =3D "-DENABLE_f1=3DON"
________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of yocto-request@yoctoproject.org <yocto-request@yoctoproject.org>
Sent: Tuesday, December 11, 2018 11:57 AM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 99, Issue 26

Send yocto mailing list submissions to
        yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
        https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
        yocto-request@yoctoproject.org

You can reach the person managing the list at
        yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

   1. Using multilib to build 32-bit glibc on 64-bit target
      platform (Nicholas Tsirakis)
   2. Raspberry pi with Yocto os sd card is not working with
      Raspbian os sd card (AKASH BHARDWAJ)
   3.  Do rootfs fail when switch from rpm to deb (Jonas Andersson)
   4. Lib update (Peter Balazovic)


----------------------------------------------------------------------

Message: 1
Date: Mon, 10 Dec 2018 15:37:19 -0500
From: Nicholas Tsirakis <niko.tsirakis@gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto] Using multilib to build 32-bit glibc on 64-bit target
        platform
Message-ID:
        <CAFqpmVLj_54Ou1N=3D+YdjAqtcGGDLsWoH-85+89nQ=3DNJLUhPDpA@mail.gmail=
.com>
Content-Type: text/plain; charset=3D"utf-8"

Hello,

I'm having trouble understanding the proper usage of multilib within the
Yocto project. I've read through Yocto's documentation, but I think I am
missing something crucial. Here are the steps I've taken:

1. Added the following to my local.conf:
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"

2. Attempted to build lib32-glibc with bitbake. Received the following
errors for lib32-glib-initial (shortened for brevity):

| <stdin>:10:36: error: 'REG_RBP' undeclared (first use in this function)
| <stdin>:9:26: note: in expansion of macro 'ucontext'
| <stdin>:10:20: note: in expansion of macro 'mcontext'
| <stdin>:11:61: note: in expansion of macro 'mreg'
| <stdin>:10:36: note: each undeclared identifier is reported only once for
each function it appears in
| <stdin>:9:26: note: in expansion of macro 'ucontext'
| <stdin>:10:20: note: in expansion of macro 'mcontext'
| <stdin>:11:61: note: in expansion of macro 'mreg'
| <stdin>:10:36: error: 'REG_RSP' undeclared (first use in this function)
| <stdin>:9:26: note: in expansion of macro 'ucontext'
| <stdin>:10:20: note: in expansion of macro 'mcontext'
| <stdin>:12:61: note: in expansion of macro 'mreg'
...
| <stdin>:5:73: error: 'La_x86_64_xmm' undeclared (first use in this
function)
...
| <stdin>:10:87: error: invalid use of undefined type 'struct
La_x86_64_regs'
...

3. At this point it appeared to me like it was attempting to build a 64-bit
version of glibc in a 32-bit environment, so I tried building the
lib32-linux-libc-headers by adding the following to its recipe:

do_install_prepend() {
    if [ "${MLPREFIX}" =3D=3D "lib32-" ]; then
        ARCH=3D"x86"
    fi
}

This was more a shot in the dark than anything else and still yielded the
same result. Can someone clear up the proper usage of multilib and tell me
if I'm doing something wrong? Please note that my project currently uses
OE's pyro branches.

Thank you for your time.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181210/be=
f1ca7f/attachment-0001.html>

------------------------------

Message: 2
Date: Tue, 11 Dec 2018 07:57:35 +0530
From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto] Raspberry pi with Yocto os sd card is not working
        with    Raspbian os sd card
Message-ID:
        <CALYZMn=3D_AhWPbX1Hx=3D7o=3DmhoGEU=3D=3DjnCBJhiQ0v5Y6gL4f0H9A@mail=
.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Few months ago,I built an custom image for Raspberrypi using Yocto
Project,flashed it in a sd card and was able to boot
raspberrypi.Presently,I am trying to use  a different sd card with raspbian
os in same Raspberrypi.But it is not able to boot Raspberrypi.How can I
rectify this problem?This is my code which I used few years back to
generate yocto image.










PACKAGE_CLASSES ?=3D "package_rpm package_deb"
>
>
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks dbg-pkgs dev-pkgs tools-sdk
> tools-debug eclipse-debug "
>
>
> USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
>
>
>
>
> BB_DISKMON_DIRS ??=3D "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
>
>
>
>
>
> CONF_VERSION =3D "1"
> MACHINE =3D "raspberrypi3"
> PREFERRED_VERSION_linux-raspberrypi =3D "4.%"
> DISTRO_FEATURES_remove =3D "x11 wayland"
> DISTRO_FEATURES_append =3D " systemd"
> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> IMAGE_INSTALL_append =3D " git apt dpkg opkg rpm sudo wiringpi wiringpi-d=
ev
> connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm
> dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn
> iptables nano"
> IMAGE_INSTALL +=3D "wiringpi"
> ENABLE_UART=3D"1"
> ENABLE_SPI_BUS=3D "1"
> ENABLE_I2C =3D "1"
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181211/d8=
9aff52/attachment-0001.html>

------------------------------

Message: 3
Date: Tue, 11 Dec 2018 10:10:29 +0100
From: Jonas Andersson <jonaskgandersson@gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto]  Do rootfs fail when switch from rpm to deb
Message-ID:
        <CAKpuFdeEtgn9SFt6OsTca7zHFKDc32ORmbn69EO01P+YdybVDw@mail.gmail.com=
>
Content-Type: text/plain; charset=3D"utf-8"

Hi

We have an recipe based on microservicebus-node npm package created with
devtool.

When we build with PACKAGE_CLASSES =3D "package_rpm" it builds but  when
switching to package_deb do_rootfs fails.
What can I do to get more information about the packages that is reported
as broken, are there any known issues with npm and deb?

Here is my build output
___________________________________________________________________________=
____________________________
Build Configuration:
BB_VERSION           =3D "1.38.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "raspberrypi3"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "2.5.1"
TUNE_FEATURES        =3D "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU           =3D "hard"
meta
meta-poky
meta-yocto-bsp       =3D "sumo:36d5cee56bd389ecbe66dbfad9e5d57c13b56b95"
meta-oe              =3D "sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966"
meta-microservicebus
meta-example-msb-rpi =3D "dev:be586f405a92a563ff49b8adf9ef7a9da5cc7192"
meta-raspberrypi     =3D "sumo:2d40b000021bc8a9ef7f329ed0ad410f8d227b97"
meta-rauc            =3D "sumo:40a5890478a50ad80e404be5d9de197dd9a79d44"

NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 2864 of 3398
(/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/rec=
ipes-core/images/msb-image-rauc.bb:
do_rootfs)
NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Started
ERROR: msb-image-rauc-1.0-r0 do_rootfs: Unable to install packages. Command
'/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi=
/msb-image-rauc/1.0-r0/recipe-sysroot-native/usr/bin/apt-get
install --force-yes --allow-unauthenticated microservicebus-node
packagegroup-core-boot psplash-raspberrypi packagegroup-base-extended
packagegroup-core-ssh-openssh run-postinsts' returned 100:
Reading package lists...
Building dependency tree...
Reading state information...
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 microservicebus-node : Depends: microservicebus-node-npm but it is not
going to be installed
                        Depends: microservicebus-node-npm-JSONStream but it
is not installable
                        Depends:
microservicebus-node-npm-JSONStream-jsonparse but it is not installable
                        Depends:
microservicebus-node-npm-JSONStream-through but it is not installable
E: Unable to correct problems, you have held broken packages.

ERROR: msb-image-rauc-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi/=
msb-image-rauc/1.0-r0/temp/log.do_rootfs.7424
NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Failed
ERROR: Task
(/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/rec=
ipes-core/images/msb-image-rauc.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3391 tasks of which 3390 didn't need to be
rerun and 1 failed.
___________________________________________________________________________=
____________________________

/Jonas
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181211/ab=
6fe374/attachment-0001.html>

------------------------------

Message: 4
Date: Tue, 11 Dec 2018 10:57:14 +0100
From: Peter Balazovic <balazovic.peter@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>,
        eclipse-yocto@yoctoproject.org
Subject: [yocto] Lib update
Message-ID:
        <CAFq4t4jdGXQnytzXjW-Op=3DNVdy1s1yAO=3DU6v9G8NXGd-OX4F0w@mail.gmail=
.com>
Content-Type: text/plain; charset=3D"utf-8"

I am developing library (set of libraries) which at first are built and
part of build image & my SDK.
Now I would need to update the libs so SDK and as well target remote image
are updated. I want to avoid rebuild whole image and flash SD-Card again
and generated SDK over again. I use SDK cross-compiler, Eclipse, ADT plugin
to develop cmake-based application.
What is the correct procedure?
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20181211/84=
c549da/attachment.html>

------------------------------

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 99, Issue 26
*************************************

--_000_HE1P195MB036292F42DABDA874AFBFB73C1A60HE1P195MB0362EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
I'm asking about how to enable PACKAGECONFIG feature from local.conf file, =
let's say that i have the following pacakgeconfig in a recipe<br>
PACKAGECONFIG =3D &quot; f1 f2&nbsp; &quot;<br>
PACKAGECONFIG[f1] =3D &quot;-DENABLE_f1=3DON,-DENABLE_f1=3DOFF,f1,&quot;<br=
>
<br>
so i need to add line in local.conf file to enable this feature for my imag=
e? <br>
I tried to use the following line to loca.conf but it does not help:<br>
<br>
PACKAGECONFIG_pn-&lt;my-recipe-name&gt;_append =3D &quot;-DENABLE_f1=3DON&q=
uot;<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto-bounces@yocto=
project.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of yocto-reque=
st@yoctoproject.org &lt;yocto-request@yoctoproject.org&gt;<br>
<b>Sent:</b> Tuesday, December 11, 2018 11:57 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> yocto Digest, Vol 99, Issue 26</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Send yocto mailing list submissions to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto@yoctoproject.org<br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>=
<br>
or, via email, send a message with subject or body 'help' to<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto-request@yoctoproject.org<b=
r>
<br>
You can reach the person managing the list at<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; yocto-owner@yoctoproject.org<br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today's Topics:<br>
<br>
&nbsp;&nbsp; 1. Using multilib to build 32-bit glibc on 64-bit target<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; platform (Nicholas Tsirakis)<br>
&nbsp;&nbsp; 2. Raspberry pi with Yocto os sd card is not working with<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Raspbian os sd card (AKASH BHARDWAJ)<br>
&nbsp;&nbsp; 3.&nbsp; Do rootfs fail when switch from rpm to deb (Jonas And=
ersson)<br>
&nbsp;&nbsp; 4. Lib update (Peter Balazovic)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 10 Dec 2018 15:37:19 -0500<br>
From: Nicholas Tsirakis &lt;niko.tsirakis@gmail.com&gt;<br>
To: yocto@yoctoproject.org<br>
Subject: [yocto] Using multilib to build 32-bit glibc on 64-bit target<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; platform<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CAFqpmVLj_54Ou1N=3D&#43;YdjA=
qtcGGDLsWoH-85&#43;89nQ=3DNJLUhPDpA@mail.gmail.com&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hello,<br>
<br>
I'm having trouble understanding the proper usage of multilib within the<br=
>
Yocto project. I've read through Yocto's documentation, but I think I am<br=
>
missing something crucial. Here are the steps I've taken:<br>
<br>
1. Added the following to my local.conf:<br>
require conf/multilib.conf<br>
MULTILIBS =3D &quot;multilib:lib32&quot;<br>
DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&quot;<br>
<br>
2. Attempted to build lib32-glibc with bitbake. Received the following<br>
errors for lib32-glib-initial (shortened for brevity):<br>
<br>
| &lt;stdin&gt;:10:36: error: 'REG_RBP' undeclared (first use in this funct=
ion)<br>
| &lt;stdin&gt;:9:26: note: in expansion of macro 'ucontext'<br>
| &lt;stdin&gt;:10:20: note: in expansion of macro 'mcontext'<br>
| &lt;stdin&gt;:11:61: note: in expansion of macro 'mreg'<br>
| &lt;stdin&gt;:10:36: note: each undeclared identifier is reported only on=
ce for<br>
each function it appears in<br>
| &lt;stdin&gt;:9:26: note: in expansion of macro 'ucontext'<br>
| &lt;stdin&gt;:10:20: note: in expansion of macro 'mcontext'<br>
| &lt;stdin&gt;:11:61: note: in expansion of macro 'mreg'<br>
| &lt;stdin&gt;:10:36: error: 'REG_RSP' undeclared (first use in this funct=
ion)<br>
| &lt;stdin&gt;:9:26: note: in expansion of macro 'ucontext'<br>
| &lt;stdin&gt;:10:20: note: in expansion of macro 'mcontext'<br>
| &lt;stdin&gt;:12:61: note: in expansion of macro 'mreg'<br>
...<br>
| &lt;stdin&gt;:5:73: error: 'La_x86_64_xmm' undeclared (first use in this<=
br>
function)<br>
...<br>
| &lt;stdin&gt;:10:87: error: invalid use of undefined type 'struct<br>
La_x86_64_regs'<br>
...<br>
<br>
3. At this point it appeared to me like it was attempting to build a 64-bit=
<br>
version of glibc in a 32-bit environment, so I tried building the<br>
lib32-linux-libc-headers by adding the following to its recipe:<br>
<br>
do_install_prepend() {<br>
&nbsp;&nbsp;&nbsp; if [ &quot;${MLPREFIX}&quot; =3D=3D &quot;lib32-&quot; ]=
; then<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ARCH=3D&quot;x86&quot;<br>
&nbsp;&nbsp;&nbsp; fi<br>
}<br>
<br>
This was more a shot in the dark than anything else and still yielded the<b=
r>
same result. Can someone clear up the proper usage of multilib and tell me<=
br>
if I'm doing something wrong? Please note that my project currently uses<br=
>
OE's pyro branches.<br>
<br>
Thank you for your time.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20181210/bef1ca7f/attachment-0001.html">http://lists.yoctoproject.org/pi=
permail/yocto/attachments/20181210/bef1ca7f/attachment-0001.html</a>&gt;<br=
>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Tue, 11 Dec 2018 07:57:35 &#43;0530<br>
From: AKASH BHARDWAJ &lt;akash12bhardwaj@gmail.com&gt;<br>
To: yocto@yoctoproject.org<br>
Subject: [yocto] Raspberry pi with Yocto os sd card is not working<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with&nbsp;&nbsp;&nbsp; Raspbian =
os sd card<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CALYZMn=3D_AhWPbX1Hx=3D7o=3D=
mhoGEU=3D=3DjnCBJhiQ0v5Y6gL4f0H9A@mail.gmail.com&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Few months ago,I built an custom image for Raspberrypi using Yocto<br>
Project,flashed it in a sd card and was able to boot<br>
raspberrypi.Presently,I am trying to use&nbsp; a different sd card with ras=
pbian<br>
os in same Raspberrypi.But it is not able to boot Raspberrypi.How can I<br>
rectify this problem?This is my code which I used few years back to<br>
generate yocto image.<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
PACKAGE_CLASSES ?=3D &quot;package_rpm package_deb&quot;<br>
&gt;<br>
&gt;<br>
&gt; EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks dbg-pkgs dev-pkgs tools-s=
dk<br>
&gt; tools-debug eclipse-debug &quot;<br>
&gt;<br>
&gt;<br>
&gt; USER_CLASSES ?=3D &quot;buildstats image-mklibs image-prelink&quot;<br=
>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; BB_DISKMON_DIRS ??=3D &quot;\<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,${TMPDIR},1G,100K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,${DL_DIR},1G,100K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,${SSTATE_DIR},1G,100K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; STOPTASKS,/tmp,100M,100K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,${TMPDIR},100M,1K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,${DL_DIR},100M,1K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,${SSTATE_DIR},100M,1K \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; ABORT,/tmp,10M,1K&quot;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; CONF_VERSION =3D &quot;1&quot;<br>
&gt; MACHINE =3D &quot;raspberrypi3&quot;<br>
&gt; PREFERRED_VERSION_linux-raspberrypi =3D &quot;4.%&quot;<br>
&gt; DISTRO_FEATURES_remove =3D &quot;x11 wayland&quot;<br>
&gt; DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>
&gt; VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
&gt; IMAGE_INSTALL_append =3D &quot; git apt dpkg opkg rpm sudo wiringpi wi=
ringpi-dev<br>
&gt; connman connman-client tzdata i2c-tools i2c-tools-dev glibc-utils rpm<=
br>
&gt; dhcp-server bluez5 python-smbus bridge-utils hostapd apache2 openvpn<b=
r>
&gt; iptables nano&quot;<br>
&gt; IMAGE_INSTALL &#43;=3D &quot;wiringpi&quot;<br>
&gt; ENABLE_UART=3D&quot;1&quot;<br>
&gt; ENABLE_SPI_BUS=3D &quot;1&quot;<br>
&gt; ENABLE_I2C =3D &quot;1&quot;<br>
&gt;<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20181211/d89aff52/attachment-0001.html">http://lists.yoctoproject.org/pi=
permail/yocto/attachments/20181211/d89aff52/attachment-0001.html</a>&gt;<br=
>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Tue, 11 Dec 2018 10:10:29 &#43;0100<br>
From: Jonas Andersson &lt;jonaskgandersson@gmail.com&gt;<br>
To: yocto@yoctoproject.org<br>
Subject: [yocto]&nbsp; Do rootfs fail when switch from rpm to deb<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CAKpuFdeEtgn9SFt6OsTca7zHFKD=
c32ORmbn69EO01P&#43;YdybVDw@mail.gmail.com&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi<br>
<br>
We have an recipe based on microservicebus-node npm package created with<br=
>
devtool.<br>
<br>
When we build with PACKAGE_CLASSES =3D &quot;package_rpm&quot; it builds bu=
t&nbsp; when<br>
switching to package_deb do_rootfs fails.<br>
What can I do to get more information about the packages that is reported<b=
r>
as broken, are there any known issues with npm and deb?<br>
<br>
Here is my build output<br>
___________________________________________________________________________=
____________________________<br>
Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;1.38.0&quot;<br>
BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;x86_64-linux&quot;<br>
NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;universal&quot;<br>
TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;raspberrypi3&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;2.5.1&quot;<br=
>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm armv7=
ve vfp thumb neon vfpv4<br>
callconvention-hard cortexa7&quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
&quot;hard&quot;<br>
meta<br>
meta-poky<br>
meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;sumo:36d5cee56=
bd389ecbe66dbfad9e5d57c13b56b95&quot;<br>
meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;sumo:2bb21ef27c4b0c9d52d30b3b2c5a0160fd02b966&quot;<br=
>
meta-microservicebus<br>
meta-example-msb-rpi =3D &quot;dev:be586f405a92a563ff49b8adf9ef7a9da5cc7192=
&quot;<br>
meta-raspberrypi&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;sumo:2d40b000021bc8a9ef7=
f329ed0ad410f8d227b97&quot;<br>
meta-rauc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;sumo:40a5890478a50ad80e404be5d9de197dd9a79d44&quot;<br>
<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
NOTE: Running task 2864 of 3398<br>
(/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/rec=
ipes-core/images/msb-image-rauc.bb:<br>
do_rootfs)<br>
NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Started<br>
ERROR: msb-image-rauc-1.0-r0 do_rootfs: Unable to install packages. Command=
<br>
'/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi=
/msb-image-rauc/1.0-r0/recipe-sysroot-native/usr/bin/apt-get<br>
install --force-yes --allow-unauthenticated microservicebus-node<br>
packagegroup-core-boot psplash-raspberrypi packagegroup-base-extended<br>
packagegroup-core-ssh-openssh run-postinsts' returned 100:<br>
Reading package lists...<br>
Building dependency tree...<br>
Reading state information...<br>
Some packages could not be installed. This may mean that you have<br>
requested an impossible situation or if you are using the unstable<br>
distribution that some required packages have not yet been created<br>
or been moved out of Incoming.<br>
The following information may help to resolve the situation:<br>
<br>
The following packages have unmet dependencies:<br>
&nbsp;microservicebus-node : Depends: microservicebus-node-npm but it is no=
t<br>
going to be installed<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Depends: mi=
croservicebus-node-npm-JSONStream but it<br>
is not installable<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Depends:<br=
>
microservicebus-node-npm-JSONStream-jsonparse but it is not installable<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Depends:<br=
>
microservicebus-node-npm-JSONStream-through but it is not installable<br>
E: Unable to correct problems, you have held broken packages.<br>
<br>
ERROR: msb-image-rauc-1.0-r0 do_rootfs: Function failed: do_rootfs<br>
ERROR: Logfile of failure stored in:<br>
/home/jonas/git/devtool/build-deb/tmp/work/raspberrypi3-poky-linux-gnueabi/=
msb-image-rauc/1.0-r0/temp/log.do_rootfs.7424<br>
NOTE: recipe msb-image-rauc-1.0-r0: task do_rootfs: Failed<br>
ERROR: Task<br>
(/home/jonas/git/devtool/meta-microservicebus-node/meta-example-msb-rpi/rec=
ipes-core/images/msb-image-rauc.bb:do_rootfs)<br>
failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 3391 tasks of which 3390 didn't need to be<b=
r>
rerun and 1 failed.<br>
___________________________________________________________________________=
____________________________<br>
<br>
/Jonas<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20181211/ab6fe374/attachment-0001.html">http://lists.yoctoproject.org/pi=
permail/yocto/attachments/20181211/ab6fe374/attachment-0001.html</a>&gt;<br=
>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Tue, 11 Dec 2018 10:57:14 &#43;0100<br>
From: Peter Balazovic &lt;balazovic.peter@gmail.com&gt;<br>
To: Yocto list discussion &lt;yocto@yoctoproject.org&gt;,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; eclipse-yocto@yoctoproject.org<b=
r>
Subject: [yocto] Lib update<br>
Message-ID:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &lt;CAFq4t4jdGXQnytzXjW-Op=3DNVd=
y1s1yAO=3DU6v9G8NXGd-OX4F0w@mail.gmail.com&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
I am developing library (set of libraries) which at first are built and<br>
part of build image &amp; my SDK.<br>
Now I would need to update the libs so SDK and as well target remote image<=
br>
are updated. I want to avoid rebuild whole image and flash SD-Card again<br=
>
and generated SDK over again. I use SDK cross-compiler, Eclipse, ADT plugin=
<br>
to develop cmake-based application.<br>
What is the correct procedure?<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20181211/84c549da/attachment.html">http://lists.yoctoproject.org/piperma=
il/yocto/attachments/20181211/84c549da/attachment.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
yocto@yoctoproject.org<br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoc=
toproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 99, Issue 26<br>
*************************************<br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1P195MB036292F42DABDA874AFBFB73C1A60HE1P195MB0362EURP_--
