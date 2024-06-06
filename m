Return-Path: <amolpractise@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B918C27C54
	for <webhook@archiver.kernel.org>; Thu,  6 Jun 2024 16:03:23 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web11.18595.1717689793439980150
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jun 2024 09:03:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PCXdgF6k;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: amolpractise@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-62a08096fe3so1006597b3.0;
        Thu, 06 Jun 2024 09:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717689792; x=1718294592; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M/4SuAGjJQINdSTMUtnhNLjC0kLU4vS4L1bhG3Bha3I=;
        b=PCXdgF6kVj04C/qkKmzFGnss1lHF25JKkYKtdmVioQh0gk6QLPBXjdysRfTaW6YzVv
         cyfMVqw7fwXEzDAkfuH5It9xOSDdCZwyhl3m0arAMlt0FvxwrU57/2fjPOCUCmVg+iy4
         MZAhk9LWcqPLTpmAZ5u2BSFJPiQXWetC2Q1kkKFSwfRR0S8g7EDSHCuF1q/clqJXnZoY
         9GPivxuvJCe04S21sp9UEg+eIAErDKC7WzPhxUFCWQ12u98QR2qA4Yb4XiaMrqLJz1r+
         4FkeFHXVmxL9kFq/m2V1wO+PTtccBQrdBNLbLX1P8Q4vAtxqqlunW2/7TYA2Z44aGBmR
         REpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717689792; x=1718294592;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M/4SuAGjJQINdSTMUtnhNLjC0kLU4vS4L1bhG3Bha3I=;
        b=OSCgd505vHWuKB3dKPhm5oSu2901bO3gJTH46TEtm/6r4GKdjz2PLTpUPBhRdSeKGF
         /ebi/vLVw8DXzB1gDc1WOzYYag1kue+n6Iob+Aj0VyrEVUP1j5LH7ef4XJoHRFOJe5Bq
         gghLIVPW2QfyZGMDXRa7E5aoute61wrEks0LYuWTzWy+4ssCsxz7p6OZ5mRj1fTlPwS7
         kXqyjkckWFq8LXiAC/9A3jxHoOzsJNUL3yAWxyrFexSgnkGBqeLcR9vuEVmfEvVXxOPu
         uZUz8FQ9u5rprEaScx5SNi18H1B1W+Ylbu/ULFYq9UhLbjQAB2tqjC8hVcqwrffqCBRx
         tU9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXVfxZTYzfn+xh4Ra24IBNAAQ3+bENTvPusxPe8WZqqZvLaBzCwn0rltl9WFWhOMlj0oqo78tS/gtXOEg92nbStAqXD5d5yM5xOdql33DQ=
X-Gm-Message-State: AOJu0YyCpsTXrtqAiVja7kNQK2/mTz1GC13lLHkgNfvesZX4h4kmTUmc
	peuo9RZJln/3s3JFMfd/uUz5E9zhGsya5b7+filraQ8EIeHOIs4cWU3B8Cm0GsghNZJ9hJVXnFu
	5aN/u07TFlVOtLRsKRzp4YQUIyADzcg==
X-Google-Smtp-Source: AGHT+IFck9FUM9fX+FGkWkuwmrl2sdJRT2SkmVxOb8vQ/PmDojmO5WBvuvdUU85TXMv4DV79uurUT6pUaeAyEw9jmPM=
X-Received: by 2002:a05:6902:2190:b0:dfa:705c:6e46 with SMTP id
 3f1490d57ef6-dfaca9b33eemr5813138276.1.1717689791388; Thu, 06 Jun 2024
 09:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <17D51E6437DB5314.21428@lists.yoctoproject.org>
In-Reply-To: <17D51E6437DB5314.21428@lists.yoctoproject.org>
From: Amol Practise <amolpractise@gmail.com>
Date: Thu, 6 Jun 2024 21:32:59 +0530
Message-ID: <CAAkkBwNBtJGY_c8dgjCn2n4ccKu7uHMk8AbHQAV3WbfWea2N3w@mail.gmail.com>
Subject: Re: [yocto] am437x do_rootfs error
To: yocto@lists.yoctoproject.org, amolpractise@gmail.com, 
	meta-ti@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d9a379061a3ad13e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jun 2024 16:03:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63287

--000000000000d9a379061a3ad13e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

Any help would be appreciated on below issue.

