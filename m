Return-Path: <mgarcia@qblox.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3DA7E87829
	for <webhook@archiver.kernel.org>; Tue,  3 Feb 2026 13:14:05 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.16171.1770124439447206581
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Feb 2026 05:14:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@qblox.com header.s=google header.b=VROJVy4v;
 spf=pass (domain: qblox.com, ip: 209.85.208.43, mailfrom: mgarcia@qblox.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-6594382a264so389147a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 03 Feb 2026 05:13:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770124437; cv=none;
        d=google.com; s=arc-20240605;
        b=Yjuaty0uVhDQF3N9DgEy57YFRUPw6ya6mMPbcDDl2Aodz6dLtBT4dHu8z4OgKutq4F
         jUL9ZHi1helOFuIDm61jWvkkMOWwdMe7h+neiGuQ0CUWIQN5k8MmKmgqFNFPi16ly0nI
         BLqy6kkksvykiLI4b4mnjFJWmXQz4BN+gcVNj7OlQPGr4Rg/uT1DMmr28Dv/D6mJbkqO
         PzjUdM/cDVTDtw0QNq7VHjibSDRUL7TklJAzNGKDvTGDuYSLYAYDiYy1c2KNQAeNObdN
         auPQiFNhER+SF9MrlaOc1DMZ2fRWACyHVtzSrpDcciNsSOthTv23FHGdhj9oa9FsmLBW
         0AMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=lG8h1poO5WSfx9evX1Wqqys/GHzkeA92AXawnaksAK0=;
        fh=gaHWFzVtu3p+JfCKPQnio9n4RIZglU7QiF7v1QFcvSI=;
        b=NU3ktqHQ2J7lmL9mvcKj64+SGKkIcNZl+AJEE67ekFIiU76CNWLCk6tIFavlxkp+cx
         Z32kngtMj4NUD47TsMZTdq67V6aqAbY6uRy4hflgoEqvnia1X5oBlh1gaY6yK6Jh4KD7
         A8YbeGXwc9e02+BNFhgszGEnC5GDXFOjmWDoZ1I6oeEwMOzNqRwqXxXbEpeBMdE+69sX
         oYbJWsE/V0XlAGk4SmH5RRNHlZ40VOPLCTi1dUndXdpfxdd+TFPFBQQzjp7QR+qb3tWN
         4XikdkgZoT+QtW+8G3UTS/e/CJcSdn7CTdBeTKY/n7MSkRhI9+JhRayyM1GtfrlFBC9U
         k9mA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=qblox.com; s=google; t=1770124437; x=1770729237; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lG8h1poO5WSfx9evX1Wqqys/GHzkeA92AXawnaksAK0=;
        b=VROJVy4vmt6E4TYjailJRAx7my5a/NiYDyo/lL2EtpzQ7FDOsBiofwvBJ/gwbmroFB
         AX0GtjqKEaLcSNkDu6gKniKVbEQu8pOkCgB/ZMQN1zBAtu+JSGRsAriqr9OfjV0JkU1E
         A3aX4KI0L9WIjQ85l/4Ks4eq2TwUc5x1iYbTERZiTEh9J8HrMiPpCk1hmbCinYzI8DLF
         nyzIyj9XBFl6dyAh9EeOfbu46/uNANS6BNsQ4l/TL9FSxUT238PCvGfm6UVRHVtfC0J7
         ZqrgKh0cswp7RQbGHnQwT6BrdWqqQUIQNnuPh8Wg/hKu/E38KerurTGpMweRcGUYQEl4
         suxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770124437; x=1770729237;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lG8h1poO5WSfx9evX1Wqqys/GHzkeA92AXawnaksAK0=;
        b=XkHGi+zdJG2on1KLKrc5xsQ8nVA7JCTJDnpzXfqRA2bxgIXORZw38SakHvL7ggrWIt
         APqBRRVa8YdHaeC74gkYKNfvvvvTxoERHX00yQlCzE/uhtnziOX/iAx1fFNvAUXVJ+L+
         binEx3BtQweqCVdq3SgIh2o6JicuJkpmEiwOT6d6na3Rb+KlUHHJUt/yP6nKcQAP1nYu
         k8V6CqBVvENkMw0UZ/0DYm6lnrw04BG++kjO8xLMjLzqa5CEWEjdtAR3u+GQtW6/ymIP
         bjvJ88P2ROL8WuW/1ONq12ng6kBSaG8ODFT1rq/7VbE+JpnPJILgjiFQQOwb/jTYo30U
         xR9A==
X-Gm-Message-State: AOJu0YyX4F9SW6xEJQ17a9GUEJWHgeXF3drJkEjcPELwFZrZzb8Clq3O
	U+nHObR86TESzCTuczNAJ6ushDO7Eofl/X9yXzbiXKRkBABf86aLR3LozykWqcPsIVVPf5jbVuO
	5R6BjHugjOuNsSJH1GCVUKnPiCyx0DY/OjhCgzSKxp5ydAuI+8fMCWzh0MYZ7GrEzuVdSaHJsjW
	FPdovfZXucen1j8YXl/DHFYvcdqw2aMoejZ1SMGbgj4jRDnfFl
X-Gm-Gg: AZuq6aLVOlmNzDn318OQq8guQRKLwUV36rlPhdIwzfcj96fc+I8Xp5Rb1GLgCzPVSLs
	fJb3dfD0vbyMs4+LVRx+rEkxjHbeTZz5A+I/rW6np3TFCPU8MDQexjnuyI78uOVbUkqhTMBncCi
	RqZUnpBhn/X0YlcBkJtmmBt9iBy5zqaaM060xpV9Lvr8I+g+Np07WUbLkBlnW4P54MgF31Wt1uu
	lrvwixym+Ta+zRMWUfHeaKU5CE4RPCtb01LBOc7m2+FE0PSrw87+4beUUaJD3H9KtxbX+fcQutM
	e8uMzQqQ
X-Received: by 2002:a17:907:96a5:b0:b88:5bd7:63b0 with SMTP id
 a640c23a62f3a-b8dff5af70amr954695366b.11.1770124436582; Tue, 03 Feb 2026
 05:13:56 -0800 (PST)
MIME-Version: 1.0
From: Maria Garcia <mgarcia@qblox.com>
Date: Tue, 3 Feb 2026 14:13:45 +0100
X-Gm-Features: AZwV_QhZVDF1b6tdYI6usKGH6-HTJeI-jlRqpwfPMg-sLIrvCOp9I45J979-fqY
Message-ID: <CACHbyn4zkukUWqxw_s+5w5YgJKXKfsdS3WHk=fOCgz0xn5mgGQ@mail.gmail.com>
Subject: Question about intended use cases for SDK install vs. sourcing build environment
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000040439a0649eb362e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Feb 2026 13:14:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66210

--00000000000040439a0649eb362e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto maintainers,

I have a question regarding the intended use cases for installing the SDK
generated via populate_sdk versus sourcing the build environment (e.g.
environment-setup-cortexa72-cortexa53-oe-linux).

While investigating a toolchain issue, we noticed that the set of
path-related environment variables added by installing the SDK differs from
the ones that are set when sourcing the build environment directly
(sourcing the build environment results in more path-related environment
variables).

In our case, our team never sources the build environment and relies
entirely on the generated SDK. This difference in environment setup
actually caused us some friction when writing a CMake wrapper around the
libgpiod library. We found that the build would succeed when sourcing the
environment, but not when using only the SDK, unless we provided additional
hints via a custom .cmake file.

This made us wonder what the intended division of responsibilities is
between these two workflows:

   -

   What use cases are expected to rely on sourcing the build environment?
   -

   What use cases are expected to rely purely on the installed SDK?
   -

   Are we making a mistake by not sourcing the environment every time?

I=E2=80=99d appreciate any clarification on the design intent here, and whe=
ther
relying exclusively on the SDK is considered a fully supported workflow for
native/CMake-based development.

Thanks in advance for your time and insights!

Best regards,

--=20


Delftechpark 22=C2=A0

2628 XH, Delft

The Netherlandswww.qblox.com =20
<http://www.qblox.com>


CONFIDENTIALITY NOTICE:

The contents of this=20
email message and any attachments are intended solely for the addressee(s)=
=20
and may contain confidential and/or privileged information and may be=20
legally protected from disclosure. If you are not the intended recipient of=
=20
this message or their agent, or if this message has been addressed to you=
=20
in error, please immediately alert the sender by reply email and then=20
delete this message and any attachments. If you are not the intended=20
recipient, you are hereby notified that any use, dissemination, copying, or=
=20
storage of this message or its attachments is strictly prohibited.

--00000000000040439a0649eb362e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"gmail-isSelectedEnd">Hello Yocto maintainers,<=
/p><p class=3D"gmail-isSelectedEnd">I have a question regarding the intende=
d use cases for installing the SDK generated via <code>populate_sdk</code>=
=C2=A0versus sourcing the build environment (e.g. <font face=3D"monospace">=
environment-setup-cortexa72-cortexa53-oe-linux</font>).</p><p class=3D"gmai=
l-isSelectedEnd">While investigating a toolchain issue, we noticed that the=
 set of path-related environment variables added by installing the SDK diff=
ers from the ones that are set when sourcing the build environment directly=
 (sourcing the build environment results in more path-related environment v=
ariables).=C2=A0</p><p class=3D"gmail-isSelectedEnd">In our case, our team =
never sources the build environment and relies entirely on the generated SD=
K. This difference in environment setup actually caused us some friction wh=
en writing a CMake wrapper around the libgpiod library. We found that the b=
uild would succeed when sourcing the environment, but not when using only t=
he SDK, unless we provided additional hints via a custom=C2=A0<code>.cmake<=
/code>=C2=A0file.</p><p class=3D"gmail-isSelectedEnd">This made us wonder w=
hat the intended division of responsibilities is between these two workflow=
s:</p><ul><li><p class=3D"gmail-isSelectedEnd">What use cases are expected =
to rely on sourcing the build environment?</p></li><li><p class=3D"gmail-is=
SelectedEnd">What use cases are expected to rely purely on the installed SD=
K?</p></li><li><p class=3D"gmail-isSelectedEnd">Are we making a mistake by =
not sourcing the environment every time?</p></li></ul><p class=3D"gmail-isS=
electedEnd">I=E2=80=99d appreciate any clarification on the design intent h=
ere, and whether relying exclusively on the SDK is considered a fully suppo=
rted workflow for native/CMake-based development.</p><p class=3D"gmail-isSe=
lectedEnd">Thanks in advance for your time and insights!</p><p>Best regards=
,</p></div>

<br>
<p dir=3D"ltr" style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,san=
s-serif;font-size:small;line-height:1.38;margin-top:0pt;margin-bottom:0pt">=
<span style=3D"font-size:11pt;font-family:Arial;background-color:transparen=
t;vertical-align:baseline">Delftechpark 22=C2=A0</span></p><p dir=3D"ltr" s=
tyle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-siz=
e:small;line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:11pt;font-family:Arial;background-color:transparent;vertical-align=
:baseline">2628 XH, Delft</span></p><p dir=3D"ltr" style=3D"color:rgb(34,34=
,34);font-family:Arial,Helvetica,sans-serif;font-size:small;line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:11pt;font-fami=
ly:Arial;background-color:transparent;vertical-align:baseline">The Netherla=
nds</span></p><div><a href=3D"http://www.qblox.com" target=3D"_blank"><span=
 style=3D"font-size:11pt;font-family:Arial;color:rgb(12,129,156);background=
-color:transparent;vertical-align:baseline">www.qblox.com</span><span style=
=3D"background-color:transparent;font-size:11pt;font-family:Arial;color:rgb=
(12,129,156);vertical-align:baseline"> </span></a></div><div><br></div><div=
>CONFIDENTIALITY NOTICE:<br></div>The contents of this email message and an=
y attachments are intended solely for the addressee(s) and <font face=3D"Sa=
ns Serif">may contain confidential and/or privileged information and may be=
 legally protected </font>from disclosure. If you are not the intended reci=
pient of this message or their agent, or if this message has been addressed=
 to you in error, please immediately alert the sender by reply email and th=
en delete this message and any attachments. If you are not the intended rec=
ipient, you are hereby notified that any use, dissemination, copying, or st=
orage of this message or its attachments is strictly prohibited.<br>
--00000000000040439a0649eb362e--

