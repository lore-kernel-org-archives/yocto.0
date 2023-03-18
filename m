Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2888C61DA4
	for <webhook@archiver.kernel.org>; Sat, 18 Mar 2023 09:29:53 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.3429.1679131787063916232
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 02:29:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LMTcrMQJ;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id g18so7385683ljl.3
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 02:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679131785;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8zXEmS40uWYaGTresNqHGezx0R6iNMIaosPYVgPfpHE=;
        b=LMTcrMQJaQrczwZZn4GYvktkJjP605OcCDj0s6jgyczVMQkjY+OvEMny3stryve8Kr
         RsQc1xylbhbti+SoCla+9CGrQow1KqBQfkd3sJPnk4D9fHrZuxK8r6ABQtcEFsFrL3S2
         1Kc6I30r9aYgwEfFukm3bFv5Oz3wthfyCw3nylNoNbRQK4MwS4sZWQesUqb0rSlAmrpb
         /CYdgyL57GcrIDO1CDOlwB/Z7RqQ4WU+AOVZBg1qADQj2CEFBH9Hqm9EfhwF8N9v38w0
         cwNMaDZXbwVmXaHnIIr1R6yFvRyURwu2+dnnasU9qfgwbG2IBWJQQfsup3UMCZMfG10H
         Nn/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679131785;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8zXEmS40uWYaGTresNqHGezx0R6iNMIaosPYVgPfpHE=;
        b=nUANhnhdRP9luvHKpBRwST4cpro2dupoD6QgT8jD+jwZRU7kmXY19ju7DHStZbAaDx
         XQQ/R7y3aBdT9+QKj1Oq1XRilCfdj54xFdNWLGxwcb9wQkRNxyuh3/Q6uM/jwYzWjJ5R
         gf4DLdOn9KFGF/z1lC2HRZb5U2+kqpUpgpX7yq16ZSaYib1T/t52iAwXfBzesXrzkXKm
         1SPxRZBKsCOYYnQjVZK7R2ODZh6tJPe0DJ5C9dm10m0P1p0rgObDAjaurslrzgQU6ky5
         HuoSd7biYocp4lJI+WmdnWP0XXPIXYAhm30BmjmHMw5FRSK7rg0D2jmGCKDX+alfSB4W
         kLgg==
X-Gm-Message-State: AO0yUKWmfsm3/laMmiuZQ1d4afMZHyiKWFRhAyBA7HZUINqY1k8l49pP
	fvSv6UayGXfTwlvFfUwKzSHkBmYHrygzLA9f1Vw=
X-Google-Smtp-Source: AK7set/xEPg/KGzhhkH8rB1I4LHqP+aKlxTO6x77fxw0hlVtNCfUlmMqr0Ta8WfjEXCrUjiKh74vq6u0HHOgvIa/Xqo=
X-Received: by 2002:a2e:9810:0:b0:299:c1c7:693c with SMTP id
 a16-20020a2e9810000000b00299c1c7693cmr2320327ljj.7.1679131785032; Sat, 18 Mar
 2023 02:29:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAKq8=3LHPJgXuUvXuStP9J2Esyg6b9ODkj9dt5SBYVNJf2XunA@mail.gmail.com>
In-Reply-To: <CAKq8=3LHPJgXuUvXuStP9J2Esyg6b9ODkj9dt5SBYVNJf2XunA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 18 Mar 2023 09:29:34 +0000
Message-ID: <CANNYZj_AAgMq85wwv_fwrryZESPPep=+KnRB5RJ6SJCMtTw7UA@mail.gmail.com>
Subject: Re: [yocto] How to use mirror to download linux-yocto?
To: Bo YU <tsu.yubo@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000093f86605f729554a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 09:29:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59452

--00000000000093f86605f729554a
Content-Type: text/plain; charset="UTF-8"

When the slow download is happening, can you please check (e.g. from a
process listing), which server specifically is being accessed and with
which command? Just to be sure where the problem is.

Alex

On Fri 17. Mar 2023 at 15.08, Bo YU <tsu.yubo@gmail.com> wrote:

