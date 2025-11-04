Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA752CCFA04
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 13:15:52 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.17351.1762262146741356510
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 05:15:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lH0Ai51z;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-294fc62d7f4so52178205ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 05:15:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762262146; x=1762866946; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=b2Oaof9KRd8g/9SK35uUIcN+1tm+XKaUrXiegWkAyWU=;
        b=lH0Ai51zdSjZh2VXX4JEtCpOHIC96VlOtoOBUjBeNm4gwIXaJKMciltq5zsQ369VAE
         X7qUPkqugb7OjGnocM3NnzixPTFKPJ5D1iMQesOQ3c+YqwXEP3sQE35dxJllb95rncF5
         RiIN6gGIv5QQpbt6vW1LRvOeZhGo10HyftDrNpmYiDE+dmsQtHku6vDvRmzHQUHWdKLa
         ebUcluI5Ve2//uLLifE6ioIKVxqHDGBRi/LQa34j4CApqwD3INJMrHxbR6sZDLTHZA49
         LZObNOLr2LqRZOph6xh7dnBRXQaq2gNRT6wjuvgogXKGW7f0lKu1a5x45d1nq0Z+P/Lw
         bL1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762262146; x=1762866946;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b2Oaof9KRd8g/9SK35uUIcN+1tm+XKaUrXiegWkAyWU=;
        b=RUCh9rWPjZLa7TX10M0ygzF1KKaOPBGnR7t0hpLAIqbLH+TX6/Uta0NXaDFJyZUhwF
         BR2IpH88O6hMxXdargRO+LX3s9uwET1YsK2j7RLn0G1cG9NMYzEfGvz7Hp/nYXp7ExMC
         688i1oYBUTFc9H8GzumK/8Gbp+E8zj4zwOiDsptk+0xgskgbnOJdRS8iW6N+hN2Ez9HJ
         /PUMadfuiCl7RRpzPuSegVAl12Ezy7Ansav6MtESUof06ALhoDVDOnMuMKucjhb5vnt9
         SZ2HuOkj7Pin/3JjaBkc8bqklz4gzT9Ah04fS24vpxXH0FGHz3jXEWA8Ulgzvo+YL8F1
         Q7mw==
X-Gm-Message-State: AOJu0Ywq5Y1pruShUWMkRwy1sDiklxKHUjJWeQtetuH35m0dGwCjBELR
	/KFRMkbKC6xd6CfqshAhZsWRwOG4Yo3cGLypvmBOxkuOEWdYovUKk+19k9nq3GIKNEkA666VimP
	rRaIDVu8jQ+oarba65O8VuVhr1UV7bOhWqC1PPxA=
X-Gm-Gg: ASbGncvwWmlWFtuW6+iIMD6tUkLBZ3TsFdSnsVdGIrcF3ErxXiioUqowU+tlzohT+Lp
	5LI0NuPVnNW7cHpt67nWiUGayZDg+rgtaY2kxTGu/JBYRoSjWSBJkVwUe8NN0HjibnPMnqWJIDv
	CkvZNOBNWAUvLGvKkwPJDqcqnoSnxLJM4tRNNuFYw5ggq1YLcb2ZfWyMWBoD9fjQmHwnFcAoA/W
	TMjoXErVzlS+W051k4x7HJ07LnQMG4QfI1P/PZk23ZEQKDJrJ2eSdScvxwRbw==
X-Google-Smtp-Source: AGHT+IEG7irb+K8nWY9KXTTFnuooeBTy0NWk1wPinXyCzoVaoajbyVvPWGDTKaGtZbmYHO58p4byFYpD7DJEI9HIelw=
X-Received: by 2002:a17:902:ecd2:b0:295:2cb6:f494 with SMTP id
 d9443c01a7336-2952cb6f57amr195657765ad.6.1762262145435; Tue, 04 Nov 2025
 05:15:45 -0800 (PST)
MIME-Version: 1.0
References: <IA0PR02MB9662D122E02DB89D545BBA92FEC4A@IA0PR02MB9662.namprd02.prod.outlook.com>
In-Reply-To: <IA0PR02MB9662D122E02DB89D545BBA92FEC4A@IA0PR02MB9662.namprd02.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 4 Nov 2025 08:15:33 -0500
X-Gm-Features: AWmQ_bk3bChygXaeMwyIB00rgL_8YulrBhbYmZU2qnIZ361amkppIMQDuubciXo
Message-ID: <CADkTA4Mrnf_xiVJzsXCpHcHdeNT3qKnpcM3-FrNFREq_Kbyucg@mail.gmail.com>
Subject: Re: [yocto] [meta-security][DISCUSSION] : Enable Additional Security
 Configs in meta-security Layer
