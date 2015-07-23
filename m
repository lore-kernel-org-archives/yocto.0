Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 453CFE0097F; Thu, 23 Jul 2015 05:35:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.186 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm26-vm4.bullet.mail.ne1.yahoo.com
	(nm26-vm4.bullet.mail.ne1.yahoo.com [98.138.91.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 944CEE00947
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 05:35:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1437654920; bh=qfGnGIriqrOKpVxbafIyvY0xVGuTu54K/JCwDkfIo2c=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=URQaEpb6n93umKj2W+EIDpM1zWl+FwLZX1hpsJcYDoSpRtLL0+6bUuW3BQ+dEpNLvieaz2vQEmG+YrXC9VBrHxvGW4cih3lAh8iuCZB8jVdfBKo7UXhahVKzublWGg8Tz2xX7HMbjHb3IZ1dS70gUfZVcLObYLuWYhfdSS6QDIGRSUwCLucjJ2D2Pi4SLIUvj4QY8XZM3/tfRG009x/LhDe4zJuvbgYK8cJEK2U4WCp+DKYm27v+UcyEise964UnNcf6i1BW7kNMbCJS0MNwdfVuzxahQ+SSH4b1QY9Vh8gntpL5+Moo12F1JIae4BipwqqqzgHMFPyuc+1RsD6v8g==
Received: from [98.138.100.117] by nm26.bullet.mail.ne1.yahoo.com with NNFMP;
	23 Jul 2015 12:35:20 -0000
Received: from [98.138.87.2] by tm108.bullet.mail.ne1.yahoo.com with NNFMP;
	23 Jul 2015 12:35:20 -0000
Received: from [127.0.0.1] by omp1002.mail.ne1.yahoo.com with NNFMP;
	23 Jul 2015 12:35:20 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 181263.61698.bm@omp1002.mail.ne1.yahoo.com
X-YMail-OSG: B3dHN1wVM1nGw45xhcE.yGSvDUaPODU4Om6xz39CWqcZmbM2u69PdXg1o5VBzsW
	DNvUdAQjzLDa4aqYdjnjAj0_vVEgaE.bgN.e3.r7S2Rwxv4AQeBanQ3mMrwoj7glSQLekg0tsUPM
	jMkbMqRpH6cajlrOw5hX61lFg9rutajZ7m5oLsmMu0Pitb7pn0wXgBAJHmyzC7GVptgQwOq2KpDH
	jqlCsrEgmsO3Ji3jv77.RbcdtH2tMoPxy3r8XVMOx3AS8NCyLyA0KoJSE._BWOWIGjQfeWCKRHMv
	kSAO8nXxOKnes9ZtT2VBEdJMyjMhJdF4pBbrNar49T3soCaEExQ_MVS274b3i82f5d3jkvLuGDCY
	ZB4jmkiXGOH5VfsQaUzHTu4OksOoQiL9tmV9HHmQkKhcuzMqCytpfSKfQ8e3BWJRx1gLXaqePl1C
	kVR9Z1d2b1M_jl84Db_ozwzvd0sJ7DA2sTh67M35Xfm2W31okTMPVIb7DC7kByWi.ATCxTxnjsax
	gdPmIWSNjOwW6a7hMSwE81RBtHTM1
Received: by 98.138.101.169; Thu, 23 Jul 2015 12:35:19 +0000 
Date: Thu, 23 Jul 2015 12:35:11 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <503364298.968011.1437654912024.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <mailman.5858.1437611001.2787.yocto@yoctoproject.org>
References: <mailman.5858.1437611001.2787.yocto@yoctoproject.org>
MIME-Version: 1.0
Subject: raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 12:35:26 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_968010_879102696.1437654912007"

------=_Part_968010_879102696.1437654912007
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Gary,
Thanks for the help.

I executed the command=20
"bitbake userland -c cleansstate"=20
This completed successful.

5: userland-git-r5 do_compile (pid 17332)

Did not know how to apply the patch.
I tried in poky folder=20
patch --dry-run=C2=A0 <=C2=A0 ~/Downloads/attachment-0001.bin
patch=C2=A0=C2=A0 <=C2=A0 ~/Downloads/attachment-0001.bin
git apply --stat ~/Downloads/attachment-0001.bin
Could not get the patch so I did manually.

git diff
diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky=
.conf
index e3d3c78..238b553 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -72,6 +72,7 @@ CONNECTIVITY_CHECK_URIS ?=3D " \
=C2=A0SANITY_TESTED_DISTROS ?=3D " \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 po=
ky-1.7 \n \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 po=
ky-1.8 \n \
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ubuntu-=
12.04 \n \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ub=
untu-14.04 \n \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ub=
untu-14.10 \n \
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Ub=
untu-15.04 \n \
diff --git a/meta/recipes-graphics/libepoxy/libepoxy_git.bb b/meta/recipes-=
graph
index 9816257..0330a7b 100644
--- a/meta/recipes-graphics/libepoxy/libepoxy_git.bb
+++ b/meta/recipes-graphics/libepoxy/libepoxy_git.bb
@@ -16,7 +16,7 @@ PV =3D "1.2+git${SRCPV}"
=C2=A0
=C2=A0S =3D "${WORKDIR}/git"
=C2=A0
-inherit autotools pkgconfig
+inherit autotools pkgconfig python3native
=C2=A0
=C2=A0DEPENDS =3D "util-macros virtual/egl"


bitbake core-image-sato failed with same error.

| WARNING: exit code 1 from a shell command.
| ERROR: oe_runconf failed
| ERROR: Function failed: do_configure (log file is located at /home/vidal/=
wkg/yocto/RaspberryPi2/poky/build/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-l=
inux-gnueabi/libepoxy/1.2+gitAUTOINC+20062c25e7-r0/temp/log.do_configure.27=
821)
ERROR: Task 4597 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-grap=
hics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'
Waiting for 1 running tasks to finish:

These are the layers that I am=C2=A0 using.

meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffccc9911d6c61470a58=
5173b79d"
meta-raspberrypi=C2=A0 =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"
Do these need to upated I got them on the 20th of this month.
Thanks appreciate all the help.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613=20


     On Wednesday, July 22, 2015 6:24 PM, "yocto-request@yoctoproject.org" =
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

=C2=A0 1. [meta-raspberrypi][PATCH 1/1] packagegroup-rpi-test: Add
=C2=A0 =C2=A0 =C2=A0 pi-blaster (Petter Mab?cker)
=C2=A0 2. [meta-raspberrypi][PATCH 0/1] packagegroup-rpi-test: Add
=C2=A0 =C2=A0 =C2=A0 pi-blaster (Petter Mab?cker)
=C2=A0 3. VMDK image not booting (Daniel Kuhne)
=C2=A0 4. Re: [oe] Bug in Open CV receipt (Otavio Salvador)
=C2=A0 5. Re: Exporting kernel header from patch (Gamma.Dean@Emerson.com)
=C2=A0 6. raspberry Pi core-image-sato (Edward Vidal)
=C2=A0 7. Re: raspberry Pi core-image-sato (Gary Thomas)


----------------------------------------------------------------------

Message: 1
Date: Wed, 22 Jul 2015 23:29:52 +0200
From: Petter Mab?cker <petter@technux.se>
To: yocto@yoctoproject.org
Subject: [yocto] [meta-raspberrypi][PATCH 1/1] packagegroup-rpi-test:
=C2=A0=C2=A0=C2=A0 Add=C2=A0=C2=A0=C2=A0 pi-blaster
Message-ID:
=C2=A0=C2=A0=C2=A0 <7c508bdaa77ecacf897f5470c85767ed6702fd6e.1437600372.git=
.petter@technux.se>
=C2=A0=C2=A0=C2=A0=20
Content-Type: text/plain; charset=3DUTF-8

Ensure that pi-blaster is built and included by default when building
'rpi-test-image'.

Signed-off-by: Petter Mab?cker <petter@technux.se>
---
 recipes-core/packagegroups/packagegroup-rpi-test.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-=
core/packagegroups/packagegroup-rpi-test.bb
index e16e79e..d8d311f 100644
--- a/recipes-core/packagegroups/packagegroup-rpi-test.bb
+++ b/recipes-core/packagegroups/packagegroup-rpi-test.bb
@@ -10,6 +10,7 @@ RDEPENDS_${PN} =3D "\
=C2=A0 =C2=A0 wiringpi \
=C2=A0 =C2=A0 rpio \
=C2=A0 =C2=A0 rpi-gpio \
+=C2=A0 =C2=A0 pi-blaster \
 "
=20
 RRECOMMENDS_${PN} =3D "\
--=20
1.9.1



------------------------------

Message: 2
Date: Wed, 22 Jul 2015 23:29:51 +0200
From: Petter Mab?cker <petter@technux.se>
To: yocto@yoctoproject.org
Subject: [yocto] [meta-raspberrypi][PATCH 0/1] packagegroup-rpi-test:
=C2=A0=C2=A0=C2=A0 Add=C2=A0=C2=A0=C2=A0 pi-blaster
Message-ID: <cover.1437600372.git.petter@technux.se>
Content-Type: text/plain; charset=3DUTF-8

The following changes since commit 7457bf182c8fd550ec877ecd786a3edd16e65495=
:

=C2=A0 wiringpi: Bump SRCREV (2015-07-19 14:53:27 +0200)

are available in the git repository at:

=C2=A0 git://git.yoctoproject.org/poky-contrib petmab/rpi_minor_fix
=C2=A0 http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rp=
i_minor_fix

Petter Mab?cker (1):
=C2=A0 packagegroup-rpi-test: Add pi-blaster

 recipes-core/packagegroups/packagegroup-rpi-test.bb | 1 +
 1 file changed, 1 insertion(+)

--=20
1.9.1



------------------------------

Message: 3
Date: Wed, 22 Jul 2015 07:33:20 +0000
From: Daniel Kuhne <dakuit00@gmail.com>
To: yocto@yoctoproject.org
Subject: [yocto] VMDK image not booting
Message-ID:
=C2=A0=C2=A0=C2=A0 <CABEeoJV2CXbGtu1UnFZGtg-Snxj7+J9_RBb32EDzhq=3DLdH5D_Q@m=
ail.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

Hello,

my vmdk image is not booting into systemd. But my iso image does.
It is similar to
https://lists.yoctoproject.org/pipermail/yocto/2014-August/021218.html

I use fido with meta-intel.

Cheers,
Daniel
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20150722/41=
4c21a0/attachment-0001.html>

------------------------------

Message: 4
Date: Wed, 22 Jul 2015 09:35:20 -0300
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
To: OpenEmbedded Devel List
=C2=A0=C2=A0=C2=A0 <openembedded-devel@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] [oe] Bug in Open CV receipt
Message-ID:
=C2=A0=C2=A0=C2=A0 <CAP9ODKq6U0udqPvjgs1WmHNFy693O6h5Qt+hHFwnYo5nbpH1kQ@mai=
l.gmail.com>
Content-Type: text/plain; charset=3DUTF-8

On Tue, Jul 21, 2015 at 11:57 AM, Victor Rodriguez <vm.rod25@gmail.com> wro=
te:
> Few weeks ago I was having some problems with open CV receipt. In the
> begining I toght I was adding opencv tro my core-image-minimal-xfce
> just with this:
>
> IMAGE_INSTALL_append =3D " gcc gcc-dev openssh php mariadb opencv"
>
> Now after booting the image I realize that none of the libraries for
> open stack were added to my image
>
> What I had to do was the following:
>
>
> IMAGE_INSTALL_append =3D " libopencv-core-dev libopencv-highgui-dev
> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
> opencv-staticdev python-opencv"
>
> Even last night when one of the opencv developers ask me for python
> opencv I had to add the last part python-opencv. That is not cool at
> all . If I add opencv in the beginning I assume we are more than cool
> with that and yocto will add all the packages . Unless I am doing
> something wrong, in taht case I am more than happy to get the
> feedback.
>
> Thanks a lot for all the help . If someone else can reproduce this bug
> I am more than happy to report it in bugzila (not sure the URL)

You should add the dev-pkgs and tools-sdk image features for the
image, not mangle it manually.

--=20
Otavio Salvador=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 O.S. Systems
http://www.ossystems.com.br =C2=A0 =C2=A0 =C2=A0 http://code.ossystems.com.=
br
Mobile: +55 (53) 9981-7854=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mobile:=
 +1 (347) 903-9750


------------------------------

Message: 5
Date: Wed, 22 Jul 2015 15:09:26 +0000
From: <Gamma.Dean@Emerson.com>
To: <yocto@yoctoproject.org>
Subject: Re: [yocto] Exporting kernel header from patch
Message-ID:
=C2=A0=C2=A0=C2=A0 <5B6A9B05AFA9AC4FB94345D083806F144B2BF945@USSTLZ-PMSG016=
.emrsn.org>
Content-Type: text/plain; charset=3D"us-ascii"

When using a shared sstate cache which has the previously built kernel it a=
ppears that STAGING_KERNEL_DIR does not get populated - in my case there is=
 no tmp/work-shared directory at all.=C2=A0 If I have modified the user spa=
ce app to look there for a header is there some dependency I can add that w=
ill force STAGING_KERNEL_DIR to get built?

If not, perhaps the best answer is your other proposed method of just addin=
g the header to an additional path in sysroot.
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20150722/f5=
50ea3d/attachment-0001.html>

------------------------------

Message: 6
Date: Wed, 22 Jul 2015 22:16:50 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] raspberry Pi core-image-sato
Message-ID:
=C2=A0=C2=A0=C2=A0 <858020079.672977.1437603410191.JavaMail.yahoo@mail.yaho=
o.com>
Content-Type: text/plain; charset=3D"utf-8"

