Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78FC8C3DA41
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 13:50:51 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.web10.12422.1720705842887354336
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 06:50:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RtNJxXce;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-761e0f371f5so1496197a12.1
        for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 06:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720705842; x=1721310642; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qw3fb0DldhD2Fy7I+RK3ZtWzIZ/nNMl+emHTFt2nfL4=;
        b=RtNJxXceYjyNeQ3lTURdHzXswxdiQTKQFJM64reBWCP8os2HCcrvN+VS58IN1tZVhS
         qIdtfG3Hkd5Q2weEKQjSF0qzPtS14Qd5WCpriFBN+uFzecA1L+XNcfSMrfN83cfKe0GI
         uXcLbjmB0AgnoyWyDWAzv1Nn2rtBYYTnd4dN0A6Om9rQRI+YLzvFsAiTCop1pS135V1F
         geKVdEHBO585GAaJIcU8s60IVExpHHXic0WGA4l1lz7vqeP7NyyaMnX743zj/oI5P5q+
         Ma8oz/B28XxcbRO4ar3sBRhl5D/aVOhxr1aKNg5T8THUIUgLH3HTNthm1tHEpPTcpLLd
         RtdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720705842; x=1721310642;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qw3fb0DldhD2Fy7I+RK3ZtWzIZ/nNMl+emHTFt2nfL4=;
        b=V/B/i6wLu2vYLBy1EjpewQcPpT84p/HyJgFbVyY6bR3aVkWRexH5k3XNfccIqgCzCA
         BvwXdLXuceZo1f0SJIORF8i541yMLlIHFCYS1fh/zDGx//GXvrFiTgCG8hlr6TyUDvWu
         0LKPXnt36QhJa8rJUs0PT0rXJpCdYFCsQRgrB5iSG1kHv2gXarezEz7edltfzmXwibVb
         O8Vsf3zaWz3rOrXxFop5CpREhzThfrlU8eNCe66Y+YlIbx5njd3JoFiI5DITVpYlk70/
         XI14IsxKLKj0HgY0YLiZK1tN9Ru8hV2meuLAHWp/d3cpd4nzT9wkkWxdLNqXM5eWN5Zf
         eMfQ==
X-Gm-Message-State: AOJu0YxMlWVBJpAWf42iv+noZgIIh0Yns/PiOHM3p3w4XGY7XwPlIunj
	Mu9dNFJ3fILvzD2nXIO430eWT5Ve/HFe0V/mk9orBpzh+o7Ypx1VWWXj9b6AncNNrkDQLWDY2F+
	iQUCMD277G6gjAiEJ9aTVavy63J+7XIO2
X-Google-Smtp-Source: AGHT+IHZ+rXqM6FJwGEABf1qU2RPUOS0u4HPtSqjTWBpzEKXLA3y8R2sjhdjO0ZPI6Q2VfptPdRsEi3rehkaYm7m38I=
X-Received: by 2002:a17:90a:9b04:b0:2c7:d24b:57f with SMTP id
 98e67ed59e1d1-2ca9e20b6acmr4047225a91.19.1720705842013; Thu, 11 Jul 2024
 06:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgAK9+yDoz=3emvD6GTB6PNNe7=o5w6hkGpWm0juwt_X=pA@mail.gmail.com>
 <CANNYZj99c_sfCDt+MtAswB4UvoTnc-97RiAKjfG5dd7a2kin1A@mail.gmail.com>
In-Reply-To: <CANNYZj99c_sfCDt+MtAswB4UvoTnc-97RiAKjfG5dd7a2kin1A@mail.gmail.com>
From: Ycn aKaJoseph <ycnakajsph@gmail.com>
Date: Thu, 11 Jul 2024 15:50:32 +0200
Message-ID: <CAC3TgAJGvSjZ8ZZq35ay3h1-UvOFGZbEd6-rZ60WE=k70-krew@mail.gmail.com>
Subject: Re: [Yocto][QA] patches : QA Issue: Missing Upstream-Status in patch
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000079f0ae061cf90c5e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 13:50:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63473

