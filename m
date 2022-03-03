Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F285C433F5
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 07:34:00 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web09.8526.1646292839094693964
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Mar 2022 23:33:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FrqAfROJ;
 spf=pass (domain: gmail.com, ip: 209.85.217.45,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id d11so4572999vsm.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 02 Mar 2022 23:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FqVTvYyTLPjjr4HbxXJDcpsqOmYQ6Rh6u87UwB8MvQI=;
        b=FrqAfROJ1rxZ0t8ROlUU7VV5IMcuekkUdYO1joO1uAPbR5oxF6Bxf/99DmDMe5mfB6
         T8nXiTch6YeERvI5QlA363C8u5TR49SBoOm49WUqNJYQE6xeV+t3en5L3YSza4PXlQJd
         eJ1CzgTz1VhXoxJyIK1sQF46+jC0FWoTWeKr30tULy9OkyfpfFjnLKPtlhxJUhljXgDE
         hPzgYgQX/X3Nu3tGtcz1sdM9LI9FoQLpErzZWJnv/1CuWL+OrTtkPYFsp3Evkx8Kjbvv
         Xjwc9haTwdLZuZ+LzjGLUhJxCVFmTcmJGtKX+gCIo3GJDMyWUKUm0TKxtBD9Er/+S31n
         Z4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FqVTvYyTLPjjr4HbxXJDcpsqOmYQ6Rh6u87UwB8MvQI=;
        b=VK6GhQ/ia74eBcSoFDbwcqlQPMiepnkoQoTIyKq1QpKh+MH5dWgWOMpSCa8kkV31Vy
         J/esGX3vjikGhVDJDY7NAO+rmDAllv66FU2Z7y+8fOTptZ5AiUlVJrjWvzcMNFxe8PnF
         OpWPTipf5TlHUjd+wa4C981ttyc8c9snUQu7F+5e+c8nco5FQw5DfKFgAHIbgkRo74Ka
         JBmPNQNWxvccwF8CKw6UtDzvBaPIzU9Ezptr5tmwkHlYmGAgGZ3la3zFbsQmrefIJlQp
         vYN1gvE0vbRpn5ewKw/3DAP64YKtUQufGxYN4LqBKa7i48Sq76kcFBruujKO3j1sjvv3
         pGNQ==
X-Gm-Message-State: AOAM533wNt9DN7ArXDYgerAhacQnLG3AMvETQuTgRUcBSmy/jQYHyt2V
	0UGekftwY+p509j4Dw6uRZ+6xdtmijBocBnTfko=
X-Google-Smtp-Source: 
 ABdhPJyJgOe5up7teUeb+ckATg9v46LeUoa5As6stAgd6i+XmV/+TYUDPyp/D+zOjvAeik+oQnDJ9wMuXu9IsUF8gDs=
X-Received: by 2002:a05:6102:5589:b0:31b:dff9:3ddb with SMTP id
 dc9-20020a056102558900b0031bdff93ddbmr14299833vsb.62.1646292838141; Wed, 02
 Mar 2022 23:33:58 -0800 (PST)
MIME-Version: 1.0
References: <20220222022847.1392656-1-raj.khem@gmail.com>
 <20220222141604.GA40656@localhost>
In-Reply-To: <20220222141604.GA40656@localhost>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 3 Mar 2022 08:33:47 +0100
Message-ID: 
 <CA+chaQeN_N_aFnV=kcddovjq4qCqQwvsU5nMqDy0aCvzb0SjNw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] layers: Bump to use kirkstone
To: Trevor Woerner <twoerner@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d052fc05d94b6b31"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 07:34:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56352

--000000000000d052fc05d94b6b31
Content-Type: text/plain; charset="UTF-8"

Hi,

can you please create honister branch.

I think 17703ee37b46d15ec369588fbb86dde336df6028 commit (just before this
kirkstone change was applied) would be reasonable branching point.

Now there isn't any branch compatible with Honister release.

Thanks

On Tue, Feb 22, 2022 at 3:16 PM Trevor Woerner <twoerner@gmail.com> wrote:

> On Mon 2022-02-21 @ 06:28:47 PM, Khem Raj wrote:
> > its not going to be backward ABI compatible with honister due to
> variable renaming.
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  conf/layer.conf | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
>
> Applied to meta-rockchip master and kirkstone.
> Thanks!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56239):
> https://lists.yoctoproject.org/g/yocto/message/56239
> Mute This Topic: https://lists.yoctoproject.org/mt/89309323/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d052fc05d94b6b31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>can you please create honister bran=
ch.</div><div><br></div><div>I think=C2=A017703ee37b46d15ec369588fbb86dde33=
6df6028 commit (just before this kirkstone change was applied) would be rea=
sonable branching point.</div><div><br></div><div>Now there isn&#39;t any b=
ranch compatible with Honister release.</div><div><br></div><div>Thanks</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Feb 22, 2022 at 3:16 PM Trevor Woerner &lt;<a href=3D"mailto:twoe=
rner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">On Mon 2022-02-21 @ 06:28:47 PM, Khem Raj=
 wrote:<br>
&gt; its not going to be backward ABI compatible with honister due to varia=
ble renaming.<br>
&gt; <br>
&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 conf/layer.conf | 2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
Applied to meta-rockchip master and kirkstone.<br>
Thanks!<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56239): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56239" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56239</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89309323/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89309323/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d052fc05d94b6b31--

