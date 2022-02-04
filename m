Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23C63C433F5
	for <webhook@archiver.kernel.org>; Fri,  4 Feb 2022 22:01:45 +0000 (UTC)
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com
 [209.85.221.173])
 by mx.groups.io with SMTP id smtpd.web12.235.1644012104305454261
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 14:01:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HYTdZ/46;
 spf=pass (domain: gmail.com, ip: 209.85.221.173,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f173.google.com with SMTP id o15so4525963vki.2
        for <yocto@lists.yoctoproject.org>;
 Fri, 04 Feb 2022 14:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LdOWFphA84sVq/wUHta51Z3YL9bj5Az1OP9b8NNuGkE=;
        b=HYTdZ/46YT2nLIh2M8MWGO4/E3ai1ZoMP7URLrjW65zbSg9SpxHt+tOVBzOsJptGCD
         SPh1niLnwcqWAxbDpUcu8q/LVSn030vE3begX60dCi0nJJyJFr+2FWCImNGT4go6Akf4
         ENhHtK8an7vQ/VRNW5Lmi2zqp0ulzdnHRFm6zdpO8XrbJBnCiPHYO4/LQn7AzbJqnygl
         LBPfYfS5JsZ204bw0ml6/NotmHLHuyHCfqgcA0KRy4MROY9nLlrMC4HU9tshq4RrwkBo
         qFm8rtX6eE2sySvPF6JDXpoBm/rtKnCw0wZfjJyRaor+QYXK3XAESCehzvPHalNyY/D+
         /DPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LdOWFphA84sVq/wUHta51Z3YL9bj5Az1OP9b8NNuGkE=;
        b=kI92dsvFZpk+xL1jbO26EdQ87SjcouQOab2ZuO7b9pT85pcJjjEukmSwF2DmmGZTEy
         xZ369356A7X5QXzAOcUplGU4ovxgEpR+2ZpU7u5wA7KIpQ/x8pz6aJp3hWgOZ2c6hEZ4
         fRVx8/b/ZwfxfI9Xqhew4VFdaFX8xB4L/7/n7H16kRdnGKGGFGe3hBTbLWvJI050FsW3
         a94Wt7UrhJeK5/rnyPND4HKeGY0exBSuFZb0+SxLOJKaSX1U8xxCocK5qCYJythp//vR
         EQrhtRRjen4t8XJ/sTWyTIEVdeYzoIjtmLofOG67gcmCddAiDROOPhCW2SXwKrLLoiWu
         kybA==
X-Gm-Message-State: AOAM533dDmIqZcbFvqooadNek+QiVyyFK4DVGxNbhiPsXjlDPQfpwoaV
	siTJN16/fWf3m8c066hXGs4LG+nxcqcMKZ9Scl/A9Tj0
X-Google-Smtp-Source: 
 ABdhPJzQavODvx5dtut19GtqQi3XhqjN0UxKuU7O5MZebIxThYR6qGcmoQhXW8GUcE1w+EW0C+p5MyoXcYn9oon3Thw=
X-Received: by 2002:a1f:3117:: with SMTP id x23mr2131820vkx.1.1644012103399;
 Fri, 04 Feb 2022 14:01:43 -0800 (PST)
MIME-Version: 1.0
References: <20220204164801.Horde.1RwI36nx3ke0fpHKBBUVCbL@crashcourse.ca>
In-Reply-To: <20220204164801.Horde.1RwI36nx3ke0fpHKBBUVCbL@crashcourse.ca>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Feb 2022 23:01:31 +0100
Message-ID: 
 <CANNYZj8fNCTaXu9J3uDPWzJbwnQjSmEXx0At_nv4AFZY_5akPQ@mail.gmail.com>
Subject: Re: [yocto] is there a viable YP-friendly risc-v dev kit?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006dfb6505d738654e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Feb 2022 22:01:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56079

--0000000000006dfb6505d738654e
Content-Type: text/plain; charset="UTF-8"

I think the best option at this point is qemu. Why does the 'friend' need
physical hardware? :)

Alex

On Fri, 4 Feb 2022 at 22:48, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

> friend asked me about the options for a risc-v dev kit that worked
> with YP, and i'm aware of the meta-riscv layer, but wherever i looked,
> it seems like risc-v dev kits have a very short life span, being either
> put on hold or outright cancelled (beaglev, hifive unmatched, etc.)
>
> are there, in fact, any reasonable risc-v dev boards out there?
>
> rday
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56078):
> https://lists.yoctoproject.org/g/yocto/message/56078
> Mute This Topic: https://lists.yoctoproject.org/mt/88917825/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000006dfb6505d738654e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think the best option at this point is qemu. Why do=
es the &#39;friend&#39; need physical hardware? :)</div><div><br></div><div=
>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, 4 Feb 2022 at 22:48, Robert P. J. Day &lt;<a href=
=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">friend asked me abou=
t the options for a risc-v dev kit that worked<br>
with YP, and i&#39;m aware of the meta-riscv layer, but wherever i looked,<=
br>
it seems like risc-v dev kits have a very short life span, being either<br>
put on hold or outright cancelled (beaglev, hifive unmatched, etc.)<br>
<br>
are there, in fact, any reasonable risc-v dev boards out there?<br>
<br>
rday<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56078): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56078" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56078</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88917825/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88917825/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000006dfb6505d738654e--

