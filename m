Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BFD5E00995; Thu, 13 Apr 2017 04:43:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [98.139.213.74 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [98.139.213.74 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from nm26-vm0.bullet.mail.bf1.yahoo.com
	(nm26-vm0.bullet.mail.bf1.yahoo.com [98.139.213.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B67E00961
	for <yocto@yoctoproject.org>; Thu, 13 Apr 2017 04:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1492083824; bh=baJnkQH5qHkcPtOokhswbCxD9vP50RA6CPuU2x13Cjk=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=YiK3Jt2ilw1g+k32kPWDcFforzFjNTOZWFQLT5Est7oDRPiyMDwoGsSByrD0UzDI+JxTLW8z0bitoYD8HUgwS+NtNQT5vgOeU9DPLnuWfjAz/EnHUQO5FxO6cxpvJmbtigMrdZemMwyARhKHvjOLakmbuQpBUeyjNd+ovVdzzpfeicgRnD9b0e0y1CWAfUkL30EKvIv8WAU5tTrDR4iTjknhfAX0mHTt7JUwJ+OnqS3hCaTEeOihqPzMN7pxD6B4k0HfA6zu/JJ15iQK2VRFhL/sOpfqU0rh7qeeEKKBqF+i2Paa4VUkijyU2lbWvjrwsK0V+PrFnYh+xpBWOueY7Q==
Received: from [98.139.170.180] by nm26.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Apr 2017 11:43:44 -0000
Received: from [98.139.212.215] by tm23.bullet.mail.bf1.yahoo.com with NNFMP;
	13 Apr 2017 11:43:44 -0000
Received: from [127.0.0.1] by omp1024.mail.bf1.yahoo.com with NNFMP;
	13 Apr 2017 11:43:44 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 382031.40697.bm@omp1024.mail.bf1.yahoo.com
X-YMail-OSG: xXITNlwVM1kQL_lEGqdWF_x3oo_XhoGtvSn1RjSZxCcKL.6SvXEbNxaaZ.Uix01
	8qbMGPa9GZ0nIIRCSs75vonEoNSOoEon7H.l8ouMfsGPgis4N4oRDhJ9EWXi.rD94cvLJ1wiZQB3
	bA9k37IfUWo81J.58l_fb3Br6GRKc1p3A4qVzmnZB6h_azdlOui70toW0MpY.aKNGfKaSrTqnJX7
	JbWFJ8egp7g9tPKzObfvhIRY1I3qwDJAOq302ZdvVfXDJHF8.cu0KDkOnikI4XwSYjpSBVfGe9Uy
	lLvRUQTEf2oIxIrvb5qfiuIqr1_0bIi.KHpWOamKzs.7BegVVkTVPelH5DxcNkQu1LruWrSeVpnm
	EtvmqfOLYjPdGcjKR.4qrjVyFDxjKR4Yf4vHJcAZX6pHEFGyqVd1hHzudk7eAuUdgu7pxH.ozP2s
	4b0aWDnxNUQtSWAlCGf.HIjtxOyWrG5tAZhrQV4ZFczYAfEdAB300LpCjt5.jTUC4dJ2bkrcajzg
	ihiRGBO1NoCn5cY0Rfeanx_XcmLuerwFLQzpa8W52kTy5lNaXrAasvcgWb.gsJw--
Received: from jws400008.mail.bf2.yahoo.com by
	sendmailws104.mail.bf1.yahoo.com;
	Thu, 13 Apr 2017 11:43:43 +0000; 1492083823.988
Date: Thu, 13 Apr 2017 11:43:43 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <445461960.1210357.1492083823749@mail.yahoo.com>
MIME-Version: 1.0
References: <445461960.1210357.1492083823749.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.9386 YahooMailNeo Mozilla/5.0 (X11;
	Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko)
	Chrome/51.0.2704.91 Safari/537.36
Subject: Re: bare-metal RPi2B & RPI3B
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Apr 2017 11:43:49 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1210356_209820723.1492083823736"

------=_Part_1210356_209820723.1492083823736
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
As of now I have been able to get the library of openjpeg running in bare-m=
etal RPi2B or RPi3B.With just 5 files on a RPi2B or RPi3B the compression o=
f bitmap is done.bootcode.bin =C2=A0fixup.dat =C2=A0kernel7.img =C2=A0MyBit=
map.bmp =C2=A0start.elf.In addition this provides a TFTP server and Telnet =
services.In 26 sec the RPi3B boots and does a compression of a 1024 x 1024 =
image.The compression takes 5 sec =C2=A0These files are found at https://gi=
thub.com/develone/jpeg-2000-test/tree/master/bare-metal/openjp/sd-card/see =
https://github.com/develone/jpeg-2000-test/blob/master/bare-metal/LibC/LibC=
.pdfand the openjpeg library https://github.com/develone/openjpeg/blob/ulti=
bo/openjpeg.odtI forked the openjpeg repo and created a ultibo branch.The c=
ompiler used is arm-none-eabi tools to compile the C code and Free Pascal C=
ompiler to=C2=A0compile and link kernel7.img.
This is the documentation to date.
pi@raspberrypi3:~ $ export PATH=3D/home/pi/ultibo/core/fpc/bin:$PATHpi@rasp=
berrypi3:~ $ cd jpeg-2000-test/bare-metal/openjp/pi@raspberrypi3:~/jpeg-200=
0-test/bare-metal/openjp $ ./compile.sh=C2=A0Thu 13 Apr 11:36:26 UTC 2017Wo=
rd count arm-none-eabi-ar -t libopenjp2.acopied from /home/pi/t_ultibo/src/=
lib/openjp2=C2=A0 =C2=A0 =C2=A022 =C2=A0 =C2=A0 =C2=A022 =C2=A0 =C2=A0 180T=
arget OS: UltiboCompiling DWT_LIFT_RPi2.lprCompiling uTFTP.pasAssembling ut=
ftpCompiling uliftbitmap.pasCompiling uBufferToC.pasAssembling uliftbitmapA=
ssembling dwt_lift_rpi2Linking DWT_LIFT_RPi21086 lines compiled, 4.7 sec, 2=
733156 bytes code, 89252 bytes data-rw-r--r-- 1 pi pi =C2=A0 =C2=A07364 Apr=
 13 11:36 dwtlift.o-rwxr-xr-x 1 pi pi 2808540 Apr 13 11:36 kernel7.img-rw-r=
--r-- 1 pi pi =C2=A0356242 Apr 13 11:36 libdwtlift.a-rw-r--r-- 1 pi pi =C2=
=A0356242 Apr 13 11:36 libopenjp2.awhen ./compile.sh is executed should be =
23Word count libopenjp2_obj.txt in /home/pi/t_ultibo/src/lib/openjp2plus dw=
tlift.o=C2=A023 =C2=A023 190 libopenjp2_obj.txt
=C2=A0Does Wine run in Yocto? This would make Ultibo the Bare-metal project=
 work in Yocto.

Let me know if you have any questions.=C2=A0Edward Vidal Jr. e-mail develon=
e@sbcglobal.net 915-595-1613=20

    On Friday, February 3, 2017 12:37 AM, "yocto-request@yoctoproject.org" =
<yocto-request@yoctoproject.org> wrote:
=20

 Send yocto mailing list submissions to
=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
=C2=A0=C2=A0=C2=A0 https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
=C2=A0=C2=A0=C2=A0 yocto-request@yoctoproject.org

You can reach the person managing the list at
=C2=A0=C2=A0=C2=A0 yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific
than "Re: Contents of yocto digest..."


Today's Topics:

=C2=A0 1. Re: Ruby and OpenSSL version mismatch? (Khem Raj)
=C2=A0 2. bare-metal RPi2B & RPI3B (Edward Vidal)
=C2=A0 3. [meta-cgl][PATCH 3/3] initramfs: fix parsing issue with do=C2=A0=
=C2=A0=C2=A0 to
=C2=A0 =C2=A0 =C2=A0 uboot inclusion (Armin Kuster)
=C2=A0 4. [meta-cgl][PATCH 1/3] iscsi-initiator-utils: make it
=C2=A0 =C2=A0 =C2=A0 DISTRO_FEATURE dependent (Armin Kuster)


----------------------------------------------------------------------

Message: 1
Date: Thu, 02 Feb 2017 22:47:40 +0000
From: Khem Raj <raj.khem@gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>,=C2=A0=C2=A0=C2=A0 "yocto@yocto=
project.org"
=C2=A0=C2=A0=C2=A0 <yocto@yoctoproject.org>
Subject: Re: [yocto] Ruby and OpenSSL version mismatch?
Message-ID:
=C2=A0=C2=A0=C2=A0 <CAMKF1sr4Go-8_9k+1d32JkzSeWKguc9S+iZ94Vk_iFKrv_-kDw@mai=
l.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Send a back port request


On Thu, Feb 2, 2017 at 5:32 AM Takashi Matsuzawa <tmatsuzawa@xevo.com>
wrote:

> Hello, I just tried and the below seems to be the fix.
>
>
> https://patchwork.openembedded.org/patch/119999/
>
> ------------------------------
> *From:* Takashi Matsuzawa
> *Sent:* Thursday, February 2, 2017 3:25 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Ruby and OpenSSL version mismatch?
>
>
> Hello, Yocto.
>
> I am trynig a build of fido based yocto image, with openssl 1.0.2j for
> security reason.
> The openssl recipe itself builds successfully, but later in the build I
> see error in jscore.
> In fact, ruby is complaining that 'OPENSSL_1.0.0' is not available.
>
> |
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_re=
quire.rb:54:in
> `require':
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/../=
../../../libcrypto.so.1.0.0:
> version `OPENSSL_1.0.0' not found (required by
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sha=
1.so)
> -
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sha=
1.so
> (LoadError)
> |=C2=A0 =C2=A0 from
> /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_re=
quire.rb:54:in
> `require'
> |=C2=A0 =C2=A0 from
> /xxx/work/core2-32-poky-linux/qtwebkit/5.5.0+gitAUTOINC+0d592678ba-r0/git=
/Source/JavaScriptCore/offlineasm/generate_offset_extractor.rb:30:in
> `<main>'
> | make[2]: *** [LLIntDesiredOffsets.h] Error 1
>
> In fact, if I do objdump -p on sha1.so (in ruby tree):
>
> >=C2=A0 required from libcrypto.so.1.0.0:
> >=C2=A0 =C2=A0 0x066a2b20 0x00 02 OPENSSL_1.0.0
>
> Whereas, my libcrypt.so.1.0.0 says:
>
> >Version definitions:
> >1 0x01 0x0746be50 libcrypto.so.1.0.0
> >2 0x00 0x06a2b2e4 OPENSSL_1.0.2d
> >3 0x00 0x06a2b2e7 OPENSSL_1.0.2g
> >=C2=A0 =C2=A0 OPENSSL_1.0.2d
>
> So, this might be the cause of the problem.
> But I am not sure why sha1.so (which ruby build generats) define these
> version numbers and not refer to the OpenSSL library in the build.
>
> I googled, but there were some tips on updating ruby to solve OpenSSL
> version mismatch, but it is through grew or apt-get, etc.=C2=A0 Not a tip=
 for
> yocto build.
>
> I may be not familiar with ruby build yet, but any idea how I can fix thi=
s?
> I could try updating ruby recipe as well to more recent version, but firs=
t
> I want to confirm how ruby is deciding the OpenSSL version for its plugin
> library and causing this mismatch.
>
> Thank you for your knowledge..
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20170202/e4=
ddf3be/attachment-0001.html>

------------------------------

Message: 2
Date: Fri, 3 Feb 2017 00:24:27 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] bare-metal RPi2B & RPI3B
Message-ID: <1282640427.5827.1486081467007@mail.yahoo.com>
Content-Type: text/plain; charset=3D"utf-8"

Hello All,
Today I was able to get the lifting step in bare-metal.
With just 5 files on a RPi2B the lifting step was done.
bootcode.bin ?fixup.dat ?kernel7.img ?MyBitmap.bmp ?start.elf
?These files are found at?https://github.com/develone/jpeg-2000-test/tree/m=
aster/bare-metal/LibC/sd-card/RPi2
see?https://github.com/develone/jpeg-2000-test/blob/master/bare-metal/LibC/=
LibC.pdf
This is the documentation to date.
Let me know if you have any questions.??Edward Vidal Jr. e-mail develone@sb=
cglobal.net 915-595-1613
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20170203/94=
02a9cd/attachment-0001.html>

------------------------------

Message: 3
Date: Thu,=C2=A0 2 Feb 2017 16:36:36 -0800
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH 3/3] initramfs: fix parsing issue
=C2=A0=C2=A0=C2=A0 with do=C2=A0=C2=A0=C2=A0 to uboot inclusion
Message-ID: <1486082196-29895-3-git-send-email-akuster808@gmail.com>

From: Armin Kuster <akuster@mvista.com>

since the image type includes "uboot", need to inherit the class for it

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/images/core-image-cgl-initramfs.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/images/core-image-cgl-initramfs.bb b/meta-cgl-=
common/images/core-image-cgl-initramfs.bb
index 0777b7c..2ebbdf5 100644
--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb
+++ b/meta-cgl-common/images/core-image-cgl-initramfs.bb
@@ -12,8 +12,8 @@ export IMAGE_BASENAME =3D "core-image-cgl-initramfs"
 IMAGE_LINGUAS =3D ""
=20
 LICENSE =3D "MIT"
-
-IMAGE_FSTYPES =3D "cpio.gz.u-boot"
+IMAGE_CLASSES =3D " image_types_uboot"
+IMAGE_FSTYPES ??=3D "cpio.gz.u-boot"
=20
 IMAGE_ROOTFS_SIZE =3D "8192"
=20
--=20
2.7.4



------------------------------

Message: 4
Date: Thu,=C2=A0 2 Feb 2017 16:36:34 -0800
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,=C2=A0=C2=A0=C2=A0 yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH 1/3] iscsi-initiator-utils: make it
=C2=A0=C2=A0=C2=A0 DISTRO_FEATURE dependent
Message-ID: <1486082196-29895-1-git-send-email-akuster808@gmail.com>

