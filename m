Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E190FC433F5
	for <webhook@archiver.kernel.org>; Sun, 26 Sep 2021 10:11:18 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web09.17085.1632651077524724606
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 03:11:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IOzLKFIK;
 spf=pass (domain: gmail.com, ip: 209.85.222.46,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id b15so4353683uaj.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 03:11:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PCgtD49C6dJd4GuFU4Nnlt+nmC/uCLvUTXSN5CXJ/eY=;
        b=IOzLKFIKuxMpcWgOUQ8ZJJeF0PsWeMhaaVrUGv90Z+VNhPbhN1a7HC5ElndW9whshV
         pbC6ifTIywOMLev43RJc0hDv2FjdTcSl+H4VBC3OXud4XHzlm25DZBlhdR1bxR4Icco9
         LdBtQkac353lR5Hi51nfzT8hQA0R/wxszWvB6Hhu/knbXm8VHbbT8AmJrafj3h+qoq1f
         7ThFcdgQvfM70tjgP96Q1HToaJz+BN5o8NxqOTbCWAirhL3u292LfP4vTdy9yWL//B2A
         quW2IGGcqdFIMmwN/7MFi1FuHUzYFpeI+5YwpFY1DLc8gnxt7poO2RqvZF8da5xKhNdy
         8wbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PCgtD49C6dJd4GuFU4Nnlt+nmC/uCLvUTXSN5CXJ/eY=;
        b=o86RQWZK2FjiZjWPE1o0M6Xo4RxHKjS3W77cmInntEEqlGjo4JS92t2i6Rw1eViV1/
         pD8hjO/IVrToI5v5S4OEftiVS2oFU9eXLZ9Q8A2QKg+OUR853141Ak+IIJwmdMeiAgSp
         8y4Z9HmuJpgj7HmBEY5gZnCwLfwTFIbhEcUM+BG5n6bMmkF2QRGc+UFcU+vYDB3U9peN
         Zxnfh1zezqUswK1D+QBaEHD7LstIJGYqVGy8wZulRPaRDCg5DwORVSYYkXo6mOtsXmrA
         yZCKa7ARJOGSV+I0ZsKMDhbG2ObZ92ZfE57wZ4unoX8j8fjILk5w/l5cF9Ib+Ls88Tot
         XIoQ==
X-Gm-Message-State: AOAM5335jvcXgEWWU1D2x8qz9OOi0yYoD96EJb9ihldQFtHtozOseGkY
	AfW7CYKf4bIPWEgERUDpqufWhK0NY62/aY55LsY=
X-Google-Smtp-Source: 
 ABdhPJw3oXPdO79KmDXa1AZ+TwMNOX656ZtspVFCCdqKofqh7yTuIb8YbYUtfBuFB2O+yzSA9j5YRQZ9YWRYLPalX8c=
X-Received: by 2002:ab0:550f:: with SMTP id t15mr15562121uaa.22.1632651076680;
 Sun, 26 Sep 2021 03:11:16 -0700 (PDT)
MIME-Version: 1.0
References: <7263729e-c1d9-4020-93f5-292dc4d4a8b6@www.fastmail.com>
In-Reply-To: <7263729e-c1d9-4020-93f5-292dc4d4a8b6@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 26 Sep 2021 12:11:05 +0200
Message-ID: 
 <CANNYZj_-WnP6jBMM5V3PLZ4Xy30rCi40PPsnYqW0pYbEnWoHGg@mail.gmail.com>
Subject: Re: [yocto] Gtk+3 applications are missing icons.
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000077bda505cce333ce"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 10:11:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54861

--00000000000077bda505cce333ce
Content-Type: text/plain; charset="UTF-8"

The icons are typically provided by adwaita-icon-theme, so you need to
check whether that package is installed, and then whether it's missing
something. strace may help so you see what files are the demos trying to
open.

Alex

On Sun, 26 Sept 2021 at 00:58, Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> Hello all,
>
> I built an image based on core-image and added the package gtk+3-demos.
> I'm using wayland with weston compositor. Unfortunately icons seem to be
> missing. Can anyone give me a hint on what went wrong? I'm on Dunfell.
>
> Here's a screenshot: https://imgur.com/syLzQ1l
>
> Thanks a lot!
> Manuel
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54857):
> https://lists.yoctoproject.org/g/yocto/message/54857
> Mute This Topic: https://lists.yoctoproject.org/mt/85869918/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000077bda505cce333ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The icons are typically provided by adwaita-icon-them=
e, so you need to check whether that package is installed, and then whether=
 it&#39;s missing something. strace may help so you see what files are the =
demos trying to open.</div><div><br></div><div>Alex<br></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, 26 Sep=
t 2021 at 00:58, Manuel Wagesreither &lt;<a href=3D"mailto:ManWag@fastmail.=
fm">ManWag@fastmail.fm</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Hello all,<br>
<br>
I built an image based on core-image and added the package gtk+3-demos. I&#=
39;m using wayland with weston compositor. Unfortunately icons seem to be m=
issing. Can anyone give me a hint on what went wrong? I&#39;m on Dunfell.<b=
r>
<br>
Here&#39;s a screenshot: <a href=3D"https://imgur.com/syLzQ1l" rel=3D"noref=
errer" target=3D"_blank">https://imgur.com/syLzQ1l</a><br>
<br>
Thanks a lot!<br>
Manuel<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#54857): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/54857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/54857</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/85869918/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/85869918/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000077bda505cce333ce--

