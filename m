Return-Path: <marekslomiany@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0533C004D4
	for <webhook@archiver.kernel.org>; Thu, 19 Jan 2023 14:41:41 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.46670.1674139297479408247
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jan 2023 06:41:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DtKuqI6a;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: marekslomiany@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-4d19b2686a9so29880437b3.6
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 06:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oTcrb40BQudr0TxGBHVcSUxQZU4eF1VHZltkLXZH8WI=;
        b=DtKuqI6aGUrjAOOY7nO/BnM1VRs2EJSRFse2M6G4ZAxEOhy+9cXXZaunSTXmcuLPWZ
         KGDKyHRovIO5YZ/Jk8/nAvmNQgAioGuV5Al0lEPDam7Hkan/85PM4UFkTDLgrw7Zroui
         DvNKS6Hm6hnINZHIZu8CRCnytrJMAKO/EaQogCzcs+W/hAitKduHvEKas8ZF1t4+ULFG
         XrTVcApmRTb0BHfeX0Musuz7fwmJxwKMDFSnfSgNxEQ5O5v9No+iUoV/dpwl8LThpiwu
         fUul7ucUUZ8wnVSe4tuJw4bb82wy2D1zsINFFoR79aJEpnH79asdm+Jlj60YREsZ8j1d
         obKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oTcrb40BQudr0TxGBHVcSUxQZU4eF1VHZltkLXZH8WI=;
        b=HWY+a8HPqKgUOmSLSogrceGOpETjjYG/9PBWuKehCYn5fni5z5Ztf9ymsnv453nKhA
         yeBwwYIhv1pWEJp4CmoBSiJnCogSNpBQIIs+36v2B84I0HpbUMM5e1HeXxjP4OPUTJp9
         WcZDX/uR6S2o1lEIcOvpInVdbqQjLNfIFyrx7nadqxn9SbJlCenJlER9KBSLvlSnCAxM
         MBtg7RhIL5u1qxPZeW6abfhvga18+x1xgeA79VWjzT4ReWzuZFD8u5gDNT0McXVrp20i
         D92ty+5cSSP+5VWr7RRUw4eQC49IBtfHunB/s17qHQHTkxwba2++MHn4JRPTKblrveDN
         MVVg==
X-Gm-Message-State: AFqh2kpLZR7sbjXQKvMhVFfG2PrkMqC+bKKsxAXczsMj5t2d+i5SJ+J/
	QHkOgMErraVhloEnnxYK/BF68z8iLL+NiAesSljjat4xUhQ=
X-Google-Smtp-Source: AMrXdXuejsP6BIdIId2kNatwgFjpMxBXaJNxWSEX0gPmCxZDlIRPeczpOol6D6mtGb3JKwM4qukgRpjsrmhSNT3BllY=
X-Received: by 2002:a81:ed4:0:b0:4dd:c62f:d65a with SMTP id
 203-20020a810ed4000000b004ddc62fd65amr1056571ywo.427.1674139296056; Thu, 19
 Jan 2023 06:41:36 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Thu, 19 Jan 2023 15:41:25 +0100
Message-ID: <CAJCDnYYay6AmPiPzaV-CXb4uq_TCy6wC9vinoQ=3FrWjg-L3GQ@mail.gmail.com>
Subject: Creating dependency on swu images
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000bcb6c05f29eee6b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 14:41:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59020

--0000000000000bcb6c05f29eee6b
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to prepare a wic for SD card for factory-flashing the device.
For this I have prepared bootloader and initramfs (containing swupdate) on
first partition, and I'm planing to store a bunch of swu update files on
second one - those files will partition the device's storage and install
kernel, bootloader, rootfs and whatever necesary.
To achive this I have already collected all required swu files and I am
able to create a package with them to be used further to populate that
second partition on SD. The problem starts when I'm trying to create a
dependency.
(To simplify, I am testing on beaglebone-yocto machine, and as swu packages
using "update-image.bb" from meta-swupdate-boards and created by me simple
update of kernel called "update-kernel.bb")
If I add:

