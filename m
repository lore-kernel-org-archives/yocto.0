Return-Path: <dbeal@cardinalpeak.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73036C433F5
	for <webhook@archiver.kernel.org>; Sun, 30 Jan 2022 21:01:44 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.23902.1643576503510041042
 for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jan 2022 13:01:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cardinalpeak.com header.s=google header.b=HRz5lvdU;
 spf=pass (domain: cardinalpeak.com, ip: 209.85.214.177,
 mailfrom: dbeal@cardinalpeak.com)
Received: by mail-pl1-f177.google.com with SMTP id c3so10780541pls.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 30 Jan 2022 13:01:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cardinalpeak.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=c6BTIvpC95Zg5MNYqGbfnaYyeSllcnBuTZiE6apytrQ=;
        b=HRz5lvdUVXiQAGt+Y8hh2G7afZijmmgZwL1XtAfvQ3edl4Oq7WujV8uPNaCiXdGB7n
         xCoUO0EbcuZ71meiB+z++Cyb+jVvLaLYeHp5tnWowGpZHBpamnWvM6OFI29rEPQzbQGm
         tRS+b8dYpTAhyG/fkwuzC3P1pyfey8WU0KLocu9ktppK3VRlsJ4qNs4PHX7lZo9Lsvha
         +GC9RK7a742aNXBoj0T/W+Oka5yVYZk7HPAElktLIHB8/567C6Vo3bs5tHyPVX/xmbkE
         V8+9DVWvNsCIq8kwu1nN98a5nGvpXBD/66TB/0HhF/4VfFB459iLrV9/PQExcbATnMWn
         DUAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=c6BTIvpC95Zg5MNYqGbfnaYyeSllcnBuTZiE6apytrQ=;
        b=JzMk1ZPP0bSlL6XDZFVQcuqHb71P/cz3snh8QCczXnSbpKvZj28stkzRHIL14C9psf
         nJ487uvgWDOjLjy83PV5++ag12ZAYMSvfzcZDDq5a6rj4pt7YqXdvigT77GFfhwpuxiH
         AeX0aa6rIstoTA+aimdfV4HarEFT1As3ugd5W+zsk6y5iHvLM3Hs2q/Pxhok9MFo4ZPz
         zutbyxpwoJfz6EowODJMSqk+0VMYMOFW9D8p6tBVl+g/C21/bdKpyQa76OniJWJlJWhT
         hBRYV/xdARwoVWbKHMmC74Z/I7azxAVH+gB56Or8hBr2bgspdbY532A3nnWvggMOBqXw
         3P1g==
X-Gm-Message-State: AOAM531TNsMMUG4+NRgATfMD+cKrAJoIHFZFEaQhSNT5JNFQ41yuaPke
	Cz1WMQth6nnUCdoadRXGCrvzvEhkGHPC6klwp5iAfO19Rso=
X-Google-Smtp-Source: 
 ABdhPJzPdq5w23LH1JhMa0CW3MKjjpNH2wpNnet3aNOl7s4AHFEjQt8QoJ1dqvH/Ss9zhTsxRX0J/ywR/8viAlWWiGQ=
X-Received: by 2002:a17:90b:17ca:: with SMTP id
 me10mr12025614pjb.189.1643576502475;
 Sun, 30 Jan 2022 13:01:42 -0800 (PST)
MIME-Version: 1.0
From: Dave Beal <dbeal@cardinalpeak.com>
Date: Sun, 30 Jan 2022 14:01:26 -0700
Message-ID: 
 <CAHHBb0ePAqBWKP9eH_Ueo=TmNKti4RZOoaeLN6wvxTV67veVtA@mail.gmail.com>
Subject: How to prevent auto start of matchbox-terminal at boot?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009772f505d6d2f92e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 30 Jan 2022 21:01:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56023

--0000000000009772f505d6d2f92e
Content-Type: text/plain; charset="UTF-8"

Hello Yocto Community -

I am using Yocto to build a core-image-minimal image for Intel hardware.
When the system boots, it automatically starts a matchbox-terminal as
root.  This is a huge security hole for this embedded system product,
because anyone who plugs in a keyboard and monitor has access to this
terminal.  I've spent about two days trying to figure out how to start X
without this terminal appearing.  I assume there's a config file somewhere
indicating that this terminal should start automatically, but I haven't
been able to find it.  Any suggestions?  Thanks!

= Dave Beal
   Cardinal Peak, LLC
   Colorado, USA

--0000000000009772f505d6d2f92e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Yocto Community -<div><br></div><div>I am using Yoct=
o to build a core-image-minimal image for Intel hardware.=C2=A0 When the sy=
stem boots, it automatically starts a matchbox-terminal as root.=C2=A0 This=
 is a huge security hole for this embedded=C2=A0system product, because any=
one who plugs=C2=A0in a keyboard and monitor has access to this terminal.=
=C2=A0 I&#39;ve spent about two days trying to figure out how to start X wi=
thout this terminal appearing.=C2=A0 I assume there&#39;s a config file som=
ewhere indicating that this terminal should start automatically, but I have=
n&#39;t been able to find it.=C2=A0 Any suggestions?=C2=A0 Thanks!</div><di=
v><br></div><div>=3D Dave Beal</div><div>=C2=A0 =C2=A0Cardinal Peak, LLC</d=
iv><div>=C2=A0 =C2=A0Colorado, USA</div></div>

--0000000000009772f505d6d2f92e--

