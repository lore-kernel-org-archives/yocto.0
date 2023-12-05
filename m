Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE7C4167B
	for <webhook@archiver.kernel.org>; Tue,  5 Dec 2023 10:44:19 +0000 (UTC)
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
 by mx.groups.io with SMTP id smtpd.web10.97623.1701773058208732740
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Dec 2023 02:44:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DJNnHTtv;
 spf=pass (domain: gmail.com, ip: 209.85.221.171, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-4b2ce8e0d58so856732e0c.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 02:44:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701773056; x=1702377856; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SbmGVNT1TDOWcrL/ziWW4FaPcedbuarpRGkag0SMwx0=;
        b=DJNnHTtvA9oSQAfNE/fagN6q3QWAy/7mHpTq64F/qRF8f2biYqBpUenrgbfZMfwZim
         F0FPLHzvomoOc6QkJA3oNdS2Zx3TOUMSm7DVa3y+M4+fmqcO3Dak3l6ggk0CSz4ou8q/
         pbh1aSW2JpsAs9byKK41oYB0kzY2RnKxME4s4oEHlMdXkmIpd6AwxO+ZX1Z9UgE/ZYRa
         uS7sCQTUTOtoW/SOVY7UduLiSPzRSrVxZJQVCasy6NbtaCul+0O9YIPoQBPntQaiEAs9
         RkktvFiM9qQKZ2lJjXB5ee0+FAq6q93QbJWx9g3gklmS03LZkAEDkkFjBWx5yxflJj/n
         nsaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701773056; x=1702377856;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SbmGVNT1TDOWcrL/ziWW4FaPcedbuarpRGkag0SMwx0=;
        b=eY1dTnQqtiigQjVtizIdGi+TIhGJ/E/wWa4sz15IrsAxUXPdTAPPdHeJ5punqxf1FO
         xSToRRwRKH8Ei/bgnyJ3/0RvD3yru4MvgCggG4WKoljSgTiXj5OKgeOKTfymXcOkx3Kx
         K4EfBE0bdxZG2qIodVCTCDTU+5UJvW1sihTCrPp5PyAOfBiRD6vB616GB1ML3fCu6KY0
         aDiqv0efbNtp4OxtYnxxYOdNnBaIOXQV6dFI24wfm0Sajnvv252nMgFBD/bTL5JLgSEJ
         pFDxKj951b8vGfXIMiPt6rNONW6Bie+t8kW1l9MovD4mGjisRe9blMEGlr7KpGgsEVky
         knRQ==
X-Gm-Message-State: AOJu0YyRYBQsrBR/t9JtC9o+YPv/LgSQA7yRJhzEpYKayQspABUmjLGL
	B4MtQpyFdQJvCAg7dz0W6hBtjgaKgi61S6MQVYI=
X-Google-Smtp-Source: AGHT+IGcSjK+QmVgrvZLOQ0P0V7OUAADROtvyaFpmG/UVNqYSDH/9OR4lnyrGG2U0JzkA3etY7G6W2darBPdvwAR604=
X-Received: by 2002:a05:6122:201c:b0:4b2:ece1:4a40 with SMTP id
 l28-20020a056122201c00b004b2ece14a40mr2028647vkd.13.1701773056158; Tue, 05
 Dec 2023 02:44:16 -0800 (PST)
MIME-Version: 1.0
References: <20231204183055.29931-1-antonio@amsobr.com>
In-Reply-To: <20231204183055.29931-1-antonio@amsobr.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 5 Dec 2023 10:44:05 +0000
Message-ID: <CANPvuR=iEOwO_Jt4M-GOPWxCPf00CfNe=A_sziLhbpFjkn4s=g@mail.gmail.com>
Subject: Re: [yocto] [RFC PATCH 0/1] lts mixin: kirkstone/nodejs proposal
To: antonio@amsobr.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008030a4060bc0eab3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Dec 2023 10:44:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61802

--0000000000008030a4060bc0eab3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ant=C3=B3nio Oliveira <antonio@amsobr.com> escreveu no dia segunda, 4/12/20=
23
=C3=A0(s) 18:31:

> Hi all,
>
> This patch contains my proposal for an mixin layer that adds nodejs v18
> and v20 to kirkstone.
>
> Kirkstone ships with nodejs-16, whose maintenance window ended in
> October 2023 (a).
>
> Kirkstone will be supported until April 2026 and it would be nice to have
> some level of support for a maintained version of nodejs during that time
> window.
>
> This proposal seeks to address that by adding nodejs-18 and nodejs-20,
> which will be maintained until April 2025 and 2026, respectively.
>
> The recipes for nodejs-18 are taken from Mickledore and the recipes for
> nodejs-20 from master.
>
> The variable NODE_VERSION can be ser in local.conf to choose either v18
> or v20 (the default).
>
> This is my first attempt at sending a patch upstream with git send-email
> so any comments or suggestions for improvement are welcome. That's also
> the reason why I marked this as an RFC.
>

Hi Antonio,

If the patchset was made with more and smaller commits it would make the
review easier
but it is perfect in my opinion with the context well explained.
The git send-mail is much simpler than it seems.
Thanks for your contributions.

Jose


>
> Cheers,
> Ant=C3=B3nio
>
> Ant=C3=B3nio Oliveira (1):
>   initial commit
>
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61791):
> https://lists.yoctoproject.org/g/yocto/message/61791
> Mute This Topic: https://lists.yoctoproject.org/mt/102976461/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000008030a4060bc0eab3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Ant=C3=B3nio Oliveira &lt;<a href=3D"=
mailto:antonio@amsobr.com">antonio@amsobr.com</a>&gt; escreveu no dia segun=
da, 4/12/2023 =C3=A0(s) 18:31:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Hi all,<br>
<br>
This patch contains my proposal for an mixin layer that adds nodejs v18<br>
and v20 to kirkstone.<br>
<br>
Kirkstone ships with nodejs-16, whose maintenance window ended in<br>
October 2023 (a).<br>
<br>
Kirkstone will be supported until April 2026 and it would be nice to have<b=
r>
some level of support for a maintained version of nodejs during that time<b=
r>
window.<br>
<br>
This proposal seeks to address that by adding nodejs-18 and nodejs-20,<br>
which will be maintained until April 2025 and 2026, respectively.<br>
<br>
The recipes for nodejs-18 are taken from Mickledore and the recipes for<br>
nodejs-20 from master.<br>
<br>
The variable NODE_VERSION can be ser in local.conf to choose either v18<br>
or v20 (the default).<br>
<br>
This is my first attempt at sending a patch upstream with git send-email<br=
>
so any comments or suggestions for improvement are welcome. That&#39;s also=
<br>
the reason why I marked this as an RFC.<br></blockquote><div><br></div><div=
>Hi Antonio,<br><br>If the patchset was made with more and smaller commits =
it would make the review easier<br>but it is perfect=C2=A0in my opinion=C2=
=A0with the context well explained.<br>The git send-mail is much simpler th=
an it seems.</div><div>Thanks for your contributions.<br><br></div><div>Jos=
e</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Cheers,<br>
Ant=C3=B3nio<br>
<br>
Ant=C3=B3nio Oliveira (1):<br>
=C2=A0 initial commit<br>
<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61791): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61791" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61791</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102976461/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/102976461/5052612</a><br>
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
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000008030a4060bc0eab3--