HiStill having errors with bitbake core-image-satoThis occurs at | checking=
 for X11... yes
| checking for EGL... no
| configure: error: Package requirements (egl) were not met:
ERROR: Task 4856 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-grap=
hics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'I tri=
ed adding /conf/machine/raspberrypi2.conf which I found on the internet.+PR=
EFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"This caused s=
everal more errors.Any and all help is appreciated. ?Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613
-------------- next part --------------
An HTML attachment was scrubbed...
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20150722/0e=
daf329/attachment-0001.html>

------------------------------

Message: 7
Date: Wed, 22 Jul 2015 18:23:18 -0600
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
Subject: Re: [yocto] raspberry Pi core-image-sato
Message-ID: <55B033F6.0@mlbassoc.com>
Content-Type: text/plain; charset=3D"windows-1252"; Format=3D"flowed"

On 2015-07-22 16:16, Edward Vidal wrote:
> Hi
> Still having errors with bitbake core-image-sato

You must have added something to your image - core-image-sato does
not include libepoxy by default.

> This occurs at
> | checking for X11... yes
> | checking for EGL... no
> | configure: error: Package requirements (egl) were not met:
> ERROR: Task 4856 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-gr=
aphics/libepoxy/libepoxy_git.bb, do_configure) failed with exit code '1'
>
> I tried adding /conf/machine/raspberrypi2.conf which I found on the inter=
net.
>
> +PREFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"
> +PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"
>
> This caused several more errors.

