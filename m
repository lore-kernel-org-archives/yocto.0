Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC661C0219D
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 14:00:40 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.12800.1739282437976096627
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 06:00:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NcuBPcmW;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6e17d3e92d9so43775086d6.1
        for <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 06:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739282437; x=1739887237; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q/CWemWR006B6pR8YG7n/moEEW9zDRirA1CCVgSSfu4=;
        b=NcuBPcmWLqvTzJt2xhz5IANc35ACqvviOtPAaqIHmtGPK3iV42VPy5xiuETbxswoyS
         H1TNS5Jo9vbddPyJ4+M/S+A/tkOLlxoE0rTYBaeqH30ReMD1j7rFQNBfwXRww78VZ5rz
         iwQzrYM3ccKbLlt5lb0dg0c586BmGrPNk66LJ+mP712cKJPsI+YkjS+KoZW5rfEOd8vE
         SZrfeCoFDFjAvS8b5Vq8BcNvlKuQXMt2fM0rfsa4b1J4QFOexH8oRTYkPpc4aZA1eb42
         MuZeuqZ06AC/oyW25MPOI0om7TV4oBbs92jtrZs0gNBW9amQ6ujbWwDg6YSQqu1jZtMt
         m0Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739282437; x=1739887237;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q/CWemWR006B6pR8YG7n/moEEW9zDRirA1CCVgSSfu4=;
        b=HLrP0E9JLMMO2VTlDnkrSVr6SUTEb/rX7U4dKvFo6R5r6F7cZ79wPrIZufgMLhaM8P
         f/sWVSCWN0kcwybB5p6cwNDUWvRViNPaa3nLQJfXmKs57i9jb3S99rm8oVAVsl6ImiiN
         xUdHq4Zr5Q8gfWiMmSwwUsxKpP5RR7wjXJdrD6z9+ArZ3IRAHE+AKa1Drd6wHhmcyapT
         HFrCKGWUQFn1SA8DSpcwTw+QPtDNr8oibLwKhQQhHdUjjSTIoB9jdNtXj4GswWSuzVLs
         PTpdWmrRFCo8xJ7yBigDXdFA9g8+P8m5T3UIdg6oh3oRgAKxSity65bCgGpSKoMel/J0
         Oz5w==
X-Gm-Message-State: AOJu0Yx+ssKXhD4aKdQ3yBIE+wZc04S/cvZNT00kMaap5CnwPA4twz00
	uzgMdxFuCWvNsV8Y7xDMo1klKgzBdK2jrWcWttihNGYgKCVv4IcGMj3Nw+sKB2pekctC4bvlwCd
	uyTY0DF9Mmp7JIQDC8JvWF8lZPc+dYg==
X-Gm-Gg: ASbGncunZ3SNbWagGf491S/SHhhHwtC7Xad5rkLGni1j/kT7RRC/TKZwXmtuny7A3kI
	oPvOlqn51huxSezsnYn3qwlSAzrRyyQj9/OW0qbvTlSjAlUP+B0xgavEqLk/YjWzPWDsfROrRBm
	xDSVUmiuQz+U4dnGHzDqi7DjzBX58=
X-Google-Smtp-Source: AGHT+IERYPw0IDhMqQXzyCTv8nXRoLq9+tbqcD8wHNWo1Xb6q5XBdLiFSrW71ae7buu9HDhzHv554h5wstnP0BYf9l4=
X-Received: by 2002:ad4:5e8f:0:b0:6e4:4331:aae6 with SMTP id
 6a1803df08f44-6e46789832bmr49740376d6.39.1739282436631; Tue, 11 Feb 2025
 06:00:36 -0800 (PST)
MIME-Version: 1.0
References: <e1ee9abe9c5d3dcca060978c6136bad6d64567ca.camel@vrag.ch>
In-Reply-To: <e1ee9abe9c5d3dcca060978c6136bad6d64567ca.camel@vrag.ch>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 11 Feb 2025 15:00:25 +0100
X-Gm-Features: AWEUYZlweCMmmAq0WDkJZcm-3fjLNa0I3oYR01CGm8oad3sgkW-Jqw8WUu3Uhu8
Message-ID: <CANNYZj8KOYO+zTditFWH=RRM4hWG0xSMtwDQNUBUdP0Lf2TyEA@mail.gmail.com>
Subject: Re: [yocto] cargo does not build currently
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Content-Type: multipart/alternative; boundary="000000000000ccb667062dde3feb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 14:00:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64765

--000000000000ccb667062dde3feb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Run bitbake -c clean cargo and try again. Something in those recipes
doesn=E2=80=99t do incremental builds properly.

Alex

On Tue 11. Feb 2025 at 14.55, David Daniel via lists.yoctoproject.org
<david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:

> Hi all
> Some problem with the build of cargo just popped up. I am doing
> currently builds on the master branches. It turns out after a sync of
> my sources cargo does not build anymore. It spits weird error messages
> that it cannot find the crate for libc:
>
>     can't find crate for `libc`
>
> Somehow things got mixed:
>
>     error[E0460]: found possibly newer version of crate `std` which
> `libnghttp2_sys` depends on
>
> I attached the build output in case of interest.
>
> Has anyone an idea how I can fix this?
> Thanks for any hints!
>
> Greets
> Dave
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64764):
> https://lists.yoctoproject.org/g/yocto/message/64764
> Mute This Topic: https://lists.yoctoproject.org/mt/111122235/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ccb667062dde3feb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Run bitbake -c clean cargo and try again. Something in th=
ose recipes doesn=E2=80=99t do incremental builds properly.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmai=
l_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
 11. Feb 2025 at 14.55, David Daniel via <a href=3D"http://lists.yoctoproje=
ct.org">lists.yoctoproject.org</a> &lt;david.daniel=3D<a href=3D"mailto:vra=
g.ch@lists.yoctoproject.org">vrag.ch@lists.yoctoproject.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)">Hi all<br>
Some problem with the build of cargo just popped up. I am doing<br>
currently builds on the master branches. It turns out after a sync of<br>
my sources cargo does not build anymore. It spits weird error messages<br>
that it cannot find the crate for libc:<br>
<br>
=C2=A0 =C2=A0 can&#39;t find crate for `libc`<br>
<br>
Somehow things got mixed:<br>
<br>
=C2=A0 =C2=A0 error[E0460]: found possibly newer version of crate `std` whi=
ch `libnghttp2_sys` depends on<br>
<br>
I attached the build output in case of interest.<br>
<br>
Has anyone an idea how I can fix this?<br>
Thanks for any hints!<br>
<br>
Greets<br>
Dave<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64764): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64764" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64764</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111122235/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/111122235/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000ccb667062dde3feb--

