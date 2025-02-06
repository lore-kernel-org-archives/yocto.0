Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4A4C02198
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 08:27:03 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.35580.1738830413306068116
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 00:26:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=adMQJYos;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ab737e78900so118513766b.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 00:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738830412; x=1739435212; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QgIRseGL3o78GxQaLewGu8TS1sbPeeAa7uC+AtXbo44=;
        b=adMQJYosE2KyPAfhh+BjX3fy/j//NjPN32LqTX3OU4ANfrdUYH1Qr1O1CmKYA/5Ua3
         yg5cT9QgyGN4hVcBcNcTqVhXNgPn+nvd7tTaKrhVQErInX446exp94gbPKrpo/IWcPp8
         kbJD18p9+Dm8P7OvX1gbou912H3KcjBrYJBwOVUlAWYfNYWY3H1JkW+bxiQ/gWs5lgyA
         y7Xp9HZhRzKDvJNo8ku6LNLq6PU6Syf2M4QU/z5UZQsqPSkau8UJG0i0VKr9KqE9grC6
         erxuTAdUTLVNCoTYXjY1nWaUxRuTWOrOdru2F3Y+ICjljjVIeeFed5vqlVVUOeT1+XWJ
         QLFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738830412; x=1739435212;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QgIRseGL3o78GxQaLewGu8TS1sbPeeAa7uC+AtXbo44=;
        b=VY4Xl9fh5i0dOHv8FKOknOo/Qmn5/ToDmJDfiMpX6pkGiPagwsYKoqbun9gw9uV03H
         gBSNeqflOzAhxWpug4w4rteCRjG9ztCwPispAjdrMPeM9DuKGLN58q9kcMSAwoYVuwSP
         VfbzXevciE+gTfu7rNQlnVguU2X8fn0rps262CVE2sXed1qkzAni4MY7592xDlYmcpHP
         wi9RC4WVpgH7tp2iYyy8UBx0oug0Ct9gtNOCFucEMyCsHZtqYHSx7mT0puru4GqHQS/x
         EVcVaOR3dG/h+QOq2hffF5L4CFEM5pfFsuAgKqxKMZ3spWzF9/tszlYsJ2mabGWxFCL4
         Suew==
X-Gm-Message-State: AOJu0YzxSgR9zqIlOm6CpCNxRf7OdfgOWnVZnFkKqZ84dMwdtX/5VdHO
	6BF/fUZzijFgJT9wMDWpBaS0WOJROwlq9qcYjpUW8cxuujiAhx6k01k+SChNF97g8BxCFyrhhgd
	97cFSDpnCubbgjxCAm/uz147Qh6o=
X-Gm-Gg: ASbGnct5hYZ/cwnf7AiCmNdyTwf2UxLzevrB3ykDC87Ls7E9T2WifL5F6umMtgUGVM2
	Y/y6ciz2YOZuBcz1eCQTklp5qAQkb2GnH0pYSSKk9tID91PwTBnzlzJs6H4RiWVGWDi6iBw==
X-Google-Smtp-Source: AGHT+IHlcsgGcb7jtiSSk+c8be6OxXzd5miuyqM3vPsyPSI+uS+LjTJYEpGZ4FF1nI4xiZvPny64sDObFsR5WcyU7OM=
X-Received: by 2002:a17:907:7b82:b0:ab6:f89d:5a7 with SMTP id
 a640c23a62f3a-ab75e26358fmr756893066b.34.1738830411165; Thu, 06 Feb 2025
 00:26:51 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBngfbf3h-ARD1O441VMG5PZtrfcGNDN-QGmgi7TYySw2mw@mail.gmail.com>
 <CAMKF1soeaC5uVJLBcHCO0oMVP4Gubcq6po35XUdwwM4eFAkUYw@mail.gmail.com> <CANNYZj8XuaGFVtq34ODWc7pobc-_g30-VEc=B=ZnXPZdz9cKKg@mail.gmail.com>
In-Reply-To: <CANNYZj8XuaGFVtq34ODWc7pobc-_g30-VEc=B=ZnXPZdz9cKKg@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 6 Feb 2025 13:56:39 +0530
X-Gm-Features: AWEUYZmEswDyqA708G67rYEPkfUy1YBT0MLwruNiSex5rqITfWfpAf9tzR-zF1Q
Message-ID: <CAPJWBng-mbFg=u_XNH7yZxWCZfe1yO6dZ96qcg-GacsvFXGUkQ@mail.gmail.com>
Subject: Re: [yocto] Upgrading node version from 16 to 20 in yocto kirkstone
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, raj.khem@gmail.com
Content-Type: multipart/alternative; boundary="000000000000fb7805062d750003"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Feb 2025 08:27:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64724

--000000000000fb7805062d750003
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I get my setup from the vendor and don=E2=80=99t think he has moved to a ne=
wer one.
Still any suggestions are welcome.


On Thu, 6 Feb 2025 at 1:53=E2=80=AFPM, Alexander Kanavin <alex.kanavin@gmai=
l.com>
wrote:

> On Thu, 6 Feb 2025 at 06:35, Khem Raj via lists.yoctoproject.org
> <raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:
> > It is possible, but success and effort will vary depending upon how
> > complex the package is and how hairy the dependencies
> > are. you will have to see if you need  to adjust for yocto syntax
> > changes, new tools, new host tools, new target dependencies etc. so it
> > can be quite a lot or in best
> > cases it will be sticking a backport and it compiling without any other
> changes.
>
> I'd say the greater chance of success would be moving your setup from
> kirkstone to scarthgap.
>
> Alex
>

--000000000000fb7805062d750003
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I get my setup from the vendor and don=E2=80=99t think he=
 has moved to a newer one.</div><div dir=3D"auto">Still any suggestions are=
 welcome.</div><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 6 F=
eb 2025 at 1:53=E2=80=AFPM, Alexander Kanavin &lt;<a href=3D"mailto:alex.ka=
navin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:=
1px;border-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,=
204)">On Thu, 6 Feb 2025 at 06:35, Khem Raj via <a href=3D"http://lists.yoc=
toproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org<=
/a><br>
&lt;raj.khem=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=
=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; It is possible, but success and effort will vary depending upon how<br=
>
&gt; complex the package is and how hairy the dependencies<br>
&gt; are. you will have to see if you need=C2=A0 to adjust for yocto syntax=
<br>
&gt; changes, new tools, new host tools, new target dependencies etc. so it=
<br>
&gt; can be quite a lot or in best<br>
&gt; cases it will be sticking a backport and it compiling without any othe=
r changes.<br>
<br>
I&#39;d say the greater chance of success would be moving your setup from<b=
r>
kirkstone to scarthgap.<br>
<br>
Alex<br>
</blockquote></div></div>

--000000000000fb7805062d750003--