From: Armin Kuster <akuster@mvista.com>

When this package was updated in OE,
it now requires systemd. Make this optional.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb b=
/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
index b0c2cac..045691a 100644
--- a/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
+++ b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb
@@ -42,7 +42,7 @@ RDEPENDS_packagegroup-cgl-middleware =3D "\
=C2=A0 =C2=A0 strongswan \
=C2=A0 =C2=A0 vlan \
=C2=A0 =C2=A0 corosync \
-=C2=A0 =C2=A0 iscsi-initiator-utils \
+ ${@bb.utils.contains("DISTRO_FEATURES", "systemd", "iscsi-initiator-utils=
", "",d)} \
=C2=A0 =C2=A0 openais \
=C2=A0 =C2=A0 openipmi \
=C2=A0 =C2=A0 openhpi \
--=20
2.7.4



------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 77, Issue 10
*************************************


  =20

------=_Part_1210356_209820723.1492083823736
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:13px"><div id=3D"yiv9085197350"><div id=3D"yui_3_16_0_ym19_1_14920837=
61658_5567"><div style=3D"color:#000;background-color:#fff;font-family:Helv=
etica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:13px;" id=
=3D"yui_3_16_0_ym19_1_1492083761658_5566"><div id=3D"yiv9085197350yui_3_16_=
0_ym19_1_1492081434292_6509">Hello All,</div><div id=3D"yiv9085197350yui_3_=
16_0_ym19_1_1492081434292_6510"><br clear=3D"none" id=3D"yiv9085197350yui_3=
_16_0_ym19_1_1492081434292_6511"></div><div id=3D"yiv9085197350yui_3_16_0_y=
m19_1_1492081434292_6512">As of now I have been able to get the library of =
openjpeg running in bare-metal RPi2B or RPi3B.</div><div id=3D"yiv908519735=
0yui_3_16_0_ym19_1_1492081434292_6513">With just 5 files on a RPi2B or RPi3=
B the compression of bitmap is done.</div><div id=3D"yiv9085197350yui_3_16_=
0_ym19_1_1492081434292_6514">bootcode.bin &nbsp;fixup.dat &nbsp;kernel7.img=
 &nbsp;MyBitmap.bmp &nbsp;start.elf.</div><div id=3D"yiv9085197350yui_3_16_=
