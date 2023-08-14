Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4B5C001B0
	for <webhook@archiver.kernel.org>; Mon, 14 Aug 2023 13:23:03 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web10.107419.1692019380663399839
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Aug 2023 06:23:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=PTxm22TU;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4fe0e34f498so6838452e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 06:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692019379; x=1692624179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sg/scpmSjIWuQTON7vgKx04lzSP9+EqiHPDb6x7uty0=;
        b=PTxm22TUNTSrQOS7jFR1ExTK+E5A8v3pSSvecULw1v/NjbY6lNeoO6vkgM1/uY9IB0
         JxVHdSsEX0eL0nqMCOwm3rT9LeQpu4tApbWsqeHE4YG3JCdLScDXFQHOI2ndk3jws6jV
         oRhS+/J2BmeiX/salFjRlGOz6JQSnNu0C61jkru/FxyulAH341hXib4dsaDAVzLN2L+8
         7IsJjvJdbYz1vwOkVr9279faS0nXA0XTucmJXiX1O05ZYf9XV5n9DwjoOu5zY0xI1iWq
         9iQzo6+b2qcT9d61DmwqVnfRqZyHe5sk6dt0mk2ojVryVJlSyJ+bCJoz7RjQWF6mx0+C
         vWtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692019379; x=1692624179;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sg/scpmSjIWuQTON7vgKx04lzSP9+EqiHPDb6x7uty0=;
        b=mIimq/AlOonIm6XTw7lonIpZuOm4QQasDBoCtcYR5FC9TEWEVC7g5KcZ+5p/95fNtA
         CImaS47W+f5lqL7RWDbNHIu5LxofoGigzK90OCYFfnFK/8n8pe31sF8R4mKzHHOqDwV+
         0DQ1oVgMTUI79lh3qB2Ns5r46PPhDIiDJOMInus7YTI4TTjNErUvcnC8iXp1lXRztf+w
         fnutMzNepesuLRmj2ljOlOo/zcJ9nR8vgY6/3eWFPiwqOS/9KWdlAIbKCGfPkGDS6611
         MroXroaMQJIiz0vumKe2yDNrnFaJZe2jac/qEECrI1H/SRb+BYdSgXiu/kIjWFVxfm12
         KK7A==
X-Gm-Message-State: AOJu0YxSY9ehinlB9lgOCjIdDcVf31SladUtFcWzb6WY7dlYdx9Ghovs
	9Ef5lVXU184QbC2AaqieleZ4WREpwdej6ljOp2Q=
X-Google-Smtp-Source: AGHT+IHY2nxhiRlnslIxeaf7az5nObxEU1bmhvA33FlEb+8fnMIxx9jd++ZuVWWJurXdpl4oq2Kinq7wJQqCoTZcxN4=
X-Received: by 2002:a05:6512:29e:b0:4f9:72a5:2b76 with SMTP id
 j30-20020a056512029e00b004f972a52b76mr6176591lfp.65.1692019378291; Mon, 14
 Aug 2023 06:22:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_0NnuZ604gV+ZXBdXtSxQYbnnkGoukvaAUA+D3=Zo=dw@mail.gmail.com>
 <19617.1692017585524870640@lists.yoctoproject.org>
In-Reply-To: <19617.1692017585524870640@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 14 Aug 2023 15:22:46 +0200
Message-ID: <CANNYZj8dwD0a0o-QFEph=RFN=TfCJZMQzxqKhsB2ZWqOBJE69w@mail.gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
To: msenturk <senturkmurat1999@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 13:23:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60791

This snippet doesn't show what the errors are. I would suggest you set
up a new build directory first and try then. Also make sure that all
layers are indeed checked out to latest mickledore.

Alex

