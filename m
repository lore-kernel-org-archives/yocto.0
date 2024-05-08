Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60ED4C04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 21:19:12 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web11.518.1715203144564089183
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 May 2024 14:19:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=eELUwWH2;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.173, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-4df456bbf86so91005e0c.1
        for <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 14:19:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715203143; x=1715807943; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m2mRfeEKSAajUQy66D+GX2JGeco+MKCVTg0ScQvfBc8=;
        b=eELUwWH2MDhTC3JDJpLks4n5hhb2Qg9Vw9C9HlmrPcNo+XbpXI0xB/AdSI0xlTUWDf
         DgRWc5ON7YkGZrk5KTyvNzx935hy2h5x+jtO3BsBG1w6Frrg1iYLbviDqEQCFJTnsYlt
         Yqxe+5HJjnX0gg0is5qNKpuk1zzmtP2cDmCyT7zTQL6J5hhODAxFkIVp4Z9UpWbR6maV
         9TvzAI4LaWvmktMsh4SwtBvKhxMO5nRwRMTW8ViwMnbMRe3Ct4WJ3zIYw3vGEGSSAdCo
         B54OCPLFbPuVNqGCfCbqFhAhyI5SURMzkD6V0MKW6VuzFqJKx+IFqs5Ib59Hf5jsA/zH
         q+Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715203143; x=1715807943;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2mRfeEKSAajUQy66D+GX2JGeco+MKCVTg0ScQvfBc8=;
        b=EXFqXZHeqI/Ic69gduufg7ETiOVp/B7/JFgCjctk1ftW5nItXelZcgpgpLLCqxfhj2
         MmIe62Ypq0RCf9dr+maFFQIZFM2cx3YbBbH5Y7kSYqbs2mhPvh8tv1BCteG60YwJBxNl
         zVZKAIKrrGFu+tvq7l7k//vfohpWKlEPJu5yOeCWYHxeM4vTxV1I/CGuWiF/b77uR4Kb
         u9x52SrU0MMrYgCwucqq9AwOaCKgJyXauxvL2n9sN2kDJ3Jlif8GFn5fSGeuWS2CQCxf
         jCKsht322mB1X47SCiVCEU8DFunMfjXaL6JHBqc+9KVmzQu7U+H66FG82BrCcbDj9d8B
         6uww==
X-Gm-Message-State: AOJu0Yxc/P/6kXUpfae/EifCO5qIz+8Ligxdrzkfk4lF3LL16lF2WGLa
	9JEQ8u+ORPCo47X7vc9FIH7xX8qTzxdCH4rMiQ5Tp8Kor+LnasXTPCmYbGVZ7mKEdwqLeAbd7+O
	Fy2AJb1Jxm5Zho22s55Is8lHwpH79SV0zw5gAGA==
X-Google-Smtp-Source: AGHT+IHpiPJc+rMbbeFa0lN8dJfjPSRec/mVobUZ+L4OiU9sz/sa9Af8wk0TwoyrAG6XFJxu864lY6JPZqLynSI9Pi4=
X-Received: by 2002:a05:6122:2a50:b0:4d8:74cb:e3c2 with SMTP id
 71dfb90a1353d-4df692b640amr4018270e0c.9.1715203143610; Wed, 08 May 2024
 14:19:03 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
 <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
 <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com>
 <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com> <CAMKF1sokVhLK2muYkdM==d-OCQ66PDgcc2TcMZeK8pCa0xxbPg@mail.gmail.com>
In-Reply-To: <CAMKF1sokVhLK2muYkdM==d-OCQ66PDgcc2TcMZeK8pCa0xxbPg@mail.gmail.com>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Thu, 9 May 2024 09:18:52 +1200
Message-ID: <CANuMBWG=_pScxQj=xYYc21Ks3DPhK1t+C+U0z2uTbAu2kinT2Q@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000017d1c60617f7da46"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 21:19:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63057

--00000000000017d1c60617f7da46
Content-Type: text/plain; charset="UTF-8"

> > The "whomever" has gone away, and I am on my own!
> >
> > Where do I start resolving a dependency like this?
>
> It's hard to help you with the information you have shared so far.
> Maybe you can describe in detail about your
> setup and what release you are using and machines being targeted etc.
>
>
Forgive me I am in the deep end with not much knowledge.  What I need is
pointers to the sorts of files I should be looking in to diagnose this sort
of problem.  I have been through the documentation and I have built a
custom, fresh, Yocto for another board.  But I am feeling very lost among a
huge number of files, which is natural considering my position (a lack of
knowledge trying to maintain a system built by an expert who has abandoned
me)

I am targeting a Toradex processor on a custom board.

What are the pertinent details  about   my setup?

The system (before a build) has two subdirectories:

* layers: Consists of "meta-*" directories, and "openembedded-core" all
git repositories pinned to particular commits
* meta-mybuild: Consisting of "recipies-*" and a "conf" directories

I expect it is that latter directory my warning is originating from.

Worik

--00000000000017d1c60617f7da46
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">
&gt; The &quot;whomever&quot; has gone away, and I am on my own!<br>
&gt;<br>
&gt; Where do I start resolving a dependency like this?<br>
<br>
It&#39;s hard to help you with the information you have shared so far.<br>
Maybe you can describe in detail about your<br>
setup and what release you are using and machines being targeted etc.<br>
<br></blockquote><div><br></div><div>Forgive me I am in the deep end with n=
ot much knowledge.=C2=A0 What I need is pointers to the sorts of files I sh=
ould be looking in to diagnose this sort of problem.=C2=A0 I have been thro=
ugh the documentation and I have built a custom, fresh, Yocto for another b=
oard.=C2=A0 But I am feeling very lost among a huge number of files, which =
is natural considering my position (a lack of knowledge trying to maintain =
a system built by an expert who has abandoned me)<br></div><div><br></div><=
div>I am targeting a Toradex processor on a custom board.</div><div><br></d=
iv><div>What are the pertinent details=C2=A0 about=C2=A0=C2=A0 my setup?=C2=
=A0 <br></div><div><br></div><div>The system (before a build) has two subdi=
rectories:</div><div><br></div><div>* layers: Consists of &quot;meta-*&quot=
; directories, and &quot;openembedded-core&quot; all=C2=A0 git repositories=
 pinned to particular commits</div><div>* meta-mybuild: Consisting of &quot=
;recipies-*&quot; and a &quot;conf&quot; directories</div><div><br></div><d=
iv>I expect it is that latter directory my warning is originating from.</di=
v><div><br></div><div>Worik<br></div><div>=C2=A0</div><br></div></div>

--00000000000017d1c60617f7da46--

