Return-Path: <ninad@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22E6DD44152
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 14:47:35 +0000 (UTC)
Subject: Having issue using gcc-sanitizer
To: yocto@lists.yoctoproject.org
From: "Ninad Palsule" <ninad@linux.ibm.com>
X-Originating-Location: Round Rock, Texas, US (70.114.142.126)
X-Originating-Platform: Linux Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 Nov 2024 06:47:29 -0800
Message-ID: <YDQ9.1732114049670344547.UqVj@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="S0gIPG0HkJU2iEWDPJQ3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 14:47:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64312

--S0gIPG0HkJU2iEWDPJQ3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I want to add *-sanitize* option to my application. I performed following c=
hanges.
I see that *gcc-sanitize* target is pulled and compiled by application is n=
ot linking the correct files.
I am trying to use this target: meta/recipes-devtools/gcc/gcc-sanitizers_13=
.2.bb
Am I missing some changes to include this target for my app.

*+++ b/meta-ibm/recipes-phosphor/mboxd/mboxd_%.bbappend*
+FULL_OPTIMIZATION:append=3D" -Og -fsanitize=3Daddress,undefined "
+TARGET_CPPFLAGS:append=3D" -O0 "

*+++ b/meta-ibm/recipes-phosphor/images/obmc-phosphor-image.bbappend*
-OBMC_IMAGE_EXTRA_INSTALL:append:p10bmc =3D " mboxd"
+OBMC_IMAGE_EXTRA_INSTALL:append:p10bmc =3D " mboxd mboxd-src mboxd-dbg lib=
asan libubsan"

*I am getting following errors in the mbox configure.*
openbmc/build/p10bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/mboxd=
/1.0+git/recipe-sysroot-native/usr/bin/arm-openbmc-linux-gnueabi/../../libe=
xec/arm-openbmc-linux-gnueabi/gcc/arm-openbmc-linux-gnueabi/13.2.0/ld: cann=
ot find libasan_preinit.o: No such file or directory
openbmc/build/p10bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/mboxd=
/1.0+git/recipe-sysroot-native/usr/bin/arm-openbmc-linux-gnueabi/../../libe=
xec/arm-openbmc-linux-gnueabi/gcc/arm-openbmc-linux-gnueabi/13.2.0/ld: cann=
ot find -lasan: No such file or directory
openbmc/build/p10bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/mboxd=
/1.0+git/recipe-sysroot-native/usr/bin/arm-openbmc-linux-gnueabi/../../libe=
xec/arm-openbmc-linux-gnueabi/gcc/arm-openbmc-linux-gnueabi/13.2.0/ld: cann=
ot find -lubsan: No such file or directory
collect2: error: ld returned 1 exit status
configure:4101: $? =3D 1
configure:4142: result: no
configure: failed program was:

I appreciate your help!

Thanks & Regards,
Ninad Palsule

--S0gIPG0HkJU2iEWDPJQ3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I want to add <strong>-sanitize</strong> option to my application. I p=
erformed following changes.</div>
<div>I see that <strong>gcc-sanitize</strong> target is pulled and compiled=
 by application is not linking the correct files.</div>
<div>I am trying to use this target: meta/recipes-devtools/gcc/gcc-sanitize=
rs_13.2.bb</div>
<div>Am I missing some changes to include this target for my app.</div>
<div>&nbsp;</div>
<div><strong>+++ b/meta-ibm/recipes-phosphor/mboxd/mboxd_%.bbappend</strong=
><br />+FULL_OPTIMIZATION:append=3D" -Og -fsanitize=3Daddress,undefined "<b=
r />+TARGET_CPPFLAGS:append=3D" -O0 "</div>
<div>&nbsp;</div>
<div><strong>+++ b/meta-ibm/recipes-phosphor/images/obmc-phosphor-image.bba=
ppend</strong></div>
<div>-OBMC_IMAGE_EXTRA_INSTALL:append:p10bmc =3D " mboxd"<br />+OBMC_IMAGE_=
EXTRA_INSTALL:append:p10bmc =3D " mboxd mboxd-src mboxd-dbg libasan libubsa=
n"</div>
<div>&nbsp;</div>
<div><strong>I am getting following errors in the mbox configure.</strong><=
/div>
<div>openbmc/build/p10bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/=
mboxd/1.0+git/recipe-sysroot-native/usr/bin/arm-openbmc-linux-gnueabi/../..=
/libexec/arm-openbmc-linux-gnueabi/gcc/arm-openbmc-linux-gnueabi/13.2.0/ld:=
 cannot find libasan_preinit.o: No such file or directory</div>
<div>openbmc/build/p10bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/=
mboxd/1.0+git/recipe-sysroot-native/usr/bin/arm-openbmc-linux-gnueabi/../..=
/libexec/arm-openbmc-linux-gnueabi/gcc/arm-openbmc-linux-gnueabi/13.2.0/ld:=
 cannot find -lasan: No such file or directory</div>
<div>openbmc/build/p10bmc/tmp/work/armv7ahf-vfpv4d16-openbmc-linux-gnueabi/=
mboxd/1.0+git/recipe-sysroot-native/usr/bin/arm-openbmc-linux-gnueabi/../..=
/libexec/arm-openbmc-linux-gnueabi/gcc/arm-openbmc-linux-gnueabi/13.2.0/ld:=
 cannot find -lubsan: No such file or directory<br />collect2: error: ld re=
turned 1 exit status<br />configure:4101: $? =3D 1<br />configure:4142: res=
ult: no<br />configure: failed program was:</div>
<div>&nbsp;</div>
<div>I appreciate your help!</div>
<div>&nbsp;</div>
<div>Thanks &amp; Regards,</div>
<div>Ninad Palsule</div>

--S0gIPG0HkJU2iEWDPJQ3--

