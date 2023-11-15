Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 206B4C07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 07:45:18 +0000 (UTC)
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web10.8310.1700034315453854975
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 23:45:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CUTQOlOy;
 spf=pass (domain: gmail.com, ip: 209.85.210.54, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-6cd09f51fe0so4147010a34.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 23:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700034314; x=1700639114; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vQ5HJ1WiXr27ZK+4O6HHTTpbWBUFvlOUJgRmMvlYpiU=;
        b=CUTQOlOyC+C98cHiVvyZ9lNmZBJYQunXPH1q7piG2wqKcfQ7VgQhduZxLuBYak2xMB
         uuIkXn26YqTZ1K2NLX9ErCNwEf9lq16r4CQbMEI6P5TfXIrg24MR3KhBOhg8KCYCClqX
         tZ+ssAgkZxTqsobs8moUUAfdwq9R/kXr6u23ILNuphJ3k6mhGU3SuQwyXaRbph1WnEBR
         S8u19NhM8B7XgVfU89kudqy9IGNY86Lt1r0E8l6t9kqs5ppnnoSVpCe2LBgOsy82050x
         4s6s4WqOf8lUJkntg89ixQvaMaJgt4Sm6/5JX/P/irziQJwOLHqJ1u6qwvIUv8IJ03O4
         Ys1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700034314; x=1700639114;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vQ5HJ1WiXr27ZK+4O6HHTTpbWBUFvlOUJgRmMvlYpiU=;
        b=Z+s699Ukgy0m6w59N9+e8POXSb9Mjjx6Nclmhs4YGfOplgnR70zbwp1Igjc+ABeuXc
         eA6MR4SF1K2Tx1s9NUbFly+mv2bfQ5PgO6XcCLAh5truf8vjZUFTnb26pJTnhs9sKx8u
         yvy9f2YVJuJcQIL6SLDZZVL/Pyrm3jx5nbmIXzws1+mkxMR3eAJROyyDdV6NGXTs/0DW
         fc/LHa8WfNA9m2XBa8XH+1cRA1Qu9Qgb+CaTG43waf3jt7rYhU6EDqFBrH5xETFzVOEY
         whJYTwCohiXwl5oxG+uRrOR5IqjV53GFJPkuTiusqlWVDL1rNHo29BZZ9fv5w012XOYX
         947Q==
X-Gm-Message-State: AOJu0Yy4kaxEHeBvR3nUD436UcwmO9Fcpw+j6yn50G2xQdcn/f5tvnpS
	6LMUjW+bbZJP5PS94dMYxqNbmU3rsE4G21fMJwE=
X-Google-Smtp-Source: AGHT+IFW18NchhOrjUXag9Nc/VIIMiHQgiaicUnWBXI/QatGawu9Iz4vvm8l4DGuKSGrtT3FiPosmSP/6GSEeZvyZdE=
X-Received: by 2002:a05:6870:b156:b0:1ea:809c:3eb with SMTP id
 a22-20020a056870b15600b001ea809c03ebmr14567406oal.44.1700034314588; Tue, 14
 Nov 2023 23:45:14 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1spXPtHghSQw3iV-a8fNy_N+i01dSjD7mtOWHjNGrfLK-Q@mail.gmail.com>
 <2967.1700033359581845961@lists.yoctoproject.org>
In-Reply-To: <2967.1700033359581845961@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 14 Nov 2023 23:44:48 -0800
Message-ID: <CAMKF1sqv9_Gu_qYO5dPN85oi+X2M14QJaHMdfZc36C7mPNRmxA@mail.gmail.com>
Subject: Re: [yocto] Architecture did not match
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 07:45:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61689

in your recipe, you need to add runtime dependencies. e.g.

RDEPENDS:${PN} +=3D "bash"

or you can ignore the deps if your image has them all in already.
since your package is binary only.
add
INSANE_SKIP:${PN} =3D "file-rdeps"

On Tue, Nov 14, 2023 at 11:29=E2=80=AFPM MOHAMMED HASSAN
<hassanchattarki@gmail.com> wrote:
>
> On Tue, Nov 14, 2023 at 11:17 PM, Khem Raj wrote:
>
> add lib32-testing-firmware in your image instead of testing-firmware
>
> NOTE: lib32-gst-plugin-video-sink: compiling from external source tree /Y=
octo_sdk/yocto_sdk/aml-comp/multimedia/gst-plugin-video-sink
> NOTE: lib32-gst-plugin-aml-v4l2dec: compiling from external source tree /=
Yocto_sdk/yocto_sdk/aml-comp/multimedia/gst-plugin-aml-v4l2dec
> NOTE: u-boot: compiling from external source tree /Yocto_sdk/yocto_sdk/am=
l-comp/uboot
> ERROR: lib32-testing-firmware-0.1-r0 do_package_qa: QA Issue: Architectur=
e did not match (x86-64, expected ARM) on /work/armv7at2hf-neon-pokymllib32=
-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/lib32-testing-f=
irmware/home/root/Edge/node_modules/@serialport/bindings-cpp/prebuilds/linu=
x-x64/node.napi.musl.node
> Architecture did not match (x86-64, expected ARM) on /work/armv7at2hf-neo=
n-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/li=
b32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/p=
rebuilds/linux-x64/node.napi.glibc.node
> Architecture did not match (AArch64, expected ARM) on /work/armv7at2hf-ne=
on-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/l=
ib32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/=
prebuilds/android-arm64/node.napi.armv8.node
> Architecture did not match (AArch64, expected ARM) on /work/armv7at2hf-ne=
on-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/packages-split/l=
ib32-testing-firmware/home/root/Edge/node_modules/@serialport/bindings-cpp/=
prebuilds/linux-arm64/node.napi.armv8.node [arch]
> WARNING: lib32-testing-firmware-0.1-r0 do_package_qa: QA Issue: /home/roo=
t/Edge/install.sh contained in package lib32-testing-firmware requires /bin=
/bash, but no providers found in RDEPENDS_lib32-testing-firmware? [file-rde=
ps]
> ERROR: lib32-testing-firmware-0.1-r0 do_package_qa: QA run found fatal er=
rors. Please consider fixing them.
> ERROR: Logfile of failure stored in: /Yocto_sdk/yocto_sdk/tmp/work/armv7a=
t2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/log.=
do_package_qa.52476
> ERROR: Task (virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-blaze/recip=
es-example/testing-firmware/testing-firmware_0.1.bb:do_package_qa) failed w=
ith exit code '1'
> NOTE: Tasks Summary: Attempted 7801 tasks of which 7737 didn't need to be=
 rerun and 1 failed.
> NOTE: Writing buildhistory
> NOTE: Writing buildhistory took: 1 seconds
>
> Summary: 1 task failed:
>
> Still the same error but now the architecture is shown different.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61687): https://lists.yoctoproject.org/g/yocto/messag=
e/61687
> Unfollow This Topic: https://lists.yoctoproject.org/unft/102600630/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