0_ym19_1_1492081434292_6515">In addition this provides a TFTP server and Te=
lnet services.</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292=
_6516">In 26 sec the RPi3B boots and does a compression of a 1024 x 1024 im=
age.</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6517">The=
 compression takes 5 sec &nbsp;</div><div id=3D"yiv9085197350yui_3_16_0_ym1=
9_1_1492081434292_6518">These files are found at https://github.com/develon=
e/jpeg-2000-test/tree/master/bare-metal/openjp/sd-card/</div><div id=3D"yiv=
9085197350yui_3_16_0_ym19_1_1492081434292_6519">see https://github.com/deve=
lone/jpeg-2000-test/blob/master/bare-metal/LibC/LibC.pdf</div><div id=3D"yi=
v9085197350yui_3_16_0_ym19_1_1492081434292_6520">and the openjpeg library h=
ttps://github.com/develone/openjpeg/blob/ultibo/openjpeg.odt</div><div id=
=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6521">I forked the openjpe=
g repo and created a ultibo branch.</div><div id=3D"yiv9085197350yui_3_16_0=
_ym19_1_1492081434292_6522">The compiler used is arm-none-eabi tools to com=
pile the C code and Free Pascal Compiler to&nbsp;</div><div id=3D"yiv908519=
7350yui_3_16_0_ym19_1_1492081434292_6523">compile and link kernel7.img.</di=
v><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6524"><br clear=
=3D"none" id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6525"></div><d=
iv id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6526">This is the doc=
umentation to date.</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_14920814=
34292_6527"><br clear=3D"none" id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081=
434292_6528"></div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_=
6529">pi@raspberrypi3:~ $ export PATH=3D/home/pi/ultibo/core/fpc/bin:$PATH<=
/div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6530">pi@raspb=
errypi3:~ $ cd jpeg-2000-test/bare-metal/openjp/</div><div id=3D"yiv9085197=
350yui_3_16_0_ym19_1_1492081434292_6531">pi@raspberrypi3:~/jpeg-2000-test/b=
are-metal/openjp $ ./compile.sh&nbsp;</div><div id=3D"yiv9085197350yui_3_16=
_0_ym19_1_1492081434292_6532">Thu 13 Apr 11:36:26 UTC 2017</div><div id=3D"=
yiv9085197350yui_3_16_0_ym19_1_1492081434292_6533">Word count arm-none-eabi=
-ar -t libopenjp2.a</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_14920814=
34292_6534">copied from /home/pi/t_ultibo/src/lib/openjp2</div><div id=3D"y=
iv9085197350yui_3_16_0_ym19_1_1492081434292_6535">&nbsp; &nbsp; &nbsp;22 &n=
bsp; &nbsp; &nbsp;22 &nbsp; &nbsp; 180</div><div id=3D"yiv9085197350yui_3_1=
6_0_ym19_1_1492081434292_6536">Target OS: Ultibo</div><div id=3D"yiv9085197=
350yui_3_16_0_ym19_1_1492081434292_6537">Compiling DWT_LIFT_RPi2.lpr</div><=
div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6538">Compiling uTFT=
P.pas</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6539">As=
sembling utftp</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292=
_6540">Compiling uliftbitmap.pas</div><div id=3D"yiv9085197350yui_3_16_0_ym=
19_1_1492081434292_6541">Compiling uBufferToC.pas</div><div id=3D"yiv908519=
7350yui_3_16_0_ym19_1_1492081434292_6542">Assembling uliftbitmap</div><div =
id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6543">Assembling dwt_lif=
t_rpi2</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6544">L=
inking DWT_LIFT_RPi2</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081=
434292_6545">1086 lines compiled, 4.7 sec, 2733156 bytes code, 89252 bytes =
data</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6546">-rw=
-r--r-- 1 pi pi &nbsp; &nbsp;7364 Apr 13 11:36 dwtlift.o</div><div id=3D"yi=
v9085197350yui_3_16_0_ym19_1_1492081434292_6547">-rwxr-xr-x 1 pi pi 2808540=
 Apr 13 11:36 kernel7.img</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_14=
