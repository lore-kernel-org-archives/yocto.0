Return-Path: <joaohf@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81FE4CA0EE4
	for <webhook@archiver.kernel.org>; Sun, 17 Aug 2025 00:18:36 +0000 (UTC)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
 by mx.groups.io with SMTP id smtpd.web11.44418.1755389909702084341
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Aug 2025 17:18:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Aa1VrVVR;
 spf=pass (domain: gmail.com, ip: 209.85.128.176, mailfrom: joaohf@gmail.com)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-71e6dd718a0so453107b3.0
        for <yocto@lists.yoctoproject.org>; Sat, 16 Aug 2025 17:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755389909; x=1755994709; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dcUPnxyvFpJetuX4LlIoQVhWvH3PUL8oI2AnrtrtEH4=;
        b=Aa1VrVVR+5QfWK+nWz6xgP5bToC7uq6+fGvTue27mqimmwCGcjWS1RvBzUpNz6N4kY
         YEzhRhljehNvjhfNOwM14UqUg9UNxq+zVJS9qGM2htR7PC4k1a12fHzuSP4lcZcpTnMR
         ng4q3Dp3cNj7SaTWGt4Z8TjWwF659I+YLDSEkVYOfPuCrKKnbWyavHjYoX9xkj8RWMfS
         QPcBUMkLFyGvjPokOUK1Hnc8Nftfc3+9n4g7TVzWOYHMWlQdX3MbO3DeA4COCXtXwJZc
         56rqWKnLVLkFemjJ/PlWW/TqCJt98hl/vaSc0gapWukUzm2RdJ//Q710dxMdXPnhkBI/
         /D5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755389909; x=1755994709;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dcUPnxyvFpJetuX4LlIoQVhWvH3PUL8oI2AnrtrtEH4=;
        b=Cv2eTJmOXfnu1O+XCLT9VWO5lfsnbwuu6o2hn36569Th5H5bnWE+NvXN7M/X7GtEv7
         3vZL5g5l8WitVaJAoMi+uFYEoM/n0zxc2Z/X3m98M2kiojQXjEPWc0sum/0XulY2e2sC
         E7DGKdm8qK2bmR9/kSUlKpgDTPP0CEopfo/zpLsC2ydOsXmwl7TcxUvKP4cDyTMZALUd
         gXmEyvJKbNRvilhegYCdQp9aPIf7SDx94Yuq0mF/N+nAZMoJJRJZLk46O5qMr8MOXvHS
         45VI280Ow7fpCkQgvZdqb6cM++lt0FkN8Mr5f+BD9pMItyr6BUzIqIvJ642FI20rTZy0
         xS/g==
X-Gm-Message-State: AOJu0YwFBOa50o8wudyB/OeEWqMIfchHCVWDtTw6EjKr3umdo0mmekJR
	FX8S8CwDFYbvJDXFVr4lM2ilDq1D515wdI5HlBDjKNK03bWiKZcYjZjQmEeji+5CwqSg12+EPXE
	C5lDzwtJpxm+yVPBAjtNkMmrj6982icA=
X-Gm-Gg: ASbGnctMxMfOb2VcQSjFCl2NaujTW71gkfQW/F5QrIejJyA7J8Qa27x1tLPIYuwXOsW
	Yzv3BVSMLGhS8imel8kgFmRa8t7MCAEQZBT03gpmdEI/7KY/OWhSWHULq7Fv4cGCoICsTBW0sCa
	T9FvIwRPkfHejQOMGEZUcnY1sjAKSppagnZI0LR0OBsy5v0oES1Or/DSC0X9awLf4uaoCMdEl6v
	qm4t/0A
X-Google-Smtp-Source: AGHT+IFibXaTqNlNLMsRV4FmmdCa5wei0Njn7TpLJHTAxc7GEHcIFrybnCQXx038vTP1jSVmJLoVIzN2aSv48KMd1wA=
X-Received: by 2002:a05:690c:3602:b0:71e:79d4:6325 with SMTP id
 00721157ae682-71e79d46887mr19702887b3.3.1755389908649; Sat, 16 Aug 2025
 17:18:28 -0700 (PDT)
MIME-Version: 1.0
References: <CANFVK78jqC2NVZW03JZ5YUgi4xO0mhR7n7iBUm3iefcpsbZFuQ@mail.gmail.com>
 <5fa03be4-429a-4a95-bd53-d82d9be4615e@gmail.com>
In-Reply-To: <5fa03be4-429a-4a95-bd53-d82d9be4615e@gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
Date: Sat, 16 Aug 2025 21:18:16 -0300
X-Gm-Features: Ac12FXyk_KJk3kmnoQl3c6nFdGbUJiKPFIpcUZkrHS7rcJJIYvaIMpKWFR5d4-c
Message-ID: <CANFVK78CfiGuLFTz2m1MgY6LBOo0k6ix9fD1dkZvse-AnySOvA@mail.gmail.com>
Subject: Re: [yocto] Adding oeqa runtime decorators to custom layers
To: Gyorgy Sarvari <skandigraun@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f28cf6063c848fce"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Aug 2025 00:18:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65761

