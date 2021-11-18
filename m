Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C418C433F5
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 20:08:16 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.web11.1467.1637266095268055903
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 12:08:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=AwzhHLpb;
 spf=pass (domain: gmail.com, ip: 209.85.222.54,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id p37so16354377uae.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 12:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c7wEJFVauRP3ZGRPsBFWufgvYbEna0Bp6HH0mDkh624=;
        b=AwzhHLpbPCGZ7+Z1Idk/z7tYLh7vmEbVBu/uBVOx3gGFSCCkz5FIq3tCDEOyJ8PSUo
         G6QBN2PBta3YI7l/tZUE5F2FxcKyIfLIi/eI7gS+mWPRmtA5Ddo2TdZusK1ZZw6fA6hr
         ErlHzSGltQl4e5WUA5gZ3rDyybmlxo44DsnXBAxiGjEoOYc5ywpzsh6m4vboTx8jKdRd
         Fh6Bj8zTcwlJsxJ9gZqdtFc+WGMS0lDR4idmAtvSZuWTt5W+ASIs7ZNfa8/ZE8SxqQpU
         U9APNQDCsNlopzYnits3ND5VSuEgEo6afaaNXFEkrGpgjgi1mg+0ec4Bbz2cjPgEJJdM
         Yi5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c7wEJFVauRP3ZGRPsBFWufgvYbEna0Bp6HH0mDkh624=;
        b=ybRTbn/ULYPzFcDEdRt93fnVvhVWuKmRHjL66bt8fo6axQaQmnsU/lRwyx98/4w0cy
         onmLbe9zXjS+twY7rouuc0tQz3Mnz66l5kOIZ6gVJPY5k0YNYXhCzdE5p9ZljkcIC9I2
         J/peu8tU7jTKOW6xboO4PTxwZDEC5UOu6Q+gUF7PrKxIT+si8bb54ye+NGlPLza8QBLb
         XEAmFZpfuIyWfPSPonQiUdV/Y/SdrLmwD0wurgzBBkC/yJm8oH0UTMZA0sLPRz/BQU8f
         BW+o/annMjCZs7Hs1hIRjZVde6txCPKuMTPD7YLnnUxQYUuxIODxCrLA81T/SJYNYdw+
         v7+A==
X-Gm-Message-State: AOAM530DJqxSXlf7JtGde/HlgITxhDFNewycssQjYP+JiwO5sc0/I83B
	LMM2Oknf7UjHMqbYsDqRaymfSEUagXeRV5VFnv1QfDEMCyo=
X-Google-Smtp-Source: 
 ABdhPJxzYgRRdbr3/dD3W+k86E2IJrKrgc/iD7HIPbCiHafDiinWEYiO4JQcAF7MX+9nHHXh8otluK2EiPY1F9Yb/dw=
X-Received: by 2002:a67:e15b:: with SMTP id o27mr83950738vsl.61.1637266094247;
 Thu, 18 Nov 2021 12:08:14 -0800 (PST)
MIME-Version: 1.0
References: 
 <CABKMkPJT4W-a0Q13tme_kfe7NX21FiD1pecLk=u0ebMVhBaQTw@mail.gmail.com>
 <CAMKF1srBKUmdEXWqBtpK5s37OEXMhY9LKefCoJ=0YgMMQQ18Yg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srBKUmdEXWqBtpK5s37OEXMhY9LKefCoJ=0YgMMQQ18Yg@mail.gmail.com>
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 18 Nov 2021 12:08:03 -0800
Message-ID: 
 <CABKMkP+j8HhoLdKdz9N1C3zWKDDHi3yEDUFndccWj51AU3X9wQ@mail.gmail.com>
Subject: Re: [yocto] Building -native with clang
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f3548f05d115b7ba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 20:08:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55365

--000000000000f3548f05d115b7ba
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll check it out.

This works:

DEPENDS += "\
    compiler-rt \
    libcxx \
    llvm \
    "

RUNTIME = "llvm"
TOOLCHAIN = "clang"
PREFERRED_PROVIDER:libgcc = "compiler-rt"

RUNTIME:class-native = "llvm"
TOOLCHAIN:class-native = "clang"
PREFERRED_PROVIDER:libgcc:class-native = "compiler-rt"

On Thu, Nov 18, 2021 at 12:04 PM Khem Raj <raj.khem@gmail.com> wrote:

> Look into chromium recipe
>
> On Thu, Nov 18, 2021 at 11:55 AM Joel Winarske <joel.winarske@gmail.com>
> wrote:
> >
> > How do I get a -native recipe to use clang-native?  I have this in my
> recipe, and target variant builds with clang:
> >
> > RUNTIME = "llvm"
> > TOOLCHAIN = "clang"
> > PREFERRED_PROVIDER:libgcc = "compiler-rt"
> >
> > All the environment variables are setup for gcc in the case of -native.
> No sign of clang.
> >
> > This is with honister.
> >
> >
> > Joel
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#55362):
> https://lists.yoctoproject.org/g/yocto/message/55362
> > Mute This Topic: https://lists.yoctoproject.org/mt/87152111/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>

--000000000000f3548f05d115b7ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks, I&#39;ll check it out.</div><div><br></div><d=
iv>This works:</div><div><br></div><div>DEPENDS +=3D &quot;\<br>=C2=A0 =C2=
=A0 compiler-rt \<br>=C2=A0 =C2=A0 libcxx \<br>=C2=A0 =C2=A0 llvm \<br>=C2=
=A0 =C2=A0 &quot;<br><br>RUNTIME =3D &quot;llvm&quot;<br>TOOLCHAIN =3D &quo=
t;clang&quot;<br>PREFERRED_PROVIDER:libgcc =3D &quot;compiler-rt&quot;<br><=
br>RUNTIME:class-native =3D &quot;llvm&quot;<br>TOOLCHAIN:class-native =3D =
&quot;clang&quot;<br>PREFERRED_PROVIDER:libgcc:class-native =3D &quot;compi=
ler-rt&quot;<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Thu, Nov 18, 2021 at 12:04 PM Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Look into chromium recipe<=
br>
<br>
On Thu, Nov 18, 2021 at 11:55 AM Joel Winarske &lt;<a href=3D"mailto:joel.w=
inarske@gmail.com" target=3D"_blank">joel.winarske@gmail.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt; How do I get a -native recipe to use clang-native?=C2=A0 I have this i=
n my recipe, and target variant builds with clang:<br>
&gt;<br>
&gt; RUNTIME =3D &quot;llvm&quot;<br>
&gt; TOOLCHAIN =3D &quot;clang&quot;<br>
&gt; PREFERRED_PROVIDER:libgcc =3D &quot;compiler-rt&quot;<br>
&gt;<br>
&gt; All the environment variables are setup for gcc in the case of -native=
.=C2=A0 No sign of clang.<br>
&gt;<br>
&gt; This is with honister.<br>
&gt;<br>
&gt;<br>
&gt; Joel<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#55362): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55362" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/55362</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87152111=
/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/87152111/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000f3548f05d115b7ba--