92081434292_6548">-rw-r--r-- 1 pi pi &nbsp;356242 Apr 13 11:36 libdwtlift.a=
</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6549">-rw-r--=
r-- 1 pi pi &nbsp;356242 Apr 13 11:36 libopenjp2.a</div><div id=3D"yiv90851=
97350yui_3_16_0_ym19_1_1492081434292_6550">when ./compile.sh is executed sh=
ould be 23</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_655=
1">Word count libopenjp2_obj.txt in /home/pi/t_ultibo/src/lib/openjp2</div>=
<div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6552">plus dwtlift.=
o</div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6553">&nbsp;=
23 &nbsp;23 190 libopenjp2_obj.txt</div><div id=3D"yiv9085197350yui_3_16_0_=
ym19_1_1492081434292_6554"><br clear=3D"none"></div><div id=3D"yiv908519735=
0yui_3_16_0_ym19_1_1492081434292_6554">&nbsp;Does Wine run in Yocto? This w=
ould make Ultibo the Bare-metal project work in Yocto.</div><div id=3D"yiv9=
085197350yui_3_16_0_ym19_1_1492081434292_6554"><br clear=3D"none"></div><di=
v id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6554"><br clear=3D"non=
e"></div><div id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_5944"></di=
v><div dir=3D"ltr" id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6555"=
>Let me know if you have any questions.</div><div></div><div id=3D"yiv90851=
97350yui_3_16_0_ym19_1_1492081434292_6096">&nbsp;</div><div class=3D"yiv908=
5197350signature" id=3D"yiv9085197350yui_3_16_0_ym19_1_1492081434292_6095">=
Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</div> <div clas=
s=3D"yiv9085197350qtdSeparateBR" id=3D"yui_3_16_0_ym19_1_1492083761658_5612=
"><br clear=3D"none"><br clear=3D"none"></div><div class=3D"yiv9085197350yq=
t8916393511" id=3D"yiv9085197350yqt75151"></div></div></div></div><div clas=
s=3D".yiv9085197350yahoo_quoted"> <div style=3D"font-family:Helvetica Neue,=
 Helvetica, Arial, Lucida Grande, sans-serif;font-size:13px;"> <div style=
=3D"font-family:HelveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Gra=
nde, sans-serif;font-size:16px;"> <div dir=3D"ltr"><font size=3D"2" face=3D=
"Arial"> On Friday, February 3, 2017 12:37 AM, "yocto-request@yoctoproject.=
org" &lt;yocto-request@yoctoproject.org&gt; wrote:<br clear=3D"none"></font=
></div>  <br clear=3D"none"><br clear=3D"none"> <div class=3D"yiv9085197350=
y_msg_container"><div dir=3D"ltr">Send yocto mailing list submissions to<br=
 clear=3D"none"></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a rel=3D"nofollo=
w" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br cle=
ar=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr=
">To subscribe or unsubscribe via the World Wide Web, visit<br clear=3D"non=
e"></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a rel=3D"nofollow" shape=3D"r=
ect" target=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></di=
v><div dir=3D"ltr">or, via email, send a message with subject or body 'help=
' to<br clear=3D"none"></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a rel=3D"=
nofollow" shape=3D"rect" ymailto=3D"mailto:yocto-request@yoctoproject.org" =
target=3D"_blank" href=3D"mailto:yocto-request@yoctoproject.org">yocto-requ=
est@yoctoproject.org</a><br clear=3D"none"></div><div dir=3D"ltr"><br clear=
=3D"none"></div><div dir=3D"ltr">You can reach the person managing the list=
 at<br clear=3D"none"></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; <a rel=3D"n=
ofollow" shape=3D"rect" ymailto=3D"mailto:yocto-owner@yoctoproject.org" tar=
get=3D"_blank" href=3D"mailto:yocto-owner@yoctoproject.org">yocto-owner@yoc=
toproject.org</a><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"non=
e"></div><div dir=3D"ltr">When replying, please edit your Subject line so i=
t is more specific<br clear=3D"none"></div><div dir=3D"ltr">than "Re: Conte=
nts of yocto digest..."<br clear=3D"none"></div><div dir=3D"ltr"><br clear=
=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">=
Today's Topics:<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"=
></div><div dir=3D"ltr">&nbsp;  1. Re: Ruby and OpenSSL version mismatch? (=
Khem Raj)<br clear=3D"none"></div><div dir=3D"ltr">&nbsp;  2. bare-metal RP=
i2B &amp; RPI3B (Edward Vidal)<br clear=3D"none"></div><div dir=3D"ltr">&nb=
sp;  3. [meta-cgl][PATCH 3/3] initramfs: fix parsing issue with do&nbsp;&nb=
sp;&nbsp; to<br clear=3D"none"></div><div dir=3D"ltr">&nbsp; &nbsp; &nbsp; =
uboot inclusion (Armin Kuster)<br clear=3D"none"></div><div dir=3D"ltr">&nb=
sp;  4. [meta-cgl][PATCH 1/3] iscsi-initiator-utils: make it<br clear=3D"no=
ne"></div><div dir=3D"ltr">&nbsp; &nbsp; &nbsp; DISTRO_FEATURE dependent (A=
rmin Kuster)<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></=
div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">------------=
----------------------------------------------------------<br clear=3D"none=
"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Message:=
 1<br clear=3D"none"></div><div dir=3D"ltr">Date: Thu, 02 Feb 2017 22:47:40=
 +0000<br clear=3D"none"></div><div dir=3D"ltr">From: Khem Raj &lt;<a rel=
