Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E27FCC4332F
	for <webhook@archiver.kernel.org>; Tue, 15 Nov 2022 20:06:06 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web12.5838.1668542765772218599
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Nov 2022 12:06:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jDDBtjy4;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: ticotimo@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id kt23so38856385ejc.7
        for <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 12:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=L3xNyNiOUzUEtDdro8y0MoLMlM2QvCLihNdWgTSnTc0=;
        b=jDDBtjy4o3BG7bPg87zb71Ahhjl7fn9FhpScDD8skCaLo3TN+vf9FD60WrAgGA+fsj
         8EJi5ycUWPXPp6qucULwezvDi1iYKDGFkG66PdfZwEIyQ0vV0kUpU2+0z0zLdPyXAzI4
         s1KDwsYVjQEJMvRdr9wdr8XCsm6ZkROTBRhGRNKuP7l48Wc6Dvlwkw82NlY/ccfXvEjQ
         hXYpCtRYKAR0IUxWIzcOzQv9ya4/5I8cPk0j9x6gk9Em+Epp/GTrJUJyyix41pGcBPy8
         vqDoU1iNXzFZXtjAfBcAr562Ei0HXCg0Kv8kWMEGKPM9PPcFNy+mpuArnPZwBaFBmHJ2
         O66A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L3xNyNiOUzUEtDdro8y0MoLMlM2QvCLihNdWgTSnTc0=;
        b=hHXTijSZ53vgmSw+QIKX4oppJfWP6sIntbQsgakrTaIvS2AyRoIMr0+T0J6h1zupsG
         45OFtMk6rddDSVhXfGSvIM/mCgepE52FbN3eL5QBCyiO9ksjEOogRmU8TH2XXaiiVkPJ
         bPN2eZ13JlEqtM/h+PIzwrvcTWT6VGqtfRV9ljnskh9srzN5CLXG8np1qYXuldjvszw0
         lzoS+128tRsRpZ8OfMXHcTEEkraXW1liSqjFJLcvbntVxTka7aoIl6sO7mGaxMJ4qu4W
         vh5Uxu6pEaLCtFz8H7q3sapQZHjOG5OXniNnTfUYESf5di2heJVik/RPj1jZa+TB8+LT
         luNw==
X-Gm-Message-State: ANoB5pmZ82IR5bG7SUdqJiSSWXYXbYr/a88ljMS4DMPcWFnQx2dhNh4S
	Xk9Q1Tn/VhC+GkVXreKz6sDbcacGYfKc4PPqst4=
X-Google-Smtp-Source: AA0mqf7J32MGnag4UVoGdIFqW8dUUCugSBe5V6+RzNj025DcXMWl3c5+9QYc87RU/mApsJ19jbVifOn1E8Gf6zDvOOs=
X-Received: by 2002:a17:906:4ed8:b0:7ae:d58b:30f8 with SMTP id
 i24-20020a1709064ed800b007aed58b30f8mr13694684ejv.564.1668542763977; Tue, 15
 Nov 2022 12:06:03 -0800 (PST)
MIME-Version: 1.0
References: <CA+cAkepRDYN9y-mbsvn87XPKEgnFhBD6T5f62yR_tkYGS1tCeQ@mail.gmail.com>
 <31404.1668533068136647845@lists.yoctoproject.org>
In-Reply-To: <31404.1668533068136647845@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 15 Nov 2022 12:05:52 -0800
Message-ID: <CANx9H-D0TLuDvHEvFwe=SL780=_szpk_rO9B9hhV8+7zTBiD_g@mail.gmail.com>
Subject: Re: [yocto] Ownership issue during do_image
To: Frederic Martinsons <frederic.martinsons@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bd4eba05ed87e297"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Nov 2022 20:06:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58574

--000000000000bd4eba05ed87e297
Content-Type: text/plain; charset="UTF-8"

Are you building with a docker/podman container?

On Tue, Nov 15, 2022 at 9:24 AM Frederic Martinsons <
frederic.martinsons@gmail.com> wrote:

> Hello list,
>
> Doesn't ring a bell to anybody ? Even the slightest clue will help me to
> continue to track down this weird behavior , nobody have ever problem of
> files/directories rights during image generation ?
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58572):
> https://lists.yoctoproject.org/g/yocto/message/58572
> Mute This Topic: https://lists.yoctoproject.org/mt/94706311/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000bd4eba05ed87e297
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Are you building with a docker/podman con=
tainer?</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, Nov 15, 2022 at 9:24 AM Frederic Martinsons &lt;<a href=3D"m=
ailto:frederic.martinsons@gmail.com">frederic.martinsons@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello =
list,</p>

<p>Doesn&#39;t ring a bell to anybody ? Even the slightest clue will help m=
e to continue to track down this weird behavior , nobody have ever problem =
of files/directories rights during image generation ?</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58572): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58572" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58572</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94706311/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
94706311/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000bd4eba05ed87e297--