--000000000000f28cf6063c848fce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you. That worked as expected.

Here is the final results:
https://github.com/meta-erlang/meta-erlang/commit/b8259299bda02ddce0ab6d4b4=
0423d6208b192c0

On Mon, Aug 11, 2025 at 6:27=E2=80=AFAM Gyorgy Sarvari <skandigraun@gmail.c=
om>
wrote:

> On 8/7/25 20:44, Jo=C3=A3o Henrique Ferreira de Freitas via
> lists.yoctoproject.org wrote:
> >
> >
> > Hi,
> >
> > In my layer I have some oeqa runtime tests. That is ok and well
> > documented in Yocto Project documentation. However, I also want to
> > define my custom oeqa runtime decorators. Is that possible ?
> >
> > I tried to add the following in my layer.conf:
> >
> > BBFILES+=3D"${LAYERDIR}/lib/oeqa/**/*.py"
> >
> > No success, so far.
> >
> > I'm using master branch and could not find any other layer that adds
> > its own decorators. Any ideas ?
>
> Only an idea... BBFILES variable is used to collect the patterns for bb
> and bbappend files. To add custom python code, you should use the
> "addpylib" directive[1] in your config. I *think* it should take effect
> for oeqa tests also, but haven't tried, and that's why it is an idea only=
.
>
> [1]:
>
> https://docs.yoctoproject.org/bitbake/2.8/bitbake-user-manual/bitbake-use=
r-manual-metadata.html#extending-python-library-code
>
> >
> > Thanks.
> > --
> > Jo=C3=A3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
> > <http://joaohf_at_gmail.com>
> > Campinas-SP-Brasil
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#65738):
> https://lists.yoctoproject.org/g/yocto/message/65738
> > Mute This Topic: https://lists.yoctoproject.org/mt/114588099/6084445
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> skandigraun@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>

--=20
Jo=C3=A3o Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil

--000000000000f28cf6063c848fce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Thank you. That worked a=
s expected.</div><div><br></div><div>Here is the final results:=C2=A0<a hre=
f=3D"https://github.com/meta-erlang/meta-erlang/commit/b8259299bda02ddce0ab=
6d4b40423d6208b192c0">https://github.com/meta-erlang/meta-erlang/commit/b82=
59299bda02ddce0ab6d4b40423d6208b192c0</a></div></div><br><div class=3D"gmai=
l_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Aug 11, 2025 at 6:27=E2=80=AFAM Gyorgy Sarvari &lt;<a href=3D"mailto:skan=
digraun@gmail.com">skandigraun@gmail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On 8/7/25 20:44, Jo=C3=A3o Henrique=
 Ferreira de Freitas via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> wrote:<br>
&gt;<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; In my layer I have some oeqa runtime tests. That is ok and well<br>
&gt; documented in Yocto Project documentation. However, I also want to<br>
&gt; define my custom oeqa runtime decorators. Is that possible ?<br>
&gt;<br>
&gt; I tried to add the following in my layer.conf:<br>
&gt;<br>
&gt; BBFILES+=3D&quot;${LAYERDIR}/lib/oeqa/**/*.py&quot;<br>
&gt;<br>
&gt; No success, so far.<br>
&gt;<br>
&gt; I&#39;m using master branch and could not find any other layer that ad=
ds<br>
&gt; its own decorators. Any ideas ?<br>
<br>
Only an idea... BBFILES variable is used to collect the patterns for bb<br>
and bbappend files. To add custom python code, you should use the<br>
&quot;addpylib&quot; directive[1] in your config. I *think* it should take =
effect<br>
for oeqa tests also, but haven&#39;t tried, and that&#39;s why it is an ide=
a only.<br>
<br>
[1]:<br>
<a href=3D"https://docs.yoctoproject.org/bitbake/2.8/bitbake-user-manual/bi=
tbake-user-manual-metadata.html#extending-python-library-code" rel=3D"noref=
errer" target=3D"_blank">https://docs.yoctoproject.org/bitbake/2.8/bitbake-=
user-manual/bitbake-user-manual-metadata.html#extending-python-library-code=
</a><br>
<br>
&gt;<br>
&gt; Thanks.<br>
&gt; -- <br>
&gt; Jo=C3=A3o Henrique Ferreira de Freitas - <a href=3D"http://joaohf_at_g=
mail.com" rel=3D"noreferrer" target=3D"_blank">joaohf_at_gmail.com</a><br>
&gt; &lt;<a href=3D"http://joaohf_at_gmail.com" rel=3D"noreferrer" target=
=3D"_blank">http://joaohf_at_gmail.com</a>&gt;<br>
&gt; Campinas-SP-Brasil<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#65738): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/65738" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/65738</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11458809=
9/6084445" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/114588099/6084445</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skan=
digraun@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Jo=C3=A3o Henrique Ferreira de Freitas - <a href=3D"http://j=
oaohf_at_gmail.com" target=3D"_blank">joaohf_at_gmail.com</a><br>Campinas-S=
P-Brasil</div></div>

--000000000000f28cf6063c848fce--