=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank" href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;<b=
r clear=3D"none"></div><div dir=3D"ltr">To: Takashi Matsuzawa &lt;<a rel=3D=
"nofollow" shape=3D"rect" ymailto=3D"mailto:tmatsuzawa@xevo.com" target=3D"=
_blank" href=3D"mailto:tmatsuzawa@xevo.com">tmatsuzawa@xevo.com</a>&gt;,&nb=
sp;&nbsp;&nbsp; "<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto=
@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org"=
>yocto@yoctoproject.org</a>"<br clear=3D"none"></div><div dir=3D"ltr">&nbsp=
;&nbsp;&nbsp; &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yoct=
o@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a>&gt;<br clear=3D"none"></div><div dir=3D"ltr">S=
ubject: Re: [yocto] Ruby and OpenSSL version mismatch?<br clear=3D"none"></=
div><div dir=3D"ltr">Message-ID:<br clear=3D"none"></div><div dir=3D"ltr">&=
nbsp;&nbsp;&nbsp; &lt;CAMKF1sr4Go-8_9k+1d32JkzSeWKguc9S+<a rel=3D"nofollow"=
 shape=3D"rect" ymailto=3D"mailto:iZ94Vk_iFKrv_-kDw@mail.gmail.com" target=
=3D"_blank" href=3D"mailto:iZ94Vk_iFKrv_-kDw@mail.gmail.com">iZ94Vk_iFKrv_-=
kDw@mail.gmail.com</a>&gt;<br clear=3D"none"></div><div dir=3D"ltr">Content=
-Type: text/plain; charset=3D"utf-8"<br clear=3D"none"></div><div dir=3D"lt=
r"><br clear=3D"none"></div><div dir=3D"ltr">Send a back port request<br cl=
ear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"lt=
r"><br clear=3D"none"></div><div dir=3D"ltr">On Thu, Feb 2, 2017 at 5:32 AM=
 Takashi Matsuzawa &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto=
:tmatsuzawa@xevo.com" target=3D"_blank" href=3D"mailto:tmatsuzawa@xevo.com"=
>tmatsuzawa@xevo.com</a>&gt;<br clear=3D"none"></div><div dir=3D"ltr">wrote=
:<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div di=
r=3D"ltr">&gt; Hello, I just tried and the below seems to be the fix.<br cl=
ear=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=
=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"ltr">&gt; <a rel=3D"nofol=
low" shape=3D"rect" target=3D"_blank" href=3D"https://patchwork.openembedde=
d.org/patch/119999/">https://patchwork.openembedded.org/patch/119999/</a><b=
r clear=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div d=
ir=3D"ltr">&gt; ------------------------------<br clear=3D"none"></div><div=
 dir=3D"ltr">&gt; *From:* Takashi Matsuzawa<br clear=3D"none"></div><div di=
r=3D"ltr">&gt; *Sent:* Thursday, February 2, 2017 3:25 PM<br clear=3D"none"=
></div><div dir=3D"ltr">&gt; *To:* <a rel=3D"nofollow" shape=3D"rect" ymail=
to=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"></div><div =
dir=3D"ltr">&gt; *Subject:* Ruby and OpenSSL version mismatch?<br clear=3D"=
none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"ltr">=
&gt;<br clear=3D"none"></div><div dir=3D"ltr">&gt; Hello, Yocto.<br clear=
=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"l=
tr">&gt; I am trynig a build of fido based yocto image, with openssl 1.0.2j=
 for<br clear=3D"none"></div><div dir=3D"ltr">&gt; security reason.<br clea=
r=3D"none"></div><div dir=3D"ltr">&gt; The openssl recipe itself builds suc=
cessfully, but later in the build I<br clear=3D"none"></div><div dir=3D"ltr=
">&gt; see error in jscore.<br clear=3D"none"></div><div dir=3D"ltr">&gt; I=
n fact, ruby is complaining that 'OPENSSL_1.0.0' is not available.<br clear=
=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"l=
tr">&gt; |<br clear=3D"none"></div><div dir=3D"ltr">&gt; /xxx/sysroots/x86_=
64-linux/usr/lib/ruby/2.2.0/rubygems/core_ext/kernel_require.rb:54:in<br cl=
ear=3D"none"></div><div dir=3D"ltr">&gt; `require':<br clear=3D"none"></div=
><div dir=3D"ltr">&gt; /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/x86_64=
-linux-gnu/digest/../../../../libcrypto.so.1.0.0:<br clear=3D"none"></div><=
div dir=3D"ltr">&gt; version `OPENSSL_1.0.0' not found (required by<br clea=
r=3D"none"></div><div dir=3D"ltr">&gt; /xxx/sysroots/x86_64-linux/usr/lib/r=
uby/2.2.0/x86_64-linux-gnu/digest/sha1.so)<br clear=3D"none"></div><div dir=
=3D"ltr">&gt; -<br clear=3D"none"></div><div dir=3D"ltr">&gt; /xxx/sysroots=
/x86_64-linux/usr/lib/ruby/2.2.0/x86_64-linux-gnu/digest/sha1.so<br clear=
=3D"none"></div><div dir=3D"ltr">&gt; (LoadError)<br clear=3D"none"></div><=
div dir=3D"ltr">&gt; |&nbsp; &nbsp;  from<br clear=3D"none"></div><div dir=
=3D"ltr">&gt; /xxx/sysroots/x86_64-linux/usr/lib/ruby/2.2.0/rubygems/core_e=
xt/kernel_require.rb:54:in<br clear=3D"none"></div><div dir=3D"ltr">&gt; `r=
equire'<br clear=3D"none"></div><div dir=3D"ltr">&gt; |&nbsp; &nbsp;  from<=
br clear=3D"none"></div><div dir=3D"ltr">&gt; /xxx/work/core2-32-poky-linux=
/qtwebkit/5.5.0+gitAUTOINC+0d592678ba-r0/git/Source/JavaScriptCore/offlinea=
sm/generate_offset_extractor.rb:30:in<br clear=3D"none"></div><div dir=3D"l=
tr">&gt; `&lt;main&gt;'<br clear=3D"none"></div><div dir=3D"ltr">&gt; | mak=
e[2]: *** [LLIntDesiredOffsets.h] Error 1<br clear=3D"none"></div><div dir=
=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"ltr">&gt; In fact, if I d=
o objdump -p on sha1.so (in ruby tree):<br clear=3D"none"></div><div dir=3D=
"ltr">&gt;<br clear=3D"none"></div><div dir=3D"ltr">&gt; &gt;&nbsp; require=
d from libcrypto.so.1.0.0:<br clear=3D"none"></div><div dir=3D"ltr">&gt; &g=
t;&nbsp; &nbsp; 0x066a2b20 0x00 02 OPENSSL_1.0.0<br clear=3D"none"></div><d=
iv dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"ltr">&gt; Whereas, =
my libcrypt.so.1.0.0 says:<br clear=3D"none"></div><div dir=3D"ltr">&gt;<br=
 clear=3D"none"></div><div dir=3D"ltr">&gt; &gt;Version definitions:<br cle=
