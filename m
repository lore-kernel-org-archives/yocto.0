Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 790F0C4321E
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 06:06:39 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web10.36162.1669874794944175229
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Nov 2022 22:06:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=c2rtjY29;
 spf=neutral (domain: ibeeto.com, ip: 209.85.219.175, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-yb1-f175.google.com with SMTP id z192so792325yba.0
        for <yocto@lists.yoctoproject.org>; Wed, 30 Nov 2022 22:06:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gICNnHeddFHDAQWMqDvHsuJDtd+OHa/U17WalRofzTs=;
        b=c2rtjY29IIbAaAxw/Q8Hi3X2UbrIixxzLeeOBHo0GEJpNcg9gIRuE469K0ChpJWcUV
         B+h/H15SQH8fkAvmlLjV30uTfqLhuElUzZsF70WV2nR1NIAJV7BfHXhD3RWsuwgy3/Fq
         /F3/dVRfxk3bSklDmUIEkNa7hwYJTD3ZgD/imBEtY7myvjlNwT0YKIoRGFqtVVUrx7kp
         Wr5FX3nfoxmvIeDDO6j3f09CmZ9WNQxgivFbEOnxc9RVUwGS7dFFOl01W3AmTZSAkmUG
         Ki94JXdvyyQRFbTLUTNNt3OZS4jzGsf+r3bwpLJURXFIpmF295R98J9rnewhQPV3kFnY
         osKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gICNnHeddFHDAQWMqDvHsuJDtd+OHa/U17WalRofzTs=;
        b=kSWfkdTZ3a6xQPY7uXVxOWwJDGDLs4ZhGYFuqotcHudJjxw0PI0ye7lYWHuSPxFmx/
         ynLJDyRD2C3VfB67NbPazYtkjY31nacSF/+yKy9tHz9qFNEiUt4LIc8X1V3NWLFL3Hze
         zp5aL8nsZHzahaYsOWA3YpNy1M/1uQ7UOgx9SHaM+OCH6Fs6yvqN5ewoOa9/Y9Mtf2SR
         6dQ4CIKhsqgYd1mAohlNbJeeO83omEi/PBXA3dJWgpBBt30Ukni/AsyPQnBZpA+5Saf/
         ktfadCBwOApiEZ2/NMgfdvK7FFSBtmZ5No48odg95hYxrjHa7/9PX4L5vCGY25DEJsSM
         yNFA==
X-Gm-Message-State: ANoB5plQlmLxSH7kHgkTAR21ZfQf2HeV76EtLz1SYCzSHcnQssqgGasY
	7aqnPE2ryTt0N3tGlwcJKgU8wAYmHeTtguts4uxf0A==
X-Google-Smtp-Source: AA0mqf7x0O+c9EvHxEvXTf414uwTVbwuPF/2SMRgWnIL+6AJo0YUja20+tEuFCfLdiBpTfanmnrf9ZFdzeaj2cqFGWI=
X-Received: by 2002:a25:3b57:0:b0:6f6:ec71:8edb with SMTP id
 i84-20020a253b57000000b006f6ec718edbmr17229530yba.570.1669874793826; Wed, 30
 Nov 2022 22:06:33 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
In-Reply-To: <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Wed, 30 Nov 2022 22:06:22 -0800
Message-ID: <CAPxNcnfmGrJU9X5xBy034Ndz-zS4cgzwxWaVmmv4Dq4WCYFyjA@mail.gmail.com>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e7e7e305eebe056a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 06:06:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58690

--000000000000e7e7e305eebe056a
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 30, 2022, 20:27 Zoran <zoran.stojsavljevic@gmail.com> wrote:

> Hello to Yocto community,
>
> As I am much more passive yocto wise these few years ( working on
> Android build systems and around, this is also a nightmare, I should
> say ;-) ), I have one Yocto question which I never really understood.
>
> I will ask it by example. I have one layer for the CAN tools and apps
> which I have created 4 years ago:
> https://github.com/ZoranStojsavljevic/meta-socketcan
>
> In there, in conf/layer.conf:
>
> https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master/conf/layer.conf
>
> I have the following line (layers' compatibility):
> LAYERSERIES_COMPAT_meta-socketcan = "sumo thud warrior zeus dunfell
> gatesgarth hardknott honister kirkstone"
>
> I do not understand why we need to explicitly name releases for such
> simple generic layers?!
>

To me this indicates that the maintainer of the layer has tested the
compatibility of his layer with all of these releases of the Yocto Project.

A maintainer of a layer should make a deliberate decision of adding a
release or dropping one from the compatibility list. It should be an
attestation that the layer's compatibility with the releases in the list is
actually maintained and tested.

There have been changes to the syntax to conditional variables. Your layer
might well be compatible with all of the releases and it's great if you
tested it. But it's not a given.

>
> Instead, for a virtual example:
> LAYERSERIES_COMPAT_meta-socketcan = "${AUTOLAYER x}"
>
> So all the layers might be included (or for at least lets say x = 4
> latest releases, where x = 0 would be include all)? I do understand
> that complex layers could NOT have such a definition (because of the
> dependencies), but for the generic layers (as such presented), this
> would be beneficial.
>

I never cared for ${AUTOREV}, which is similar, in the first place for the
very reason that it creates inconsistent behavior. This would do the same
thing. What would the last 4 releases even mean? What is the reference and
where is it obtained from?

>
> Thank you for the answers,
> Zee

_______
>

Best,
:rjs

>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58689):
> https://lists.yoctoproject.org/g/yocto/message/58689
> Mute This Topic: https://lists.yoctoproject.org/mt/95375670/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> rudolf.streif@ibeeto.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000e7e7e305eebe056a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Wed, Nov 30, 2022, 20:27 Zoran &lt;<a href=3D"mailt=
o:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">Hello to Yocto community,<br>
<br>
As I am much more passive yocto wise these few years ( working on<br>
Android build systems and around, this is also a nightmare, I should<br>
say ;-) ), I have one Yocto question which I never really understood.<br>
<br>
I will ask it by example. I have one layer for the CAN tools and apps<br>
which I have created 4 years ago:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/meta-socketcan" rel=3D"nor=
eferrer noreferrer" target=3D"_blank">https://github.com/ZoranStojsavljevic=
/meta-socketcan</a><br>
<br>
In there, in conf/layer.conf:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/meta-socketcan/blob/master=
/conf/layer.conf" rel=3D"noreferrer noreferrer" target=3D"_blank">https://g=
ithub.com/ZoranStojsavljevic/meta-socketcan/blob/master/conf/layer.conf</a>=
<br>
<br>
I have the following line (layers&#39; compatibility):<br>
LAYERSERIES_COMPAT_meta-socketcan =3D &quot;sumo thud warrior zeus dunfell<=
br>
gatesgarth hardknott honister kirkstone&quot;<br>
<br>
I do not understand why we need to explicitly name releases for such<br>
simple generic layers?!<br></blockquote></div></div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">To me this indicates that the maintainer of the laye=
r has tested the compatibility of his layer with all of these releases of t=
he Yocto Project.</div><div dir=3D"auto"><br></div><div dir=3D"auto">A main=
tainer of a layer should make a deliberate decision of adding a release or =
dropping one from the compatibility list. It should be an attestation that =
the layer&#39;s compatibility with the releases in the list is actually mai=
ntained and tested.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Ther=
e have been changes to the syntax to conditional variables. Your layer migh=
t well be compatible with all of the releases and it&#39;s great if you tes=
ted it. But it&#39;s not a given.</div><div dir=3D"auto"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">
<br>
Instead, for a virtual example:<br>
LAYERSERIES_COMPAT_meta-socketcan =3D &quot;${AUTOLAYER x}&quot;<br>
<br>
So all the layers might be included (or for at least lets say x =3D 4<br>
latest releases, where x =3D 0 would be include all)? I do understand<br>
that complex layers could NOT have such a definition (because of the<br>
dependencies), but for the generic layers (as such presented), this<br>
would be beneficial.<br></blockquote></div></div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">I never cared for ${AUTOREV}, which is similar, in the =
first place for the very reason that it creates inconsistent behavior. This=
 would do the same thing. What would the last 4 releases even mean? What is=
 the reference and where is it obtained from?</div><div dir=3D"auto"><div c=
lass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Thank you for the answers,<br>
Zee</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
_______<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Best,</div><div dir=3D"auto">:rjs</div><div dir=3D"auto"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58689): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58689" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/58689</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95375670/3617=
932" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/95375670/3617932</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_=
blank" rel=3D"noreferrer">rudolf.streif@ibeeto.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000e7e7e305eebe056a--

