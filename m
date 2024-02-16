Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9695EC48BEB
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 13:12:50 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web10.18408.1708089165251899382
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Feb 2024 05:12:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XSUJLwZ+;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: quaresma.jose@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3c0449eaadaso1843034b6e.1
        for <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 05:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708089164; x=1708693964; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oRPmeC1vhtq9SN0yog6kxlNzl1KZ2BQfcTKt8MsbFsI=;
        b=XSUJLwZ+Bpr8EWwb05vBsCg+41xCh9AlTwFoerKA7kqNbBL7QvE/42qAnsuV+6n8PU
         1M4tvImDBqskhEsrX2Ixv3mnAO5a19vmht8Z1LP7gOjTJqRMLhroRaBYv07F2xkpNEHZ
         ASfgJftB9U/CQ/C9GVWtN1ZZdUMp5A7W9i+jqqoV68kCZqFYSt/+QYk/xUu2kADlAdJg
         L48gKnwO+d/H+99zb4ME6+yVAomq3jKtm0nZvsC9GVlV66Pf13J30JJrYJVdj+NNx5lP
         dP5kOoRWOt62NtqBWFJeTsN7TAp91gnf/AeZwNnSGPZzu8uWwPWFC/3QzgVPJ1w5hmgP
         gagA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708089164; x=1708693964;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oRPmeC1vhtq9SN0yog6kxlNzl1KZ2BQfcTKt8MsbFsI=;
        b=hDXbjTNnEhLTPky8QQahavAthLTltr8uS3VORHX4W1NMbfHyoV8pnNYrYEurp6H9Xs
         KdcHEy+ipJQAQQVoHmK2iPrvgVsTzJ8V6WAIvu9XMF/54V8DxqIOaxB/aeZv4yuh/dPH
         vrjoEoBTg9YCDIV67TiRPq0+iyYmGUWIQDf2jPqmOsRfnK2FEwxecG3+d/0HIGkKKSnl
         /pdpsOwF2vhVRcLwyq3fyX4NnHwdVfq9IYIIjritMUsP45iMZuMvys3YqS9N4dtlB8UJ
         BqBH/t3UkSK8zUSxSd4m7m0aL5xQCpM41QKZOqRJ2IvLmjqwnoseKD/RX+NefSTALxWk
         SHhQ==
X-Forwarded-Encrypted: i=1; AJvYcCVIVbqx0I4o1PkqkbpEPX/FQNHWZsArIOLhzaf+m5DygVjZqK+gP27dFlAKC+k5HjIsGP4KD8yvJ6ek4VU6R9L3VT3B+pxLuBpqTmqs
X-Gm-Message-State: AOJu0Yxirybhc4pdQT8PAqZqhlcPVDoVR2lmD/jqDhDll0XFy2p9PW6A
	cdkTF/3QiVRg4MOjFlN/VmeANX3lrrpZBVx0VeuslBK8IRJuMqKDaXmfYJ721zbZ2Pn1bpwWw3P
	Iyq/Tjq0kVk3g2FBdlsSN7aDbK8E=
X-Google-Smtp-Source: AGHT+IHnL63lpFJJzP8QQWGXjReLXswzmvmPgTcI7E/gRRjc3Afnzn2I87+KNNcFzGGQ6nS2xBcfwMbs+0OV2kPH5H8=
X-Received: by 2002:a05:6808:998:b0:3c0:482c:54ab with SMTP id
 a24-20020a056808099800b003c0482c54abmr4730764oic.12.1708089164406; Fri, 16
 Feb 2024 05:12:44 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8YQoMdR=qKDHPYVUo7jKhRDEjS3Ah6EDccsbdwgmm+Vw@mail.gmail.com>
 <007c20be5b61da1d7752835a3f4775368a76bd97.camel@linuxfoundation.org>
In-Reply-To: <007c20be5b61da1d7752835a3f4775368a76bd97.camel@linuxfoundation.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 16 Feb 2024 13:12:33 +0000
Message-ID: <CANPvuRmpF1m_TCQPotoNLUQUoW6FHJxEJsDnvBGr4docaCgK3A@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 13 February 2024 (WW07)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: multipart/alternative; boundary="000000000000e3a4ce06117f7f18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 13:12:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62521

--000000000000e3a4ce06117f7f18
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Richard Purdie <richard.purdie@linuxfoundation.org> escreveu (sexta,
16/02/2024 =C3=A0(s) 11:34):

