Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2D24C433EF
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 21:31:12 +0000 (UTC)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
 [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web08.19437.1643232672327898851
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 13:31:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hKt985zW;
 spf=pass (domain: gmail.com, ip: 209.85.222.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id u76so1209658uau.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 13:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NZEdQ+CyCcY5DchQkKeaVbymyKQ/VgvyD03ZiXtHMWc=;
        b=hKt985zWmjwz8BSAJ54BUNIwnGs6xYsYmj5/jA4Dr8IAYUWcWueT1/2VtjesjDJ5ty
         RvCEjolEDpN4Tewm1ztwy2Z7QJJAoIIZeUglQTCwTSpzGOA3x8qQmD3eEQAKZe4zb8uQ
         meGd4G6SXeWh3+Sdvo7gt+NNoMaVGD+2ZcXUvcdhm/4FiPrMWLZcIsF5W7770PyHlkyw
         3ubwqXKDYC/WzM3gp+PNX2afGBRNwm84xAM0RBdUC0p+7qKUkFIquNGgejS0kB5yqtGy
         HaDt7N7SUNLekDRuuBwGlyP6R4PLwFCjVnGkm1FFP8q/J/3ARhvsmwUn+iIWdzr7VeCg
         bT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NZEdQ+CyCcY5DchQkKeaVbymyKQ/VgvyD03ZiXtHMWc=;
        b=bz1C3yqU01RAyF3l0t2/rwTlTfPswXu6GvrUVAV9ZfHhOChw6lPCnBGVH4AMjc/EOz
         1t6joTookEAjs4jDgoCqLfAdAgy5+18qAgfuKhnQgbJEB2cSX8v/d/U6KuUmF9U1iqYZ
         Xqh4t29HGDnI92yP77IwWcwM3W32NsQqL5FTDuoT8dP3suNlKLz4Y6HbNltvmWMFU/xD
         J812XAUTEkBGRWZdsQV3BWKYuYa20TEuguGJRBKQNd9XRe0jFx0MxizK7sLwSW7WBDsI
         IiHWxIRtJ3FkbNYKU3+Yb0DV/EHZ3SqlaDPj7PP5EBRjfvctDsn+8t9OkR9XC2rC4M7d
         m6EQ==
X-Gm-Message-State: AOAM5303JS/ZPf8q200IbsWdiLEbGlQyjrkX9w+4iIu+JHeDRv6Kc6dq
	BaDph28usxcZzx736lXd9XWpFl4ZNRj+IECq+nM=
X-Google-Smtp-Source: 
 ABdhPJwZEvWFK6iNbJ2QlFkXXtkD9H/M2suA71i8zmQabxNqcX8CfgAE1VdoCYSqb/YZ0hy0auASlpmyBHUkOeVu4Q8=
X-Received: by 2002:a9f:2c0a:: with SMTP id r10mr484526uaj.89.1643232671372;
 Wed, 26 Jan 2022 13:31:11 -0800 (PST)
MIME-Version: 1.0
References: <16CDAE6528BAE915.24088@lists.yoctoproject.org>
 <8885103.CDJkKcVGEf@linc>
In-Reply-To: <8885103.CDJkKcVGEf@linc>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Jan 2022 22:31:00 +0100
Message-ID: 
 <CANNYZj_bHcpHzYj_v36hT0_NEsVqHcqTNt8xgcPw4i1HmpRY+w@mail.gmail.com>
Subject: Re: [yocto] Additional hardening options
To: Paul Eggleton <bluelightning@bluelightning.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a9180105d682eb5f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 21:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55988

--000000000000a9180105d682eb5f
Content-Type: text/plain; charset="UTF-8"

I guess you can submit a patch, and it can be taken for a spin on the
autobuilder?

Alex

On Wed, 26 Jan 2022 at 22:17, Paul Eggleton <bluelightning@bluelightning.org>
wrote:

> On Wednesday, 26 January 2022 14:39:39 NZDT Paul Eggleton wrote:
> > Hi folks
> >
> > I've been looking into a couple of compiler flags for hardening that I
> think
> > we might want to consider enabling by default in security-flags.inc:
> >
> >
> > 1) -fstack-clash-protection
> >
> > This option was introduced to gcc 8.x and provides protection against the
> > stack clash vulnerability:
> >
> >
> https://securingsoftware.blogspot.com/2017/12/stack-clash-vulnerability.html
> >
> > It has been enabled in some Linux distributions already (e.g. Ubuntu,
> > Fedora).
>
> Another quirk of this - with dunfell, the buildepoxy SDK test fails on
> Ubuntu
> 18.04 with -fstack-clash-protection because the version of meson in
> dunfell
> uses the same LDFLAGS value for both host and target, and host gcc doesn't
> support that option. Not sure what to do other than just filtering out the
> option from LDFLAGS in the test.
>
> Cheers
> Paul
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55987):
> https://lists.yoctoproject.org/g/yocto/message/55987
> Mute This Topic: https://lists.yoctoproject.org/mt/88687579/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a9180105d682eb5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I guess you can submit a patch, and it can be taken f=
or a spin on the autobuilder?</div><div><br></div><div>Alex<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, 26 Jan 2022 at 22:17, Paul Eggleton &lt;<a href=3D"mailto:bluelightning@b=
luelightning.org">bluelightning@bluelightning.org</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">On Wednesday, 26 January 2=
022 14:39:39 NZDT Paul Eggleton wrote:<br>
&gt; Hi folks<br>
&gt; <br>
&gt; I&#39;ve been looking into a couple of compiler flags for hardening th=
at I think<br>
&gt; we might want to consider enabling by default in security-flags.inc:<b=
r>
&gt; <br>
&gt; <br>
&gt; 1) -fstack-clash-protection<br>
&gt; <br>
&gt; This option was introduced to gcc 8.x and provides protection against =
the<br>
&gt; stack clash vulnerability:<br>
&gt; <br>
&gt; <a href=3D"https://securingsoftware.blogspot.com/2017/12/stack-clash-v=
ulnerability.html" rel=3D"noreferrer" target=3D"_blank">https://securingsof=
tware.blogspot.com/2017/12/stack-clash-vulnerability.html</a><br>
&gt; <br>
&gt; It has been enabled in some Linux distributions already (e.g. Ubuntu,<=
br>
&gt; Fedora).<br>
<br>
Another quirk of this - with dunfell, the buildepoxy SDK test fails on Ubun=
tu <br>
18.04 with -fstack-clash-protection because the version of meson in dunfell=
 <br>
uses the same LDFLAGS value for both host and target, and host gcc doesn&#3=
9;t <br>
support that option. Not sure what to do other than just filtering out the =
<br>
option from LDFLAGS in the test.<br>
<br>
Cheers<br>
Paul<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55987): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55987" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55987</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88687579/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88687579/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a9180105d682eb5f--

