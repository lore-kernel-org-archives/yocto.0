Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2442C7EE2E
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 09:48:27 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
 by mx.groups.io with SMTP id smtpd.web11.9426.1686304105433432613
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jun 2023 02:48:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Uz0xeK14;
 spf=pass (domain: gmail.com, ip: 209.85.210.50, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-6b16c53a85aso512199a34.2
        for <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 02:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686304104; x=1688896104;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nYLeReoAP1zp5FO8AzZPDMpF++tS2+tptw1XwIeTyjI=;
        b=Uz0xeK14mLN2EgH+RAGmjNSLhcUVXPqF7I7Dn8SkahvPqdACMnUGoAow6M8vYGRTVi
         qHkN3p7GK5US3xFzg4qnXiqWJGQAB9dPPk9C0LHQoHhDjDDwoiiLIyAK+aZJiKaWUAJ9
         tM9U6aaY3BgVhaRy6h3tWGLisIererRqv50ZCEGKlUkdikZIb8IK7ihGk5994dug3Vtw
         QwRWeczYYanzOsoRO/UCszwi/KU9MF/kWnd1U+ID0qZRhZcsJYpK6dclVZSv3WBebeVK
         i+XMTd5mjyCQwBAUI3gIvDG2N9fhA9W94gIQoEzTzwOUZWLWl3ALaFycSU5e3Db0tUSC
         xKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686304104; x=1688896104;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nYLeReoAP1zp5FO8AzZPDMpF++tS2+tptw1XwIeTyjI=;
        b=gbQfMLud29Xskfj/+B/jVeVykpTxQElsM4lnYF9RlnycP6VKe4TxRcXIhWGhQPTGkc
         HKfTEmKthLBmOjESVjGJMmpKUGsLZBT/rFRrye0b/iLIhWJwasGdJB3XszbAJjqT0XGe
         jAYQg4EzEPHzoskXPJStcojBOwIcYrsOSgBCrJLz5FTFZ3wPBROX+blos6lcWNXfHMhA
         W/LqusbUqTqWmpiexv2eNnO2O4B8jQ6ONURSZFStPNLLy8B8RFZYByGSuD9kXihuZ6qp
         fBN5dmW9xMg81qzmIY8/rFx9EZufi7erv3fz8vcMcRDgD5hSIWuIXiOlj/+GELSGvsod
         YZcg==
X-Gm-Message-State: AC+VfDzSkkfnD3SyRLpJ5rJH8qZ0a88wtKsGyE33vqSi5ryn9A9ADCnq
	IB1LsFRZ9gFVDFNm8xwguNBSQgZQquJ7WmRk4I0=
X-Google-Smtp-Source: ACHHUZ4h/PTm7Ra46r2dcJwxMyQTmksCNQNphWUVyxcsdcPtO43qiltOYQsf4JIQm9wWAn2e37w0o1klkA1jixP77jY=
X-Received: by 2002:a05:6358:9daa:b0:125:7bb3:1c07 with SMTP id
 d42-20020a0563589daa00b001257bb31c07mr965198rwo.13.1686304104423; Fri, 09 Jun
 2023 02:48:24 -0700 (PDT)
MIME-Version: 1.0
References: <45cbf446-e76c-1533-507d-cc48f6696de@spiteful.org>
In-Reply-To: <45cbf446-e76c-1533-507d-cc48f6696de@spiteful.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 9 Jun 2023 10:48:13 +0100
Message-ID: <CANPvuR=SX=Oay9620mFtYqOcqAMD9f6RfKhoGSvWrH679qF0FQ@mail.gmail.com>
Subject: Re: [yocto] Kirkstone Rust 1.68 mixin layer
To: Scott Murray <scott.murray@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000020a6ea05fdaf450d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 09:48:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60237

--00000000000020a6ea05fdaf450d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Scott,

Can this branch be renamed to just rust?

-kirkstone/rust-1.68
+kirkstone/rust

rust is now on 1.70 in core and it would be useful in my opinion to
backport what is in the master and not just the 1.68
https://git.yoctoproject.org/poky/commit/?id=3D5035a8588bb27e029661a500215d=
d4e83f023ac6

Jose


Scott Murray <scott.murray@konsulko.com> escreveu no dia quinta, 11/05/2023
=C3=A0(s) 14:37:

> Just a FYI, the Rust 1.68 mixin layer is now available in the
> meta-lts-mixins repository as the kirkstone/rust-1.68 branch.
> It is synced up with what Steve has queued for Mickledore LTS,
> so it currently provides Rust 1.68.2.
>
> Scott
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59988):
> https://lists.yoctoproject.org/g/yocto/message/59988
> Mute This Topic: https://lists.yoctoproject.org/mt/98827520/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000020a6ea05fdaf450d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Scott,<div><br></div><div>Can this branch be renamed=C2=
=A0to just rust?<br><br><div>-kirkstone/rust-1.68<br></div><div>+kirkstone/=
rust<br><br></div>rust is now on 1.70 in core=C2=A0and it would be useful i=
n my opinion to backport what is in the master and not just the 1.68<br><a =
href=3D"https://git.yoctoproject.org/poky/commit/?id=3D5035a8588bb27e029661=
a500215dd4e83f023ac6">https://git.yoctoproject.org/poky/commit/?id=3D5035a8=
588bb27e029661a500215dd4e83f023ac6</a><br></div><div><br></div><div>Jose</d=
iv><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">Scott Murray &lt;<a href=3D"mailto:scott.murray@konsulko.=
com">scott.murray@konsulko.com</a>&gt; escreveu no dia quinta, 11/05/2023 =
=C3=A0(s) 14:37:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>Just a FYI, the Rust 1.68 mixin layer is now available in the<br>
meta-lts-mixins repository as the kirkstone/rust-1.68 branch.<br>
It is synced up with what Steve has queued for Mickledore LTS,<br>
so it currently provides Rust 1.68.2.<br>
<br>
Scott<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59988): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59988" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59988</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98827520/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98827520/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div>

--00000000000020a6ea05fdaf450d--

