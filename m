Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06C32D6ACED
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 15:30:31 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web10.74300.1732721423486971393
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 07:30:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nTze0Kvd;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21263dbbbc4so72788185ad.1
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 07:30:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732721422; x=1733326222; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KH6GU/Y2HThJTYzwmlOA7f3+IuRKtaxE0LK87t6Al98=;
        b=nTze0Kvd3PVFFoiBPSG2btAauJ/f0I6WFT70pYRssnNMJzGgFVYhZlfC1EsZU6aR/Y
         9sDwg3c5LjO8+5ffZJ42bgMMOrdopq/q/vLNN4pBVAm33FQdQhTDLP3wzEAPscnZt+Rq
         8jqQeW/MAEUT/XboWDANphFNVRitLfCpE+2iNPSx6tg0IaJMvK6DE1sYIF0NAKZgiGfN
         Chk2Tv7zfEr4viuLVyMu6ZOsl36/MZl6lm1DxUnuNDz6iCN9M5ZtxfzkXnUraarKxHBD
         Yx7B4UOldce+EtACj/GlBqusXEhLyahD05uy+CgEqezNOR4D2v4fb3G5rNysbKJ9N/8N
         n8Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732721422; x=1733326222;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KH6GU/Y2HThJTYzwmlOA7f3+IuRKtaxE0LK87t6Al98=;
        b=H+GheUll8SdnqvbMr6lAzsJltMwoXAN8AoUFdaCiEuOW7mVEtS1rSlbUJuhFoKm75V
         Zw9BJprZQsUdSp8Kvo6ApBM3h5ChqrPRkc6XZMBaPNExnGcoAzYWDl0T9fHUGD8CPL5W
         kYS4rA4Xzgz8qUAbSC1n+fG88KYH8A6S4UsDzhgKT37FSJrw5X+u0yZjQuGaFaAM4765
         xRWysYCliLiV5LuYj7yRc4wEmmLwAY766Ro46m3QFkyM5NFKnNUnpHAcXGlJoIfkfVaD
         FXkmgYajndld7Icpca2F0OWW8X02IRDQXiAg6WLWyvKUyXsO0cPAQy4xedmMvw6uDcG6
         cERw==
X-Gm-Message-State: AOJu0Yz1jZw5x3WBinxtDjRmwglXrYO09hRsmzafwF3F5pOKPzKZVCIu
	i8Pf/zJWQfCOee5srJJjdQVWzxubI3We19XfDud+LIBwhadHAwMaEsixEG5a9F/SCfMwXN+UrlR
	u9f2uwLlNoeCXy8nQlgt+wRcbH28JUH0T
X-Gm-Gg: ASbGnctJXjfkR4WePUSTiPDUElcIXKQ9R4sobCfpE1+YblBgxUJDfwdQNuYVKuZfKTa
	iO8luDmnuBk06aQO81T4KiC6DRq0ATZ+k
X-Google-Smtp-Source: AGHT+IGIwx8j56tOwmtKNbDdXQpWHMnhNoS99p6aruoW+Zv+y6dzqMm5RsasOTkPM8KBe9lTPKxgGAzhBeju00CulOw=
X-Received: by 2002:a17:902:db0f:b0:20c:5cdd:a9e with SMTP id
 d9443c01a7336-215012881f4mr45832345ad.28.1732721421539; Wed, 27 Nov 2024
 07:30:21 -0800 (PST)
MIME-Version: 1.0
References: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
In-Reply-To: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 27 Nov 2024 10:30:09 -0500
Message-ID: <CADkTA4Pys5E4fkzs+Aoq3kHTk4ssU2d34rCyqnTzq61Dr_zJiA@mail.gmail.com>
Subject: Re: [yocto] KERNEL_VERSION inconsistency using out-of-tree module
 with patched kernel source
To: yocto@lists.yoctoproject.org, cgu@ivu.de
Content-Type: multipart/alternative; boundary="000000000000d362810627e6a4b5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 15:30:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64368

