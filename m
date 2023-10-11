Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32964CD6E53
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 09:19:20 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web10.12516.1697015953361319271
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 02:19:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d3cKvbSV;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7ae1a075fc5so2864225241.3
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 02:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697015952; x=1697620752; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=i+7UMHt9RHkhtzONxm0NRUqGTXQnLGL2Wtj22483PE4=;
        b=d3cKvbSVXhBlG0A16BsgBDsKWd7yaxjULn2jb0jS/ZqQswXyQVvvprtFwl3GmOa6yl
         O/DdqvjYheVoJ5A9NQwem9EVUnGVSXQwe/pKDCqajIJ8ZORfHf31BP0kAIKaN0SY93vY
         MkiDydpCNG75k1v0SgL1SfGZMPoKMB5sZR1or+mHmGFeW/z6xTd9BP7iv8JleeuOkh8Z
         ymruT2xra/HjRqCtqvCaF01R1Gkx6pFlakgYXoyNOF4ZWBUcnhvnkc6tPcv15gAZlijJ
         42krY5MLFnY9GgTorYG75C8OmTxhVVAqo8blEjYn/LGQUus7JDkkWRYwq4P14Vn6d5J9
         nkDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697015952; x=1697620752;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i+7UMHt9RHkhtzONxm0NRUqGTXQnLGL2Wtj22483PE4=;
        b=DRLhjojMYM/vEVYfKanR7WOkrD+dj9M5lYYRum/1DlZeSW1qpPqjQe2/Kg5X0qM4UM
         LweklLcjzTO1idjYt20jEXU3IYpmmtQkWJsupKsC8fJwK2bEAvKRHZcFWH52NODv8sAk
         N0KurG6t6W9TsWY+/JeJo1lGOWgdlpr1tSROz7cpUjaeZQiMCf0gQ6Xm8bUefhpa8OTG
         FZxQBRUP5az8ojt0UftudcFkocJynXqziFVpYsSXB/P9abiN7p/aYd+6eV5XUFlYVg3B
         KkljmLVhiQozPoZBPfRaV3ShcrK2hSNBO9H54O7JNu4Tr4o6UN6XfVuYguXwexVm9Z+r
         JrMw==
X-Gm-Message-State: AOJu0YyiDk27XO3TKtfummPewO6YIZacMR13Dbpu6IqDqtoNZjDLJU7y
	tgZiuDh43Kf0Qdd/faB4JvbTsvQhegTJswy2aLw=
X-Google-Smtp-Source: AGHT+IFR+bmFalOLtgSd5HLgpxDm/NF0GdX+oD4Ia4RRHZ7Qlvq9IhXMpqRtcViWUe+L/cwKpttMg/zfUTk1JkFl16s=
X-Received: by 2002:a67:ec52:0:b0:450:f3aa:f405 with SMTP id
 z18-20020a67ec52000000b00450f3aaf405mr19851183vso.17.1697015952380; Wed, 11
 Oct 2023 02:19:12 -0700 (PDT)
MIME-Version: 1.0
References: <wTIm.1696959342097874087.njEw@lists.yoctoproject.org>
In-Reply-To: <wTIm.1696959342097874087.njEw@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 11 Oct 2023 10:19:01 +0100
Message-ID: <CANPvuRk+Yh9VDURJA2wN5EfZdsQbtRe=rfZe+vDZPVd_Yi1=yQ@mail.gmail.com>
Subject: Re: [yocto] Re-building out-of-tree modules after kernel change
To: jamesbrowning137@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000051ed106076d51e0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 09:19:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61319

--000000000000051ed106076d51e0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi James

There is an open bug for this, please take a look.
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14885

Jose


<jamesbrowning137@gmail.com> escreveu no dia quarta, 11/10/2023 =C3=A0(s) 0=
9:35:

> Hello,
>
> I'm having an issue with out-of-tree modules not automatically re-buildin=
g
> after a change to the kernel config. It seems like there may be an issue
> with the dependency chain for make-mod-scripts and modules.bbclass:
>
> How I expect it to behave:
> Doing *bitbake -c cleanall make-mod-scripts* should cause all out-of-tree
> modules to re-compile the next time they are built, since module.bbclass
> has  *do_configure[depends] +=3D "make-mod-scripts:do_compile"*
>
> How it actually behaves:
> After doing a *bitbake -c cleanall make-mod-scripts && bitbake
> hello-world *(where hello-world is my out of tree module), the
> hello-world module is not re-compiled. During the build of hello-world, i=
t
> re-builds make-mod-scripts, but none of the tasks for hello-world are
> re-run. This is the case for all of my out-of-tree modules.
>
> I am using Yocto 4.0 (kirkstone).
>
> Thank you for your help!
> James
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61315):
> https://lists.yoctoproject.org/g/yocto/message/61315
> Mute This Topic: https://lists.yoctoproject.org/mt/101892820/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000051ed106076d51e0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi James<br><br>There is an open bug for this, please take=
 a look.<br><a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D=
14885">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14885</a><br><br=
>Jose<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">&lt;<a href=3D"mailto:jamesbrowning137@gmail.com">james=
browning137@gmail.com</a>&gt; escreveu no dia quarta, 11/10/2023 =C3=A0(s) =
09:35:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br=
><br>I&#39;m having an issue with out-of-tree modules not automatically re-=
building after a change to the kernel config. It seems like there may be an=
 issue with the dependency chain for make-mod-scripts and modules.bbclass:<=
br><br>How I expect it to behave:<br>Doing <strong>bitbake -c cleanall make=
-mod-scripts</strong> should cause all out-of-tree modules to re-compile th=
e next time they are built, since module.bbclass has=C2=A0 <strong>do_confi=
gure[depends] +=3D &quot;make-mod-scripts:do_compile&quot;</strong><br><br>=
How it actually behaves:<br>After doing a <strong>bitbake -c cleanall make-=
mod-scripts &amp;&amp; bitbake hello-world </strong>(where hello-world is m=
y out of tree module), the hello-world module is not re-compiled. During th=
e build of hello-world, it re-builds make-mod-scripts, but none of the task=
s for hello-world are re-run. This is the case for all of my out-of-tree mo=
dules.<br><br>I am using Yocto 4.0 (kirkstone).<br><br>Thank you for your h=
elp!<br>James
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61315): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61315" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61315</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101892820/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101892820/5052612</a><br>
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

--000000000000051ed106076d51e0--

