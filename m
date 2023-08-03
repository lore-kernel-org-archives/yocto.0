Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F6BC001DF
	for <webhook@archiver.kernel.org>; Thu,  3 Aug 2023 12:56:18 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web10.13867.1691067375737063268
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Aug 2023 05:56:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=aKzU54EX;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2b703a0453fso14038951fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 05:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691067374; x=1691672174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sbAJxifFel7xp5W75ZFiyHzWbkozw0//QaOKqUsfpVY=;
        b=aKzU54EXj2RpaH30TOiQaAxDxPzfavWnvr9irv7GwXTGScvXBT0jJWEWInNKxXsj3m
         GuLK9Mp7IMSZXRl9bcVQ4CBpTjivOsxu0cZ3f0kmF3AnPb8Twmyi11i0Yq3kWyLbuXWx
         IJwF5JyKf0MeuipzF/Wbcc1A/5CGvdn7fk8onypzP2TVq/L1wqcxACrXe+IJ46TUo4Xc
         kTjy26trKC6/fSDW4jSCR7ZmaXjFlS3Y/UBmxmsgd+5K22IS/9DiA8f7qnSfeNNg2zU+
         gJF+ZlMEOKoIYNlquQFR+jAWZv925MIgJ7Fzgjnji+8/yoywEYjQlfs0SytPgotU9Mcl
         3hkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691067374; x=1691672174;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sbAJxifFel7xp5W75ZFiyHzWbkozw0//QaOKqUsfpVY=;
        b=Jh6Vw0148HSwQ7gpb09v5abcw4M+WeyV5fadEaw4IMDyUlikqAqJI6HSLREyD2VL26
         RbMKizUp44pjGDT0GfoSw7Aw2QEnShiMW4BwZ8LD/9buHUfIzrMEkVLPRgZG5IGLh3C/
         dhFR6QzBDFAFPbqeXoLzx0WrGwPvQ+RfO5zuMzwrp/maczHucOzSdYwvNGLv4R7kN+J6
         Kpxu2lMIn8Cm45l0+s6u/eBZ4hjs7BSyfeYlAjhGfN5W5hoXiKZ2MtyC86tQ2y5KD+77
         nuOTurRji69umF4Nslj0UFZPc1RgKv0deIm8ZTRQzJeia4hDrmLvvOEU2ONec+sDsAD+
         mMAg==
X-Gm-Message-State: ABy/qLaJx5zsIMrZGKANaNrbiC7LS5MFZZIFxjb1DRaYbLm5Paj4e/pe
	2u6VJOVykbJSfJ6p1cx69c5MS4yNGQ1Q1BbBJog=
X-Google-Smtp-Source: APBJJlE60a9aP3rvoiUE2AqKIJ1WI2nNHLUuaDDo+h0LWXp18iAgtZ/toGhjvqK8sfNltGYlXXtpcl5N6uNbmneedRQ=
X-Received: by 2002:a2e:980c:0:b0:2b9:b41a:aa66 with SMTP id
 a12-20020a2e980c000000b002b9b41aaa66mr8351640ljj.20.1691067373576; Thu, 03
 Aug 2023 05:56:13 -0700 (PDT)
MIME-Version: 1.0
References: <Vj2H.1691067079470702399.Lb67@lists.yoctoproject.org>
In-Reply-To: <Vj2H.1691067079470702399.Lb67@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Aug 2023 14:56:02 +0200
Message-ID: <CANNYZj9jXxo9EhP-NcUs5vY+rF1zcExqN8rwQmEqvJc=hFFC2w@mail.gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
To: msenturk <senturkmurat1999@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000017e4e50602044e1a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Aug 2023 12:56:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60706

--00000000000017e4e50602044e1a
Content-Type: text/plain; charset="UTF-8"

It helps if you provide context. Why do you want to do this? What problem
do you need to solve? Both versions have been end of life for a long time,
and the only correct answer is to first transition to something that is
currently supported.

Alex

On Thu 3. Aug 2023 at 14.51, msenturk <senturkmurat1999@gmail.com> wrote:

> Hello everyone, I know It sounds kinda weird but how can I migrate to an
> older version of Yocto? I build an Image using Gatesgarth but now I want to
> build a new Image using Zeus. The documentation I found is generally about
> migration to a newer version. Thank you.
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60705):
> https://lists.yoctoproject.org/g/yocto/message/60705
> Mute This Topic: https://lists.yoctoproject.org/mt/100525085/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000017e4e50602044e1a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It helps if you provide context. Why do you want to do th=
is? What problem do you need to solve? Both versions have been end of life =
for a long time, and the only correct answer is to first transition to some=
thing that is currently supported.</div><div dir=3D"auto"><br></div><div di=
r=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu 3. Aug 2023 at 14.51, msenturk &lt;<a href=3D"ma=
ilto:senturkmurat1999@gmail.com">senturkmurat1999@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-lef=
t-color:rgb(204,204,204)">Hello everyone, I know It sounds kinda weird but =
how can I migrate to an older version of Yocto? I build an Image using Gate=
sgarth but now I want to build a new Image using Zeus. The documentation I =
found is generally about migration to a newer version. Thank you.=C2=A0
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60705): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60705" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60705</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100525085/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100525085/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000017e4e50602044e1a--

