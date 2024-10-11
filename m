Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F23A5CFC618
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 08:14:48 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web11.6623.1728634484740405553
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Oct 2024 01:14:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QBP//AwB;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-5398e4ae9efso2361816e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 01:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728634482; x=1729239282; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c4GwwD37mFEzkpkgGiau96fiLLnEcCJjuetTUibzSdE=;
        b=QBP//AwB/32O9217V0CQ3QDPhs11TeDyOsJ+HFxwI7Am9vuqXBB+VY76mJUl2ghK1Y
         +wxyUAmgOi25sgInJzD/j5cMhDXPR38biPnx/4zH2nO5bk7mkK8a1C0GBfCcjGYyjo+n
         8Zxn70ALbPPkhelYwNCCJr+eFMGYZskbtmmmjXJeUwmJMQNPFjEmGrBxYlYzNdtNeG4A
         K0woD9XlED6vHZoP8jE7UVeYpMTG4eX3+Kqj2m85vZtb2sHPGv3fn1NetBwL8MoYo/OY
         fKNOc3unf2MI+HzJGR6HM8en7clIU0UyGwarynFxxn8bno4Ktw8PFhDojJT8mGhjfLgp
         wKPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728634482; x=1729239282;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c4GwwD37mFEzkpkgGiau96fiLLnEcCJjuetTUibzSdE=;
        b=prkCynCUhIkN6zmrp3cjm2eHGLR0rR1D+cGznOjVxyEPrGAcXjVUOD+Jf5VwaXeRwr
         bqiHTgdxJ3lviJUMaT4ze5H1aTb9w54AEmFs0LCDu0DEDxBsCX2SHprcz1fSo9/9n5jx
         Cd4auIBsa3PqfQWy0W80qbnQpHERu9Rju9ft5G2nuNgFWNcsjIV3k74jaYoCkOWmU8Qp
         ZE/BGHYFsxFtua5xRwuSltcXcCK7ZWbD9EESq3k7+F4n+Drdv+aBCELzzT/rUX9iC+Fw
         v1nkhvJMRscZw02ZOGRvi0psedx4uwu//4C2XvLoEPUDjrV3cHsSkVQXFfMN6bLHb7HL
         +4BA==
X-Gm-Message-State: AOJu0Yyqj9rlIoK3Kqb7MPEFvaMqBfaxFHB5/7lg3fyE6Vz4BpsETpcU
	mWA7QWN57fSm4ISiWAJjnxAMoDMZj7ANug7L5xxHqinnlSYbh6+VthmV6fmgh6VIjU8BTNyQEp2
	mW453GC05ULfmkZcWyh1gkWX36X1FyA==
X-Google-Smtp-Source: AGHT+IHWKP5GDZ8b8z9jVMixxjSnJ7fNFlCImFk4qauD07mEybrQMnhpmlfglKYqBVzi2NjHKzjYiXwxb+EwGMBVTps=
X-Received: by 2002:a05:6512:31c8:b0:539:9867:eec6 with SMTP id
 2adb3069b0e04-539da58b2acmr898642e87.54.1728634482149; Fri, 11 Oct 2024
 01:14:42 -0700 (PDT)
MIME-Version: 1.0
References: <OALp.1728624711064142758.LruR@lists.yoctoproject.org>
In-Reply-To: <OALp.1728624711064142758.LruR@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 11 Oct 2024 10:14:30 +0200
Message-ID: <CANNYZj-M=WJCA-ypRYpi3svbVb3ciJH2sd1VeEyQP5cXjevXcg@mail.gmail.com>
Subject: Re: [yocto] Currect usage of pkgconfig / find_package(pkgconfig)
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 08:14:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64007

On Fri, 11 Oct 2024 at 07:31, Aleksandar Nikolic via
lists.yoctoproject.org
<aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
> I have recipe A that builds a cmake project which, among other dependenci=
es, also has "find_package(pkgconfig)", so, I inherited the pkgconfig class=
 in the recipe. This cmake project is used by other projects since it build=
s a .so, thus I am also exporting the AConfig.cmake file, which contains th=
e "find_package(pkgconfig)" call. This works well, the project is built and=
 the pkg-config binary is in recipe-sysroot-native (as expected).
>
> Recipe B builds another cmake project, which depends on the cmake project=
 A. Thus, I added recipe A to recipe B's DEPENDS. As expected, this nicely =
copies everything needed from recipe A (the .so file, the headers, the ACon=
fig.cmake and ATargets.cmake, etc.). However, (expectedly?) it does not cop=
y the pkg-config binary along with it, thus building recipe B fails, becaus=
e the "find_package(pkgconfig)" call from the AConfig.cmake file fails.
>
> Is the above usage of PkgConfig correct? I understand the pkg-config bina=
ry from recipe A's recipe-sysroot-native should not be copied to recipe B's=
 recipe-sysroot-native, but still don't understand how this all is supposed=
 to work. Shouldn't all dependencies from recipe A also be available for re=
cipe B?
>
> It goes without saying, when I inherit the pkgconfig class in recipe B, e=
verything works as expected (because the pkg-config binary is found in reci=
pe-sysroot-native of recipe B), but this is also not correct, as recipe B d=
oes not really depend on pkgconfig and shouldn't even know about it.

Build time dependencies on executables aren't transitive like that. If
A needs executable X during its own build, this does not mean that B
(which requires A) would need that same executable.

You either need to split .cmake files to have one for own build of A
(with pkg-config call), and one for consumers of A (without pkg-config
call), or write a bbclass for consumers that contains both DEPENDS on
A and inherit pkgconfig.

Alex

