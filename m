Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30F2FC433EF
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 13:16:09 +0000 (UTC)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
 [209.85.221.174])
 by mx.groups.io with SMTP id smtpd.web10.31334.1641820567921612748
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 05:16:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VUqV8qfh;
 spf=pass (domain: gmail.com, ip: 209.85.221.174,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f174.google.com with SMTP id h16so752188vkp.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jan 2022 05:16:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UOXjQkimv/gN+psp+uUqFzQPtKLO9V2g/KegECFM8c4=;
        b=VUqV8qfhgxuwalj/GfaQNL5uWPbPgDUbgJ7DpFJIGp1Y8Wn8ESlPn2ZtwjYO/Mozud
         3JfQbuTHhowT6s/pEe5cT+HgTDLFCaU8eNxnyWTygnmP+sB5mSXb3niJe7e5A8nLCe76
         HeigSFg6Mkho0lNYidOUzu8Fp7JYBLPXvP9Eqm87pHTJxKDy/Sn2Fur2ClrJVzQvl15j
         HbJ4giS4laraAQafV1+Zae+hgkuYe6eVXvkYEjD+kOJ8qlPS6/K9wlRZ7KISco8r3VDm
         zIcE2gPoEFCw+tg8yGSMWq5yi2DgEgWY3XaoFoSH35c4AHeyGO7uOU5vWtCzbFY7kE8f
         yQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UOXjQkimv/gN+psp+uUqFzQPtKLO9V2g/KegECFM8c4=;
        b=O/pVc8f0acDfJLezUWO0Cz0W74VjDC57xtJs0nt1KKV8YRR1asWu8vndwO1v03Ik+8
         rXc5qN7WlmVGTCn1yuuQhwDYGd4q/NxrudP4Ooe9+0TwbzvyhDSsZk1XGe4aQSj8j9ul
         Jly+sB5VGEJjot4WTdmow+8cSGWGPBtzS84kz8LKUGh0rs7FYIDro6q6RAb0ZqGDg0hH
         XWxCdIbo5uSRk5pTDlI8z/gjKnmBc/7g358SkEqlsWuho36RDjs4dTK8pEdpoGUvRqzl
         kjLXxXdu9y8PceB4aNcwPbeD98Ygp+TU8anStp8HD48TRf4XAA85hEKqwIViJJe9Hppq
         Bp+g==
X-Gm-Message-State: AOAM533Mux/HNOi2qzfjxCvotdgvExwaNrLo+3rcG2zViByYSPws8vpW
	JYEClXEDHdzYQ24drCXcgiEYO3bYOuMPANasItg=
X-Google-Smtp-Source: 
 ABdhPJwKdPvhzRrgXG+zn8Gg2Vx4/23gS4uJ1GdQaXAZYpMJxMaGQClPqYHkQIHiIyP5D1iKdOimPxzP71YB+4g+aTw=
X-Received: by 2002:a05:6122:1354:: with SMTP id
 f20mr15479262vkp.21.1641820567064;
 Mon, 10 Jan 2022 05:16:07 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAKAnv4FS33+yfaoYRo3nC=odXT_VKmdsYoWpE6zb7f9fRXyB5A@mail.gmail.com>
In-Reply-To: 
 <CAKAnv4FS33+yfaoYRo3nC=odXT_VKmdsYoWpE6zb7f9fRXyB5A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 10 Jan 2022 14:15:55 +0100
Message-ID: 
 <CANNYZj_7Xx9=syXCbEZUMoSW9GkO=PiqzuH9VTgbYgNLnDV6Cg@mail.gmail.com>
Subject: Re: [yocto] rebuilding images
To: Ivan Riabtsov <ivriabtsov@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000af546405d53a231a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 13:16:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55772

--000000000000af546405d53a231a
Content-Type: text/plain; charset="UTF-8"

Do not remove sstate cache, it is there specifically so that you do not
have to rebuild all the packages.

Alex

On Mon, 10 Jan 2022 at 14:13, Ivan Riabtsov <ivriabtsov@gmail.com> wrote:

> I build the image with the command
>
> #bitbake phytec-headless-image
>
> then I need to add something to the image and I do it like this
>
> #rm -rf tmp sstate-cache deploy
>
> and
>
> #bitbake phytec-headless-image
>
> but this is too long, the question is: what to remove , so as not to
> rebuild all the packages, but so that the package was added to the
> image, for example, I modified local.conf, it was like this:
> IMAGE_INSTALL_append = "mbpoll mosquitto"
> it became like this
> IMAGE_INSTALL_append = "mbpoll mosquitto ntp ntpdate rsyslog"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55771):
> https://lists.yoctoproject.org/g/yocto/message/55771
> Mute This Topic: https://lists.yoctoproject.org/mt/88322460/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000af546405d53a231a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Do not remove sstate cache, it is there specifically =
so that you do not have to rebuild all the packages.</div><div><br></div><d=
iv>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, 10 Jan 2022 at 14:13, Ivan Riabtsov &lt;<a href=3D=
"mailto:ivriabtsov@gmail.com">ivriabtsov@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">I build the image with th=
e command<br>
<br>
#bitbake phytec-headless-image<br>
<br>
then I need to add something to the image and I do it like this<br>
<br>
#rm -rf tmp sstate-cache deploy<br>
<br>
and<br>
<br>
#bitbake phytec-headless-image<br>
<br>
but this is too long, the question is: what to remove , so as not to<br>
rebuild all the packages, but so that the package was added to the<br>
image, for example, I modified local.conf, it was like this:<br>
IMAGE_INSTALL_append =3D &quot;mbpoll mosquitto&quot;<br>
it became like this<br>
IMAGE_INSTALL_append =3D &quot;mbpoll mosquitto ntp ntpdate rsyslog&quot;<b=
r>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55771): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55771" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55771</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88322460/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88322460/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000af546405d53a231a--