> On Tue, 2024-02-13 at 08:50 -0700, Stephen Jolley wrote:
> >  * We are now a week from feature freeze for 5.0, our next LTS
> > release
>
> For better or worse but probably not entirely surprisingly, there are
> quite a few things that we may want to try and fit in. I've listed them
> just so everyone knows what is on the list:
>
> * genericarm64 machine
> * add qemuriscv64 tests to the autobuilder, for M3 only
> * devtool changes to use git notes
> * hashserve improvements
> * pending changes in master-next where review is still being worked
> * change to rust test suite logging
> * devtool IDE changes
>
> Also things which are worrying:
>
> * Rust upgrade blocked by reproducibility issues
> * musl upgrade blocked by large number of unsubmitted pending patches
> * nativesdk-systemd usage broken by usrmerge requirement (we're not
>   changing the SDK layout days before freeze)
>
> I'm sure there are some things I'm forgetting too.
>
> Please let me know ASAP if there is anything else pending.
>

Hi Richard,

I think it would also be important to update the golang toolchain from the
1.20.x
we haven't done it yet the 1.21 and 1.22.
I intend to dedicate some time to 1.21 but I can't promise anything and
there is a
high probability that I won't be able to correct the problems that exist.

Jose


>
> The good news is that several problematic issues do seem to be finding
> resolutions in the last 48h.
>
> Cheers,
>
> Richard
>
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#195747):
> https://lists.openembedded.org/g/openembedded-core/message/195747
> Mute This Topic: https://lists.openembedded.org/mt/104334498/5052612
> Group Owner: openembedded-core+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-core/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000e3a4ce06117f7f18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Richard Purdie &lt;<a href=3D"mailto:=
richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&=
gt; escreveu (sexta, 16/02/2024 =C3=A0(s) 11:34):<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Tue, 2024-02-13 at 08:50 -0700, Stephe=
n Jolley wrote:<br>
&gt; =C2=A0* We are now a week from feature freeze for 5.0, our next LTS<br=
>
&gt; release<br>
<br>
For better or worse but probably not entirely surprisingly, there are<br>
quite a few things that we may want to try and fit in. I&#39;ve listed them=
<br>
just so everyone knows what is on the list:<br>
<br>
* genericarm64 machine<br>
* add qemuriscv64 tests to the autobuilder, for M3 only<br>
* devtool changes to use git notes<br>
* hashserve improvements<br>
* pending changes in master-next where review is still being worked<br>
* change to rust test suite logging<br>
* devtool IDE changes<br>
<br>
Also things which are worrying:<br>
<br>
* Rust upgrade blocked by reproducibility issues<br>
* musl upgrade blocked by large number of unsubmitted pending patches<br>
* nativesdk-systemd usage broken by usrmerge requirement (we&#39;re not=C2=
=A0<br>
=C2=A0 changing=C2=A0the SDK layout days before freeze)<br>
<br>
I&#39;m sure there are some things I&#39;m forgetting too.<br>
<br>
Please let me know ASAP if there is anything else pending.<br></blockquote>=
<div><br></div><div>Hi Richard,<br><br>I think it would also be important t=
o update the golang toolchain from the 1.20.x</div><div>we haven&#39;t done=
 it yet the 1.21 and 1.22.</div><div>I intend to dedicate some time to 1.21=
 but I can&#39;t promise anything and there is a</div><div>high probability=
 that I won&#39;t be able to correct the problems that exist.<br><br>Jose</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
The good news is that several problematic issues do seem to be finding<br>
resolutions in the last 48h.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#195747): <a href=3D"https://lists.openembedded.org/g/op=
enembedded-core/message/195747" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.openembedded.org/g/openembedded-core/message/195747</a><br>
Mute This Topic: <a href=3D"https://lists.openembedded.org/mt/104334498/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/m=
t/104334498/5052612</a><br>
Group Owner: <a href=3D"mailto:openembedded-core%2Bowner@lists.openembedded=
.org" target=3D"_blank">openembedded-core+owner@lists.openembedded.org</a><=
br>
Unsubscribe: <a href=3D"https://lists.openembedded.org/g/openembedded-core/=
unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedded.org/=
g/openembedded-core/unsub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" t=
arget=3D"_blank">quaresma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000e3a4ce06117f7f18--

