Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BE1C4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 20:31:03 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web10.963.1670531458871647517
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 12:30:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=irVLpJ4j;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id x6so2800937lji.10
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 12:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qBgNzOPLL9hB0QPR9X/v+3QmeoQ2trnv2UjwRrhX0Dw=;
        b=irVLpJ4jPOfJbtl8v95hFZRbr5NQtZ4yjQ1Anhosxd2VZ7rgKxxfdesi06ycO4L0Mf
         K67n5qhYWPUpw8lba8ePgkzAx+OXdgiKMKqQYw0ZMc9UTO2qrlp/77lJ5A6cydJxS6Bs
         Uh4HUJhPsKedrFR5nMjKLWH12j23i4rCDddiyIT0Vf9c0h79JsxL1lZ0q0qnUdjFCSNQ
         qzrisDCPaBMZpUJ1zP7tRY7hyQIz3GL1aCRr6wEdk7gaQsOBphBTC0e6Q++j6I04r76w
         +JNcU+3PO56B96/LgvcptJLxwxLBBnnf653iqfDWxOI+BPZi3T1UmW1DnCFMLUU037vX
         XkWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qBgNzOPLL9hB0QPR9X/v+3QmeoQ2trnv2UjwRrhX0Dw=;
        b=qNSH+MN0xLFXjira6cFujOg3KHHkxYO71lTivT479dHX0bBDmBacrjVR8oWY1KdioF
         0+k88ZBDoxjOOVciHIL3CFzODsOzvQbmEnnC2KKbAEmfQH0Ef3BNITY4j/PHR8Bj4Xr9
         fqs3vF9lRVbLB3tuMkgQAF2bUkA3aAsKvwxiyoHae4sMNAj+QN0GeHt0e6c3bxahGxzZ
         t+3sV7dA2kTCnagsJegKmLIRBoWTliL+lMDr8srxCDAZgjzyh/Zq1JoBpVp/ZdENN8K1
         WB9VVIPU1iI2eIbUNQhzYBrcEgCj2Mr9b5l6YTlvoigZ+T38PAVGNU8qT8igwV7a3JSU
         7j0w==
X-Gm-Message-State: ANoB5pmAPNkesd7F2mPyf2a3ObMiX18nPTBF7sRFKRqbJqgoi4C+nrNY
	77nC9vQNy/cfWEREPjE0240hyBHhJ8jrIYzRArA=
X-Google-Smtp-Source: AA0mqf46OVpbZpMyady+3d0BHHpJ+3zKeZ8njpiO1vmVPfeOr2vYP0OOVlFeBmOpH0oGvRKxXtaZvyQjnIqYPMehUWw=
X-Received: by 2002:a2e:9584:0:b0:27a:2285:411b with SMTP id
 w4-20020a2e9584000000b0027a2285411bmr1353913ljh.33.1670531456957; Thu, 08 Dec
 2022 12:30:56 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
 <172E4A3E9370D7CD.20831@lists.yoctoproject.org> <CAF4BF-R5ingAhi=Xk9tuVCht72E1kGVHTOtdC5YUTVUp_tuGsg@mail.gmail.com>
 <CADkTA4O=B0nwpPHsTk=NrkZYOTo7ghpYHAuBt_52eztRTVwskw@mail.gmail.com> <CAF4BF-SwmOdR8ot5TELjPbckei=XwnBf9wJPJNy6SGw+hWQ6-A@mail.gmail.com>
In-Reply-To: <CAF4BF-SwmOdR8ot5TELjPbckei=XwnBf9wJPJNy6SGw+hWQ6-A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 8 Dec 2022 21:30:46 +0100
Message-ID: <CANNYZj_+p7Wqg4zkOFEWbeRte+5VJfHR4hOJcDBCszpCtOa41Q@mail.gmail.com>
Subject: Re: [yocto] do_install hangs on native tasks
To: Christopher Friedt <chrisfriedt@gmail.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000013fec505ef56eac4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 20:31:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58767

--00000000000013fec505ef56eac4
Content-Type: text/plain; charset="UTF-8"

Is it specifically make processes that are hanging?

Alex

On Thu 8. Dec 2022 at 18.54, Christopher Friedt <chrisfriedt@gmail.com>
wrote:

