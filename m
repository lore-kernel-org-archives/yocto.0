Return-Path: <gangadhar.ubuntu@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E873C433EF
	for <webhook@archiver.kernel.org>; Thu, 26 May 2022 13:00:13 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com
 [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web12.19263.1653570007823169647
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 May 2022 06:00:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k7eGezhv;
 spf=pass (domain: gmail.com, ip: 209.85.160.48,
 mailfrom: gangadhar.ubuntu@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id
 586e51a60fabf-f2cbceefb8so2043309fac.11;
        Thu, 26 May 2022 06:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=B/CGtMPH64Vg8fMSFcKLEibGBuQKYddWDLJBqDmClrQ=;
        b=k7eGezhvEe2gqpU1rH1YJPA+jR1d62PeCMoUmmjrSCtXnGdW1xqCPK1NVK2iWw4QgG
         QtBR+tDUwIRxMU1TwprTPEigBfoodGGGIYDG134Ye3Xvll+TpuF5ZCg7s6iNbjGznSkD
         2fUkYJG6paOHT1s6HAtixiOxA3UXtwUsEYFoyfPDzKZq85xoG4lwdLTiXmncCKXcJb5O
         AivW4xRa7hx7w0oGL9EN9VJxWkopYwZ2Oj4AhbKrkNmvSYiGdNg5gK/WztRjFxggaEnw
         e2kw1bN0jW/K7RHcdvUtxgv/JRDgoDaYsY1bXxDJsCc4KZB7HanliJZ3HhgXOC9O1kQf
         Rqcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=B/CGtMPH64Vg8fMSFcKLEibGBuQKYddWDLJBqDmClrQ=;
        b=3BshG4/ZjjXToEt5g7dsaJGDxG5w3RhUeOtc474d+rdXBMMrtBxVh1BWQbmq39YkSI
         NQew8Qh9JEInLZtz4UdAuO4uf/BgQImw+/6y3mOmGVo6iDHZUyU3YP3Yuy8GbPiaEHWa
         QTtSmK6IaznF+zlOrwTSKaoY7Wf8p3ZHfp+7a8glW5Au0ALohiiFY6PWCYh0KM0tRsOh
         /q2DEUJ2K3Kp1rj7XaYtozWFR0e+rFNUZUOAY42v06ahU86t7njcbrugON7/AOFEEuFR
         jIoobgANwyvCvH1fDLvSA/1/YGO3QvOR70isSl4Ev/ZrCurydyEKRsQXnbjYa51oAkFx
         SJzw==
X-Gm-Message-State: AOAM530nLlgrREgczw2/WERKmAng1ER4QS3SwDWWmgt6opPFEwHeJtx8
	Yfbxn76e6gVTW0y0pruqfFjP0yrDIXHs0484mLk23/pUOaRpoQpw
X-Google-Smtp-Source: 
 ABdhPJzXA+Fo4uANUXh1rLAhn+ZWqOvkDDIgO/g+6BNYGk7fHwehRomnjGwmElHauoGkquoIzK6TEhiCN4N6Hyw6rMk=
X-Received: by 2002:a05:6870:2111:b0:e6:8026:8651 with SMTP id
 f17-20020a056870211100b000e680268651mr1088478oae.42.1653570006553; Thu, 26
 May 2022 06:00:06 -0700 (PDT)
MIME-Version: 1.0
From: Gangadhar N <gangadhar.ubuntu@gmail.com>
Date: Thu, 26 May 2022 18:29:55 +0530
Message-ID: 
 <CAKxnL=hjVvDDiBVkHfY7ki7MfPafSGeei4tWz0X+p1Ebzx9xrw@mail.gmail.com>
Subject: SHA384 signature for FIT images
To: yocto@lists.yoctoproject.org, Linux-Yocto@lists.yoctoproject.org,
	Yocto-Bsp@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000da1e0f05dfe9c4ef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 May 2022 13:00:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57194

--000000000000da1e0f05dfe9c4ef
Content-Type: text/plain; charset="UTF-8"

Hi,
I want to use SHA384 instead of SHA256 to sign FIT images.

diff --git a/poky/meta/classes/kernel-fitimage.bbclass
b/poky/meta/classes/kernel-fitimage.bbclass
index bb2f3c4cc..d4f9dddf2 100644
--- a/poky/meta/classes/kernel-fitimage.bbclass
+++ b/poky/meta/classes/kernel-fitimage.bbclass
@@ -51,13 +51,13 @@ python __anonymous () {
 UBOOT_MKIMAGE_DTCOPTS ??= ""

 # fitImage Hash Algo
-FIT_HASH_ALG ?= "sha256"
+FIT_HASH_ALG ?= "sha384"

 # fitImage Signature Algo
 FIT_SIGN_ALG ?= "rsa2048"

 # Generate keys for signing fitImage
-FIT_GENERATE_KEYS ?= "0"
+FIT_GENERATE_KEYS ?= "1"

 # Size of private key in number of bits
 FIT_SIGN_NUMBITS ?= "2048"


I get below error,
ERROR: linux-obmc-5.8.17+gitAUTOINC+c26e1233f9-r0 do_assemble_fitimage:
Execution of
'/home/gangadhar/openbmc/build/tmp/work/linux-gnueabi/linux-obmc/5.8.17+gitAUTOINC+c26e1233f9-r0/temp/run.do_assemble_fitimage.17762'
failed with exit code 255:
none
fit-image.its:8.26-20.19: Warning (unit_address_vs_reg): /images/kernel@1:
node has a unit name, but no reg property
fit-image.its:17.32-19.27: Warning (unit_address_vs_reg): /images/kernel@1
/hash@1: node has a unit name, but no reg property
fit-image.its:21.29-31.19: Warning (unit_address_vs_reg):
/images/fdt@gxp.dtb: node has a unit name, but no reg property
fit-image.its:28.32-30.27: Warning (unit_address_vs_reg):
/images/fdt@gxp.dtb/hash@1: node has a unit name, but no reg property
fit-image.its:36.30-50.19: Warning (unit_address_vs_reg):
/configurations/conf@gxp.dtb: node has a unit name, but no reg property
fit-image.its:42.32-44.27: Warning (unit_address_vs_reg):
/configurations/conf@gxp.dtb/hash@1: node has a unit name, but no reg
property
fit-image.its:45.37-49.27: Warning (unit_address_vs_reg):
/configurations/conf@gxp.dtb/signature@1: node has a unit name, but no reg
property
uboot-mkimage Can't add hashes to FIT blob: -93
Unsupported hash algorithm (sha384) for 'hash@1' hash node in 'kernel@1'
image node
WARNING: exit code 255 from a shell command.

Thanks & Regards,
Gangadhar

--000000000000da1e0f05dfe9c4ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I want to use SHA384 instead of SHA256 to sign FIT=
 images.=C2=A0</div><div><br></div><div>diff --git a/poky/meta/classes/kern=
el-fitimage.bbclass b/poky/meta/classes/kernel-fitimage.bbclass<br>index bb=
2f3c4cc..d4f9dddf2 100644<br>--- a/poky/meta/classes/kernel-fitimage.bbclas=
s<br>+++ b/poky/meta/classes/kernel-fitimage.bbclass<br>@@ -51,13 +51,13 @@=
 python __anonymous () {<br>=C2=A0UBOOT_MKIMAGE_DTCOPTS ??=3D &quot;&quot;<=
br><br>=C2=A0# fitImage Hash Algo<br>-FIT_HASH_ALG ?=3D &quot;sha256&quot;<=
br>+FIT_HASH_ALG ?=3D &quot;sha384&quot;<br><br>=C2=A0# fitImage Signature =
Algo<br>=C2=A0FIT_SIGN_ALG ?=3D &quot;rsa2048&quot;<br><br>=C2=A0# Generate=
 keys for signing fitImage<br>-FIT_GENERATE_KEYS ?=3D &quot;0&quot;<br>+FIT=
_GENERATE_KEYS ?=3D &quot;1&quot;<br><br>=C2=A0# Size of private key in num=
ber of bits<br>=C2=A0FIT_SIGN_NUMBITS ?=3D &quot;2048&quot;<br></div><div><=
br></div><div><br></div><div>I get below error,</div><div>ERROR: linux-obmc=
-5.8.17+gitAUTOINC+c26e1233f9-r0 do_assemble_fitimage: Execution of &#39;/h=
ome/gangadhar/openbmc/build/tmp/work/linux-gnueabi/linux-obmc/5.8.17+gitAUT=
OINC+c26e1233f9-r0/temp/run.do_assemble_fitimage.17762&#39; failed with exi=
t code 255:<br>none<br>fit-image.its:8.26-20.19: Warning (unit_address_vs_r=
eg): /images/kernel@1: node has a unit name, but no reg property<br>fit-ima=
ge.its:17.32-19.27: Warning (unit_address_vs_reg): /images/kernel@1/hash@1:=
 node has a unit name, but no reg property<br>fit-image.its:21.29-31.19: Wa=
rning (unit_address_vs_reg): /images/fdt@gxp.dtb: node has a unit name, but=
 no reg property<br>fit-image.its:28.32-30.27: Warning (unit_address_vs_reg=
): /images/fdt@gxp.dtb/hash@1: node has a unit name, but no reg property<br=
>fit-image.its:36.30-50.19: Warning (unit_address_vs_reg): /configurations/=
conf@gxp.dtb: node has a unit name, but no reg property<br>fit-image.its:42=
.32-44.27: Warning (unit_address_vs_reg): /configurations/conf@gxp.dtb/hash=
@1: node has a unit name, but no reg property<br>fit-image.its:45.37-49.27:=
 Warning (unit_address_vs_reg): /configurations/conf@gxp.dtb/signature@1: n=
ode has a unit name, but no reg property<br>uboot-mkimage Can&#39;t add has=
hes to FIT blob: -93<br>Unsupported hash algorithm (sha384) for &#39;hash@1=
&#39; hash node in &#39;kernel@1&#39; image node<br>WARNING: exit code 255 =
from a shell command.<br></div><div><br></div><div>Thanks &amp; Regards,</d=
iv><div>Gangadhar</div></div>

--000000000000da1e0f05dfe9c4ef--

