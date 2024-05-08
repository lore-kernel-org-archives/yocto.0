Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665DDC04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 03:38:50 +0000 (UTC)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web11.4069.1715139528641914024
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 20:38:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=tLNUNkwV;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.182, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-4df550a4d4fso886621e0c.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 20:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715139527; x=1715744327; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2rgDteSNe8ej2Tjp9pc5PVys3vrfM4js7qqcMPuyKOU=;
        b=tLNUNkwVpJDWniBc8zcWe9udEZTh8aKlVCtKlKz+DEx89Re/Uyd9sNQeI77ZIGmZpH
         HouMrtf77zavASt3nURhP2JtQS6i/03KZDtv6u4VMTe33FlYhwcpjUv2l+3KrFbgGbXH
         JidC09PJgdc6dJMOxWNm8Op3UyjKdw2cUSWit7Hsr/zk1Hg5WSnLzQ/p1uONjSYbycW8
         un+4pJTdG7PV3d7DZCIEUDNIEKNaGWLSyBwQ8TB4J6mTmvRuDFudAZxSCUKxEw6Nddnq
         8z9r4qa/3b7ITYW3AFA0iN+RMXygZcRcGCQ8L5aJWTVWbGK9U8ozqO1rw1h34mZ4fzzj
         LpEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715139527; x=1715744327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2rgDteSNe8ej2Tjp9pc5PVys3vrfM4js7qqcMPuyKOU=;
        b=BRGi45veIUYcfTnSOesYOr04OuTcPDOzB3FQ8ZWYxHQKhh1CK5RZxd3P36oH8udjUv
         Yl6gltBRECLfpSe7wGqZHOt9uRUbsaUH/XeJtklgmzP1B3Hro0GdY1Zb3vKRkEEQ7PYc
         FYeTwuE/2+Eg2g6UiegYvyjOvHzkOCoU5EbYIFHrFYG1URdmJbSlIw/0zLXNNIlVSLO2
         q6LeUudPGl9u0M71EOgcGs+s1FARDBeCut07r3h5dae5kKpf1TfHrmZPJ704rdaVZHea
         VkkTiMqO0/NUhEbaeclWSsMf3BF5Pt3+MoOUDQSLX8Ez54FAtMcQLQv4xoD54cIYU8M9
         6e3A==
X-Gm-Message-State: AOJu0Yww645Jd0huNQB+cN7tEEjJCh+BK0TCEa6Nwg1J4lxSs7oPvxnl
	/X0a46LE6W9d5nqudlXICO9eT9BddFZaAQIvDZiFFOJZMt7lTre7HPgoo7wleVlk2qzsFKTVqtf
	kh3o2Ew4iJkIMOn+bnXo/TFNwWEuz0W9FNn5FQw==
X-Google-Smtp-Source: AGHT+IGHDR7EXhttjA8YPuSXEb0qBJosXFf5hlhhIq6CWby13UvSENliLW9QBPPVBwkBfA3VZQUhc6D9fACD5SY08X4=
X-Received: by 2002:a05:6122:2519:b0:4d4:32e1:e7b4 with SMTP id
 71dfb90a1353d-4df6914df59mr1197755e0c.4.1715139527504; Tue, 07 May 2024
 20:38:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com>
 <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com> <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com>
In-Reply-To: <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com>
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Wed, 8 May 2024 15:38:35 +1200
Message-ID: <CANuMBWEvnXYsoUJj1mByhV8pOwan+6hQFkZMvjG1Y_d1W7RDYw@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000047178c0617e90a38"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 03:38:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63049

--00000000000047178c0617e90a38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
>
>> fudged unto single repository. AFAICT
>>> gstreamer1.0-plugins-base_1.20.0.imx.bb should be
>>> coming from meta-freescale or meta-imx and if you have a unified
>>> metadata tree then this bb file should be somewhere, if not, that
>>>
>>
>> Which "bb"?   "gstreamer1.0-plugins-base_1.20.0.imx.bb"?
>>
>> I have: layers/openembedded-core/meta/recipes-multimedia/gstreamer/
>> gstreamer1.0-plugins-base_1.20.5.bb
>>
>> The suffix is different. (1.20.5.bb V. 1.20.0.bb)
>>
>> That looks like the problem.  Should I rename this file?
>>
>
> No, that won=E2=80=99t help whoever has put this together for you would b=
e the
> person to help and regenerate it for you including right dependencies
>
>>
>>

