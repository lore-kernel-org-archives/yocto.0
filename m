Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A5E3C5AD49
	for <webhook@archiver.kernel.org>; Wed, 28 May 2025 15:43:01 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.1128.1748446975599660516
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 May 2025 08:42:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BlFougjc;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-31118251071so2940649a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 May 2025 08:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748446975; x=1749051775; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q/mseLAu5pObge81gdaVjbO0yHw1IwMLz0uJFli/aJE=;
        b=BlFougjco5lGQn4MTkfSlPEXYLt65zmBETheUKVdP2sWfkRjq9jSU3cUmyx7MLgGTV
         RwR3ZJ1ZZRiOAPz3V5pOrkAABRfZadjKMsCd2mAmqYINtuwKK2LXBlmBhkqvZcL1lhOH
         1wlg+bM6eFYEwFWbd1GpgZDbXjULTVKGanFzFpxjmSpvqlQ9KW++t9WwxTbbeT9qLTIr
         5dVI0UmZpq/g8xnXlRjfSDJ7WJUYo8MaNkfs2AcP4rrs/DJjzshLV1xS90aNX/WmvQJ2
         6778Yesep5IZaSqVGavM+kDmcCFmQR75TghC/6Ze6XNYLx4mFXPqXlVbQrl5xl70gYtL
         R2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748446975; x=1749051775;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q/mseLAu5pObge81gdaVjbO0yHw1IwMLz0uJFli/aJE=;
        b=cdRbC+hvzThtihRxym0pOTeHYy5enslr5PnO1TQnMtiqavFr+spzySgJKGVmSskHgE
         OkhEeMPROwq8WMwY5FS/5Q5Sj6OhXNRofcV18IKk7WJFUIFkMblkzIoiPmXOehBRTUWD
         T4EjMqEUdhdMj2L6MpGMDDHOnLo0UBJ21oCOXH9prVC/lWGJ3HVUo4lSEuRJBrJtzjEk
         Nln0WtZ/FAfPJYUaW1yDJewl8gKO1MrYLHKH4trcYkXXa6OkbERTP3xxNdDtkHXnlrqj
         5tD6vfr0Mmiq7cOcyksiF067j5XjVyx4y/1wFRKk5X/WnQYU5AnawCTudpkA72vkX8wd
         Phgg==
X-Gm-Message-State: AOJu0Yz3NavxNRflSQxGwHYk6QEVnac9exNH3Vn2v4YE04PUpCWX3LBX
	fpJ0tDJlVGt0JsZgUw7XRchGP6DiFQe90MRkZUWrRQyhqLQtjWzANcjEr22ujVoaRrua6aCAz+F
	hOGXl/kjheIQ1WmaEZrM2xuBL/TExuBoHiNvq
X-Gm-Gg: ASbGncuh0fB/IM9CK45q5VNTh9uFIwuNNbckCxi8AQv+dNA+1A1iZC3FV0L576AXKhf
	IJBPFBMRZfp/pVieIp5vsjvO4/EBn/fKNy653b1I6ZZdfAwa39s0MOh3CZBCixRY22QI1rE58x7
	Wl56jjEWtjYW9472azC2kYck1MFVEtcZyy+eIDFYLVV/M=
X-Google-Smtp-Source: AGHT+IHilelFY9GbnM+DiYWoHr6jV8zq3N0p4Dr9a+P8t3jUCBgktlCDMuOqLWeEZEj9mZOQTTRRa/0Segn+bewl0gA=
X-Received: by 2002:a17:90b:4b06:b0:311:470:4759 with SMTP id
 98e67ed59e1d1-3110f328be7mr28608969a91.18.1748446974294; Wed, 28 May 2025
 08:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <1atk.1748442958517295255.AdyA@lists.yoctoproject.org>
In-Reply-To: <1atk.1748442958517295255.AdyA@lists.yoctoproject.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 28 May 2025 11:42:41 -0400
X-Gm-Features: AX0GCFsHCqhUbMftWwk9ynA5dZrAy0XCuUiwY8G-3jY4ra2ZDDZCyMkhU0dRFuI
Message-ID: <CADkTA4NHPyEkPVBsdwS+mP4RXBzhYsj5qHJ3Mq-jkKJBzr6YKg@mail.gmail.com>
Subject: Re: [yocto] Unable to bring in my defconfig to my kernel build
To: yocto@lists.yoctoproject.org, jdowd@slashdevslashnull.org
Content-Type: multipart/alternative; boundary="000000000000cfc05606363408a8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 May 2025 15:43:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65435

--000000000000cfc05606363408a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 28, 2025 at 10:36=E2=80=AFAM John via lists.yoctoproject.org <j=
dowd=3D
slashdevslashnull.org@lists.yoctoproject.org> wrote:

> In my scarthgap version of Yocto, I have the following in my linux-qoriq
> bbappend file:
>
> FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"
> SRC_URI:append =3D " \
>              file://0001-aspire-dts.patch \
>              file://0002-fsl-dtsi.patch \
>              file://0003-fsl-linkmode-support.patch \
>              file://0004-tdm-changes.patch \
>              file://0005-tdm-changes.patch \
>              file://0006-fm-ethernet-initialization-failure.patch \
>              file://0008-dummy-ethernet-crash.patch \
>
>  file://0009-ucc_tdm_init-returned-with-preemption-imbalance.patch \
>              file://0011-fix-ubifs-segfaults-by-5.4.160-code.patch \
>
>  file://0012-Changes-to-support-the-T1024RDB-64B-board-as-used-fo.patch \
>              file://0013-Change-some-functions-to-global.patch \
>              file://defconfig \
>            "
> KCONFIG_MODE =3D "alldefconfig"
>
>
> I've attached my output from "bitbake -c configure linux-qoriq -v"
>
> So I can see that my "defconfig" is overwritten by the bitbake process at
> line: 286 after being copied to the correct spot at line: 130
>
> I added the line "KCONFIG_MODE..." after trying the same thing but with
> only the defconfig file being in the list of patch files but it made no
> difference. I've verified the problem by just issuing a "diff" on the fil=
e
> after the configure process is finished and the defconfig file is the
> default .config file with none of my changes.
>

You need to check the linux-qoriq recipe.

kernel recipes are free (as are any recipe) to add tasks and handle
configuration differently than the base classes.

There may be processing in that recipe that is clobbering the defconfig
from the default.

Bruce



>
> How do I override this behaviour? Am I misinterpreting your documentation=
?
>
> Cheers!!
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65434):
> https://lists.yoctoproject.org/g/yocto/message/65434
> Mute This Topic: https://lists.yoctoproject.org/mt/113344901/1050810
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

--000000000000cfc05606363408a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 28, 2025 at 10:36=
=E2=80=AFAM John via <a href=3D"http://lists.yoctoproject.org">lists.yoctop=
roject.org</a> &lt;jdowd=3D<a href=3D"mailto:slashdevslashnull.org@lists.yo=
ctoproject.org">slashdevslashnull.org@lists.yoctoproject.org</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>In my scar=
thgap version of Yocto, I have the following in my linux-qoriq bbappend fil=
e:</div>
<blockquote>
<div>
<div>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/files:&quot;</div>
<div>SRC_URI:append =3D &quot; \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0file://0001-aspire-dts.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0file://0002-fsl-dtsi.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0file://0003-fsl-linkmode-support.patch \<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0004-tdm-changes.patch \<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0005-tdm-changes.pa=
tch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0006-fm-eth=
ernet-initialization-failure.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0file://0008-dummy-ethernet-crash.patch \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0009-ucc_tdm_init-returned-with-preem=
ption-imbalance.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
file://0011-fix-ubifs-segfaults-by-5.4.160-code.patch \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://0012-Changes-to-support-the-T1024R=
DB-64B-board-as-used-fo.patch \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0file://0013-Change-some-functions-to-global.patch \<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://defconfig \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>KCONFIG_MODE =3D &quot;alldefconfig&qu=
ot;</div>
<div>=C2=A0</div>
</div>
</blockquote>
<div>
<div>I&#39;ve attached my output from &quot;bitbake -c configure linux-qori=
q -v&quot;</div>
<div>=C2=A0</div>
<div>So I can see that my &quot;defconfig&quot; is overwritten by the bitba=
ke process at line: 286 after being copied to the correct spot at line: 130=
</div>
<div>=C2=A0</div>
<div>I added the line &quot;KCONFIG_MODE...&quot; after trying the same thi=
ng but with only the defconfig file being in the list of patch files but it=
 made no difference. I&#39;ve verified the problem by just issuing a &quot;=
diff&quot; on the file after the configure process is finished and the defc=
onfig file is the default .config file with none of my changes.</div></div>=
</blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"font=
-size:small">You need to check the linux-qoriq recipe.=C2=A0</div><div clas=
s=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmail=
_default" style=3D"font-size:small">kernel recipes are free (as are any rec=
ipe) to add tasks and handle configuration differently than the base classe=
s.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><d=
iv class=3D"gmail_default" style=3D"font-size:small">There may be processin=
g in that recipe that is clobbering the defconfig from the default.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
<div>=C2=A0</div>
<div>How do I override this behaviour? Am I misinterpreting your documentat=
ion?</div>
<div>=C2=A0</div>
<div>Cheers!!</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#65434): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65434" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65434</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/113344901/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/113344901/1050810</a><br>
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

--000000000000cfc05606363408a8--