ar=3D"none"></div><div dir=3D"ltr">&gt; &gt;1 0x01 0x0746be50 libcrypto.so.=
1.0.0<br clear=3D"none"></div><div dir=3D"ltr">&gt; &gt;2 0x00 0x06a2b2e4 O=
PENSSL_1.0.2d<br clear=3D"none"></div><div dir=3D"ltr">&gt; &gt;3 0x00 0x06=
a2b2e7 OPENSSL_1.0.2g<br clear=3D"none"></div><div dir=3D"ltr">&gt; &gt;&nb=
sp; &nbsp; OPENSSL_1.0.2d<br clear=3D"none"></div><div dir=3D"ltr">&gt;<br =
clear=3D"none"></div><div dir=3D"ltr">&gt; So, this might be the cause of t=
he problem.<br clear=3D"none"></div><div dir=3D"ltr">&gt; But I am not sure=
 why sha1.so (which ruby build generats) define these<br clear=3D"none"></d=
iv><div dir=3D"ltr">&gt; version numbers and not refer to the OpenSSL libra=
ry in the build.<br clear=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"=
none"></div><div dir=3D"ltr">&gt; I googled, but there were some tips on up=
dating ruby to solve OpenSSL<br clear=3D"none"></div><div dir=3D"ltr">&gt; =
version mismatch, but it is through grew or apt-get, etc.&nbsp; Not a tip f=
or<br clear=3D"none"></div><div dir=3D"ltr">&gt; yocto build.<br clear=3D"n=
one"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"ltr">&=
gt; I may be not familiar with ruby build yet, but any idea how I can fix t=
his?<br clear=3D"none"></div><div dir=3D"ltr">&gt; I could try updating rub=
y recipe as well to more recent version, but first<br clear=3D"none"></div>=
<div dir=3D"ltr">&gt; I want to confirm how ruby is deciding the OpenSSL ve=
rsion for its plugin<br clear=3D"none"></div><div dir=3D"ltr">&gt; library =
and causing this mismatch.<br clear=3D"none"></div><div dir=3D"ltr">&gt;<br=
 clear=3D"none"></div><div dir=3D"ltr">&gt; Thank you for your knowledge..<=
br clear=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div =
dir=3D"ltr">&gt; --<br clear=3D"none"></div><div dir=3D"ltr">&gt; _________=
______________________________________<br clear=3D"none"></div><div dir=3D"=
ltr">&gt; yocto mailing list<br clear=3D"none"></div><div dir=3D"ltr">&gt; =
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org=
" target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproje=
ct.org</a><br clear=3D"none"></div><div dir=3D"ltr">&gt; <a rel=3D"nofollow=
" shape=3D"rect" target=3D"_blank" href=3D"https://lists.yoctoproject.org/l=
istinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br clear=
=3D"none"></div><div dir=3D"ltr">&gt;<br clear=3D"none"></div><div dir=3D"l=
tr">-------------- next part --------------<br clear=3D"none"></div><div di=
r=3D"ltr">An HTML attachment was scrubbed...<br clear=3D"none"></div><div d=
ir=3D"ltr">URL: &lt;<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" hr=
ef=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/20170202/e4=
ddf3be/attachment-0001.html">http://lists.yoctoproject.org/pipermail/yocto/=
attachments/20170202/e4ddf3be/attachment-0001.html</a>&gt;<br clear=3D"none=
"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">--------=
----------------------<br clear=3D"none"></div><div dir=3D"ltr"><br clear=
=3D"none"></div><div dir=3D"ltr">Message: 2<br clear=3D"none"></div><div di=
r=3D"ltr">Date: Fri, 3 Feb 2017 00:24:27 +0000 (UTC)<br clear=3D"none"></di=
v><div dir=3D"ltr">From: Edward Vidal &lt;<a rel=3D"nofollow" shape=3D"rect=
" ymailto=3D"mailto:develone@sbcglobal.net" target=3D"_blank" href=3D"mailt=
o:develone@sbcglobal.net">develone@sbcglobal.net</a>&gt;<br clear=3D"none">=
</div><div dir=3D"ltr">To: "<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"m=
ailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"mailto:yocto@yoctop=
roject.org">yocto@yoctoproject.org</a>" &lt;<a rel=3D"nofollow" shape=3D"re=
ct" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"mai=
lto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br clear=3D"none=
"></div><div dir=3D"ltr">Subject: [yocto] bare-metal RPi2B &amp; RPI3B<br c=
lear=3D"none"></div><div dir=3D"ltr">Message-ID: &lt;<a rel=3D"nofollow" sh=
ape=3D"rect" ymailto=3D"mailto:1282640427.5827.1486081467007@mail.yahoo.com=
" target=3D"_blank" href=3D"mailto:1282640427.5827.1486081467007@mail.yahoo=
.com">1282640427.5827.1486081467007@mail.yahoo.com</a>&gt;<br clear=3D"none=
"></div><div dir=3D"ltr">Content-Type: text/plain; charset=3D"utf-8"<br cle=
ar=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr=
">Hello All,<br clear=3D"none"></div><div dir=3D"ltr">Today I was able to g=
et the lifting step in bare-metal.<br clear=3D"none"></div><div dir=3D"ltr"=
>With just 5 files on a RPi2B the lifting step was done.<br clear=3D"none">=
</div><div dir=3D"ltr">bootcode.bin ?fixup.dat ?kernel7.img ?MyBitmap.bmp ?=
start.elf<br clear=3D"none"></div><div dir=3D"ltr">?These files are found a=
t?<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"https://gith=
ub.com/develone/jpeg-2000-test/tree/master/bare-metal/LibC/sd-card/RPi2">ht=
tps://github.com/develone/jpeg-2000-test/tree/master/bare-metal/LibC/sd-car=
d/RPi2</a><br clear=3D"none"></div><div dir=3D"ltr">see?<a rel=3D"nofollow"=
 shape=3D"rect" target=3D"_blank" href=3D"https://github.com/develone/jpeg-=