DEPENDS = " update-image update-kernel "

I got error:

ERROR: swus-1.0-r0 do_package: The sstate manifest for task
'update-kernel:packagedata' (multilib variant '') could not be found.
The pkgarchs considered were: beaglebone_yocto, cortexa8hf-neon,
cortexa8hf-vfp, armv7ahf-neon, armv7ahf-vfp, armv6hf-vfp, armv5ehf-vfp,
armv5hf-vfp, allarch, x86_64_x86_64-nativesdk.
But none of these manifests exists:

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-beaglebone_yocto-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-cortexa8hf-neon-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-cortexa8hf-vfp-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-armv7ahf-neon-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-armv7ahf-vfp-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-armv6hf-vfp-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-armv5ehf-vfp-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-armv5hf-vfp-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-allarch-update-kernel.packagedata

/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-x86_64_x86_64-nativesdk-update-kernel.packagedata
ERROR: Logfile of failure stored in:
/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/swus/1.0-r0/temp/log.do_package.56423
ERROR: Task
(/home/marslo/cooker/bbb/builds/build-beaglebone-console/../../layers/meta-test/recipes-core/other/swus_1.0.bb:do_package)
failed with exit code '1'

On the other hand, when I try doing this this way:

do_install[depends] += " update-image:do_swuimage update-kernel:do_swuimage
"

I got following  error:

Exception: FileExistsError: [Errno 17] File exists:
'/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sysroots-components/cortexa8hf-neon/libgcc-initial/usr/lib/arm-poky-linux-gnueabi/11.3.0/libgcov.a'
->
'/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/swus/1.0-r0/recipe-sysroot/usr/lib/arm-poky-linux-gnueabi/11.3.0/libgcov.a'

My do_install fuction is:
do_install() {
    install -d ${D}/swus
    install -m 0440 ${DEPLOY_DIR_IMAGE}/update-image-${MACHINE}.swu
${D}/swus/
    install -m 0440 ${DEPLOY_DIR_IMAGE}/update-kernel-${MACHINE}.swu
${D}/swus/
}

Kind Regards,
Marek Slomiany

--0000000000000bcb6c05f29eee6b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>I am trying to prepare a wic for SD card for fa=
ctory-flashing the device. For this I have prepared bootloader and initramf=
s (containing swupdate) on first partition, and I&#39;m planing to store a =
bunch of swu update files on second one - those files will partition the de=
vice&#39;s storage and install kernel, bootloader, rootfs and whatever nece=
sary.<br>To achive this I have already collected all required swu files and=
 I am able to create a package with them to be used further to populate tha=
t second partition on SD. The problem starts when I&#39;m trying to create =
a dependency. <br>(To simplify, I am testing on beaglebone-yocto machine, a=
nd as swu packages using &quot;<a href=3D"http://update-image.bb">update-im=
age.bb</a>&quot; from meta-swupdate-boards and created by me simple update =
of kernel called &quot;<a href=3D"http://update-kernel.bb">update-kernel.bb=
</a>&quot;)<br>If I add:<br><br>DEPENDS =3D &quot; update-image update-kern=
el &quot;<br><br>I got error:<br><br>ERROR: swus-1.0-r0 do_package: The sst=
ate manifest for task &#39;update-kernel:packagedata&#39; (multilib variant=
 &#39;&#39;) could not be found.<br>The pkgarchs considered were: beaglebon=
