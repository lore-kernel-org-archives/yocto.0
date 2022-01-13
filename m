Return-Path: <r.spencer.white@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3FD5C433EF
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 20:15:35 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web12.2409.1642104934850859703
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 12:15:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mgOw2HfW;
 spf=pass (domain: gmail.com, ip: 209.85.221.45,
 mailfrom: r.spencer.white@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id d19so12305694wrb.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 12:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fAVhcGCdohfzo4hltGK5ipH4FSLLizgx5+Sea9kWuS8=;
        b=mgOw2HfWq3cGbcx5O0CnziCFtZn64TaBBZA2GNVr0qgIkBS6Yzs8lbVJaa71pHojQM
         gVYcvi9hhLtNvhenELYNntE1vSHg5711CdGbi5Cw6r4om5bJR3PYWxFGMewjUKm51S6+
         GQTb+a1VwaG/CBT5AqoVMz4maB/azkm2IA5wTqHZTZWN03Kc10z5SYgBx11xag9L6BlN
         nyrWnKSC6jVoa1yQvsICfeIXurz8OrdFTEWNFX7QzRxze9lz4IwOa6Qal0+JFAJSE1ot
         du76q6Nt1pEb7e5tQCo8aYlRs1RfOVdhMIirce9uuXrWrZL6IXmgZwmZTx06dsuRk5as
         OEtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fAVhcGCdohfzo4hltGK5ipH4FSLLizgx5+Sea9kWuS8=;
        b=TjNmqgRo6eDd1aACyKlr2bpLSn6zDHoO2Ohd5jcZ2abXq5KakXeWZ73hys5XPBimD5
         kRAPVLPgtz3WlWR1yB6eKKFD531/rBgSEYprWRYVtbC9mHALMAuITO3Zf0owVwSi1DHf
         vE/nV/w2GPbstOQJgBbOo2Kiyh2i9CqDgM4ZjT3UXlWbaBdiGwmEONhTwyKsErwHnKfJ
         e7f629NgbNFBI0cTyur3nrqMICoAPyzJOxRpQmeU8FDgGPkDWaIRlhI8wLygg7fL2bon
         0hsb80DT/LOelS7jeRMYTuqZznARdoCLI1a404LUC8LFR8wTdzxnUQLjhdFUAhGaOpNb
         Maqw==
X-Gm-Message-State: AOAM530Vq11sdaDCz3I9Tv9SNwS+F10Zy5vi/7dNq/ZUhS0Lgrtv4xTG
	7iWNHI6MrLl1MTNVaeLbUt2VJkPJ2w+aDjY05Vo=
X-Google-Smtp-Source: 
 ABdhPJw+/pbwtsdMdJNMABn3DRhvkASmOsqe3QlPBhKdC+erUJe0mc/Tvazn+5l6hQA4iN8UwyqmDL55ZXMQAqN71s8=
X-Received: by 2002:a5d:59a7:: with SMTP id p7mr5478354wrr.258.1642104933269;
 Thu, 13 Jan 2022 12:15:33 -0800 (PST)
MIME-Version: 1.0
References: <cakt.1642012455158813295.G6KK@lists.yoctoproject.org>
 <CAAnfSTuy5AXvwEQDjjo5_dtUJML8RT4xN7PVd0jc=scxGeLhDQ@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTuy5AXvwEQDjjo5_dtUJML8RT4xN7PVd0jc=scxGeLhDQ@mail.gmail.com>
From: Spencer White <r.spencer.white@gmail.com>
Date: Thu, 13 Jan 2022 14:15:24 -0600
Message-ID: 
 <CADpa9=7OUchxdjF0XFqd6bqco8PHB+UHAT770WTG=EHPyL+_cg@mail.gmail.com>
Subject: Re: [yocto] problem with interpreter
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003b441705d57c5959"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 20:15:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55842

--0000000000003b441705d57c5959
Content-Type: text/plain; charset="UTF-8"

Thanks man, I appreciate it. After reading your response, I understood the
issue and was able to create a bunch of patches to mak it work.

On Wed, Jan 12, 2022, 3:52 PM Ross Burton <ross@burtonini.com> wrote:

> On Wed, 12 Jan 2022 at 18:34, swhite <r.spencer.white@gmail.com> wrote:
> > I need to include an old open source project named judy for a legacy
> > utility dependency. The recipe I have so far is listed at the end of
> this email. The
> > build host is 64bit linux, I'm using dunfell and the MACHINE I'm build
> for is "genericx86-64".
> > The issue I'm seeing is when compiling judy, it builds and then executes
> a
> > binary named "JudyLTablesGen" as part of the process. However the
> execution
> > fails with:
> >
> >     /bin/sh: ./JudyLTablesGen: No such file or directory
>
> This is a classic problem with software that doesn't consider
> cross-compilation (and even when building for a similar architecture,
> like genericx86-64 on an x86 host, you're cross-compiling in Yocto).
>
> The makefiles generate a binary that it expects to be able to run.
> This is a bad assumption as you're cross-compiling: that binary needs
> to be built with the host compiler (BUILD_CC) instead.  However, the
> Makefile.am does this:
>
> JudyLTables.c: JudyLTablesGen.c
>         $(CC) $(INCLUDES) $(AM_CFLAGS) @CFLAGS@ -o JudyLTablesGen
> JudyLTablesGen.c; ./JudyLTablesGen
>
> A non-upstreamable fix would be to simply change that line to
> $(BUILD_CC) $(BUILD_CFLAGS) $(BUILD_LDFLAGS) -o JudyLTablesGen [...].
> As the project is dead, an upstreamable fix isn't useful.
>
> Whilst I'm here that FILESEXTRAPATHS_prepend is redundant, and the
> source of Judy looks like fairly typical autoconf so you can remove
> your do_configure and just 'inherit autotools', this will also pass
> the correct host/build/target flags and so on.
>
> Also note that a more recently maintained fork appears to be at
> https://github.com/netdata/libjudy.
>
> Ross
>

--0000000000003b441705d57c5959
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks man, I appreciate it. After reading your response,=
 I understood the issue and was able to create a bunch of patches to mak it=
 work.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, Jan 12, 2022, 3:52 PM Ross Burton &lt;<a href=3D"mailto:ross@=
burtonini.com">ross@burtonini.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">On Wed, 12 Jan 2022 at 18:34, swhite &lt;<a href=3D"mailto:r.=
spencer.white@gmail.com" target=3D"_blank" rel=3D"noreferrer">r.spencer.whi=
te@gmail.com</a>&gt; wrote:<br>
&gt; I need to include an old open source project named judy for a legacy<b=
r>
&gt; utility dependency. The recipe I have so far is listed at the end of t=
his email. The<br>
&gt; build host is 64bit linux, I&#39;m using dunfell and the MACHINE I&#39=
;m build for is &quot;genericx86-64&quot;.<br>
&gt; The issue I&#39;m seeing is when compiling judy, it builds and then ex=
ecutes a<br>
&gt; binary named &quot;JudyLTablesGen&quot; as part of the process. Howeve=
r the execution<br>
&gt; fails with:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0/bin/sh: ./JudyLTablesGen: No such file or director=
y<br>
<br>
This is a classic problem with software that doesn&#39;t consider<br>
cross-compilation (and even when building for a similar architecture,<br>
like genericx86-64 on an x86 host, you&#39;re cross-compiling in Yocto).<br=
>
<br>
The makefiles generate a binary that it expects to be able to run.<br>
This is a bad assumption as you&#39;re cross-compiling: that binary needs<b=
r>
to be built with the host compiler (BUILD_CC) instead.=C2=A0 However, the<b=
r>
Makefile.am does this:<br>
<br>
JudyLTables.c: JudyLTablesGen.c<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $(CC) $(INCLUDES) $(AM_CFLAGS) @CFLAGS@ -o Judy=
LTablesGen<br>
JudyLTablesGen.c; ./JudyLTablesGen<br>
<br>
A non-upstreamable fix would be to simply change that line to<br>
$(BUILD_CC) $(BUILD_CFLAGS) $(BUILD_LDFLAGS) -o JudyLTablesGen [...].<br>
As the project is dead, an upstreamable fix isn&#39;t useful.<br>
<br>
Whilst I&#39;m here that FILESEXTRAPATHS_prepend is redundant, and the<br>
source of Judy looks like fairly typical autoconf so you can remove<br>
your do_configure and just &#39;inherit autotools&#39;, this will also pass=
<br>
the correct host/build/target flags and so on.<br>
<br>
Also note that a more recently maintained fork appears to be at<br>
<a href=3D"https://github.com/netdata/libjudy" rel=3D"noreferrer noreferrer=
" target=3D"_blank">https://github.com/netdata/libjudy</a>.<br>
<br>
Ross<br>
</blockquote></div>

--0000000000003b441705d57c5959--

