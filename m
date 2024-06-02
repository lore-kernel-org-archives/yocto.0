Return-Path: <amolpractise@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D3C8C25B74
	for <webhook@archiver.kernel.org>; Sun,  2 Jun 2024 07:10:58 +0000 (UTC)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
 by mx.groups.io with SMTP id smtpd.web11.54454.1717312248513288568
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jun 2024 00:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VPoY1ZlP;
 spf=pass (domain: gmail.com, ip: 209.85.219.177, mailfrom: amolpractise@gmail.com)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-df771cae64bso461762276.3
        for <yocto@lists.yoctoproject.org>; Sun, 02 Jun 2024 00:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717312247; x=1717917047; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4nt6alkfSbiKUXjD4DaDmj0GduvBu3OiNfUTySL9xQE=;
        b=VPoY1ZlP26UVJ0zESUD2hNbcNYoAqUHJGr2dkaE1nSGFEjnBVZnZm9k7k5noxZ9seG
         bpBwf7Do6ly59w/ybcwCMxlpE1E1bgVM4nvNweScdtoF7kEAf3MSl+6zlqlzQPOfhd0a
         8QFvF9mx882vClBjVijyMhNL+ux0yQTUtlqsQOXf1vsD8JZLfzfxPgB/teSEBRVcM1w5
         SbcK1ts9nVhxLJampjJjgPhSZKfUsGHsPV7EQPDvIRVsfuUJHLEhuQyiKvqPl+DkzJcN
         mXg9yxFmRm/HZe2mRVY6qc+gxvGVku6ZqIfL3hNRFToTsOFVghgujWAIJYV5TkukzNFw
         ABvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717312247; x=1717917047;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4nt6alkfSbiKUXjD4DaDmj0GduvBu3OiNfUTySL9xQE=;
        b=nl9HGoQMOIa1QN+lSzpJSsWeyEUkEmdBrOY+KHa4YpVm6BVai36mNBybtTn/KkwaYN
         0Wnd9M9VFUnltTivQJj9oJb5pAaY0Io9WOIb3tH4VTm2WFYXtlYSlp0qxwLR3B8Qpk8a
         TKdzbObXUVVogqnAjhK7IXIUnHlYDOZOFime5ENRAUD6c3qkyOn1tYp+ft4U/kqC2OG7
         wmPtUb//tQD02UiA88FGfirfNbfgYck09dWlYhQ8WOmQmdKKx5W05v1unGBJK6I9nAXe
         Ay/5eLq3TKMjE78SSJLqXDQLE29YNsbu3RCvjrwUw0qssmDCHFcrZv4NzUFjGx6CPUP+
         DkUA==
X-Gm-Message-State: AOJu0YxlNTn5648W69GZdSfTUt45K5Tig1kNiTbaEQIdP5fbDcGi5SBu
	9WfIVi1LQI5ruOmirJmxfVXsLRZr5n8UGH3ClIUBtAen1S+naoEwGkPBB1PdVBIO1OEIQt6ovsn
	16eM58LpuFn8PWRB2wTu1Aufv5dqH6bBm
X-Google-Smtp-Source: AGHT+IFKcoiG4JtyGDlEJp32NWLK23AtV+Q9zFsGCgR1CTbhLzbWRVcQqgWSCl/mrSL/zJtcMAxGitIxvNfHWpmxC6o=
X-Received: by 2002:a05:6902:1684:b0:df7:737e:9d87 with SMTP id
 3f1490d57ef6-dfa7404e767mr4484608276.6.1717312246655; Sun, 02 Jun 2024
 00:10:46 -0700 (PDT)
MIME-Version: 1.0
From: Amol Practise <amolpractise@gmail.com>
Date: Sun, 2 Jun 2024 12:40:35 +0530
Message-ID: <CAAkkBwMi7gywEvVawY75j0KS1tUzgz5C-6zLf74s+fpCWdAtAg@mail.gmail.com>
Subject: am437x do_rootfs error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006e30f50619e2eae7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jun 2024 07:10:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63254

--0000000000006e30f50619e2eae7
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am getting below error while i am trying to build westom image for
am436xgp board, can anyone help me in this regard?


bitbake core-image-weston
Loading cache: 100% |############################################| Time:
0:00:00
Loaded 2004 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "2.8.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "arm-poky-linux-gnueabi"
MACHINE              = "am437x-evm"
DISTRO               = "poky"
DISTRO_VERSION       = "5.0.1"
TUNE_FEATURES        = "arm armv7a vfp thumb neon callconvention-hard"
TARGET_FPU           = "hard"
meta
meta-poky
meta-yocto-bsp       =
"my-scarthgap:68f9a4b73d17839e0ec1f12a31fc1d42331cc42f"
meta-arm-toolchain
meta-arm             = "master:6877a1c2bdd3cd275af2be3fa26c2e0be1da5b32"
meta-ti-bsp          = "master:0584bef40f3806613d0d2c3ff0c990705cba3a5b"