Which you failed [again] to list :-(

> Any and all help is appreciated.

To get libepoxy to build:
=C2=A0 % bitbake userland -c cleansstate

Then apply this patch which fixes a problem with libepoxy using
the wrong python3

After that, I got it to build for RaspberryPi-2

--=20
------------------------------------------------------------
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =
Consulting for the
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world
------------------------------------------------------------
-------------- next part --------------
A non-text attachment was scrubbed...
Name: 0001-libepoxy-Use-native-python3.patch
Type: text/x-patch
Size: 927 bytes
Desc: not available
URL: <http://lists.yoctoproject.org/pipermail/yocto/attachments/20150722/ec=
ba9929/attachment.bin>

------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 58, Issue 66
*************************************


  

------=_Part_968010_879102696.1437654912007
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1437653781761_2970"><span=
 id=3D"yui_3_16_0_1_1437653781761_3486">Hi Gary,<br class=3D"">Thanks for t=
he help.<br class=3D""><br class=3D"">I executed the command <br class=3D""=
>"bitbake userland -c cleansstate" <br class=3D"">This completed successful=
.<br class=3D""><br class=3D"">5: userland-git-r5 do_compile (pid 17332)<br=
 class=3D""><br class=3D"">Did not know how to apply the patch.<br class=3D=
"">I tried in poky folder <br class=3D"">patch --dry-run&nbsp; &lt;&nbsp; ~=
/Downloads/attachment-0001.bin<br class=3D"">patch&nbsp;&nbsp; &lt;&nbsp; ~=
/Downloads/attachment-0001.bin<br class=3D"">git apply --stat ~/Downloads/a=
ttachment-0001.bin<br class=3D"">Could not get the patch so I did manually.=
<br class=3D""><br class=3D"">git diff<br class=3D"">diff --git a/meta-yoct=
o/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf<br class=3D"">in=
dex e3d3c78..238b553 100644<br class=3D"">--- a/meta-yocto/conf/distro/poky=
.conf<br class=3D"">+++ b/meta-yocto/conf/distro/poky.conf<br class=3D"">@@=
 -72,6 +72,7 @@ CONNECTIVITY_CHECK_URIS ?=3D " \<br class=3D"">&nbsp;SANITY=
_TESTED_DISTROS ?=3D " \<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; poky-1.7 \n \<br class=3D"">&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; poky-1.8 \n =
\<br class=3D"">+&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Ubuntu-12.04 \n \<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ubuntu-14.04 \n \<br class=3D"">&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ubuntu=
-14.10 \n \<br class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Ubuntu-15.04 \n \<br class=3D"">diff --git a/meta/r=
ecipes-graphics/libepoxy/libepoxy_git.bb b/meta/recipes-graph<br class=3D""=
>index 9816257..0330a7b 100644<br class=3D"">--- a/meta/recipes-graphics/li=
bepoxy/libepoxy_git.bb<br class=3D"">+++ b/meta/recipes-graphics/libepoxy/l=
ibepoxy_git.bb<br class=3D"">@@ -16,7 +16,7 @@ PV =3D "1.2+git${SRCPV}"<br =
class=3D"">&nbsp;<br class=3D"">&nbsp;S =3D "${WORKDIR}/git"<br class=3D"">=
&nbsp;<br class=3D"">-inherit autotools pkgconfig<br class=3D"">+inherit au=
totools pkgconfig python3native<br class=3D"">&nbsp;<br class=3D"">&nbsp;DE=
PENDS =3D "util-macros virtual/egl"<br class=3D""><br class=3D""><br class=
=3D"">bitbake core-image-sato failed with same error.<br class=3D""><br cla=
ss=3D"">| WARNING: exit code 1 from a shell command.<br class=3D"">| ERROR:=
 oe_runconf failed<br class=3D"">| ERROR: Function failed: do_configure (lo=
g file is located at /home/vidal/wkg/yocto/RaspberryPi2/poky/build/tmp/work=
/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/libepoxy/1.2+gitAUTOINC+20062=
c25e7-r0/temp/log.do_configure.27821)<br class=3D"">ERROR: Task 4597 (/home=
/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_=
git.bb, do_configure) failed with exit code '1'<br class=3D"">Waiting for 1=
 running tasks to finish:<br class=3D""><br class=3D"">These are the layers=
 that I am&nbsp; using.<br class=3D""><br class=3D"">meta-yocto-bsp&nbsp;&n=
bsp;&nbsp; =3D "fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D"=
">meta-raspberrypi&nbsp; =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495=
"<br class=3D"">Do these need to upated I got them on the 20th of this mont=
h.</span></div><div id=3D"yui_3_16_0_1_1437653781761_3489" dir=3D"ltr"><spa=
n id=3D"yui_3_16_0_1_1437653781761_3488"><br></span></div><div dir=3D"ltr">=
<span id=3D"yui_3_16_0_1_1437653781761_3488">Thanks appreciate all the help=
.</span></div><div dir=3D"ltr"><span></span></div><div>&nbsp;</div><div id=
=3D"yui_3_16_0_1_1437653781761_2968"><div id=3D"yui_3_16_0_1_1437653781761_=
2967">Edward Vidal Jr.<br>e-mail develone@sbcglobal.net<br>915-595-1613</di=
v></div>  <br><div class=3D"qtdSeparateBR"><br><br></div><div style=3D"disp=
lay: block;" class=3D"yahoo_quoted"> <div style=3D"font-family: HelveticaNe=
ue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif; font-size:=
 16px;"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetic=
a, Arial, Lucida Grande, sans-serif; font-size: 16px;"> <div dir=3D"ltr"> <=
font size=3D"2" face=3D"Arial"> On Wednesday, July 22, 2015 6:24 PM, "yocto=
-request@yoctoproject.org" &lt;yocto-request@yoctoproject.org&gt; wrote:<br=
> </font> </div>  <br><br> <div class=3D"y_msg_container">Send yocto mailin=
g list submissions to<br>&nbsp;&nbsp;&nbsp; <a ymailto=3D"mailto:yocto@yoct=
oproject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a><br><br>To subscribe or unsubscribe via the World Wide Web, visit<br>&n=
bsp;&nbsp;&nbsp; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>or, =
via email, send a message with subject or body 'help' to<br>&nbsp;&nbsp;&nb=
sp; <a ymailto=3D"mailto:yocto-request@yoctoproject.org" href=3D"mailto:yoc=
to-request@yoctoproject.org">yocto-request@yoctoproject.org</a><br><br>You =
can reach the person managing the list at<br>&nbsp;&nbsp;&nbsp; <a ymailto=
=3D"mailto:yocto-owner@yoctoproject.org" href=3D"mailto:yocto-owner@yoctopr=
oject.org">yocto-owner@yoctoproject.org</a><br><br>When replying, please ed=
it your Subject line so it is more specific<br>than "Re: Contents of yocto =
digest..."<br><br><br>Today's Topics:<br><br>&nbsp;  1. [meta-raspberrypi][=
PATCH 1/1] packagegroup-rpi-test: Add<br>&nbsp; &nbsp; &nbsp; pi-blaster (P=
etter Mab?cker)<br>&nbsp;  2. [meta-raspberrypi][PATCH 0/1] packagegroup-rp=
i-test: Add<br>&nbsp; &nbsp; &nbsp; pi-blaster (Petter Mab?cker)<br>&nbsp; =
 3. VMDK image not booting (Daniel Kuhne)<br>&nbsp;  4. Re: [oe] Bug in Ope=
