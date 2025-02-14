Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBBEEC021A4
	for <webhook@archiver.kernel.org>; Fri, 14 Feb 2025 11:30:18 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.18967.1739532609246872568
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Feb 2025 03:30:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dPJbKKUm;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-307bc125e2eso19914751fa.3
        for <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 03:30:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739532607; x=1740137407; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xRGlNF95A1E4wu68XJB78HS6KH7hYFb02z5AAuZei2o=;
        b=dPJbKKUma8skJced98ASRMJqo39wJqraBAj+V/yBuyYq2CELh5lz2icaWdW088212t
         aR5rYNjORHYyMtvVagdENvNVETrnr6xWjYYqbByXJMCUyB1TGem5mMIDhOrDwtr0EmIi
         VWpy0Rm5YNNBibiIpnXUCFOv77ZHNc2vJXkaholvwZfPCPagKdj1xWQ72m7OQ26tHPF0
         EHC0uOuaoZkapFb9R+Ph9Rh6/7GsUOK7eCbcESaniE+r4x3TBoc9/2W3r369KPS8ogsy
         WIW5QT+yb3eiUNqXqGFTOKLcshZV8xYMHr7RXgO215EaZVRwhMG8iT0zv9PTe2tyLQL3
         mNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739532607; x=1740137407;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xRGlNF95A1E4wu68XJB78HS6KH7hYFb02z5AAuZei2o=;
        b=ihC19ojaYSB9nt0QUccmZPEmRva74E78VmGdHcIXDYp/HIsyj87leKw7C36+OO6XnK
         sDrIUTuUpqBfZkyKAb+6YHHY91mo48ywsOIh1yosQVM9xuHeCOroKGoyQJOXj9xVjg3k
         gxdXcxPro7yBAVG81716dbatOeaXT4qXD5OCpSO1Z31nwmpVaXziBugkQl5vpbyBrMwO
         YJj+QbGOW5fsTEPIhh9GIot6rUdJ295uAr/3cRSFw12+xA+oPENjemrSN5lUNYYsRGDN
         5m7nAZqUSRBT0IjWkTXDMarY/QMPpopQEjxCNevDZybON6v+JQX7bF6pZfkG99RJd24f
         NhjA==
X-Gm-Message-State: AOJu0Yyjd13O6jcAunG1InYSiavzC09jJLjKmfzBCo5FHL4Mu5ZyYvdS
	uF38hlWUx4DytrbJnU0Mso8GBCBkAKUCge/+Tkyq/mzVkw/zzZhn+fbJ2iwUt3oQ3PYpyOoEzIE
	6Wr/m5gfJKAFMnh9BSXUzp0diKAU=
X-Gm-Gg: ASbGnctG5unx5bYORFEmkdJD0HLk8cHXHnFve3OeVTGHJcaJ+BrAtUqooyKc+4PNFiy
	1jmyMuvCV8khSk7iaM2idcf1HHwXevewcURFgq20f66izWymLFj1+n6NpcUcyOVN+cJ9hty1/eQ
	3WQBU=
X-Google-Smtp-Source: AGHT+IGBF2syqnt+NxMiFi7ci+18JMMCp+NW4JXxbKucmGeZbzr6u53mq2cwWwxJ0kic5ldIRMHg8BPho/gmLZGi55E=
X-Received: by 2002:a2e:8a97:0:b0:302:1c90:58de with SMTP id
 38308e7fff4ca-3091480181dmr12215771fa.33.1739532607014; Fri, 14 Feb 2025
 03:30:07 -0800 (PST)
MIME-Version: 1.0
References: <e1ee9abe9c5d3dcca060978c6136bad6d64567ca.camel@vrag.ch>
 <CANNYZj8KOYO+zTditFWH=RRM4hWG0xSMtwDQNUBUdP0Lf2TyEA@mail.gmail.com>
 <CAO5Uq5QU8B2em3=CaifbCtHW=6GvWMNBYo2r-ExjL4zbTqkWaQ@mail.gmail.com> <CANNYZj-EWzMoQ9FPdkvNTVKW32Mz6OUqSH1qbAc=wqP_=ktKXA@mail.gmail.com>
In-Reply-To: <CANNYZj-EWzMoQ9FPdkvNTVKW32Mz6OUqSH1qbAc=wqP_=ktKXA@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Fri, 14 Feb 2025 11:29:56 +0000
X-Gm-Features: AWEUYZk9VLE9k3wR7C_KxzlXc8_JDE-GzRDx1pc9kqh0j3KCzeatJ0-TUN46N1w
Message-ID: <CAO5Uq5Q1R0KRB-ccNCQ_nyABmt6o+4eQK8SXBtRUgQW08GgiHg@mail.gmail.com>
Subject: Re: [yocto] cargo does not build currently
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
Content-Type: multipart/alternative; boundary="0000000000001dd400062e187f9a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Feb 2025 11:30:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64814

--0000000000001dd400062e187f9a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah, I can look at that.

On Fri, 14 Feb 2025, 11:23 Alexander Kanavin, <alex.kanavin@gmail.com>
wrote:

