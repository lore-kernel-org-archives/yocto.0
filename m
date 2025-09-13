Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FF8CAC58E
	for <webhook@archiver.kernel.org>; Sat, 13 Sep 2025 04:29:23 +0000 (UTC)
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com [74.125.224.51])
 by mx.groups.io with SMTP id smtpd.web11.1299.1757737760035917357
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Sep 2025 21:29:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HZmIhJrK;
 spf=pass (domain: gmail.com, ip: 74.125.224.51, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f51.google.com with SMTP id 956f58d0204a3-62bbc95b4dfso98824d50.2
        for <yocto@lists.yoctoproject.org>; Fri, 12 Sep 2025 21:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757737759; x=1758342559; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pUldq1A2pg2MaSLnDRd3hz90PuyRwQvGqrr6JmtKNJ4=;
        b=HZmIhJrKIB5KrjQSG7gCIMeWuaL/JrgcWixCEJ6DvLiA2SZXcs4aDSc55bhqgMFFNq
         PcNWIrApeZepLHaWA8wMoFdeyy8A71T+7VqMxMRK7fJvPF/tebu6TPmFpUF+V8Hh3Lb7
         Pftk51oJqKKrh0DtzXx80adxNlAlfwwbNUy243NNpHMZJeb17wNIumQaLmixV/nWVozp
         pecohouHdkY0tnW0woVIVhDEdMDeJZKNkJ6cw3yYbN8uGGN3thf9HJy/1D4Lj6agR/zN
         LeJD8Q/XlsKyT01NUaRQwi0EdW/JqgUg1wPpkr67cHZ/szd4x0uJ1OOZPRyf8On+Udjq
         l1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757737759; x=1758342559;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUldq1A2pg2MaSLnDRd3hz90PuyRwQvGqrr6JmtKNJ4=;
        b=PxNGmMjsHVCnlOOj9AnO3pSCJjXPB0Y8tvWy6QEOgDKf6Zc5bTeDieYiK1urReUSPK
         c7my5bPIqDeGtUJUUu5J5At+sPjaNTEfUi7BKfAcNkkzANrvqulretYJQMt9PC2dpruj
         EHF+Dht8Ql1YGnb72B2ksMhbSwDvQDbjwhin68zfy/qGC3Y1fmXSAKrlat5nGqsyqIli
         LouMdSiKQMQBBo5mx1YBGv2OKAG1DL7ey/GTCYBwsnmvrXXzmVukhOK1PQ6Y8vOPZQZ1
         GK5DUjMWsOIe6mFfd/HSo7DaUickmzF0QSXlLeRHAFmvDhXWoqiuhAalF8Al4JVke4d3
         u03A==
X-Gm-Message-State: AOJu0YzhXiQKVv7wUzQj3QpWJOwSkpbocfMm4AkHaUXQbAZasKa2Tjr6
	9rdV0jrR+hNt4IplU4Dre7SebPLH2WyZ0HnX0hvnrcvlMyK1Yb0N/8em1Gcxjj2Sxm2ocABW1ih
	lBqzgjGL+zjvBD94AWAFakp5ke49bGs5YrNvn
X-Gm-Gg: ASbGnct5KLdGRJCd8NpQoWt21wTJ8Wlj7OT5TepoW5EsGtl+rAUS8aXN4Q+MvxtKJuE
	SsCYB+KxOMYvQz49rRTkqCkzKWVR49dNmRCVWiO78gk414m+JygYfPGxkzXp7/UI901cyo5Yh6H
	cppEBq+16cvY+Xl2n0BeJR8FFTJ2BeLCnuDhjgPLK2uJSM52fbE2G5np8iQ3wzrhxPb+iK/aQfz
	cJA5VeGwgUQrQZCUp6AzF3FJLb5GYI/6X9U3RE05MSdiUrEPRSwtAS81sGt87ISy4cYPNy7kU6W
	BtpnCr5KpZYzDO95tszPCeVDc10deNi0a7ktTKhC4wFMHYlf+lqpGcC5MIW0HfQtJ7oV
X-Google-Smtp-Source: AGHT+IGNeH0NNKDYnlSLxu7PMNiM6yASUOWVkfqux0ih3rtMpJVJRuY4brMgShupdE1JhDtW8Rc7zz7l/8k3YZZD63Q=
X-Received: by 2002:a05:690e:429a:10b0:622:4818:ce38 with SMTP id
 956f58d0204a3-627266beb80mr4318318d50.37.1757737758660; Fri, 12 Sep 2025
 21:29:18 -0700 (PDT)
MIME-Version: 1.0
References: <LJfP.1757735839241326130.SYL3@lists.yoctoproject.org> <17219.1757735929804160997@lists.yoctoproject.org>
In-Reply-To: <17219.1757735929804160997@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 12 Sep 2025 21:28:52 -0700
X-Gm-Features: Ac12FXwmROlXn_UzHuhgJTQewsEd5d9bTOBnC58ZyuoynRdLbc7Hq4gA5F24PBE
Message-ID: <CAMKF1sq1YXOkFd=OQEuaUp8qt4GMYaRDuxqWp8Qr+My+Gu57qw@mail.gmail.com>
Subject: Re: [yocto] do_package error after building meta-tensorflow and
 libcamera-apps does not detect tensorflow-lite
To: yocto@lists.yoctoproject.org, ashish.shrikhande@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Sep 2025 04:29:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65831

There are cp commands in do_install() task I think it could be causing
the ownership clash. Change them to preserve ownership or use install
cmd to install them
might help fixing this.

On Fri, Sep 12, 2025 at 9:02=E2=80=AFPM ashish shrikhande6 via
lists.yoctoproject.org
<ashish.shrikhande=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> I have attached a detailed build log
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65830): https://lists.yoctoproject.org/g/yocto/messag=
e/65830
> Mute This Topic: https://lists.yoctoproject.org/mt/115218449/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