On Sun, Jun 2, 2024 at 12:40=E2=80=AFPM Amol Practise via lists.yoctoprojec=
t.org
<amolpractise=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi all,
>
> I am getting below error while i am trying to build westom image for
> am436xgp board, can anyone help me in this regard?
>
>
> bitbake core-image-weston
> Loading cache: 100% |############################################| Time:
> 0:00:00
> Loaded 2004 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION           =3D "2.8.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
> MACHINE              =3D "am437x-evm"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "5.0.1"
> TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard"
> TARGET_FPU           =3D "hard"
> meta
> meta-poky
> meta-yocto-bsp       =3D
> "my-scarthgap:68f9a4b73d17839e0ec1f12a31fc1d42331cc42f"
> meta-arm-toolchain
> meta-arm             =3D "master:6877a1c2bdd3cd275af2be3fa26c2e0be1da5b32=
"
> meta-ti-bsp          =3D "master:0584bef40f3806613d0d2c3ff0c990705cba3a5b=
"
>
> Sstate summary: Wanted 389 Local 386 Mirrors 0 Missed 3 Current 3728 (99%
> match, 99% complete)
> Initialising tasks: 100% |#######################################| Time:
> 0:00:09
> NOTE: Executing Tasks
> ERROR: core-image-weston-1.0-r0 do_rootfs: Postinstall scriptlets of
> ['ti-sgx-ddk-um'] have failed. If the intention is to defer them to first
> boot,
> then please place them into pkg_postinst_ontarget:${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in
> /home/amol/git_repos/poky/build_am437xgp/tmp/work/am437x_evm-poky-linux-g=
nueabi/core-image-weston/1.0/temp/log.do_rootfs.
> ERROR: Logfile of failure stored in:
> /home/amol/git_repos/poky/build_am437xgp/tmp/work/am437x_evm-poky-linux-g=
nueabi/core-image-weston/1.0/temp/log.do_rootfs.4596
> ERROR: Task
> (/home/amol/git_repos/poky/meta/recipes-graphics/images/core-image-weston=
.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 8487 tasks of which 8486 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /home/amol/git_repos/poky/meta/recipes-graphics/images/core-image-weston.=
bb:
> do_rootfs
> Summary: There was 1 ERROR message, returning a non-zero exit code.
>
>
> Thank you.
> Amol Palshetkar
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63254):
> https://lists.yoctoproject.org/g/yocto/message/63254
> Mute This Topic: https://lists.yoctoproject.org/mt/106440339/8370142
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> amolpractise@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d9a379061a3ad13e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Team,</div><div><br></div><div>An=
y help would be appreciated on below issue.<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 2, 2024 =
at 12:40=E2=80=AFPM Amol Practise via <a href=3D"http://lists.yoctoproject.=
org">lists.yoctoproject.org</a> &lt;amolpractise=3D<a href=3D"mailto:gmail.=
com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
"><div>Hi all,</div><div><br></div><div>I am getting below error while i am=
 trying to build westom image for am436xgp board, can anyone help me in thi=
s regard?<br></div><div><br></div><div><br></div><div>bitbake core-image-we=
ston<br>Loading cache: 100% |############################################| =
Time: 0:00:00<br>Loaded 2004 entries from dependency cache.<br>NOTE: Resolv=
ing any missing task queue dependencies<br><br>Build Configuration:<br>BB_V=
ERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;2.8.0&quot;<br>BUILD_SY=
S =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>=
NATIVELSBSTRING =C2=A0 =C2=A0 =C2=A0=3D &quot;universal&quot;<br>TARGET_SYS=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<=
br>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;am437x=
-evm&quot;<br>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &=
quot;poky&quot;<br>DISTRO_VERSION =C2=A0 =C2=A0 =C2=A0 =3D &quot;5.0.1&quot=
;<br>TUNE_FEATURES =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7a vfp thum=
b neon callconvention-hard&quot;<br>TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;hard&quot;<br>meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 <br>meta-poky =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<b=
r>meta-yocto-bsp =C2=A0 =C2=A0 =C2=A0 =3D &quot;my-scarthgap:68f9a4b73d1783=
9e0ec1f12a31fc1d42331cc42f&quot;<br>meta-arm-toolchain =C2=A0 <br>meta-arm =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:6877a1c2bdd3cd27=
5af2be3fa26c2e0be1da5b32&quot;<br>meta-ti-bsp =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;master:0584bef40f3806613d0d2c3ff0c990705cba3a5b&quot;<br><b=
r>Sstate summary: Wanted 389 Local 386 Mirrors 0 Missed 3 Current 3728 (99%=
 match, 99% complete)<br>Initialising tasks: 100% |########################=
###############| Time: 0:00:09<br>NOTE: Executing Tasks<br>ERROR: core-imag=
e-weston-1.0-r0 do_rootfs: Postinstall scriptlets of [&#39;ti-sgx-ddk-um&#3=
9;] have failed. If the intention is to defer them to first boot,<br>then p=
lease place them into pkg_postinst_ontarget:${PN} ().<br>Deferring to first=
 boot via &#39;exit 1&#39; is no longer supported.<br>Details of the failur=
e are in /home/amol/git_repos/poky/build_am437xgp/tmp/work/am437x_evm-poky-=
linux-gnueabi/core-image-weston/1.0/temp/log.do_rootfs.<br>ERROR: Logfile o=
f failure stored in: /home/amol/git_repos/poky/build_am437xgp/tmp/work/am43=
7x_evm-poky-linux-gnueabi/core-image-weston/1.0/temp/log.do_rootfs.4596<br>=
ERROR: Task (/home/amol/git_repos/poky/meta/recipes-graphics/images/core-im=
age-weston.bb:do_rootfs) failed with exit code &#39;1&#39;<br>NOTE: Tasks S=
ummary: Attempted 8487 tasks of which 8486 didn&#39;t need to be rerun and =
1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /home/amol/git_repos/pok=
y/meta/recipes-graphics/images/core-image-weston.bb:do_rootfs<br>Summary: T=
here was 1 ERROR message, returning a non-zero exit code.</div><div><br></d=
iv><div><br></div><div>Thank you.</div><div>Amol Palshetkar<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63254): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63254" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63254</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106440339/837=
0142" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106440339/8370142</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:amolpractise@gmail.com" target=3D"_blank">amolpr=
actise@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000d9a379061a3ad13e--