The "whomever" has gone away, and I am on my own!

Where do I start resolving a dependency like this?

Worik


> Worik
>>
>>
>> means the project missed adding this layer
>>> to your build system.
>>>
>>> if you dont need this recipe then you can ignore failing on bbappends b=
y
>>> adding
>>>
>>> BB_DANGLINGAPPENDS_WARNONLY =3D "1" to yout local.conf
>>>
>>> > ```
>>> >
>>> > The file in mentioned  (gstreamer1.0-plugins-base_1.20.0.imx.bbappend=
)
>>> contains:
>>> >
>>> > ```
>>> > FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>>> >
>>> > SRC_URI:append =3D "
>>> file://0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
>>> > ```
>>> >
>>> > And the file:
>>> "layers/meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-pl=
ugins-base/0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
>>> exists.
>>> >
>>> > What can I do about this?
>>> >
>>> > Worik
>>> >
>>> >
>>> >
>>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#63047):
>> https://lists.yoctoproject.org/g/yocto/message/63047
>> Unfollow This Topic:
>> https://lists.yoctoproject.org/unft/105973256/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--00000000000047178c0617e90a38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div><div class=3D"gmail_quote"><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><br><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">fudged unto single reposit=
ory. AFAICT<br>
<a href=3D"http://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferre=
r" target=3D"_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a> should be<=
br>
coming from meta-freescale or meta-imx and if you have a unified<br>
metadata tree then this bb file should be somewhere, if not, that<br></bloc=
kquote><div><br></div><div>Which &quot;bb&quot;? =C2=A0 &quot;<a href=3D"ht=
tp://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferrer" target=3D"=
_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a>&quot;?=C2=A0=C2=A0 <br>=
</div><div><br></div><div>I have: layers/openembedded-core/meta/recipes-mul=
timedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-base_1.20.5.bb" ta=
rget=3D"_blank">gstreamer1.0-plugins-base_1.20.5.bb</a></div><div><br></div=
><div>The suffix is different. (<a href=3D"http://1.20.5.bb" target=3D"_bla=
nk">1.20.5.bb</a> V. <a href=3D"http://1.20.0.bb" target=3D"_blank">1.20.0.=
bb</a>) <br></div><div><br></div><div>That looks like the problem.=C2=A0 Sh=
ould I rename this file?</div></div></div></blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">No, that won=E2=80=99t help whoever has put this =
together for you would be the person to help and regenerate it for you incl=
uding right dependencies=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"auto"></=
div><div><br></div></div></div></blockquote></div></div></blockquote><div><=
br></div><div><br></div><div>The &quot;whomever&quot; has gone away, and I =
am on my own!</div><div><br></div><div>Where do I start resolving a depende=
ncy like this?</div><div><br></div><div>Worik<br></div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div><div class=3D"gmail_quo=
te"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 class=3D"gmail_quote"><div></div><div>Worik<br></div><div><br></div><div><=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
means the project missed adding this layer<br>
to your build system.<br>
<br>
if you dont need this recipe then you can ignore failing on bbappends by ad=
ding<br>
<br>
BB_DANGLINGAPPENDS_WARNONLY =3D &quot;1&quot; to yout local.conf<br>
<br>
&gt; ```<br>
&gt;<br>
&gt; The file in mentioned=C2=A0 (gstreamer1.0-plugins-base_1.20.0.imx.bbap=
pend) contains:<br>
&gt;<br>
&gt; ```<br>
&gt; FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;<br>
&gt; SRC_URI:append =3D &quot; file://0001-glupload-don-t-reject-non-RGBA-o=
utput-format-in-_dir.patch&quot;<br>
&gt; ```<br>
&gt;<br>
&gt; And the file: &quot;layers/meta-thisbuild-nxp/recipes-multimedia/gstre=
amer/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-f=
ormat-in-_dir.patch&quot;=C2=A0 exists.<br>
&gt;<br>
&gt; What can I do about this?<br>
&gt;<br>
&gt; Worik<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63047): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63047" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63047</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/1059732=
56/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/unft/105973256/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div></div>

--00000000000047178c0617e90a38--

