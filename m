Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26067C4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 08:52:52 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.14630.1671612767218558778
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Dec 2022 00:52:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lE0c7aD/;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: chuckwolber@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id w15so14190024wrl.9
        for <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 00:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A4btcDnoJ+i9x/ykMVIJRD+WqE5FT+N1x5dAsj8cH1I=;
        b=lE0c7aD/gIeoLkCwjgFn6hr+uROalVnUa4EYBwE8y7Rjy0d45994cxs8oGiRbo9bqJ
         WN3AvIPPRhFAoVwBzoduQKXSSu1vvssmGwyHgnSqRCHsMIU9EFiUxKJiE5dSkxqaP16K
         auofK3cSrYltEddu8KWDbJEDnqL/2pMoEvRBgJPZW8dV9tsQAnFkNoBoTO+hjAhy7hwB
         NfIBnOpHqNbzt0v5pz1fwLA3zQQ/vd/gO+b8uuTLwvu5IM1Ng8WKaGiROTKJzzDSvg12
         fWJFrjDYP1ohYa9SWVEVWL2l9h3K60nsVYyokRJAaJKXojFKQjY9GXo/9K2w/NgOPv8P
         Fzlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4btcDnoJ+i9x/ykMVIJRD+WqE5FT+N1x5dAsj8cH1I=;
        b=jN80zYximqOiyDOsMvz5w/u0npMRtYLqDb16p7Wf9/Ea1COPM09goHVZpHN7FSuVU1
         G2rA5+0BiqVGa7s0PD76dj2FEfZH9bYbsJgOgkfBH14B4u/ZIsIYhctEG0my9ltbCTUj
         EWHrv/biA/PcE2V4O6xYip76Lc5I+mCqjH9DkZxGNbz8vQu4/v8ypsIiTftvxOL7Tv6V
         NS8Ye3eq5qsViCwZ5aef3Kbu0jnGbQzNCzgiKoUIJYiFhjX87XydJ0BvdlVfWVCXrkn0
         FGR4qZDTJnzDLKstTZtd5gu4meVQhb/fGdUfbhINtCHi1et4gcoP4qphWB+VZCSTs1si
         9TWw==
X-Gm-Message-State: AFqh2ko5k9gaUgf5BtHQTjG24QN2pNkTYM70DdHCiWRcr73VWv1QeNLa
	V0dibsXPyHkIbjC9S9int/2rApizr8aq+OzzzOk=
X-Google-Smtp-Source: AMrXdXvbbRObVU1gD+MZ1y/m0WMR7um1hDS9coKKhz3gcyG/vlUIRXorDkBS5YAv2vXviI+ztFkdxBQwR6jqHcGH2vs=
X-Received: by 2002:a5d:4c4f:0:b0:242:a37:7abf with SMTP id
 n15-20020a5d4c4f000000b002420a377abfmr50585wrt.190.1671612765486; Wed, 21 Dec
 2022 00:52:45 -0800 (PST)
MIME-Version: 1.0
References: <Gz1h.1671611965048742156.TfOD@lists.yoctoproject.org>
In-Reply-To: <Gz1h.1671611965048742156.TfOD@lists.yoctoproject.org>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Wed, 21 Dec 2022 00:52:33 -0800
Message-ID: <CAB=6tBQKsYAQQyuosVOmUYLiteD-p7Zy6grm=A0-Mq_KXOciGQ@mail.gmail.com>
Subject: Re: [yocto] FireFox
To: jovanbosic95@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000016c43505f052ade7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 08:52:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58852

--00000000000016c43505f052ade7
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 21, 2022 at 12:39 AM <jovanbosic95@gmail.com> wrote:

%< SNIP %<

*6. After I start my machine and enter firefox in command line this error
> occurs: no DISPLAY environment variable specified*
>
>
The DISPLAY variable is the host that is running the X server that will
display your Firefox window. Since you said you are running the image as a
virtual machine in VirtualBox, then you probably mean to have an X server
running on your host machine that can display the windows exported by your
virtual machine.

..Ch:W..


-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000016c43505f052ade7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Dec 21, 2022 at 12:39 AM &lt;<a h=
ref=3D"mailto:jovanbosic95@gmail.com">jovanbosic95@gmail.com</a>&gt; wrote:=
</div><div dir=3D"ltr"><br></div><div>%&lt; SNIP %&lt;<br></div><div dir=3D=
"ltr"><br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><b>6. After I start my machine and enter firefox in comma=
nd line this error occurs: no DISPLAY environment variable specified</b><br=
><br></blockquote><div><br></div><div>The DISPLAY variable is the host that=
 is running the X server that will display your Firefox window. Since you s=
aid you are running the image as a virtual machine in VirtualBox, then you =
probably mean to have an X server running on your host machine that can dis=
play the windows exported by your virtual machine.</div><div><br></div><div=
>..Ch:W.. <br></div></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" cla=
ss=3D"gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:=
monospace">&quot;Perfection must be reached by degrees; she requires the sl=
ow hand of time.&quot; - Voltaire</span></b></div></div></div></div>

--00000000000016c43505f052ade7--