2000-test/blob/master/bare-metal/LibC/LibC.pdf">https://github.com/develone=
/jpeg-2000-test/blob/master/bare-metal/LibC/LibC.pdf</a><br clear=3D"none">=
</div><div dir=3D"ltr">This is the documentation to date.<br clear=3D"none"=
></div><div dir=3D"ltr">Let me know if you have any questions.??Edward Vida=
l Jr. e-mail <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:develone@=
sbcglobal.net" target=3D"_blank" href=3D"mailto:develone@sbcglobal.net">dev=
elone@sbcglobal.net</a> 915-595-1613<br clear=3D"none"></div><div dir=3D"lt=
r">-------------- next part --------------<br clear=3D"none"></div><div dir=
=3D"ltr">An HTML attachment was scrubbed...<br clear=3D"none"></div><div di=
r=3D"ltr">URL: &lt;<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" hre=
f=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/20170203/940=
2a9cd/attachment-0001.html">http://lists.yoctoproject.org/pipermail/yocto/a=
ttachments/20170203/9402a9cd/attachment-0001.html</a>&gt;<br clear=3D"none"=
></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">---------=
---------------------<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D=
"none"></div><div dir=3D"ltr">Message: 3<br clear=3D"none"></div><div dir=
=3D"ltr">Date: Thu,&nbsp; 2 Feb 2017 16:36:36 -0800<br clear=3D"none"></div=
><div dir=3D"ltr">From: Armin Kuster &lt;<a rel=3D"nofollow" shape=3D"rect"=
 ymailto=3D"mailto:akuster808@gmail.com" target=3D"_blank" href=3D"mailto:a=
kuster808@gmail.com">akuster808@gmail.com</a>&gt;<br clear=3D"none"></div><=
div dir=3D"ltr">To: <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:ak=
uster808@gmail.com" target=3D"_blank" href=3D"mailto:akuster808@gmail.com">=
akuster808@gmail.com</a>,&nbsp;&nbsp;&nbsp; <a rel=3D"nofollow" shape=3D"re=
ct" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" href=3D"mai=
lto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br clear=3D"none"></=
div><div dir=3D"ltr">Subject: [yocto] [meta-cgl][PATCH 3/3] initramfs: fix =
parsing issue<br clear=3D"none"></div><div dir=3D"ltr">&nbsp;&nbsp;&nbsp; w=
ith do&nbsp;&nbsp;&nbsp; to uboot inclusion<br clear=3D"none"></div><div di=
r=3D"ltr">Message-ID: &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mai=
lto:1486082196-29895-3-git-send-email-akuster808@gmail.com" target=3D"_blan=
k" href=3D"mailto:1486082196-29895-3-git-send-email-akuster808@gmail.com">1=
486082196-29895-3-git-send-email-akuster808@gmail.com</a>&gt;<br clear=3D"n=
one"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">From:=
 Armin Kuster &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:akus=
ter@mvista.com" target=3D"_blank" href=3D"mailto:akuster@mvista.com">akuste=
r@mvista.com</a>&gt;<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"=
none"></div><div dir=3D"ltr">since the image type includes "uboot", need to=
 inherit the class for it<br clear=3D"none"></div><div dir=3D"ltr"><br clea=
r=3D"none"></div><div dir=3D"ltr">Signed-off-by: Armin Kuster &lt;<a rel=3D=
"nofollow" shape=3D"rect" ymailto=3D"mailto:akuster@mvista.com" target=3D"_=
blank" href=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&gt;<br cle=
ar=3D"none"></div><div dir=3D"ltr">---<br clear=3D"none"></div><div dir=3D"=
ltr"> meta-cgl-common/images/core-image-cgl-initramfs.bb | 4 ++--<br clear=
=3D"none"></div><div dir=3D"ltr"> 1 file changed, 2 insertions(+), 2 deleti=
ons(-)<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><d=
iv dir=3D"ltr">diff --git a/meta-cgl-common/images/core-image-cgl-initramfs=
.bb b/meta-cgl-common/images/core-image-cgl-initramfs.bb<br clear=3D"none">=
</div><div dir=3D"ltr">index 0777b7c..2ebbdf5 100644<br clear=3D"none"></di=
v><div dir=3D"ltr">--- a/meta-cgl-common/images/core-image-cgl-initramfs.bb=
<br clear=3D"none"></div><div dir=3D"ltr">+++ b/meta-cgl-common/images/core=
-image-cgl-initramfs.bb<br clear=3D"none"></div><div dir=3D"ltr">@@ -12,8 +=
12,8 @@ export IMAGE_BASENAME =3D "core-image-cgl-initramfs"<br clear=3D"no=
ne"></div><div dir=3D"ltr"> IMAGE_LINGUAS =3D ""<br clear=3D"none"></div><d=
iv dir=3D"ltr"> <br clear=3D"none"></div><div dir=3D"ltr"> LICENSE =3D "MIT=
"<br clear=3D"none"></div><div dir=3D"ltr">-<br clear=3D"none"></div><div d=
ir=3D"ltr">-IMAGE_FSTYPES =3D "cpio.gz.u-boot"<br clear=3D"none"></div><div=
 dir=3D"ltr">+IMAGE_CLASSES =3D " image_types_uboot"<br clear=3D"none"></di=