e_yocto, cortexa8hf-neon, cortexa8hf-vfp, armv7ahf-neon, armv7ahf-vfp, armv=
6hf-vfp, armv5ehf-vfp, armv5hf-vfp, allarch, x86_64_x86_64-nativesdk.<br>Bu=
t none of these manifests exists:<br>=C2=A0 =C2=A0 /home/marslo/cooker/bbb/=
builds/build-beaglebone-console/tmp/sstate-control/manifest-beaglebone_yoct=
o-update-kernel.packagedata<br>=C2=A0 =C2=A0 /home/marslo/cooker/bbb/builds=
/build-beaglebone-console/tmp/sstate-control/manifest-cortexa8hf-neon-updat=
e-kernel.packagedata<br>=C2=A0 =C2=A0 /home/marslo/cooker/bbb/builds/build-=
beaglebone-console/tmp/sstate-control/manifest-cortexa8hf-vfp-update-kernel=
.packagedata<br>=C2=A0 =C2=A0 /home/marslo/cooker/bbb/builds/build-beaglebo=
ne-console/tmp/sstate-control/manifest-armv7ahf-neon-update-kernel.packaged=
ata<br>=C2=A0 =C2=A0 /home/marslo/cooker/bbb/builds/build-beaglebone-consol=
e/tmp/sstate-control/manifest-armv7ahf-vfp-update-kernel.packagedata<br>=C2=
=A0 =C2=A0 /home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/ssta=
te-control/manifest-armv6hf-vfp-update-kernel.packagedata<br>=C2=A0 =C2=A0 =
/home/marslo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/=
manifest-armv5ehf-vfp-update-kernel.packagedata<br>=C2=A0 =C2=A0 /home/mars=
lo/cooker/bbb/builds/build-beaglebone-console/tmp/sstate-control/manifest-a=
rmv5hf-vfp-update-kernel.packagedata<br>=C2=A0 =C2=A0 /home/marslo/cooker/b=
bb/builds/build-beaglebone-console/tmp/sstate-control/manifest-allarch-upda=
te-kernel.packagedata<br>=C2=A0 =C2=A0 /home/marslo/cooker/bbb/builds/build=
-beaglebone-console/tmp/sstate-control/manifest-x86_64_x86_64-nativesdk-upd=
ate-kernel.packagedata<br>ERROR: Logfile of failure stored in: /home/marslo=
/cooker/bbb/builds/build-beaglebone-console/tmp/work/cortexa8hf-neon-poky-l=
inux-gnueabi/swus/1.0-r0/temp/log.do_package.56423<br>ERROR: Task (/home/ma=
rslo/cooker/bbb/builds/build-beaglebone-console/../../layers/meta-test/reci=
pes-core/other/swus_1.0.bb:do_package) failed with exit code &#39;1&#39;<br=
><br>On the other hand, when I try doing this this way:<br><br>do_install[d=
epends] +=3D &quot; update-image:do_swuimage update-kernel:do_swuimage &quo=
t;<br><br>I got following =C2=A0error:<br><br>Exception: FileExistsError: [=
Errno 17] File exists: &#39;/home/marslo/cooker/bbb/builds/build-beaglebone=
-console/tmp/sysroots-components/cortexa8hf-neon/libgcc-initial/usr/lib/arm=
-poky-linux-gnueabi/11.3.0/libgcov.a&#39; -&gt; &#39;/home/marslo/cooker/bb=
b/builds/build-beaglebone-console/tmp/work/cortexa8hf-neon-poky-linux-gnuea=
bi/swus/1.0-r0/recipe-sysroot/usr/lib/arm-poky-linux-gnueabi/11.3.0/libgcov=
.a&#39;<br><br>My do_install fuction is:<br>do_install() {<br>=C2=A0 =C2=A0=
 install -d ${D}/swus<br>=C2=A0 =C2=A0 install -m 0440 ${DEPLOY_DIR_IMAGE}/=
update-image-${MACHINE}.swu ${D}/swus/<br>=C2=A0 =C2=A0 install -m 0440 ${D=
EPLOY_DIR_IMAGE}/update-kernel-${MACHINE}.swu ${D}/swus/<br>}<br><br>Kind R=
egards,<br>Marek Slomiany<br></div>

--0000000000000bcb6c05f29eee6b--

