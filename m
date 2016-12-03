Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A2B6E00DAB; Sat,  3 Dec 2016 12:19:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B778E00C3E
	for <yocto@yoctoproject.org>; Sat,  3 Dec 2016 12:19:06 -0800 (PST)
Received: from nbhjo (unknown [65.202.45.61])
	by msfrf2618.sfr.fr (SMTP Server) with ESMTP id 8B5051C00083C;
	Sat,  3 Dec 2016 21:19:05 +0100 (CET)
Received: from nbhjo (unknown [65.202.45.61])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2618.sfr.fr (SMTP Server) with ESMTPSA;
	Sat,  3 Dec 2016 21:19:04 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
In-Reply-To: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
Date: Sat, 3 Dec 2016 21:18:59 +0100
Message-ID: <001301d24da2$7cf70590$76e510b0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIdWPz6eV3C2BSfUPw1Ib/BTgRAkaBgkc6A
X-sfr-mailing: LEGIT
Subject: Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Sat, 03 Dec 2016 20:19:11 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Gary,

Regarding the 4.7, did you try the patch I sent 1 week ago?
It uses 4.7.10, with revision " =
e7fa325a40f260ed9fb86391a0b65150eba8c112",
and is known to work.
The "good" revision you mention is known to not be "good" anymore.

The patch can be found on the list, or on
https://github.com/hjourdain/meta-raspberrypi.

Hope it helps,

Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gary Thomas
Sent: samedi 3 d=E9cembre 2016 08:34
To: yocto@yoctoproject.org
Subject: [yocto] [meta-raspberrypi] Current master broken

I'm currently unable to build for the RaspberryPi-3 using the master =
branch:

Build Configuration:
BB_VERSION        =3D "1.32.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "arm-amltd-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "amltd"
DISTRO_VERSION    =3D "2.2+snapshot-20161202"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 =
callconvention-hard
cortexa7"
TARGET_FPU        =3D "hard"
meta              =3D "master:9e63f81c78e284c9b325fe04a1b59e61c7ad8a1a"
meta-amltd        =3D "master:074120ab3a82cea0ac50d4e9eec89130a860a4fa"
meta-raspberrypi  =3D "master:44d41bf3e94c4c8fe5ad5a3650572c8d17ef36c9"

Initialising tasks: 100%
|#############################################################| Time:
0:00:00 Checking sstate mirror object availability: 100%
|#####################################| Time: 0:00:00
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0
do_kernel_metadata: Function failed: do_kernel_metadata (log file is =
located
at
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spb
errypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647=
)
ERROR: Logfile of failure stored in:=20
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spb
errypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647=

Log data follows:
| DEBUG: Executing shell function do_kernel_metadata
| [ERROR]: processing of file /tmp/tmp.bXPr8PVPz3 failed
| /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patc
| h.cmd: line 29: : No such file or directory
|
| Context around the error is:
|
|     #
|     prefix
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi/
|     kconf non-hardware
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi/defconfig
|     prefix
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi-4.4/
|     patch
"/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pbe
rrypi-4.4/0001-fix-dtbo-rules.patch"
|     # run time: 0 seconds
|     # processed files:
|     # _cfg
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi/defconfig
|     # _cfg=20
| /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-r
| aspberrypi-4.4/0001-fix-dtbo-rules.patch
|
| See pre-processed file /tmp/tmp.bXPr8PVPz3 for more details # # scc=20
| v0.8 # processed: Fri Dec  2 04:12:25 CET 2016 # # This is a scc=20
| output file, do not edit #
| [ERROR]: processing of file /tmp/tmp.eTLAT789Q2 failed # _reloc_dir=20
| /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
| # _reloc_dir=20
| /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux
| /build/rpi3_2016-09-13/tmp/sysroots/x86_64-linux/usr/bin/scc-cmds/patc
| h.cmd: line 29: : No such file or directory
|
| Context around the error is:
|
|     #
|     prefix
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi/
|     kconf non-hardware
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi/defconfig
|     prefix
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi-4.4/
|     patch
"/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pbe
rrypi-4.4/0001-fix-dtbo-rules.patch"
|     # run time: 1 seconds
|     # processed files:
|     # _cfg
/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-rasp=
ber
rypi/defconfig
|     # _cfg=20
| /local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-r
| aspberrypi-4.4/0001-fix-dtbo-rules.patch
|
| See pre-processed file /tmp/tmp.eTLAT789Q2 for more details
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_kernel_metadata (log file is located at
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spb
errypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_metadata.5647=
)
ERROR: Task
(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pbe
rrypi_4.4.bb:do_kernel_metadata)
failed with exit code '1'

I also tried kernel version 4.7:
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: =
Fetcher
failure: Unable to find revision =
a45a35c08598b23f9fd82e49c83b46c7d536244f in
branch rpi-4.7.y even from upstream
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: =
Fetcher
failure for URL:=20
'git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.7.y=
'.
Unable to fetch URL from any source.
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: =
Function
failed: base_do_fetch
ERROR: Logfile of failure stored in:=20
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spb
errypi/1_4.7.7+gitAUTOINC+a45a35c085-r0/temp/log.do_fetch.6133
ERROR: Task
(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pbe
rrypi_4.7.bb:do_fetch) failed with exit code '1'

I was able to build with 4.8, but X didn't come up :-(

Any ideas?

Note: I changed the 4.7 recipe to use a good revision (c2cbd9c611) but =
then
I suffered the same problem installing the .dtbo patch :-(

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


