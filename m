Return-Path: <yocto@emagii.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 552CCE00C2B; Mon, 28 May 2018 02:12:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,MPART_ALT_DIFF_COUNT,RCVD_IN_DNSWL_LOW autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.236.60.154 listed in list.dnswl.org]
	*  1.1 MPART_ALT_DIFF_COUNT BODY: HTML and text parts are different
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
X-Greylist: delayed 121 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 May 2018 02:12:08 PDT
Received: from v-smtpout1.han.skanova.net (v-smtpout1.han.skanova.net
	[81.236.60.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E013FE00A51
	for <yocto@yoctoproject.org>; Mon, 28 May 2018 02:12:08 -0700 (PDT)
Received: from [95.192.191.196] ([95.192.191.196]) by cmsmtp with ESMTPA
	id NEAGffc3SOI3aNEAGf6KBi; Mon, 28 May 2018 11:10:05 +0200
From: Ulf Samuelsson <yocto@emagii.com>
Mime-Version: 1.0 (1.0)
Message-Id: <5D4F2D61-6DE5-480F-AE1F-E1DD377337D3@emagii.com>
Date: Mon, 28 May 2018 11:10:04 +0200
References: <VI1PR0301MB2240D44AD76C24B2DBA960A3CE6E0@VI1PR0301MB2240.eurprd03.prod.outlook.com>
To: Yocto Mailing List <yocto@yoctoproject.org>
X-Mailer: iPad Mail (15B202)
X-CMAE-Envelope: MS4wfDOLjEboLSThDCygPa/yrcXYaPl4cUdqW1XgTDtfZwnxd0YaQRU25I9wlacR+Mzw4gha1Fy1YGqCR1GkXntRyXxu+em+vm+9g9wTZYMvgD55TwC7fdNl
	lbULwq3OJHBHJ0HKMfwhzJ964Bs3UxgWibz1MHvTo8WrxpN532JVbyyFEz/YnrIykFsx8QZvBid7bg==
Subject: image-mklibs.bbclass fails
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
X-List-Received-Date: Mon, 28 May 2018 09:12:11 -0000
X-Groupsio-MsgNum: 41250
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-A88FC6E9-6A36-4C26-8469-A30F1E49C4C4

--Apple-Mail-A88FC6E9-6A36-4C26-8469-A30F1E49C4C4
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Checked out poky
git checkout -b rocko origin/rocko
export MACHINE=3Dbeaglebone
. ./oe-init-build-env

Added to local.conf:
MKLIBS_OPTIMIZED_IMAGES_append =3D " core-image-minimal"

Result:

<XXX>/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 1=
33: i586-poky-linux-readelf: command not found
...
Exception: Cannot find lib/home/ulf/projects/poky-bb/poky/build/tmp/work/qem=
ux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot/lib/ld-linux.so.2
WARNING: /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/c=
ore-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363:1 exit 1 from '=
mklibs -v --ldlib ${dynamic_loader} --libdir lib --sysroot /home/ulf/project=
s/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/r=
ecipe-sysroot --gcc-options "--sysroot=3D/home/ulf/projects/poky-bb/poky/bui=
ld/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot" --r=
oot /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-i=
mage-minimal/1.0-r0/rootfs --target `echo i586-poky-linux- | sed 's/-$//' ` -=
d /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-ima=
ge-minimal/1.0-r0/mklibs/dest `cat /home/ulf/projects/poky-bb/poky/build/tmp=
/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/executables.list`'=

...

Looks like image-mklibs.bbclass has not been tested since the move to a loca=
l sysroot happened.

BR
Ulf Samuelsson


--Apple-Mail-A88FC6E9-6A36-4C26-8469-A30F1E49C4C4
Content-Type: multipart/mixed;
	boundary=Apple-Mail-D56828D4-28B4-4AB5-ADA0-E9AAECAE1CFC
Content-Transfer-Encoding: 7bit

--Apple-Mail-D56828D4-28B4-4AB5-ADA0-E9AAECAE1CFC
Content-Type: text/html;
	charset=us-ascii
Content-Transfer-Encoding: 7bit

<html><head><meta http-equiv="content-type" content="text/html; charset=us-ascii"></head><body dir="auto"><div><span></span></div><div><meta http-equiv="content-type" content="text/html; charset=us-ascii"><div><span style="font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 12pt;">Checked out poky</span></div><div><div id="divtagdefaultwrapper" dir="ltr" style="font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;"><div>
git checkout -b rocko origin/rocko<br>
export MACHINE=beaglebone<br>
. ./oe-init-build-env<br>
<br>
Added to local.conf:<br>
<span>MKLIBS_OPTIMIZED_IMAGES_append = " core-image-minimal"</span><br>
<br>
Result:<br>
<br>
<div>&lt;XXX&gt;/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found<br>
...<br>
<div>Exception: Cannot find lib/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot/lib/ld-linux.so.2<br>
<div>WARNING: /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363:1 exit 1 from 'mklibs -v --ldlib ${dynamic_loader} --libdir lib --sysroot /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot
 --gcc-options "--sysroot=/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot" --root /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs --target `echo i586-poky-linux-
 | sed 's/-$//' ` -d /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/dest `cat /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/executables.list`'<br>
...<br>
</div>
</div>
<br>
Looks like image-mklibs.bbclass has not been tested since the move to a local sysroot happened.<br>
<br>
BR<br>
Ulf Samuelsson<br>
</div>
</div>
<p></p>
</div>


</div><div></div></div><div></div></body></html><html><head><meta http-equiv="content-type" content="text/html; charset=us-ascii"></head><body dir="auto"><div></div><div><meta http-equiv="content-type" content="text/html; charset=us-ascii"><div></div></div></body></html>

--Apple-Mail-D56828D4-28B4-4AB5-ADA0-E9AAECAE1CFC
Content-Type: text/x-log;
	name=build.log;
	x-apple-part-url=800517E1-131D-4260-9619-B64D8BDB14FB
Content-Disposition: attachment;
	filename=build.log
Content-Transfer-Encoding: 7bit

Parsing recipes: 100% |#################################################################################################################################################| Time: 0:00:25
Parsing of 820 .bb files complete (0 cached, 820 parsed). 1279 targets, 44 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.36.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "ubuntu-16.04"
TARGET_SYS           = "i586-poky-linux"
MACHINE              = "qemux86"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4.3"
TUNE_FEATURES        = "m32 i586"
TARGET_FPU           = ""
meta                 
meta-poky            
meta-yocto-bsp       = "rocko:7e7ee662f5dea4d090293045f7498093322802cc"

NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.org/releases/uninative/1.9/x86_64-nativesdk-libc.tar.bz2;sha256sum=c26622a1f27dbf5b25de986b11584b5c5b2f322d9eb367f705a744f58a5561ec
Initialising tasks: 100% |##############################################################################################################################################| Time: 0:00:03
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: cryptodev-linux-native-1.9-r0 do_fetch: Checksum mismatch for local file /home/ulf/projects/poky-bb/poky/build/downloads/cryptodev-linux-1.9.tar.gz
Cleaning and trying again.
WARNING: cryptodev-linux-native-1.9-r0 do_fetch: Renaming /home/ulf/projects/poky-bb/poky/build/downloads/cryptodev-linux-1.9.tar.gz to /home/ulf/projects/poky-bb/poky/build/downloads/cryptodev-linux-1.9.tar.gz_bad-checksum_5ed12cda871532668dd7edcb843645e0
WARNING: cryptodev-linux-native-1.9-r0 do_fetch: Checksum failure encountered with download of http://nwl.cc/pub/cryptodev-linux/cryptodev-linux-1.9.tar.gz - will attempt other sources if available
WARNING: popt-native-1.16-r3 do_fetch: Failed to fetch URL http://rpm5.org/files/popt/popt-1.16.tar.gz, attempting MIRRORS if available
Currently  7 running tasks (298 of 2470)  12% |################                                                                                                                       |
Currently  8 running tasks (298 of 2470)  12% |################                                                                                                                       |
WARNING: shadow-4.2.1-r0 do_fetch: Failed to fetch URL http://pkg-shadow.alioth.debian.org/releases/shadow-4.2.1.tar.xz, attempting MIRRORS if available
WARNING: libpng-native-1.6.31-r0 do_fetch: Failed to fetch URL http://downloads.sourceforge.net/project/libpng/libpng16/1.6.31/libpng-1.6.31.tar.xz, attempting MIRRORS if available
WARNING: libffi-native-3.2.1-r0 do_fetch: Failed to fetch URL ftp://sourceware.org/pub/libffi/libffi-3.2.1.tar.gz, attempting MIRRORS if available
WARNING: alsa-lib-native-1.1.4.1-r0 do_fetch: Failed to fetch URL ftp://ftp.alsa-project.org/pub/lib/alsa-lib-1.1.4.1.tar.bz2, attempting MIRRORS if available
WARNING: coreutils-8.27-r0 do_fetch: Failed to fetch URL http://distfiles.gentoo.org/distfiles/coreutils-8.27-man.tar.xz;name=manpages, attempting MIRRORS if available
ERROR: core-image-minimal-1.0-r0 do_image: Function failed: mklibs_optimize_image (log file is located at /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image.13363)
ERROR: Logfile of failure stored in: /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image.13363
Log data follows:
| DEBUG: Executing python function do_image
| NOTE: Executing mklibs_optimize_image ...
| DEBUG: Executing shell function mklibs_optimize_image
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363: line 133: i586-poky-linux-readelf: command not found
| I: Using /lib/ld-linux.so.2 as dynamic linker.
| I: library reduction pass 1
| Objects:
| Traceback (most recent call last):
|   File "/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/mklibs", line 523, in <module>
|     for symbol in provided_symbols(lib):
|   File "/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot-native/usr/bin/mklibs", line 214, in provided_symbols
|     raise Exception("Cannot find lib" + obj)
| Exception: Cannot find lib/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot/lib/ld-linux.so.2
| WARNING: /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/run.mklibs_optimize_image.13363:1 exit 1 from 'mklibs -v --ldlib ${dynamic_loader} --libdir lib --sysroot /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot --gcc-options "--sysroot=/home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/recipe-sysroot" --root /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs --target `echo i586-poky-linux- | sed 's/-$//' ` -d /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/dest `cat /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/mklibs/executables.list`'
| DEBUG: Python function do_image finished
| ERROR: Function failed: mklibs_optimize_image (log file is located at /home/ulf/projects/poky-bb/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image.13363)
ERROR: Task (/home/ulf/projects/poky-bb/poky/meta/recipes-core/images/core-image-minimal.bb:do_image) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2466 tasks of which 6 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /home/ulf/projects/poky-bb/poky/meta/recipes-core/images/core-image-minimal.bb:do_image
Summary: There were 9 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


--Apple-Mail-D56828D4-28B4-4AB5-ADA0-E9AAECAE1CFC--

--Apple-Mail-A88FC6E9-6A36-4C26-8469-A30F1E49C4C4--
