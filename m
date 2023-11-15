Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFBA6C47075
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 07:17:37 +0000 (UTC)
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web11.8063.1700032656785305636
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 23:17:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eFPBcjmP;
 spf=pass (domain: gmail.com, ip: 209.85.167.180, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-3b6a837a2e1so3678651b6e.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 23:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700032656; x=1700637456; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jVgOeNnFNJN1m0K7UF7kHbKeVE2uu/QmE3kR0Ra7Zbw=;
        b=eFPBcjmPUd4YXXbEfVbufQcaF6eOB+RH7wW+4fYUm+A7hKZA3z7KLlP3M0GSa0JJg/
         j/jo5tSrgS8EPxvUATRucTlqWT4W1sCator4VO+eMB+8XtAjCQwhViGfUxMkxVke354D
         4PwKLb/wZHuAD0uCZSbWEqtnvSmhmb1hB4bnSH3q+bJ6fvd1jTs0cBOkucRECamTD0+R
         xem8Mu6qHrzfNZeb3hE760z6XJNlOJYzUB3GlxYrfM3o8KHMaMFCIQactDBDlQ9gqR9P
         FdBkKMDe1V49aPFzQopn3zhCX/GM3p+axXu4vnnq/AxsOqd1f+uq2UWWfK9JXNtxpZQ4
         OawQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700032656; x=1700637456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jVgOeNnFNJN1m0K7UF7kHbKeVE2uu/QmE3kR0Ra7Zbw=;
        b=xK8Z2DydAgh/iFU3TE5TJ8vOazah4yqsgIdo5oT/O/+9oF7ct9TptibkFKGJ7FITv+
         1Mvd8PigDhejvEV8Msyr4zDHr9HRMnedK4Rh029nHdUYiyeEPtqZJRd3FdTuQgmeUkQl
         MI4ceOeOm+G+z8AmodljXeEzTUTmRvybr4juNhMLtaQEMM2ySqYXaIZCyZN+PjySp6st
         DU/pQKTDE03Y7xeqBv8DyeKX99h8NZByAawPw7uS7rhwSxnyCKHSrGgp1K1ZJF8D5NtX
         +ztaq69TXPB1DRpDARhQMkydmspQtwtpP8EJK1tR7EloqxAKZekhIFMcNgGeHeZimdox
         gl5w==
X-Gm-Message-State: AOJu0YzGgrVN3uoSxtTwTuL/hVNcT38PeyB6hwz0FHuTCL3H5Rexfdd7
	uiNaAg9BVacRoOG1VuNNgQNPXeNLXXHWjrO6x9A=
X-Google-Smtp-Source: AGHT+IH+69LPrLTvxGDX9CwiNTjrPeEbXn95YUdif5IJfEKtB7RFbtlu79Hh4XSfaBBUZ0Tx6rbkaOrdK/yLCASoy6w=
X-Received: by 2002:a05:6870:418e:b0:1f4:be52:b14b with SMTP id
 y14-20020a056870418e00b001f4be52b14bmr16220380oac.12.1700032655877; Tue, 14
 Nov 2023 23:17:35 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBnhGioGz-0yvfeFjxfo5w8TjUfLGT78Rzwo55aV9vzTxcg@mail.gmail.com>
In-Reply-To: <CAPJWBnhGioGz-0yvfeFjxfo5w8TjUfLGT78Rzwo55aV9vzTxcg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Nov 2023 23:17:09 -0800
Message-ID: <CAMKF1spXPtHghSQw3iV-a8fNy_N+i01dSjD7mtOWHjNGrfLK-Q@mail.gmail.com>
Subject: Re: [yocto] Architecture did not match
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 07:17:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61685

add lib32-testing-firmware in your image instead of testing-firmware

On Tue, Nov 14, 2023 at 10:26=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> Hi guys,
> So the SDK my vendor provided kernel toolchain of "aarch64-poky-linux-gcc=
" while the application uses a 32 bit toolchain "arm-pokymllib32-linux-gnue=
abi-gcc".
> So i want to just copy my nodejs application to the home directory. To co=
mpensate for the architecture issues I have made the changes in my recipe f=
ile as shown below.
>
> testing-firmware_0.1.bb:
> DESCRIPTION =3D  "Testing firmware for Edge 3 hubs"
>
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0=
bcf8506ecda2f7b4f302"
>
> SRC_URI =3D "file://Edge_3_firmware_testing.zip"
>
> S =3D "${WORKDIR}"
> INSANE_SKIP:${PN} +=3D "arch:/Edge/node_modules/"
>
> do_install() {
>         install -d ${D}/home/root
>         cp -r ${WORKDIR}/Edge -d ${D}/home/root/
>         cp -r ${WORKDIR}/Edge -d ${D}{bindir}/
> }
>
> FILES_${PN} =3D "/home/root/Edge"
>
> But when i try to build the testing firmware I get the following error:
>
> ERROR: testing-firmware-0.1-r0 do_package_qa: QA Issue: Architecture did =
not match (ARM, expected AArch64) on /work/aarch64-poky-linux/testing-firmw=
are/0.1-r0/packages-split/testing-firmware-dbg/home/root/Edge/node_modules/=
epoll/build/Release/.debug/epoll.node
> Architecture did not match (ARM, expected AArch64) on /work/aarch64-poky-=
linux/testing-firmware/0.1-r0/packages-split/testing-firmware-dbg/home/root=
/Edge/node_modules/epoll/build/Release/obj.target/.debug/epoll.node [arch]
> ERROR: testing-firmware-0.1-r0 do_package_qa: QA Issue: Architecture did =
not match (ARM, expected AArch64) on /work/aarch64-poky-linux/testing-firmw=
are/0.1-r0/packages-split/testing-firmware/home/root/Edge/node_modules/@ser=
ialport/bindings-cpp/prebuilds/android-arm/node.napi.armv7.node
> Architecture did not match (x86-64, expected AArch64) on /work/aarch64-po=
ky-linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/=
Edge/node_modules/@serialport/bindings-cpp/prebuilds/linux-x64/node.napi.mu=
sl.node
> Architecture did not match (x86-64, expected AArch64) on /work/aarch64-po=
ky-linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/=
Edge/node_modules/@serialport/bindings-cpp/prebuilds/linux-x64/node.napi.gl=
ibc.node
> Architecture did not match (ARM, expected AArch64) on /work/aarch64-poky-=
linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/Edg=
e/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv7=
.node
> Architecture did not match (ARM, expected AArch64) on /work/aarch64-poky-=
linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/Edg=
e/node_modules/@serialport/bindings-cpp/prebuilds/linux-arm/node.napi.armv6=
.node
> Architecture did not match (ARM, expected AArch64) on /work/aarch64-poky-=
linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/Edg=
e/node_modules/epoll/build/Release/epoll.node
> Architecture did not match (ARM, expected AArch64) on /work/aarch64-poky-=
linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/Edg=
e/node_modules/epoll/build/Release/obj.target/epoll.node
> Architecture did not match (ARM, expected AArch64) on /work/aarch64-poky-=
linux/testing-firmware/0.1-r0/packages-split/testing-firmware/home/root/Edg=
e/node_modules/epoll/build/Release/obj.target/epoll/src/epoll.o [arch]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libpthread.so.0(GLIBC_2.4), but no providers fo=
und in RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libc.so.6(GLIBC_2.9), but no providers found in=
 RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libc.so.6(GLIBC_2.4), but no providers found in=
 RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libstdc++.so.6(CXXABI_1.3.9), but no providers =
found in RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libstdc++.so.6(CXXABI_ARM_1.3.3), but no provid=
ers found in RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libstdc++.so.6(GLIBCXX_3.4.15), but no provider=
s found in RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libstdc++.so.6(GLIBCXX_3.4), but no providers f=
ound in RDEPENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libstdc++.so.6, but no providers found in RDEPE=
NDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libm.so.6, but no providers found in RDEPENDS_t=
esting-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libgcc_s.so.1, but no providers found in RDEPEN=
DS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libpthread.so.0, but no providers found in RDEP=
ENDS_testing-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/node_modules/epoll/build/Release/obj.target/epoll.node contained in packag=
e testing-firmware requires libc.so.6, but no providers found in RDEPENDS_t=
esting-firmware? [file-rdeps]
> WARNING: testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/root/Edge=
/install.sh contained in package testing-firmware requires /bin/bash, but n=
o providers found in RDEPENDS_testing-firmware? [file-rdeps]
> ERROR: testing-firmware-0.1-r0 do_package_qa: QA run found fatal errors. =
Please consider fixing them.
> ERROR: Logfile of failure stored in: /Yocto_sdk/yocto_sdk/tmp/work/aarch6=
4-poky-linux/testing-firmware/0.1-r0/temp/log.do_package_qa.22996
> ERROR: Task (/Yocto_sdk/yocto_sdk/meta-blaze/recipes-example/testing-firm=
ware/testing-firmware_0.1.bb:do_package_qa) failed with exit code '1'
>
> Let me know what errors I am making and how I can resolve them.
> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61684): https://lists.yoctoproject.org/g/yocto/messag=
e/61684
> Mute This Topic: https://lists.yoctoproject.org/mt/102600630/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

