Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1C16C2BBCA
	for <webhook@archiver.kernel.org>; Fri, 28 Jun 2024 09:01:14 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.13102.1719565274489766536
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jun 2024 02:01:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XaObIJA/;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so3287241fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 02:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719565273; x=1720170073; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ScF+j1yDH3omKvXzyjuIdhBkm1cSRhPW9Lu5PYB9dF4=;
        b=XaObIJA/SkUKa/DyvpPJnPOA9TgbLR2e2ebG80c/FgY42wWyLLoNB1JEqFedoXwA6I
         Eolzc0hEsr5mdVvGyVlgpA4mIcJbYZ7mPQbskjhcJvqHLlQSg3xDJl+EVVmz68/iE+Gr
         di0aCtwzVQ7WOFv+E+0oVZTOlP6+ihC0A5L005ctXr5Upk/nv3xZgQ6y8aIueY1k21r/
         cl8UfNM8pkxx9j0uy7vc2p7JWwG4WmdbatrtfnVG6s02iwgPsfmyI2Fpjgrlnn7Sl4M9
         YhshGbot17nL00TgakYs+HXM98oGb2DsYXJ/24MRBt/Mhgr1SKWwd/4yc3kt845j/vaZ
         K4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719565273; x=1720170073;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ScF+j1yDH3omKvXzyjuIdhBkm1cSRhPW9Lu5PYB9dF4=;
        b=XJQWUyj1FMi3sPwvTYBA+ZgBTeZwLR3G0favk75+3LaJp7kiMfI/YPlpRZ6O1ydsEB
         Kr1Wyr1sW//nc8AMimG8caEUGcCH2wL3pupDxvRSkH0fSfXG1vn8b+LGWGkkhHAWnIu+
         CL0c43arVFuAUlME3E9DTPrHBkum1szyKfXgknQ2rwxpx4sy3vsD27Dy0x9WOdwmRlpw
         GelqEq7nGxNVb19W1z5vPElJzn36/bEHuUpzgjBAPXeFttv8L91pLHWa7adIr72ii4qJ
         cA8mvOUXnbmcKBGqDp1GNN3Aqe9p3uF7aoLg7j0SU3lLjtMiMpguMAyfyvYMDaq7ReOi
         ED2w==
X-Gm-Message-State: AOJu0YyqoQkO8a7RjIf94IpQI9qeYF3IG1Vlg4nLlsDnj5yVIM1xyx7r
	Eot7txq43QsNBmwILR4dbApWULt45QRUVDGWywVdeHJXX1gM6sLCzyH21b2GXsE/Z2DiwcW+I2s
	k4iJ5SpObaDEz6cHH5WG1w3ofsgX/0g==
X-Google-Smtp-Source: AGHT+IFvoHfFFmv4I9n9r8LtsnPkSd6oNRQPUt2iILY/ntFmXf+GrkMMlBUZ136D8xoeu02FywvbV0qzWcyL5tZoaKY=
X-Received: by 2002:a2e:9e82:0:b0:2ec:52da:606e with SMTP id
 38308e7fff4ca-2ec579c7702mr101052481fa.40.1719565272417; Fri, 28 Jun 2024
 02:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <CANDCFSz5o=DgqF2njtQyo8tr28urtPb5PGW6VhE=1sTNz=zLpQ@mail.gmail.com>
In-Reply-To: <CANDCFSz5o=DgqF2njtQyo8tr28urtPb5PGW6VhE=1sTNz=zLpQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 28 Jun 2024 11:01:01 +0200
Message-ID: <CANNYZj8fF+waMRNqdkftQ7z623CMT2CVCaaEGGt9LotTduhgwA@mail.gmail.com>
Subject: Re: [yocto] Issue with Integrating NPM Package Dependencies in Yocto
To: yocto@lists.yoctoproject.org, dchvs11@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jun 2024 09:01:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63408

I would suggest to start with poky master and one of its standard
targets. If the issue occurs there as well, it's easier for everyone
to help, and if not, you can try to bisect where it broke.

Alex

On Fri, 28 Jun 2024 at 07:08, Daniel via lists.yoctoproject.org
<dchvs11=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hello, everyone
>
> I am currently working on a project where I need to integrate NPM package=
 dependencies using Yocto Project's BitBake fetcher utilities. I am parsing=
 "package-lock.json" files and incorporating this data into the fetcher imp=
lementation. The fetcher I'm using is the "npmsw", however, I am encounteri=
ng some challenges with this fetcher being capable of fetching the NPM depe=
ndencies from the "package-lock.json".
>
> Here are the details of my setup:
>
> * I'm working with the Kirkstone branch
> * SRC_URI looks like this:
>
> SRC_URI =3D "...\
> npmsw://${THISDIR}/package-lock.json;dev=3D0;destsuffix=3Dgit/node_module=
s \
> "
>
> * I'm testing with the following package=E2=80=90lock.json file:
>
> {
> "name": "my-project",
> "lockfileVersion": 2,
> "requires": true,
> "packages": {
> "": {
> "name": "my-project",
> "version": "1.0.0",
> "dependencies": {
> "express": "^4.17.1",
> "lodash": "^4.17.21",
> "mongoose": "^6.0.13"
> }
> }
> },
> "dependencies": {
> "@babel/code-frame": {
> "version": "7.10.1",
> "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.=
10.1.tgz",
> "integrity": "sha512-IGhtTmpjGbYzcEDOw7DcQtbQSXcG9ftmAXtWTu9V936vDye4xjje=
kktFAtgZsWpzTj/X01jocB46mTywm/4SZw=3D=3D",
> "dev": true,
> "requires": {
> "@babel/highlight": "^7.10.1"
> }
> }
> }
> }
>
> This is the error I see:
>
> ERROR: test-test-1.0.0-r0 do_fetch: ExpansionError('TUNE_FEATURES:tune-ar=
mv8a-crc', '${TUNE_FEATURES:tune-armv8a} crc', RecursionError('maximum recu=
rsion depth exceeded'))
>
> Apparently, the fetcher gets into an infinite loop. Has anyone faced a si=
milar issue or can provide guidance on how to resolve this?
>
> Thank you for your assistance.
>
> Best regards
> =E2=80=94Daniel
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63406): https://lists.yoctoproject.org/g/yocto/messag=
e/63406
> Mute This Topic: https://lists.yoctoproject.org/mt/106923227/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

