Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1171C433EF
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 09:03:45 +0000 (UTC)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com
 [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web12.6716.1633683824715352425
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 02:03:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YL4KWMpY;
 spf=pass (domain: gmail.com, ip: 209.85.217.42,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id p2so9723989vst.10
        for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 02:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iFJ3lerdyYQR5AYsupVBw45c3nIQqWYDC7C7PjjFzbw=;
        b=YL4KWMpYgIFAX2x/NMcIH8Mx6yn0pjMey+MWs95CqhcsP/gyQ+mSkdOm5GfLAHtwPv
         P+SrbWZj/0XSVClCme1lHUczhM7uXa5WICBh92Y3d72cCzrZZNzXKIRyn5wtXzZ9MCNk
         FnlQbEg1nVX4jFzViL7xaxbguwEzCBwR7mgSSUXzQ1LQZ5wwvHpQrmdMoIn0PLBgZhmv
         kbfe3l/0ZpEe3TdyZvgRw/ZQ1dtNjr6tA2u7JYyAA1MKzwbA8Fb+83sKe9MvvuC17LHL
         WQDgvtqFKKPVYNMZQklwbw9mfVKl66tH4GhfkRcImONEntL744pKXAp2pv24yjxDwJ1R
         c/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iFJ3lerdyYQR5AYsupVBw45c3nIQqWYDC7C7PjjFzbw=;
        b=alNUlJlDiQOQ3bBz5H5xIleZ0M8y/7IEI4/Oc1N04aVPJXzX54YtBxSNfW+o08CKWH
         A4gP/uJjUUJQP7qvIT9/cKIHPjlQi9REsq+tkSxoeExzI78GoY1OMQkXqo0PGIBgcap/
         spNuT+/zmPcE/X5HBBWNwRu+AB2ok6oDpBGRhKWiCR1orHptZ3cOnufCfT5oTh4GGjRW
         vDY3PIzaLraGSReq/ONf9gTey2RDVp+2pF1Uyp+ZSNpTNLJgQj1xJWKDdzSccO66vwOP
         1Qv7b/E1e94zYFBNGgA3JoMVSbVZ1KpcUcOqeOdHFYUPSUuIAx73oirRf5ybxtv2iCFm
         tsUw==
X-Gm-Message-State: AOAM532ZkMVrXFQkYOmAYb7g9+grUzjKmY5faMYTfUuBmnH1Ax/wXsOX
	xhopLKVf97zO4g7F8cVsRGi6FYBrwdhq5nZ/kGu43UtC
X-Google-Smtp-Source: 
 ABdhPJwBpMZqRRPhhqZMOpGCFwWShvhTCbks2bKmDa2PLjPygJV4EB8xauOAG5PyjhygiQtkPh46LWsq+6dRBoyJQe8=
X-Received: by 2002:a05:6102:11e5:: with SMTP id
 e5mr7461020vsg.7.1633683823889;
 Fri, 08 Oct 2021 02:03:43 -0700 (PDT)
MIME-Version: 1.0
References: <qnXL.1633665729022559214.lAcX@lists.yoctoproject.org>
In-Reply-To: <qnXL.1633665729022559214.lAcX@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 8 Oct 2021 11:03:32 +0200
Message-ID: 
 <CANNYZj_nVZ9P6AULwZ5d0o5MEQYO8ewyOo8-DedMV4g_cVpC9Q@mail.gmail.com>
Subject: Re: [yocto] How to submit/create a new repository in
 http://git.yoctoproject.org/
To: thloh85@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ff90c405cdd3a7f6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 09:03:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54994

--000000000000ff90c405cdd3a7f6
Content-Type: text/plain; charset="UTF-8"

Hello Tien,

I have to ask first: is there a reason you'd like to have it there?

Alex

On Fri, 8 Oct 2021 at 06:02, <thloh85@gmail.com> wrote:

> Hi all,
>
> I'm from StarFive and am working on distro for our risc-v based processor.
> We currently have a repository (
> https://github.com/starfive-tech/meta-starfive) and wish to get the
> repository to be part of git.yoctoproject.org.
> I couldn't find any information on the process to get the repository into
> git.yoctoproject.org. Can someone help show me the process?
>
> Thanks
> Tien Hock
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54990):
> https://lists.yoctoproject.org/g/yocto/message/54990
> Mute This Topic: https://lists.yoctoproject.org/mt/86163136/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000ff90c405cdd3a7f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Tien,</div><div><br></div><div>I have to ask fi=
rst: is there a reason you&#39;d like to have it there? <br></div><div><br>=
</div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, 8 Oct 2021 at 06:02, &lt;<a href=3D"mailto=
:thloh85@gmail.com">thloh85@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Hi all,<br><br>I&#39;m from StarFive a=
nd am working on distro for our risc-v based processor.<br>We currently hav=
e a repository (<a href=3D"https://github.com/starfive-tech/meta-starfive" =
target=3D"_blank">https://github.com/starfive-tech/meta-starfive</a>) and w=
ish to get the repository to be part of <a href=3D"http://git.yoctoproject.=
org" target=3D"_blank">git.yoctoproject.org</a>.=C2=A0<br>I couldn&#39;t fi=
nd any information on the process to get the repository into <a href=3D"htt=
p://git.yoctoproject.org" target=3D"_blank">git.yoctoproject.org</a>. Can s=
omeone help show me the process?<br><br>Thanks<br>Tien Hock
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54990): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54990" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54990</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86163136/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86163136/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ff90c405cdd3a7f6--