> On Wed, Dec 7, 2022 at 8:37 AM Bruce Ashfield <bruce.ashfield@gmail.com>
> wrote:
> > I don't have anything super helpful to add, but when that git command
> > is hung, are you seeing any stalled network connections or processes
> > in D state ?
>
> The hung commands are in the S state (sleeping).
>
> > It wasn't clear from your first message. Are all native processes hanging
> > at do_install ? or is it a subset ?
>
> The build gets hung on bitbake hosttools-tarball and it seems to be
> all of the native targets
>
> Currently  4 running tasks (1519 of 2078)  73%
> 0: nativesdk-kmod-27-r0 do_install - 5s (pid 3450165)
> 1: nativesdk-xilinx-qemu-git-r0 do_install - 5s (pid 3450167)
> 2: nativesdk-zephyr-qemu-git-r0 do_install - 5s (pid 3450169)
> 3: nativesdk-arc-qemu-git-r0 do_install - 5s (pid 3450172)
>
> If I pass in -vvv -DDD to bitbake I get this output
>
> + make -j 32
> DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-kmod/27-r0/image
> install
> ...
> + make -j 32
> DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-xilinx-qemu/git-r0/image
> install
> ...
> + make -j 32
> DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-zephyr-qemu/git-r0/image
> install
> ...
> + make -j 32
> DESTDIR=/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zephyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-arc-qemu/git-r0/image
> install
>
> The exact commands that are hanging are
> kmod: /bin/bash -c git describe  2>/dev/null
> nativesdk-xilinx-qemu: /bin/bash -c git describe  2>/dev/null
>
> In the kmod case, if I go to the build directory and do what the
> Makefile does, it's obvious that git will fail since there is no .git
> subdirectory.
>
> $ git describe
> fatal: No names found, cannot describe anything.
>
> If I swap out the Makefile for something utterly trivial like this, it
> still hangs
>
> .PHONY: all install bar
>
> foo-%:
>         touch $@
>
> bar: foo-$(shell git describe 2>/dev/null)
>
> all: bar
>
> install: bar
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58765):
> https://lists.yoctoproject.org/g/yocto/message/58765
> Mute This Topic: https://lists.yoctoproject.org/mt/95499663/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000013fec505ef56eac4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Is it specifically make processes that are hanging?</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu 8. Dec 2022 a=
t 18.54, Christopher Friedt &lt;<a href=3D"mailto:chrisfriedt@gmail.com">ch=
risfriedt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-styl=
e:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">On Wed, Dec 7,=
 2022 at 8:37 AM Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.=
com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt; wrote:<br>
&gt; I don&#39;t have anything super helpful to add, but when that git comm=
and<br>
&gt; is hung, are you seeing any stalled network connections or processes<b=
r>
&gt; in D state ?<br>
<br>
The hung commands are in the S state (sleeping).<br>
<br>
&gt; It wasn&#39;t clear from your first message. Are all native processes =
hanging<br>
&gt; at do_install ? or is it a subset ?<br>
<br>
The build gets hung on bitbake hosttools-tarball and it seems to be<br>
all of the native targets<br>
<br>
Currently=C2=A0 4 running tasks (1519 of 2078)=C2=A0 73%<br>
0: nativesdk-kmod-27-r0 do_install - 5s (pid 3450165)<br>
1: nativesdk-xilinx-qemu-git-r0 do_install - 5s (pid 3450167)<br>
2: nativesdk-zephyr-qemu-git-r0 do_install - 5s (pid 3450169)<br>
3: nativesdk-arc-qemu-git-r0 do_install - 5s (pid 3450172)<br>
<br>
If I pass in -vvv -DDD to bitbake I get this output<br>
<br>
+ make -j 32 DESTDIR=3D/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zep=
hyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-kmod/27-r0/imag=
e<br>
install<br>
...<br>
+ make -j 32 DESTDIR=3D/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zep=
hyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-xilinx-qemu/git=
-r0/image<br>
install<br>
...<br>
+ make -j 32 DESTDIR=3D/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zep=
hyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-zephyr-qemu/git=
-r0/image<br>
install<br>
...<br>
+ make -j 32 DESTDIR=3D/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/build-zep=
hyr-tools/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-arc-qemu/git-r0=
/image<br>
install<br>
<br>
The exact commands that are hanging are<br>
kmod: /bin/bash -c git describe=C2=A0 2&gt;/dev/null<br>
nativesdk-xilinx-qemu: /bin/bash -c git describe=C2=A0 2&gt;/dev/null<br>
<br>
In the kmod case, if I go to the build directory and do what the<br>
Makefile does, it&#39;s obvious that git will fail since there is no .git<b=
r>
subdirectory.<br>
<br>
$ git describe<br>
fatal: No names found, cannot describe anything.<br>
<br>
If I swap out the Makefile for something utterly trivial like this, it<br>
still hangs<br>
<br>
.PHONY: all install bar<br>
<br>
foo-%:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 touch $@<br>
<br>
bar: foo-$(shell git describe 2&gt;/dev/null)<br>
<br>
all: bar<br>
<br>
install: bar<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58765): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58765" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58765</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95499663/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95499663/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000013fec505ef56eac4--