--00000000000079f0ae061cf90c5e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Well, I'm not really sure I would need it in most cases.

For instance today I was modifying an existing device tree to make it fit
my board, that's not necessarily going to last.

Or say I have a package, which is from my company and doesn't have any
reason to get out of it.

As an integrator I need to modify the build system, let's say something in
the makefile, or maybe there's simply stuff that I don't want on my system.

So I'll make a patch.

Why would Yocto be authority for the way my commits are formatted? In all
the above cases I don't see why.

Yann CARDAILLAC,


On Wed, Jul 10, 2024 at 5:26=E2=80=AFPM Alexander Kanavin <alex.kanavin@gma=
il.com>
wrote:

> On Wed, 10 Jul 2024 at 15:45, Yann CARDAILLAC via
> lists.yoctoproject.org <ycnakajsph=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> > I'm not having the issue anymore, but I don't want to do that for all
> the patches I'm going to backport, can you explain why and when this erro=
r
> occurs? And if it's systematic how can I systematically ignore it as I
> don't really care about the "Upstream-Status".
>
> Having a well-defined upstream-status in every patch is a layer
> maintenance practice we do want to encourage. You might not care about
> this information right now, but you might want it a few months from
> now. Or someone else working with your layer might want it when they
> need to rebase the software being patched to some different version.
> It will help them find where the original commit is, or give them a
> reason why the patch was never submitted upstream and shouldn't be
> etc. We have a rich nomenclature that covers almost every scenario.
>
> If you're backporting patches, put 'Upstream-Status: Backport [link
> from where]' into them. 'Pending' without a reason is basically same
> as 'no status', and even though it's currently allowed, the
> restrictions on it will get tighter over time.
>
> Alex
>

--00000000000079f0ae061cf90c5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Well, I&#39;m not really sure I would need it in most=
 cases.=C2=A0</div><div><br></div><div>For instance today I was modifying a=
n existing device tree to make it fit my board, that&#39;s not necessarily =
going to last.<br></div><div><br></div><div>Or say I have a package, which =
is from my company and doesn&#39;t have any reason to get out of it.</div><=
div><br></div><div>As an integrator I need to modify the build system, let&=
#39;s say something in the makefile, or maybe there&#39;s simply stuff that=
 I don&#39;t want on my system.</div><div><br></div><div>So I&#39;ll make a=
 patch.<br></div><div><br></div><div>Why would Yocto be authority for the w=
ay my commits are formatted? In all the above cases I don&#39;t see why.<br=
></div><div><br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Yann CARDAILLAC,<b=
r></div></div></div></div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 10, 2024 at 5:26=E2=80=AFPM=
 Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com">alex.kanav=
in@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On Wed, 10 Jul 2024 at 15:45, Yann CARDAILLAC via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;ycnakajsph=3D<a href=3D"mailto:gmail.com=
@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org=
</a>&gt;<br>
wrote:<br>
&gt; I&#39;m not having the issue anymore, but I don&#39;t want to do that =
for all the patches I&#39;m going to backport, can you explain why and when=
 this error occurs? And if it&#39;s systematic how can I systematically ign=
ore it as I don&#39;t really care about the &quot;Upstream-Status&quot;.<br=
>
<br>
Having a well-defined upstream-status in every patch is a layer<br>
maintenance practice we do want to encourage. You might not care about<br>
this information right now, but you might want it a few months from<br>
now. Or someone else working with your layer might want it when they<br>
need to rebase the software being patched to some different version.<br>
It will help them find where the original commit is, or give them a<br>
reason why the patch was never submitted upstream and shouldn&#39;t be<br>
etc. We have a rich nomenclature that covers almost every scenario.<br>
<br>
If you&#39;re backporting patches, put &#39;Upstream-Status: Backport [link=
<br>
from where]&#39; into them. &#39;Pending&#39; without a reason is basically=
 same<br>
as &#39;no status&#39;, and even though it&#39;s currently allowed, the<br>
restrictions on it will get tighter over time.<br>
<br>
Alex<br>
</blockquote></div>

--00000000000079f0ae061cf90c5e--