n CV receipt (Otavio Salvador)<br>&nbsp;  5. Re: Exporting kernel header fr=
om patch (<a ymailto=3D"mailto:Gamma.Dean@Emerson.com" href=3D"mailto:Gamma=
.Dean@Emerson.com">Gamma.Dean@Emerson.com</a>)<br>&nbsp;  6. raspberry Pi c=
ore-image-sato (Edward Vidal)<br>&nbsp;  7. Re: raspberry Pi core-image-sat=
o (Gary Thomas)<br><br><br>------------------------------------------------=
----------------------<br><br>Message: 1<br>Date: Wed, 22 Jul 2015 23:29:52=
 +0200<br>From: Petter Mab?cker &lt;<a ymailto=3D"mailto:petter@technux.se"=
 href=3D"mailto:petter@technux.se">petter@technux.se</a>&gt;<br>To: <a ymai=
lto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a><br>Subject: [yocto] [meta-raspberrypi][PATCH 1=
/1] packagegroup-rpi-test:<br>&nbsp;&nbsp;&nbsp; Add&nbsp;&nbsp;&nbsp; pi-b=
laster<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:7c508b=
daa77ecacf897f5470c85767ed6702fd6e.1437600372.git.petter@technux.se" href=
=3D"mailto:7c508bdaa77ecacf897f5470c85767ed6702fd6e.1437600372.git.petter@t=
echnux.se">7c508bdaa77ecacf897f5470c85767ed6702fd6e.1437600372.git.petter@t=
echnux.se</a>&gt;<br>&nbsp;&nbsp;&nbsp; <br>Content-Type: text/plain; chars=
et=3DUTF-8<br><br>Ensure that pi-blaster is built and included by default w=
hen building<br>'rpi-test-image'.<br><br>Signed-off-by: Petter Mab?cker &lt=
;<a ymailto=3D"mailto:petter@technux.se" href=3D"mailto:petter@technux.se">=
petter@technux.se</a>&gt;<br>---<br> recipes-core/packagegroups/packagegrou=
p-rpi-test.bb | 1 +<br> 1 file changed, 1 insertion(+)<br><br>diff --git a/=
recipes-core/packagegroups/packagegroup-rpi-test.bb b/recipes-core/packageg=
roups/packagegroup-rpi-test.bb<br>index e16e79e..d8d311f 100644<br>--- a/re=
cipes-core/packagegroups/packagegroup-rpi-test.bb<br>+++ b/recipes-core/pac=
kagegroups/packagegroup-rpi-test.bb<br>@@ -10,6 +10,7 @@ RDEPENDS_${PN} =3D=
 "\<br>&nbsp; &nbsp;  wiringpi \<br>&nbsp; &nbsp;  rpio \<br>&nbsp; &nbsp; =
 rpi-gpio \<br>+&nbsp; &nbsp; pi-blaster \<br> "<br> <br> RRECOMMENDS_${PN}=
 =3D "\<br>-- <br>1.9.1<br><br><br><br>------------------------------<br><b=
r>Message: 2<br>Date: Wed, 22 Jul 2015 23:29:51 +0200<br>From: Petter Mab?c=
ker &lt;<a ymailto=3D"mailto:petter@technux.se" href=3D"mailto:petter@techn=
ux.se">petter@technux.se</a>&gt;<br>To: <a ymailto=3D"mailto:yocto@yoctopro=
ject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>=
<br>Subject: [yocto] [meta-raspberrypi][PATCH 0/1] packagegroup-rpi-test:<b=
r>&nbsp;&nbsp;&nbsp; Add&nbsp;&nbsp;&nbsp; pi-blaster<br>Message-ID: &lt;<a=
 ymailto=3D"mailto:cover.1437600372.git.petter@technux.se" href=3D"mailto:c=
over.1437600372.git.petter@technux.se">cover.1437600372.git.petter@technux.=
se</a>&gt;<br>Content-Type: text/plain; charset=3DUTF-8<br><br>The followin=
g changes since commit 7457bf182c8fd550ec877ecd786a3edd16e65495:<br><br>&nb=
sp; wiringpi: Bump SRCREV (2015-07-19 14:53:27 +0200)<br><br>are available =
in the git repository at:<br><br>&nbsp; git://git.yoctoproject.org/poky-con=
trib petmab/rpi_minor_fix<br>&nbsp; <a href=3D"http://git.yoctoproject.org/=
cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_minor_fix" target=3D"_blank">http=
://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dpetmab/rpi_minor_fix=
</a><br><br>Petter Mab?cker (1):<br>&nbsp; packagegroup-rpi-test: Add pi-bl=
aster<br><br> recipes-core/packagegroups/packagegroup-rpi-test.bb | 1 +<br>=
 1 file changed, 1 insertion(+)<br><br>-- <br>1.9.1<br><br><br><br>--------=
----------------------<br><br>Message: 3<br>Date: Wed, 22 Jul 2015 07:33:20=
 +0000<br>From: Daniel Kuhne &lt;<a ymailto=3D"mailto:dakuit00@gmail.com" h=
ref=3D"mailto:dakuit00@gmail.com">dakuit00@gmail.com</a>&gt;<br>To: <a ymai=
lto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a><br>Subject: [yocto] VMDK image not booting<br>=
Message-ID:<br>&nbsp;&nbsp;&nbsp; &lt;CABEeoJV2CXbGtu1UnFZGtg-Snxj7+J9_RBb3=
2EDzhq=3D<a ymailto=3D"mailto:LdH5D_Q@mail.gmail.com" href=3D"mailto:LdH5D_=
Q@mail.gmail.com">LdH5D_Q@mail.gmail.com</a>&gt;<br>Content-Type: text/plai=
n; charset=3D"utf-8"<br><br>Hello,<br><br>my vmdk image is not booting into=
 systemd. But my iso image does.<br>It is similar to<br><a href=3D"https://=
lists.yoctoproject.org/pipermail/yocto/2014-August/021218.html" target=3D"_=
blank">https://lists.yoctoproject.org/pipermail/yocto/2014-August/021218.ht=
ml</a><br><br>I use fido with meta-intel.<br><br>Cheers,<br>Daniel<br>-----=
--------- next part --------------<br>An HTML attachment was scrubbed...<br=
>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachme=
nts/20150722/414c21a0/attachment-0001.html" target=3D"_blank">http://lists.=
yoctoproject.org/pipermail/yocto/attachments/20150722/414c21a0/attachment-0=
001.html</a>&gt;<br><br>------------------------------<br><br>Message: 4<br=
>Date: Wed, 22 Jul 2015 09:35:20 -0300<br>From: Otavio Salvador &lt;<a ymai=
lto=3D"mailto:otavio.salvador@ossystems.com.br" href=3D"mailto:otavio.salva=
dor@ossystems.com.br">otavio.salvador@ossystems.com.br</a>&gt;<br>To: OpenE=
mbedded Devel List<br>&nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:openembed=
ded-devel@lists.openembedded.org" href=3D"mailto:openembedded-devel@lists.o=
penembedded.org">openembedded-devel@lists.openembedded.org</a>&gt;<br>Cc: "=
<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctoproj=
ect.org">yocto@yoctoproject.org</a>" &lt;<a ymailto=3D"mailto:yocto@yoctopr=
oject.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
>&gt;<br>Subject: Re: [yocto] [oe] Bug in Open CV receipt<br>Message-ID:<br=
>&nbsp;&nbsp;&nbsp; &lt;CAP9ODKq6U0udqPvjgs1WmHNFy693O6h5Qt+<a ymailto=3D"m=
ailto:hHFwnYo5nbpH1kQ@mail.gmail.com" href=3D"mailto:hHFwnYo5nbpH1kQ@mail.g=
mail.com">hHFwnYo5nbpH1kQ@mail.gmail.com</a>&gt;<br>Content-Type: text/plai=
n; charset=3DUTF-8<br><br>On Tue, Jul 21, 2015 at 11:57 AM, Victor Rodrigue=
z &lt;<a ymailto=3D"mailto:vm.rod25@gmail.com" href=3D"mailto:vm.rod25@gmai=
l.com">vm.rod25@gmail.com</a>&gt; wrote:<br>&gt; Few weeks ago I was having=
 some problems with open CV receipt. In the<br>&gt; begining I toght I was =
adding opencv tro my core-image-minimal-xfce<br>&gt; just with this:<br>&gt=
;<br>&gt; IMAGE_INSTALL_append =3D " gcc gcc-dev openssh php mariadb opencv=
"<br>&gt;<br>&gt; Now after booting the image I realize that none of the li=
braries for<br>&gt; open stack were added to my image<br>&gt;<br>&gt; What =
I had to do was the following:<br>&gt;<br>&gt;<br>&gt; IMAGE_INSTALL_append=
 =3D " libopencv-core-dev libopencv-highgui-dev<br>&gt; libopencv-imgproc-d=
ev libopencv-objdetect-dev libopencv-ml-dev<br>&gt; opencv-staticdev python=
-opencv"<br>&gt;<br>&gt; Even last night when one of the opencv developers =
ask me for python<br>&gt; opencv I had to add the last part python-opencv. =
That is not cool at<br>&gt; all . If I add opencv in the beginning I assume=
 we are more than cool<br>&gt; with that and yocto will add all the package=
s . Unless I am doing<br>&gt; something wrong, in taht case I am more than =
happy to get the<br>&gt; feedback.<br>&gt;<br>&gt; Thanks a lot for all the=
 help . If someone else can reproduce this bug<br>&gt; I am more than happy=
 to report it in bugzila (not sure the URL)<br><br>You should add the dev-p=
kgs and tools-sdk image features for the<br>image, not mangle it manually.<=
br><br>-- <br>Otavio Salvador&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  O.S. Systems<br><a hre=
f=3D"http://www.ossystems.com.br/" target=3D"_blank">http://www.ossystems.c=
om.br </a>&nbsp; &nbsp; &nbsp;  <a href=3D"http://code.ossystems.com.br/" t=
arget=3D"_blank">http://code.ossystems.com.br</a><br>Mobile: +55 (53) 9981-=
7854&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mobile: +1 (347) 903-9750<br>=
<br><br>------------------------------<br><br>Message: 5<br>Date: Wed, 22 J=
ul 2015 15:09:26 +0000<br>From: &lt;<a ymailto=3D"mailto:Gamma.Dean@Emerson=
.com" href=3D"mailto:Gamma.Dean@Emerson.com">Gamma.Dean@Emerson.com</a>&gt;=
<br>To: &lt;<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yoc=
to@yoctoproject.org">yocto@yoctoproject.org</a>&gt;<br>Subject: Re: [yocto]=
 Exporting kernel header from patch<br>Message-ID:<br>&nbsp;&nbsp;&nbsp; &l=
t;<a ymailto=3D"mailto:5B6A9B05AFA9AC4FB94345D083806F144B2BF945@USSTLZ-PMSG=
016.emrsn.org" href=3D"mailto:5B6A9B05AFA9AC4FB94345D083806F144B2BF945@USST=
LZ-PMSG016.emrsn.org">5B6A9B05AFA9AC4FB94345D083806F144B2BF945@USSTLZ-PMSG0=
16.emrsn.org</a>&gt;<br>Content-Type: text/plain; charset=3D"us-ascii"<br><=
br>When using a shared sstate cache which has the previously built kernel i=
t appears that STAGING_KERNEL_DIR does not get populated - in my case there=
 is no tmp/work-shared directory at all.&nbsp; If I have modified the user =
space app to look there for a header is there some dependency I can add tha=
t will force STAGING_KERNEL_DIR to get built?<br><br>If not, perhaps the be=
st answer is your other proposed method of just adding the header to an add=
itional path in sysroot.<br>-------------- next part --------------<br>An H=
TML attachment was scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctopro=
ject.org/pipermail/yocto/attachments/20150722/f550ea3d/attachment-0001.html=
" target=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20150722/f550ea3d/attachment-0001.html</a>&gt;<br><br>------------------=
------------<br><br>Message: 6<br>Date: Wed, 22 Jul 2015 22:16:50 +0000 (UT=
C)<br>From: Edward Vidal &lt;<a ymailto=3D"mailto:develone@sbcglobal.net" h=
ref=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a>&gt;<br>To:=
 "<a ymailto=3D"mailto:yocto@yoctoproject.org" href=3D"mailto:yocto@yoctopr=
oject.org">yocto@yoctoproject.org</a>" &lt;<a ymailto=3D"mailto:yocto@yocto=
project.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&gt;<br>Subject: [yocto] raspberry Pi core-image-sato<br>Message-ID:<br>=
&nbsp;&nbsp;&nbsp; &lt;<a ymailto=3D"mailto:858020079.672977.1437603410191.=
JavaMail.yahoo@mail.yahoo.com" href=3D"mailto:858020079.672977.143760341019=
1.JavaMail.yahoo@mail.yahoo.com">858020079.672977.1437603410191.JavaMail.ya=
hoo@mail.yahoo.com</a>&gt;<br>Content-Type: text/plain; charset=3D"utf-8"<b=
r><br>HiStill having errors with bitbake core-image-satoThis occurs at | ch=
ecking for X11... yes<br>| checking for EGL... no<br>| configure: error: Pa=
ckage requirements (egl) were not met:<br>ERROR: Task 4856 (/home/vidal/wkg=
/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/libepoxy_git.bb, do=
_configure) failed with exit code '1'I tried adding /conf/machine/raspberry=
pi2.conf which I found on the internet.+PREFERRED_PROVIDER_virtual/egl ?=3D=
 "vc-graphics-hardfp"<br>+PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-grap=
hics-hardfp"This caused several more errors.Any and all help is appreciated=
. ?Edward Vidal Jr.<br>e-mail <a ymailto=3D"mailto:develone@sbcglobal.net" =
href=3D"mailto:develone@sbcglobal.net">develone@sbcglobal.net</a><br>915-59=
5-1613<br>-------------- next part --------------<br>An HTML attachment was=
 scrubbed...<br>URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail=
/yocto/attachments/20150722/0edaf329/attachment-0001.html" target=3D"_blank=
">http://lists.yoctoproject.org/pipermail/yocto/attachments/20150722/0edaf3=
29/attachment-0001.html</a>&gt;<br><br>------------------------------<br><b=
r>Message: 7<br>Date: Wed, 22 Jul 2015 18:23:18 -0600<br>From: Gary Thomas =
&lt;<a ymailto=3D"mailto:gary@mlbassoc.com" href=3D"mailto:gary@mlbassoc.co=
m">gary@mlbassoc.com</a>&gt;<br>To: <a ymailto=3D"mailto:yocto@yoctoproject=
.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>=
Subject: Re: [yocto] raspberry Pi core-image-sato<br>Message-ID: &lt;<a yma=
ilto=3D"mailto:55B033F6.0@mlbassoc.com" href=3D"mailto:55B033F6.0@mlbassoc.=
com">55B033F6.0@mlbassoc.com</a>&gt;<br>Content-Type: text/plain; charset=
=3D"windows-1252"; Format=3D"flowed"<br><br>On 2015-07-22 16:16, Edward Vid=
al wrote:<br>&gt; Hi<br>&gt; Still having errors with bitbake core-image-sa=
to<br><br>You must have added something to your image - core-image-sato doe=
s<br>not include libepoxy by default.<br><br>&gt; This occurs at<br>&gt; | =
checking for X11... yes<br>&gt; | checking for EGL... no<br>&gt; | configur=
e: error: Package requirements (egl) were not met:<br>&gt; ERROR: Task 4856=
 (/home/vidal/wkg/yocto/RaspberryPi2/poky/meta/recipes-graphics/libepoxy/li=
bepoxy_git.bb, do_configure) failed with exit code '1'<br>&gt;<br>&gt; I tr=
ied adding /conf/machine/raspberrypi2.conf which I found on the internet.<b=
r>&gt;<br>&gt; +PREFERRED_PROVIDER_virtual/egl ?=3D "vc-graphics-hardfp"<br=
>&gt; +PREFERRED_PROVIDER_virtual/libgles2 ?=3D "vc-graphics-hardfp"<br>&gt=
;<br>&gt; This caused several more errors.<br><br>Which you failed [again] =
to list :-(<br><br>&gt; Any and all help is appreciated.<br><br>To get libe=
poxy to build:<br>&nbsp;  % bitbake userland -c cleansstate<br><br>Then app=
ly this patch which fixes a problem with libepoxy using<br>the wrong python=
3<br><br>After that, I got it to build for RaspberryPi-2<br><br>-- <br>----=
--------------------------------------------------------<br>Gary Thomas&nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  |&nbsp; Consulting for=
 the<br>MLB Associates&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; |&nb=
sp; &nbsp; Embedded world<br>----------------------------------------------=
--------------<br>-------------- next part --------------<br>A non-text att=
achment was scrubbed...<br>Name: 0001-libepoxy-Use-native-python3.patch<br>=
Type: text/x-patch<br>Size: 927 bytes<br>Desc: not available<br>URL: &lt;<a=
 href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachments/20150722=
/ecba9929/attachment.bin" target=3D"_blank">http://lists.yoctoproject.org/p=
ipermail/yocto/attachments/20150722/ecba9929/attachment.bin</a>&gt;<br><br>=
------------------------------<br><br>-- <br>______________________________=
_________________<br>yocto mailing list<br><a ymailto=3D"mailto:yocto@yocto=
project.org" href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"=
_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><br><br>End of=
 yocto Digest, Vol 58, Issue 66<br>*************************************<br=
><br><br></div>  </div> </div>  </div></div></body></html>

------=_Part_968010_879102696.1437654912007--