On Mon, 14 Aug 2023 at 14:53, msenturk <senturkmurat1999@gmail.com> wrote:
>
> Thanks for the answers. I switched to mickledore and tried to build but u=
nfortunately received some errors and warnings:
>
> ERROR: Task (/home/stj/poky/meta/recipes-devtools/gcc/gcc_12.3.bb:do_comp=
ile) failed with exit code '1'
> WARNING: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 do_fetc=
h: Failed to fetch URL git://github.com/Xilinx/linux-xlnx.git;protocol=3Dht=
tps;name=3Dmachine;branch=3Dxlnx_rebase_v6.1_LTS, attempting MIRRORS if ava=
ilable
> WARNING: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r=
0 do_fetch: Failed to fetch URL gitsm://gitlab.com/qemu-project/u-boot.git;=
protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;bare=
clone=3D1;nobranch=3D1, attempting MIRRORS if available
> ERROR: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 do_fetch:=
 Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SES=
SION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export SSH_AGENT_PID=
=3D"3557"; export SSH_AUTH_SOCK=3D"/run/user/1002/keyring/ssh"; export PATH=
=3D"/home/stj/poky/build_mickledore/tmp/sysroots-uninative/x86_64-linux/usr=
/bin:/home/stj/poky/scripts:/home/stj/poky/build_mickledore/tmp/work/zedboa=
rd_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+7169=
21b6d7-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-gnueabi:/home/stj/po=
ky/build_mickledore/tmp/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6=
.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/recipe-sysroot/usr/bin/crosssc=
ripts:/home/stj/poky/build_mickledore/tmp/work/zedboard_zynq7-poky-linux-gn=
ueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0/recipe-sysro=
ot-native/usr/sbin:/home/stj/poky/build_mickledore/tmp/work/zedboard_zynq7-=
poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0=
/recipe-sysroot-native/usr/bin:/home/stj/poky/build_mickledore/tmp/work/zed=
board_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitAUTOINC+7=
16921b6d7-r0/recipe-sysroot-native/sbin:/home/stj/poky/build_mickledore/tmp=
/work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+git=
AUTOINC+716921b6d7-r0/recipe-sysroot-native/bin:/home/stj/poky/bitbake/bin:=
/home/stj/poky/build_mickledore/tmp/hosttools"; export HOME=3D"/home/stj"; =
LANG=3DC git -c gc.autoDetach=3Dfalse -c core.pager=3Dcat clone --bare --mi=
rror https://github.com/Xilinx/linux-xlnx.git /home/stj/poky/build_mickledo=
re/downloads/git2/github.com.Xilinx.linux-xlnx.git --progress failed with e=
xit code 128, no output
> ERROR: linux-xlnx-6.1.5-xilinx-v2023.1+gitAUTOINC+716921b6d7-r0 do_fetch:=
 Bitbake Fetcher Error: FetchError('Unable to fetch URL from any source.', =
'git://github.com/Xilinx/linux-xlnx.git;protocol=3Dhttps;name=3Dmachine;bra=
nch=3Dxlnx_rebase_v6.1_LTS')
> ERROR: Logfile of failure stored in: /home/stj/poky/build_mickledore/tmp/=
work/zedboard_zynq7-poky-linux-gnueabi/linux-xlnx/6.1.5-xilinx-v2023.1+gitA=
UTOINC+716921b6d7-r0/temp/log.do_fetch.6793
> ERROR: Task (/home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-kernel/l=
inux/linux-xlnx_2023.1.bb:do_fetch) failed with exit code '1'
> ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 =
do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export=
 DBUS_SESSION_BUS_ADDRESS=3D"unix:path=3D/run/user/1002/bus"; export SSH_AG=
ENT_PID=3D"3557"; export SSH_AUTH_SOCK=3D"/run/user/1002/keyring/ssh"; expo=
rt PATH=3D"/home/stj/poky/scripts/native-intercept:/home/stj/poky/build_mic=
kledore/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/stj/poky/scripts:=
/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xilinx-native/v7=
.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-native/usr/bin/=
x86_64-linux:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xil=
inx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-na=
tive/usr/bin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xil=
inx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-na=
tive/usr/sbin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xi=
linx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-n=
ative/usr/bin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xi=
linx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-n=
ative/sbin:/home/stj/poky/build_mickledore/tmp/work/x86_64-linux/qemu-xilin=
x-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0/recipe-sysroot-nati=
ve/bin:/home/stj/poky/bitbake/bin:/home/stj/poky/build_mickledore/tmp/hostt=
ools"; export HOME=3D"/home/stj"; LANG=3DC git -c gc.autoDetach=3Dfalse -c =
core.pager=3Dcat clone --bare --mirror https://gitlab.com/qemu-project/u-bo=
ot.git /home/stj/poky/build_mickledore/downloads/git2/gitlab.com.qemu-proje=
ct.u-boot.git --progress failed with exit code 128, no output
> ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 =
do_fetch: gitsm: submodule download failed: FetchError Fetcher failure for =
URL: 'gitsm://gitlab.com/qemu-project/u-boot.git;protocol=3Dhttps;name=3Dro=
ms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;bareclone=3D1;nobranch=3D1'. U=
nable to fetch URL from any source.
> WARNING: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r=
0 do_fetch: Failed to fetch URL gitsm://github.com/Xilinx/qemu.git;protocol=
=3Dhttps;branch=3Dxlnx_rel_v2023.1, attempting MIRRORS if available
> ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 =
do_fetch: Fetcher failure for URL: 'gitsm://gitlab.com/qemu-project/u-boot.=
git;protocol=3Dhttps;name=3Droms/u-boot;subpath=3Droms/u-boot;nobranch=3D1;=
bareclone=3D1;nobranch=3D1'. Unable to fetch URL from any source.
> ERROR: qemu-xilinx-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc9f99e-r0 =
do_fetch: Bitbake Fetcher Error: FetchError('Unable to fetch URL from any s=
ource.', 'gitsm://github.com/Xilinx/qemu.git;protocol=3Dhttps;branch=3Dxlnx=
_rel_v2023.1')
> ERROR: Logfile of failure stored in: /home/stj/poky/build_mickledore/tmp/=
work/x86_64-linux/qemu-xilinx-native/v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc=
9f99e-r0/temp/log.do_fetch.6798
> ERROR: Task (/home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-devtools=
/qemu/qemu-xilinx-native_2023.1.bb:do_fetch) failed with exit code '1'
> WARNING: qemu-xilinx-system-native-v7.1.0-xilinx-v2023.1+gitAUTOINC+21adc=
9f99e-r0 do_fetch: Failed to fetch URL gitsm://github.com/openssl/openssl;p=
rotocol=3Dhttps;name=3DCryptoPkg/Library/OpensslLib/openssl;subpath=3DCrypt=
oPkg/Library/OpensslLib/openssl;nobranch=3D1;bareclone=3D1;nobranch=3D1, at=
tempting MIRRORS if available
> NOTE: Tasks Summary: Attempted 2055 tasks of which 2010 didn't need to be=
 rerun and 5 failed.
>
> Summary: 5 tasks failed:
>   /home/stj/poky/meta/recipes-devtools/binutils/binutils_2.40.bb:do_compi=
le
>   /home/stj/poky/meta/recipes-devtools/cmake/cmake-native_3.25.2.bb:do_co=
mpile
>   /home/stj/poky/meta/recipes-devtools/gcc/gcc_12.3.bb:do_compile
>   /home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-kernel/linux/linux-=
xlnx_2023.1.bb:do_fetch
>   /home/stj/poky/meta-xilinx/meta-xilinx-core/recipes-devtools/qemu/qemu-=
xilinx-native_2023.1.bb:do_fetch
> Summary: There were 7 WARNING messages.
> Summary: There were 12 ERROR messages, returning a non-zero exit code.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60790): https://lists.yoctoproject.org/g/yocto/messag=
e/60790
> Mute This Topic: https://lists.yoctoproject.org/mt/100525085/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