> It would help to come up with a set of reproducible steps, e.g.:
>
> - check out revision X
> - bitbake cargo-native
> - check out revision Y (as close to X as possible)
> - bitbake cargo-native which reliably fails
>
> and file a ticket in bugzilla for it. The issue is definitely real.
>
> Alex
>
> On Fri, 14 Feb 2025 at 12:19, Alex Kiernan <alex.kiernan@gmail.com> wrote=
:
> >
> > If you're seeing the same failure as me, its cargo-native and
> > python3-cryptography-native - I've just pulled the latest changes and
> > both failed to build here, cleaning them up seems to have fixed it.
> >
> > On Tue, Feb 11, 2025 at 2:00=E2=80=AFPM Alexander Kanavin via
> > lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org=
>
> > wrote:
> > >
> > > Run bitbake -c clean cargo and try again. Something in those recipes
> doesn=E2=80=99t do incremental builds properly.
> > >
> > > Alex
> > >
> > > On Tue 11. Feb 2025 at 14.55, David Daniel via lists.yoctoproject.org
> <david.daniel=3Dvrag.ch@lists.yoctoproject.org> wrote:
> > >>
> > >> Hi all
> > >> Some problem with the build of cargo just popped up. I am doing
> > >> currently builds on the master branches. It turns out after a sync o=
f
> > >> my sources cargo does not build anymore. It spits weird error messag=
es
> > >> that it cannot find the crate for libc:
> > >>
> > >>     can't find crate for `libc`
> > >>
> > >> Somehow things got mixed:
> > >>
> > >>     error[E0460]: found possibly newer version of crate `std` which
> `libnghttp2_sys` depends on
> > >>
> > >> I attached the build output in case of interest.
> > >>
> > >> Has anyone an idea how I can fix this?
> > >> Thanks for any hints!
> > >>
> > >> Greets
> > >> Dave
> > >>
> > >>
> > >>
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#64765):
> https://lists.yoctoproject.org/g/yocto/message/64765
> > > Mute This Topic: https://lists.yoctoproject.org/mt/111122235/3618097
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kiernan@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >
> >
> >
> > --
> > Alex Kiernan
>

--0000000000001dd400062e187f9a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Yeah, I can look at that.=C2=A0<br><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 14 Feb 2025, 11=
:23 Alexander Kanavin, &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=
=3D"_blank" rel=3D"noreferrer">alex.kanavin@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">It would help to come up with a set of re=
producible steps, e.g.:<br>
<br>
- check out revision X<br>
- bitbake cargo-native<br>
- check out revision Y (as close to X as possible)<br>
- bitbake cargo-native which reliably fails<br>
<br>
and file a ticket in bugzilla for it. The issue is definitely real.<br>
<br>
Alex<br>
<br>
On Fri, 14 Feb 2025 at 12:19, Alex Kiernan &lt;<a href=3D"mailto:alex.kiern=
an@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_blank">alex.kiernan@=
gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; If you&#39;re seeing the same failure as me, its cargo-native and<br>
&gt; python3-cryptography-native - I&#39;ve just pulled the latest changes =
and<br>
&gt; both failed to build here, cleaning them up seems to have fixed it.<br=
>
&gt;<br>
&gt; On Tue, Feb 11, 2025 at 2:00=E2=80=AFPM Alexander Kanavin via<br>
&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer noreferrer=
 noreferrer" target=3D"_blank">lists.yoctoproject.org</a> &lt;alex.kanavin=
=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" rel=3D"noreferrer no=
referrer" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt;<br>
&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Run bitbake -c clean cargo and try again. Something in those reci=
pes doesn=E2=80=99t do incremental builds properly.<br>
&gt; &gt;<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; On Tue 11. Feb 2025 at 14.55, David Daniel via <a href=3D"http://=
lists.yoctoproject.org" rel=3D"noreferrer noreferrer noreferrer" target=3D"=
_blank">lists.yoctoproject.org</a> &lt;david.daniel=3D<a href=3D"mailto:vra=
g.ch@lists.yoctoproject.org" rel=3D"noreferrer noreferrer" target=3D"_blank=
">vrag.ch@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Hi all<br>
&gt; &gt;&gt; Some problem with the build of cargo just popped up. I am doi=
ng<br>
&gt; &gt;&gt; currently builds on the master branches. It turns out after a=
 sync of<br>
&gt; &gt;&gt; my sources cargo does not build anymore. It spits weird error=
 messages<br>
&gt; &gt;&gt; that it cannot find the crate for libc:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0can&#39;t find crate for `libc`<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Somehow things got mixed:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0error[E0460]: found possibly newer version=
 of crate `std` which `libnghttp2_sys` depends on<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I attached the build output in case of interest.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Has anyone an idea how I can fix this?<br>
&gt; &gt;&gt; Thanks for any hints!<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Greets<br>
&gt; &gt;&gt; Dave<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; View/Reply Online (#64765): <a href=3D"https://lists.yoctoproject=
.org/g/yocto/message/64765" rel=3D"noreferrer noreferrer noreferrer" target=
=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/64765</a><br>
&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/111=
122235/3618097" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">=
https://lists.yoctoproject.org/mt/111122235/3618097</a><br>
&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.o=
rg" rel=3D"noreferrer noreferrer" target=3D"_blank">yocto+owner@lists.yocto=
project.org</a><br>
&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/un=
sub" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:alex.kiernan@gmail=
.com" rel=3D"noreferrer noreferrer" target=3D"_blank">alex.kiernan@gmail.co=
m</a>]<br>
&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Alex Kiernan<br>
</blockquote></div>
</div></div>

--0000000000001dd400062e187f9a--