--000000000000d362810627e6a4b5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2024 at 4:29=E2=80=AFAM Christian Gudrian via lists.yoctopr=
oject.org
<cgu=3Divu.de@lists.yoctoproject.org> wrote:

> Hello!
>
> Kernel modules depend on a specific version of the kernel package that
> includes the Git commit hash of the kernel source tree at compile time
> (KERNEL_VERSION). When using a patched kernel source this Git commit hash
> changes each time the patches get applied, making each kernel binary
> effectively unique. This KERNEL_VERSION, however, is not part of the shar=
ed
> state hash signature, as for this purpose it gets replaced by the plain
> LINUX_VERSION.
>
> Building out-of-tree kernel modules depend on a locally compiled kernel.
> Doing this in a clean working directory leads to a freshly patched kernel
> source which in turn results in a new KERNEL_VERSION. The out-of-tree
> kernel module then RDEPENDS on a kernel package with this new
> KERNEL_VERSION. As the shared state signature of the newly compiled kerne=
l
> matches the existing one (the LINUX_VERSION hasn't changed) the new kerne=
l
> is not packaged and doesn't end up in the package feed.
>
> Consequently installation of the out-of-tree kernel module fails as the
> required kernel package is not available.
>
> I have tried to make the packages aware of the specific KERNEL_VERSION.
> But as this variable gets re-assigned during parsing I get unstable
> basehash values.
>
> Another approach would be to apply the patches in the upstream repository
> to circumvent the need for local patching.
>
> Is there an easier way?
>

See my reply to Enrico's follow up. This is something we are aware of, and
it is a travelled and tested path (which doesn't mean it can't be improved,
but just that it is a known "thing").

Bruce



> Christian
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64358):
> https://lists.yoctoproject.org/g/yocto/message/64358
> Mute This Topic: https://lists.yoctoproject.org/mt/109804058/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000d362810627e6a4b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Nov 27, 2024 at 4:29=E2=80=AFAM Christian G=
udrian via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org=
</a> &lt;cgu=3D<a href=3D"mailto:ivu.de@lists.yoctoproject.org">ivu.de@list=
s.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><p>Hello!</p>

<p>Kernel modules depend on a specific version of the kernel package that i=
ncludes the Git commit hash of the kernel source tree at compile time (KERN=
EL_VERSION). When using a patched kernel source this Git commit hash change=
s each time the patches get applied, making each kernel binary effectively =
unique. This KERNEL_VERSION, however, is not part of the shared state hash =
signature, as for this purpose it gets replaced by the plain LINUX_VERSION.=
</p>

<p>Building out-of-tree kernel modules depend on a locally compiled kernel.=
 Doing this in a clean working directory leads to a freshly patched kernel =
source which in turn results in a new KERNEL_VERSION. The out-of-tree kerne=
l module then RDEPENDS on a kernel package with this new KERNEL_VERSION. As=
 the shared state signature of the newly compiled kernel matches the existi=
ng one (the LINUX_VERSION hasn&#39;t changed) the new kernel is not package=
d and doesn&#39;t end up in the package feed.</p>

<p>Consequently installation of the out-of-tree kernel module fails as the =
required kernel package is not available.</p>

<p>I have tried to make the packages aware of the specific KERNEL_VERSION. =
But as this variable gets re-assigned during parsing I get unstable basehas=
h values.</p>

<p>Another approach would be to apply the patches in the upstream repositor=
y to circumvent the need for local patching.</p>

<p>Is there an easier way?</p></blockquote><div><br></div><div><div class=
=3D"gmail_default" style=3D"font-size:small">See my reply to Enrico&#39;s f=
ollow up. This is something we are aware of, and it is a travelled and test=
ed path (which doesn&#39;t mean it can&#39;t be improved, but just that it =
is a known &quot;thing&quot;).</div><div class=3D"gmail_default" style=3D"f=
ont-size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:s=
mall">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">

<p>Christian</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64358): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64358" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64358</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109804058/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/109804058/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--000000000000d362810627e6a4b5--

