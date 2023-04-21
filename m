Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A777C77B75
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 07:46:00 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.6490.1682063151926877152
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 00:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@theyoctojester-info.20221208.gappssmtp.com header.s=20221208 header.b=OZl/H+k0;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.54, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-94e53ef6815so176300866b.1
        for <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 00:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20221208.gappssmtp.com; s=20221208; t=1682063150; x=1684655150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qFtQPce2Ndl3P8lSdfPBlaYQdW2Y4tSoOFM05h3HLlk=;
        b=OZl/H+k0i3lVart54XA1UNOzn0E9dtLLZn70o9mFPjik+1Yyq+1aRktueXkX7z25Vl
         k+Q8x+0bwGeo1jVD7WEVfEU65/Ds1UfnsK0g3TfJiLUiJo1VYOMr1cM2hH2VgQ2O1Div
         JZeGzDYWH4IWxQ1z0WRWXey3XhNCj3xpXNf925/lELJEudWpiGnfw/WgdwjYrUyKDIO3
         ZY2zCtaKnQE8uVYMPEiFy4O/WleIOHxbFhoK7FTI4ra9YMvWttmoP1nPj6YhEHS/7keF
         GH96k3lzqoU2KrRkgWOmunfy5MYJStrxzFrlGbNHJjTvShV579Oi6xgtk/jnb5H5fQFn
         YAow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682063150; x=1684655150;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qFtQPce2Ndl3P8lSdfPBlaYQdW2Y4tSoOFM05h3HLlk=;
        b=OrMv6p3k5/biBK/bFdWun6xZM9Lt6HzU7xoMw1ar1q1UlLi0MMw1UOlQ4tDMHT0Ban
         N7xChETYZO4MS/1wuA4ioP9Qj+7RIMvNbkcfJ26hwLqoit+mYqkzoj9UxaeaUtzald+J
         Go9wlLnWBeyl8+C4N8eJqwpkRNmSQKOvQOThSwNaUqWd2tPPopzfEQzrMmpYf4vLZO0W
         TzY4oG4UlQtsKRBfC99QJZlFdiAVaR6grL32z8Ql93L2R7IJ8jZzIjL9XEtM4jjOO1QM
         cIiKOnLJpzNgwtDlS0SxW2vQLO9csganTOfqWYIZpPJiTy4+fAPOLv3WdEnGIu39wCUY
         l1nw==
X-Gm-Message-State: AAQBX9c5PwyE7pf8f5oZO11CzKQVBKjVWhTnYbIyyL7awFeWx68bxdQ0
	1owLNJjaR/XTtLQXsA61JYIP4AqQ4khBrkwGFXp5hg==
X-Google-Smtp-Source: AKy350bCB+x1fJhWm9ZbS22hOqH5a/UarSKgd7n9olltjcAJYPJEtGdQK9771vRJQRLxJHCZSfVgjziGvFOQBhS31Ug=
X-Received: by 2002:a17:906:3f91:b0:931:ad32:79ed with SMTP id
 b17-20020a1709063f9100b00931ad3279edmr1663291ejj.12.1682063150163; Fri, 21
 Apr 2023 00:45:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBngCF34ht+RdS3cNb1ZPLSzobqJXu_pVF_WO+X54pwC7_A@mail.gmail.com>
 <CAMKF1sqnqLLmC4Xpu_TeWTA4ZAESf0JcyS+uSg1GWVFM-=5Y9g@mail.gmail.com>
In-Reply-To: <CAMKF1sqnqLLmC4Xpu_TeWTA4ZAESf0JcyS+uSg1GWVFM-=5Y9g@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 21 Apr 2023 09:45:24 +0200
Message-ID: <CAEt6Nwrr00sdkL1m5P8GBKZWPeZ44eTiCLbTRv_rsG0qz3aQVg@mail.gmail.com>
Subject: Re: [yocto] OTA updates for Application Software
To: Khem Raj <raj.khem@gmail.com>
Cc: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008e3b6005f9d3d88b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 07:46:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59749

--0000000000008e3b6005f9d3d88b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 21, 2023 at 6:01=E2=80=AFAM Khem Raj <raj.khem@gmail.com> wrote=
:

> there are several options that can be used for OTA with yocto project.
>
> mender
> https://mender.io/
> https://github.com/mendersoftware/meta-mender


I am currently working on a comprehensive list of boards/releases that are
directly supported here: https://hub.mender.io/t/board-support-index/5742 -
please note, heavily WIP still.

For transparency, I do work for Mender. Let me know if you need more
details, or drop your question on https://hub.mender.io

Greetz,
Josef

>
>
> a detailed list is here - https://wiki.yoctoproject.org/wiki/System_Updat=
e
>
>
> On Thu, Apr 20, 2023 at 8:53=E2=80=AFPM MOHAMMED HASSAN
> <hassanchattarki@gmail.com> wrote:
> >
> > Hi guys,
> > I wanted to know if it is possible to update your application through
> OTA updates.
> > If yes, then please share some documentation or some steps in achieving
> it.
> > If not, then what other alternatives do we have to update the
> application in our hardware deployed at some remote location.
> >
> > Thanks
> > Hassan
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59746):
> https://lists.yoctoproject.org/g/yocto/message/59746
> Mute This Topic: https://lists.yoctoproject.org/mt/98403981/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000008e3b6005f9d3d88b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Apr 21, 2023 at 6:01=E2=80=AFAM Khem =
Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">there are s=
everal options that can be used for OTA with yocto project.<br><br>
mender<br>
<a href=3D"https://mender.io/" rel=3D"noreferrer" target=3D"_blank">https:/=
/mender.io/</a><br>
<a href=3D"https://github.com/mendersoftware/meta-mender" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/mendersoftware/meta-mender</a></bloc=
kquote><div><br></div><div>I am currently working on a comprehensive list o=
f boards/releases that are directly supported here:=C2=A0<a href=3D"https:/=
/hub.mender.io/t/board-support-index/5742">https://hub.mender.io/t/board-su=
pport-index/5742</a> - please note, heavily WIP still.</div><div>=C2=A0</di=
v><div>For transparency, I do work for Mender. Let me know if you need more=
 details, or drop your question on=C2=A0<a href=3D"https://hub.mender.io">h=
ttps://hub.mender.io</a></div><div><br></div><div>Greetz,</div><div>Josef</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
a detailed list is here - <a href=3D"https://wiki.yoctoproject.org/wiki/Sys=
tem_Update" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctoproject.=
org/wiki/System_Update</a><br>
<br>
<br>
On Thu, Apr 20, 2023 at 8:53=E2=80=AFPM MOHAMMED HASSAN<br>
&lt;<a href=3D"mailto:hassanchattarki@gmail.com" target=3D"_blank">hassanch=
attarki@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi guys,<br>
&gt; I wanted to know if it is possible to update your application through =
OTA updates.<br>
&gt; If yes, then please share some documentation or some steps in achievin=
g it.<br>
&gt; If not, then what other alternatives do we have to update the applicat=
ion in our hardware deployed at some remote location.<br>
&gt;<br>
&gt; Thanks<br>
&gt; Hassan<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#59746): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59746" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59746</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98403981/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98403981/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000008e3b6005f9d3d88b--

