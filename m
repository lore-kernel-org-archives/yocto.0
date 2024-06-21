Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE5EEC2BA1A
	for <webhook@archiver.kernel.org>; Fri, 21 Jun 2024 14:04:40 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web10.73844.1718978678567524814
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jun 2024 07:04:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TZcopbGg;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5b9776123a3so915420eaf.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Jun 2024 07:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718978678; x=1719583478; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7n8Z+BW1zDc/C3IBgWi8wY146F/hgozaBcr1r2fMxhM=;
        b=TZcopbGgjzisMp43SBIvyZLHtdKvo8pxWnLL8sCck/AkoDUEsA5l7/56SK3A8hl+Hl
         3k9UUAHQ9yfBMbIl6ifeCBKYC+GXQBrxCg1IgVG7sNLxMd2Cgoyp3wkT5V2EszrZJPJv
         byvQMxw3ZnGdFqDMHPd3sLRtl9m4uxgc1i3tKv5Awdbm9zLCBg6EFF6SVHOrUiqV1Ged
         7eDRY4rh57SMAk93d5ddmlAGLTNc5KqJGAsNzbmrIiNJdp8UDJJ1UfSZXam658y9LRLZ
         QcZ56lJan2FaF6+VviHtLcaAaLjZS9iESarZO0VQtrex9jm7/XJcX8Oo7/swnzAM8+3l
         WkRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718978678; x=1719583478;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7n8Z+BW1zDc/C3IBgWi8wY146F/hgozaBcr1r2fMxhM=;
        b=GfRT8lFdG5zEFcFkWl2iRR2jNqwmSBueWqfX8IPJjFVbjTXTUJPQYWxtrgfavIvHOG
         XV1ZOWg2pfgqfE3nv3Wgjc0LvZmNylali/IWtpKxpLiIWUopaRH1NZX6XOejsewlSquG
         +j/L6z2eupOcaO5ZHc1jTVd7GEG/gSk+eb+HZWgvJhYQ7+cBNrRbUrCs7mlFBA2FwYU4
         lKreeWXwVmnOUANW3gBpqlY+koGXM6AMVET0h/hsNPm2RRvSLPM/Y+fEy9vZO1fxlt0N
         oZuHDInSC0jb9JIbDbwMIzF5fQA8uTDlYDYeltQb1rZKVBmfgxY6e/omXmwG+CodGNrC
         p6hw==
X-Gm-Message-State: AOJu0YySpBIMK6ZF54LExIDVQi3O9AUyDva6bHbiQqkpolUjjFUpD1BA
	y5FvUCY1hd27BP4BDky405wfh4OX45hp1UJjUVTZjBtzuwHwAcu1Cf35capYln1aIooEL1ZR9wP
	NozORfrjVdG4AXY3VLZrSaS82wX8T7ZG6
X-Google-Smtp-Source: AGHT+IGXzgUf2qQHk9dySvRAwPYpwBa6jNIuTuLxyxAPxPewn407jqIcRDZ7HY04KxWwZk+0XDA+qb1i5Y0JZ9Bm6DM=
X-Received: by 2002:a05:6870:e388:b0:254:930c:fa08 with SMTP id
 586e51a60fabf-25c948fe0bdmr9166498fac.12.1718978677528; Fri, 21 Jun 2024
 07:04:37 -0700 (PDT)
MIME-Version: 1.0
References: <iLai.1718957021658838098.5r35@lists.yoctoproject.org>
In-Reply-To: <iLai.1718957021658838098.5r35@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 21 Jun 2024 07:04:11 -0700
Message-ID: <CAMKF1so5mNEM5=mt64Pf6LUc+6dC=DXQtBj_4465w_TqDtTuiQ@mail.gmail.com>
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jun 2024 14:04:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63377

On Fri, Jun 21, 2024 at 1:03=E2=80=AFAM emailaddress.ashish via
lists.yoctoproject.org
<emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> Hi Team ,
>
> 1) We wanted to enable openssl-fips on our Yocto Image  ( we are trying o=
n Yocto-5.5 )
>      Do we have any layer to support this or any recipe ?
>      I was looking through recipe supported by open-embedded  but could n=
ot find any recipe for same.
>
> 2) Any suggestion or any inputs on same will be helpful.
>

there is a layer
https://layers.openembedded.org/layerindex/branch/master/layer/meta-openssl=
102-fips/
its older version but could be a good starting point.

> Thanks ,
> Ashish
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63376): https://lists.yoctoproject.org/g/yocto/messag=
e/63376
> Mute This Topic: https://lists.yoctoproject.org/mt/106795437/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

