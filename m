Return-Path: <saswatinayak2010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73A9C25B76
	for <webhook@archiver.kernel.org>; Wed,  5 Jun 2024 11:04:06 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.12548.1717585443843163782
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jun 2024 04:04:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M1g6lcQ0;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: saswatinayak2010@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-24c9f628e71so3357155fac.1
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 04:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717585443; x=1718190243; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vbeH60et8pO5VuUMby9BEG1WxOleU/7NWcq89WoYpq8=;
        b=M1g6lcQ0Vk1ia+hcnz3YZNzp5jobdWQxeNqoAsd+U0OFCL+m7NIFYh9GuZR3QQX3JD
         VTMNNdUUkYw7g/kOabYoOAK3ahhszXh8m1G7LB27oQZINUEp69Rvh/y7B2SRfho6WN1o
         pMXweRsUnX3PGlhye/m7jmeWYqSq/9jnkjcV6D2P7rhGSczi7NPVooV33apiBl7c6tBP
         KfH7mBQsHG2v7W3pJT2NmMGZpTdZyMSvF+u8w6+Z44/A494zlOQX3LsHd5rmjoaoMgQB
         QKYRaYBqY1x3oORDOcputS09Z+a5HN1J02LhiyS1zV+VgqC8eV05G42ZXT3p7Kl7VnRT
         QM4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717585443; x=1718190243;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vbeH60et8pO5VuUMby9BEG1WxOleU/7NWcq89WoYpq8=;
        b=NzoBF91e32LEaoSbfiVswWxEz931wl12KuQwy4knCPWmO6wys3s+rXKUcLp3q6qVWU
         kfnbMkh5vBHNxMW4fe++BuY5uvdDDtaucwUR/wjvRXbohp2eHDgorGqv/mkZIbpEaKET
         Jublrz61ml5u8APYMoBaXkP2slL4KEqLohDYo+aMwuCFVvG1EFNU5vLsU/KPoJtPKQGc
         ElMgL3/U3qHKY2XIMpw/yc0pl9gSACubZFh9gJ2Z+iUgb8RdVZxBC2ndSwaKLZ6Qd0xo
         HG7njlFma0HtNuQIMrMidbyhE1uV3tIA4h6TwVXwARuTG3LNlVN4uX66dx4zw8Ynksy/
         5UYA==
X-Gm-Message-State: AOJu0YxPRGzHysjeUHpyINGyB1tPqfgguKi/9oG20dxcDU24W8WwbnmC
	fQFyChppoT1BD7CXM3nxxhNv1KnCJMUQLLZKm7yiOaTQSUDhcz0eL9yStq6KfhN5m81CcvqEqas
	jMLiNFjLuwV+BkAPwNpgtVdBEZ1Q=
X-Google-Smtp-Source: AGHT+IEWE5bau/RhKRyP8Ai9mSB8sLJhY9Ye/fl+H473CTdJ00mCTVCJxDgmJ+QGyy4smaS/LIxYdPg4xZa4zctccoI=
X-Received: by 2002:a05:6870:9710:b0:250:89d5:7f2e with SMTP id
 586e51a60fabf-251225b9067mr2247989fac.2.1717585442775; Wed, 05 Jun 2024
 04:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAKe-BNoRfMiza5Mf691s7h8DP1+BN38-0sx7-rdiSTJhfSkA1g@mail.gmail.com>
 <CANNYZj-fyCD3f_2RtDhKKMuO9dFk=pt7yb0fazez0v1Z_DAoBQ@mail.gmail.com>
 <CAKe-BNqwwFzMFFAgy7DjG4oi37E0HBx6jRJTeCPe4E+seF7wUQ@mail.gmail.com> <CANNYZj95qctfL=iAVwNZLuPWY_kwf+45ZNM_QrWDy17gXH3ARQ@mail.gmail.com>
In-Reply-To: <CANNYZj95qctfL=iAVwNZLuPWY_kwf+45ZNM_QrWDy17gXH3ARQ@mail.gmail.com>
From: Saswati Nayak <saswatinayak2010@gmail.com>
Date: Wed, 5 Jun 2024 16:33:51 +0530
Message-ID: <CAKe-BNq8uT7QASyjYDMF91czumUPqr-7RfAMjeDsXHDjBPUn5A@mail.gmail.com>
Subject: Re: [yocto] Need to add TEMPLATECONF in Custom layer.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000302a46061a2286d6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jun 2024 11:04:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63285

--000000000000302a46061a2286d6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the explanation Alexander.

Thanks & Regards
Saswati

On Wed, Jun 5, 2024 at 4:23=E2=80=AFPM Alexander Kanavin <alex.kanavin@gmai=
l.com>
wrote:

> TEMPLATECONF needs to be set only when you execute oe-init-build-env
> to initialize the build. You don't need to permanently export it to
> the environment, and can simply put it as a prefix to the command:
>
> TEMPLATECONF=3D/path/to/config/template/in/some/meta-layer/ .
> /path/to/oe-init-build-env /path/to/build-folder
>
> This is awkward and not user friendly, so oe-setup-build was
> developed. But it's not in kirkstone.
>
> A command to save the active configuration to a template in a layer is
> not in kirkstone either. You need to copy the files in conf/ by hand,
> or you can create them yourself from nothing.
>
> Altogether, you'll get better support for this in newer yocto
> versions. We're still working on standardizing everything and closing
> all the gaps.
>
> I would recommend that you set up a scarthgap build (with just plain
> poky, no other layers), and play with the tools available there to
> understand better how the pieces fit together.
>
> Alex
>
> On Wed, 5 Jun 2024 at 12:21, Saswati Nayak <saswatinayak2010@gmail.com>
> wrote:
> >
> > Hello Alexander,
> >
> > Can you help me with the example?
> > As I am using the Kirkstone version of yocto, I am not able to get a
> proper idea how to set.
> > Do we need to export the TEMPLATECONF?
> >
> >
> > Thanks & Regards
> > Saswati
> >
> > On Tue, Jun 4, 2024 at 3:54=E2=80=AFPM Alexander Kanavin <alex.kanavin@=
gmail.com>
> wrote:
> >>
> >> If your yocto version is recent enough, use
> >>
> >> 'bitbake-layers save-build-conf' to save build/conf/ as a template. In
> >> older versions you need to do what it does by hand.
> >>
> >> To set up a build from template, use oe-setup-build (from scarthgap
> >> onwards) or TEMPLATECONF=3D . oe-init-build-env in older versions.
> >>
> >> Alex
> >>
> >> On Tue, 4 Jun 2024 at 12:17, Saswati Nayak via lists.yoctoproject.org
> >> <saswatinayak2010=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> >
> >> > Hello All,
> >> >
> >> > I want to add a custom templateconf in my build directory.
> >> > Can anyone help me how to create Templateconf from our local source
> so that it will point in the build/conf/templateconf.cfg .
> >> >
> >> > Thanks & Regards
> >> > Saswati
> >> >
> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> > Links: You receive all messages sent to this group.
> >> > View/Reply Online (#63270):
> https://lists.yoctoproject.org/g/yocto/message/63270
> >> > Mute This Topic: https://lists.yoctoproject.org/mt/106479728/1686489
> >> > Group Owner: yocto+owner@lists.yoctoproject.org
> >> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> >> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> >
>

--000000000000302a46061a2286d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the explanation Alexander.<br><div><br></div><d=
iv>Thanks &amp; Regards</div><div>Saswati</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 5, 2024 at 4:23=
=E2=80=AFPM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com"=
>alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">TEMPLATECONF needs to be set only when you execute o=
e-init-build-env<br>
to initialize the build. You don&#39;t need to permanently export it to<br>
the environment, and can simply put it as a prefix to the command:<br>
<br>
TEMPLATECONF=3D/path/to/config/template/in/some/meta-layer/ .<br>
/path/to/oe-init-build-env /path/to/build-folder<br>
<br>
This is awkward and not user friendly, so oe-setup-build was<br>
developed. But it&#39;s not in kirkstone.<br>
<br>
A command to save the active configuration to a template in a layer is<br>
not in kirkstone either. You need to copy the files in conf/ by hand,<br>
or you can create them yourself from nothing.<br>
<br>
Altogether, you&#39;ll get better support for this in newer yocto<br>
versions. We&#39;re still working on standardizing everything and closing<b=
r>
all the gaps.<br>
<br>
I would recommend that you set up a scarthgap build (with just plain<br>
poky, no other layers), and play with the tools available there to<br>
understand better how the pieces fit together.<br>
<br>
Alex<br>
<br>
On Wed, 5 Jun 2024 at 12:21, Saswati Nayak &lt;<a href=3D"mailto:saswatinay=
ak2010@gmail.com" target=3D"_blank">saswatinayak2010@gmail.com</a>&gt; wrot=
e:<br>
&gt;<br>
&gt; Hello Alexander,<br>
&gt;<br>
&gt; Can you help me with the example?<br>
&gt; As I am using the Kirkstone version of yocto, I am not able to get a p=
roper idea how to set.<br>
&gt; Do we need to export the TEMPLATECONF?<br>
&gt;<br>
&gt;<br>
&gt; Thanks &amp; Regards<br>
&gt; Saswati<br>
&gt;<br>
&gt; On Tue, Jun 4, 2024 at 3:54=E2=80=AFPM Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; If your yocto version is recent enough, use<br>
&gt;&gt;<br>
&gt;&gt; &#39;bitbake-layers save-build-conf&#39; to save build/conf/ as a =
template. In<br>
&gt;&gt; older versions you need to do what it does by hand.<br>
&gt;&gt;<br>
&gt;&gt; To set up a build from template, use oe-setup-build (from scarthga=
p<br>
&gt;&gt; onwards) or TEMPLATECONF=3D . oe-init-build-env in older versions.=
<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Tue, 4 Jun 2024 at 12:17, Saswati Nayak via <a href=3D"http://l=
ists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproj=
ect.org</a><br>
&gt;&gt; &lt;saswatinayak2010=3D<a href=3D"mailto:gmail.com@lists.yoctoproj=
ect.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<=
br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hello All,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I want to add a custom templateconf in my build directory.<br=
>
&gt;&gt; &gt; Can anyone help me how to create Templateconf from our local =
source so that it will point in the build/conf/templateconf.cfg .<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks &amp; Regards<br>
&gt;&gt; &gt; Saswati<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt; Links: You receive all messages sent to this group.<br>
&gt;&gt; &gt; View/Reply Online (#63270): <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/63270" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/g/yocto/message/63270</a><br>
&gt;&gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt=
/106479728/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mt/106479728/1686489</a><br>
&gt;&gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproje=
ct.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoct=
o/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.or=
g/g/yocto/unsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_b=
lank">alex.kanavin@gmail.com</a>]<br>
&gt;&gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; &gt;<br>
</blockquote></div>

--000000000000302a46061a2286d6--