> Hi,
>
> I hope the mail list is the right place to ask the simple question about
> yocto.
>
> I am using meta-riscv[0] to build riscv32 qemu.
> And after `$(MACHINE=qemuriscv32 bitbake core-image-full-cmdline)`
> Everything is downloaded well but linux-yocto:
> ```
> 0: linux-yocto-6.1.14+gitAUTOINC+e8d08fc4c0_b05ca3429c-r0 do_fetch -
> 12h26m11s (pid 4110422)  28% |#######                    | 2.00 KiB/s
> openembedded-core/meta/recipes-kernel/linux/linux-yocto_6.1.bb
> ```
> I tried many time but nothing change.
>
> There is one mirror[1] I can use under my network condition.
> So I want to know what is right way to alter URI in
> openembedded-core/meta/recipes-kernel/linux/linux-yocto_6.1.bb?
>
> I googled one article to suggest use Insteadof in .gitconfig[2], is it ok?
>
> Many thanks for your help.
>
> BR,
> Bo
>
> [0]: https://github.com/riscv/meta-riscv
> [1]:
> https://isrc.iscas.ac.cn/gitlab/mirrors/git.yoctoproject.org/linux-yocto
> [3]: https://www.wpgdadatong.com/cn/blog/detail/44614
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59449):
> https://lists.yoctoproject.org/g/yocto/message/59449
> Mute This Topic: https://lists.yoctoproject.org/mt/97675021/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000093f86605f729554a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">When the slow download is happening, can you please check=
 (e.g. from a process listing), which server specifically is being accessed=
 and with which command? Just to be sure where the problem is.</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri 17. Mar 2023 at 15.0=
8, Bo YU &lt;<a href=3D"mailto:tsu.yubo@gmail.com">tsu.yubo@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;=
border-left-color:rgb(204,204,204)">Hi,<br>
<br>
I hope the mail list is the right place to ask the simple question about yo=
cto.<br>
<br>
I am using meta-riscv[0] to build riscv32 qemu.<br>
And after `$(MACHINE=3Dqemuriscv32 bitbake core-image-full-cmdline)`<br>
Everything is downloaded well but linux-yocto:<br>
```<br>
0: linux-yocto-6.1.14+gitAUTOINC+e8d08fc4c0_b05ca3429c-r0 do_fetch -<br>
12h26m11s (pid 4110422)=C2=A0 28% |#######=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2.00 KiB/s<br>
openembedded-core/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_6=
.1.bb" rel=3D"noreferrer" target=3D"_blank">linux-yocto_6.1.bb</a><br>
```<br>
I tried many time but nothing change.<br>
<br>
There is one mirror[1] I can use under my network condition.<br>
So I want to know what is right way to alter URI in<br>
openembedded-core/meta/recipes-kernel/linux/<a href=3D"http://linux-yocto_6=
.1.bb" rel=3D"noreferrer" target=3D"_blank">linux-yocto_6.1.bb</a>?<br>
<br>
I googled one article to suggest use Insteadof in .gitconfig[2], is it ok?<=
br>
<br>
Many thanks for your help.<br>
<br>
BR,<br>
Bo<br>
<br>
[0]: <a href=3D"https://github.com/riscv/meta-riscv" rel=3D"noreferrer" tar=
get=3D"_blank">https://github.com/riscv/meta-riscv</a><br>
[1]: <a href=3D"https://isrc.iscas.ac.cn/gitlab/mirrors/git.yoctoproject.or=
g/linux-yocto" rel=3D"noreferrer" target=3D"_blank">https://isrc.iscas.ac.c=
n/gitlab/mirrors/git.yoctoproject.org/linux-yocto</a><br>
[3]: <a href=3D"https://www.wpgdadatong.com/cn/blog/detail/44614" rel=3D"no=
referrer" target=3D"_blank">https://www.wpgdadatong.com/cn/blog/detail/4461=
4</a><br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59449): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59449" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59449</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97675021/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/97675021/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000093f86605f729554a--