v><div dir=3D"ltr">+IMAGE_FSTYPES ??=3D "cpio.gz.u-boot"<br clear=3D"none">=
</div><div dir=3D"ltr"> <br clear=3D"none"></div><div dir=3D"ltr"> IMAGE_RO=
OTFS_SIZE =3D "8192"<br clear=3D"none"></div><div dir=3D"ltr"> <br clear=3D=
"none"></div><div dir=3D"ltr">-- <br clear=3D"none"></div><div dir=3D"ltr">=
2.7.4<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><di=
v dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none">=
</div><div dir=3D"ltr">------------------------------<br clear=3D"none"></d=
iv><div dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">Message: 4<br=
 clear=3D"none"></div><div dir=3D"ltr">Date: Thu,&nbsp; 2 Feb 2017 16:36:34=
 -0800<br clear=3D"none"></div><div dir=3D"ltr">From: Armin Kuster &lt;<a r=
el=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:akuster808@gmail.com" targ=
et=3D"_blank" href=3D"mailto:akuster808@gmail.com">akuster808@gmail.com</a>=
&gt;<br clear=3D"none"></div><div dir=3D"ltr">To: <a rel=3D"nofollow" shape=
=3D"rect" ymailto=3D"mailto:akuster808@gmail.com" target=3D"_blank" href=3D=
"mailto:akuster808@gmail.com">akuster808@gmail.com</a>,&nbsp;&nbsp;&nbsp; <=
a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org"=
 target=3D"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a><br clear=3D"none"></div><div dir=3D"ltr">Subject: [yocto] [meta-c=
gl][PATCH 1/3] iscsi-initiator-utils: make it<br clear=3D"none"></div><div =
dir=3D"ltr">&nbsp;&nbsp;&nbsp; DISTRO_FEATURE dependent<br clear=3D"none"><=
/div><div dir=3D"ltr">Message-ID: &lt;<a rel=3D"nofollow" shape=3D"rect" ym=
ailto=3D"mailto:1486082196-29895-1-git-send-email-akuster808@gmail.com" tar=
get=3D"_blank" href=3D"mailto:1486082196-29895-1-git-send-email-akuster808@=
gmail.com">1486082196-29895-1-git-send-email-akuster808@gmail.com</a>&gt;<b=
r clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div dir=
=3D"ltr">From: Armin Kuster &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=
=3D"mailto:akuster@mvista.com" target=3D"_blank" href=3D"mailto:akuster@mvi=
sta.com">akuster@mvista.com</a>&gt;<br clear=3D"none"></div><div dir=3D"ltr=
"><br clear=3D"none"></div><div dir=3D"ltr">When this package was updated i=
n OE,<br clear=3D"none"></div><div dir=3D"ltr">it now requires systemd. Mak=
e this optional.<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none=
"></div><div dir=3D"ltr">Signed-off-by: Armin Kuster &lt;<a rel=3D"nofollow=
" shape=3D"rect" ymailto=3D"mailto:akuster@mvista.com" target=3D"_blank" hr=
ef=3D"mailto:akuster@mvista.com">akuster@mvista.com</a>&gt;<br clear=3D"non=
e"></div><div dir=3D"ltr">---<br clear=3D"none"></div><div dir=3D"ltr"> met=
a-cgl-common/packagegroups/packagegroup-cgl-middleware.bb | 2 +-<br clear=
=3D"none"></div><div dir=3D"ltr"> 1 file changed, 1 insertion(+), 1 deletio=
n(-)<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><div=
 dir=3D"ltr">diff --git a/meta-cgl-common/packagegroups/packagegroup-cgl-mi=
ddleware.bb b/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb<=
br clear=3D"none"></div><div dir=3D"ltr">index b0c2cac..045691a 100644<br c=
lear=3D"none"></div><div dir=3D"ltr">--- a/meta-cgl-common/packagegroups/pa=
ckagegroup-cgl-middleware.bb<br clear=3D"none"></div><div dir=3D"ltr">+++ b=
/meta-cgl-common/packagegroups/packagegroup-cgl-middleware.bb<br clear=3D"n=
one"></div><div dir=3D"ltr">@@ -42,7 +42,7 @@ RDEPENDS_packagegroup-cgl-mid=
dleware =3D "\<br clear=3D"none"></div><div dir=3D"ltr">&nbsp; &nbsp;  stro=
ngswan \<br clear=3D"none"></div><div dir=3D"ltr">&nbsp; &nbsp;  vlan \<br =
clear=3D"none"></div><div dir=3D"ltr">&nbsp; &nbsp;  corosync \<br clear=3D=
"none"></div><div dir=3D"ltr">-&nbsp; &nbsp; iscsi-initiator-utils \<br cle=
ar=3D"none"></div><div dir=3D"ltr">+ ${@bb.utils.contains("DISTRO_FEATURES"=
, "systemd", "iscsi-initiator-utils", "",d)} \<br clear=3D"none"></div><div=
 dir=3D"ltr">&nbsp; &nbsp;  openais \<br clear=3D"none"></div><div dir=3D"l=
tr">&nbsp; &nbsp;  openipmi \<br clear=3D"none"></div><div dir=3D"ltr">&nbs=
p; &nbsp;  openhpi \<br clear=3D"none"></div><div dir=3D"ltr">-- <br clear=
=3D"none"></div><div dir=3D"ltr">2.7.4<br clear=3D"none"></div><div dir=3D"=
ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></div><di=
v dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr">-------------------=
-----------<br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"></d=
iv><div dir=3D"ltr">-- <br clear=3D"none"></div><div dir=3D"ltr">__________=
_____________________________________<br clear=3D"none"></div><div dir=3D"l=
tr">yocto mailing list<br clear=3D"none"></div><div dir=3D"ltr"><a rel=3D"n=
ofollow" shape=3D"rect" ymailto=3D"mailto:yocto@yoctoproject.org" target=3D=
"_blank" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><=
br clear=3D"none"></div><div dir=3D"ltr"><a rel=3D"nofollow" shape=3D"rect"=
 target=3D"_blank" href=3D"https://lists.yoctoproject.org/listinfo/yocto">h=
ttps://lists.yoctoproject.org/listinfo/yocto</a><br clear=3D"none"></div><d=
iv dir=3D"ltr"><br clear=3D"none"></div><div dir=3D"ltr"><br clear=3D"none"=
></div><div dir=3D"ltr">End of yocto Digest, Vol 77, Issue 10<br clear=3D"n=
one"></div><div dir=3D"ltr">*************************************<br clear=
=3D"none"></div><br clear=3D"none"><br clear=3D"none"></div>  </div> </div>=
  </div></div></body></html>

------=_Part_1210356_209820723.1492083823736--