To: yocto@lists.yoctoproject.org, amanna@qti.qualcomm.com
Cc: "yocto-security@lists.yoctoproject.org" <yocto-security@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002e0ba70642c4a1c4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 13:15:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66002

--0000000000002e0ba70642c4a1c4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 4, 2025 at 6:33=E2=80=AFAM Abhilasha Manna (Temp) via
lists.yoctoproject.org <amanna=3Dqti.qualcomm.com@lists.yoctoproject.org>
wrote:

> Hi Yocto Security Team,
>
> I'm currently working with the Yocto Project and exploring the
> `meta-security` layer. I'd like to propose enabling additional security
> configurations to enhance system hardening.
>
> Specifically, I'm looking to enable the following configurations:
>
> - CONFIG_SLAB_FREELIST_RANDOM=3Dy
> - CONFIG_SLAB_FREELIST_HARDENED=3Dy
> - CONFIG_HARDENED_USERCOPY=3Dy
> - CONFIG_FORTIFY_SOURCE=3Dy
>
> I'd appreciate guidance on the best practices for integrating these into
> the layer, and whether there are any existing patches or recommendations
> from the community.
>
>
If these are in kernel fragments. I'd suggest putting them in the
kernel-cache
repository and send them to the linux-yocto mailing list.

Putting configuration fragments into many different layers makes them both
hard to find and difficult to re-use, which is why I've been pushing for
over a
decade to centralize things in the kernel-cache. Once in the centralized
configuration location, even non kernel-yocto style kernel's can still reus=
e
the fragments.

In the layer, you would then enable them via KERNEL_FEATURES in a bbappend.

You can see how this is done in the meta-virtualization layer.

Cheers,

Bruce



> Please let me know if this is something that aligns with the goals of the
> `meta-security` layer, and how I can contribute or proceed further.
>
> Thanks, and regards,
> Abhilasha Manna
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66000):
> https://lists.yoctoproject.org/g/yocto/message/66000
> Mute This Topic: https://lists.yoctoproject.org/mt/116115138/1050810
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

--0000000000002e0ba70642c4a1c4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 4, 2025 at 6:33=
=E2=80=AFAM Abhilasha Manna (Temp) via <a href=3D"http://lists.yoctoproject=
.org">lists.yoctoproject.org</a> &lt;amanna=3D<a href=3D"mailto:qti.qualcom=
m.com@lists.yoctoproject.org">qti.qualcomm.com@lists.yoctoproject.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Yoc=
to Security Team,<br>
<br>
I&#39;m currently working with the Yocto Project and exploring the `meta-se=
curity` layer. I&#39;d like to propose enabling additional security configu=
rations to enhance system hardening.<br>
<br>
Specifically, I&#39;m looking to enable the following configurations:<br>
<br>
- CONFIG_SLAB_FREELIST_RANDOM=3Dy<br>
- CONFIG_SLAB_FREELIST_HARDENED=3Dy<br>
- CONFIG_HARDENED_USERCOPY=3Dy<br>
- CONFIG_FORTIFY_SOURCE=3Dy<br>
<br>
I&#39;d appreciate guidance on the best practices for integrating these int=
o the layer, and whether there are any existing patches or recommendations =
from the community.<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">If these are in kernel fragments. I&#39;d suggest putting =
them in the kernel-cache</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">repository and send them to the linux-yocto mailing list.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Putting configuration fragment=
s into many different layers makes them both</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">hard to find and difficult to re-use, which i=
s why I&#39;ve been pushing for over a</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">decade to centralize things in the kernel-cache. On=
ce in the centralized</div><div class=3D"gmail_default" style=3D"font-size:=
small">configuration location, even non kernel-yocto style kernel&#39;s can=
 still reuse</div><div class=3D"gmail_default" style=3D"font-size:small">th=
e fragments.</div><div class=3D"gmail_default" style=3D"font-size:small"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:small"><div><div cl=
ass=3D"gmail_default">In the layer, you would then enable them via KERNEL_F=
EATURES in a bbappend.</div></div><div><br></div></div><div class=3D"gmail_=
default" style=3D"font-size:small">You can see how this is done in the meta=
-virtualization layer.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Ch=
eers,</div></div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><d=
iv><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
Please let me know if this is something that aligns with the goals of the `=
meta-security` layer, and how I can contribute or proceed further.<br>
<br>
Thanks, and regards,=C2=A0 <br>
Abhilasha Manna=C2=A0 <br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66000): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66000" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66000</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/116115138/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/116115138/1050810</a><br>
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

--0000000000002e0ba70642c4a1c4--

