Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD5D8C433EF
	for <webhook@archiver.kernel.org>; Mon, 31 Jan 2022 09:58:35 +0000 (UTC)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web11.30372.1643623114353429410
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 01:58:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qnyy0Crk;
 spf=pass (domain: gmail.com, ip: 209.85.217.52,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id g23so11074988vsf.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 01:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DhgNbcM885jAbZ6MS8TfbXsd43yipBZtO3Tg7Ydm8+A=;
        b=qnyy0CrkUq2coJsYfWV5ol+SKanohW1bCGE8V1Oq01r7L88ll6GoaYKvaR+EGsfoKa
         jWABOa/MeHCtmP3/Y49yipcHQ+2HL4nUT/2tG4b5Wn20Da1ztcVzMWeJCuc0cm1AOJc5
         4/y2qrpqVAIFigzqUHNHOcFKshuPF3kZw/0fSDOt4DI/2GVeKUHtz4KtmQUdqYAbbOb4
         Q0fHInCEslD2AxFfiqBv9+Ml3ule6OHLa6EPiNeIH2BTnp/ww/NI1pOifdN+k6fatfWu
         Z8dvIoSfUYz1yZaf18l0DJ5ewmIhP/3SC9eAnQbr+1pi+mAwDrh6eol3JR7584pNWQ/r
         fbUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DhgNbcM885jAbZ6MS8TfbXsd43yipBZtO3Tg7Ydm8+A=;
        b=rKv+P5ma55H/Nsek/6575eO2kCHOJZBna83N0BWZbqsPzkzaGnbTF603giNxKonxPA
         q/jxpnHyeaT4oCGCPW+ToYo7/tuq7XqA0AkFkBeQsox3eDZex+9osmfr6JLg/dfzHnUd
         hJapIQnmIqEE4qMrs8s7bGM7u0vC7SfURAxm3wPNCMMt4FbPBlz0+PbdKHMiXtzULC4g
         URU7Rei3n4EPa/AJNM1CCKkdKxtIzA11jw4Z7hx1SpEzW4Xv/KvhA4/jEkh2TKD7j586
         pdYngZyulhqMhGiIg4bWfETr2o1XOUbVJt9OH488E3ah48UfPkGPL1ZxVyM+nVHcZePc
         bdGA==
X-Gm-Message-State: AOAM533RU3L0gQi8po3BFMMCVpovlrFEedV41f04xgixbxKpUPYiIW2/
	VcWtrmR0FU6EizFQhqE3rS+8OtEnfp39yGROqPY=
X-Google-Smtp-Source: 
 ABdhPJzKi35LjRumn3nuDLElqqFbkqLwyGxcTBCE7v6bV3QAz/Cq58XD+hWm1Kl5xdlMK2XevWIAfMU7VkaQsHmkz6c=
X-Received: by 2002:a05:6102:22d1:: with SMTP id
 a17mr6244236vsh.42.1643623113469;
 Mon, 31 Jan 2022 01:58:33 -0800 (PST)
MIME-Version: 1.0
References: 
 <CANNYZj_dUpx8Yhh+GDR7v17N9=71x__LKw9ippy4Di+bSUe7iw@mail.gmail.com>
 <10591.1643588560451021723@lists.yoctoproject.org>
In-Reply-To: <10591.1643588560451021723@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 31 Jan 2022 10:58:22 +0100
Message-ID: 
 <CANNYZj8WwbdLu9w6Y+kbOLVPfHLYR5baQ+DXZm_ES+-pi9vKTQ@mail.gmail.com>
Subject: Re: [yocto] How to prevent auto start of matchbox-terminal at boot?
To: dbeal@cardinalpeak.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d2b33c05d6ddd3ba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jan 2022 09:58:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56027

--000000000000d2b33c05d6ddd3ba
Content-Type: text/plain; charset="UTF-8"

The logs reveal that 'packagegroup-core-x11 packagegroup-core-x11-base
packagegroup-core-x11-xserver' are all installed. x11-base pulls in
recipes-graphics/mini-x-session/mini-x-session_0.1.bb which starts a
minimal session with a terminal. You should either drop x11-base, or tweak
mini-x-session script to do what you want.

Alex

On Mon, 31 Jan 2022 at 01:22, Dave Beal via lists.yoctoproject.org <dbeal=
cardinalpeak.com@lists.yoctoproject.org> wrote:

> Thanks, Alex.  The log file is attached.
>
> By the way, I'd be happy with a solution that involves changing a file on
> the target system after the Yocto build is complete.  The fix doesn't need
> to be in the Yocto build.
>
> = Dave
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56025):
> https://lists.yoctoproject.org/g/yocto/message/56025
> Mute This Topic: https://lists.yoctoproject.org/mt/88794356/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d2b33c05d6ddd3ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The logs reveal that &#39;packagegroup-core-x11 packa=
gegroup-core-x11-base packagegroup-core-x11-xserver&#39; are all installed.=
 x11-base pulls in recipes-graphics/mini-x-session/<a href=3D"http://mini-x=
-session_0.1.bb">mini-x-session_0.1.bb</a> which starts a minimal session w=
ith a terminal. You should either drop x11-base, or tweak mini-x-session sc=
ript to do what you want.</div><div><br></div><div>Alex<br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 31=
 Jan 2022 at 01:22, Dave Beal via <a href=3D"http://lists.yoctoproject.org"=
>lists.yoctoproject.org</a> &lt;dbeal=3D<a href=3D"mailto:cardinalpeak.com@=
lists.yoctoproject.org">cardinalpeak.com@lists.yoctoproject.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks, Alex=
.=C2=A0 The log file is attached.
<div>=C2=A0</div>
<div>By the way, I&#39;d be happy with a solution that involves changing a =
file on the target system after the Yocto build is complete.=C2=A0 The fix =
doesn&#39;t need to be in the Yocto build.<font color=3D"#888888"><font col=
or=3D"#888888"><br></font></font>
<div>=C2=A0</div>
<div>=3D Dave</div>
<div>=C2=A0</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56025): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56025" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56025</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88794356/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88794356/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d2b33c05d6ddd3ba--