Sstate summary: Wanted 389 Local 386 Mirrors 0 Missed 3 Current 3728 (99%
match, 99% complete)
Initialising tasks: 100% |#######################################| Time:
0:00:09
NOTE: Executing Tasks
ERROR: core-image-weston-1.0-r0 do_rootfs: Postinstall scriptlets of
['ti-sgx-ddk-um'] have failed. If the intention is to defer them to first
boot,
then please place them into pkg_postinst_ontarget:${PN} ().
Deferring to first boot via 'exit 1' is no longer supported.
Details of the failure are in
/home/amol/git_repos/poky/build_am437xgp/tmp/work/am437x_evm-poky-linux-gnueabi/core-image-weston/1.0/temp/log.do_rootfs.
ERROR: Logfile of failure stored in:
/home/amol/git_repos/poky/build_am437xgp/tmp/work/am437x_evm-poky-linux-gnueabi/core-image-weston/1.0/temp/log.do_rootfs.4596
ERROR: Task
(/home/amol/git_repos/poky/meta/recipes-graphics/images/core-image-weston.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 8487 tasks of which 8486 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/home/amol/git_repos/poky/meta/recipes-graphics/images/core-image-weston.bb:
do_rootfs
Summary: There was 1 ERROR message, returning a non-zero exit code.


Thank you.
Amol Palshetkar

--0000000000006e30f50619e2eae7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am getting below e=
rror while i am trying to build westom image for am436xgp board, can anyone=
 help me in this regard?<br></div><div><br></div><div><br></div><div>bitbak=
e core-image-weston<br>Loading cache: 100% |###############################=
#############| Time: 0:00:00<br>Loaded 2004 entries from dependency cache.<=
br>NOTE: Resolving any missing task queue dependencies<br><br>Build Configu=
ration:<br>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.8.0&qu=
ot;<br>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-=
linux&quot;<br>NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;universal&quot=
;<br>TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux=
-gnueabi&quot;<br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D &quot;am437x-evm&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D =
&quot;5.0.1&quot;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm=
 armv7a vfp thumb neon callconvention-hard&quot;<br>TARGET_FPU =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;my-scart=
hgap:68f9a4b73d17839e0ec1f12a31fc1d42331cc42f&quot;<br>meta-arm-toolchain =
=C2=A0 <br>meta-arm =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;mas=
ter:6877a1c2bdd3cd275af2be3fa26c2e0be1da5b32&quot;<br>meta-ti-bsp =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;master:0584bef40f3806613d0d2c3ff0c9907=
05cba3a5b&quot;<br><br>Sstate summary: Wanted 389 Local 386 Mirrors 0 Misse=
d 3 Current 3728 (99% match, 99% complete)<br>Initialising tasks: 100% |###=
####################################| Time: 0:00:09<br>NOTE: Executing Task=
s<br>ERROR: core-image-weston-1.0-r0 do_rootfs: Postinstall scriptlets of [=
&#39;ti-sgx-ddk-um&#39;] have failed. If the intention is to defer them to =
first boot,<br>then please place them into pkg_postinst_ontarget:${PN} ().<=
br>Deferring to first boot via &#39;exit 1&#39; is no longer supported.<br>=
Details of the failure are in /home/amol/git_repos/poky/build_am437xgp/tmp/=
work/am437x_evm-poky-linux-gnueabi/core-image-weston/1.0/temp/log.do_rootfs=
.<br>ERROR: Logfile of failure stored in: /home/amol/git_repos/poky/build_a=
m437xgp/tmp/work/am437x_evm-poky-linux-gnueabi/core-image-weston/1.0/temp/l=
og.do_rootfs.4596<br>ERROR: Task (/home/amol/git_repos/poky/meta/recipes-gr=
aphics/images/core-image-weston.bb:do_rootfs) failed with exit code &#39;1&=
#39;<br>NOTE: Tasks Summary: Attempted 8487 tasks of which 8486 didn&#39;t =
need to be rerun and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /ho=
me/amol/git_repos/poky/meta/recipes-graphics/images/core-image-weston.bb:do=
_rootfs<br>Summary: There was 1 ERROR message, returning a non-zero exit co=
de.</div><div><br></div><div><br></div><div>Thank you.</div><div>Amol Palsh=
etkar<br></div></div>

--0000000000006e30f50619e2eae7--

