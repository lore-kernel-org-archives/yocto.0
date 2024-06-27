Return-Path: <mcorbin@lunarenergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D3DFC2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 12:35:53 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web11.6813.1719491743494760537
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 05:35:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lunarenergy.com header.s=google header.b=Lq7oZ2KT;
 spf=pass (domain: lunarenergy.com, ip: 209.85.208.48, mailfrom: mcorbin@lunarenergy.com)
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-57cbc2a2496so1752018a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 05:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lunarenergy.com; s=google; t=1719491742; x=1720096542; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XWUzuTbPzbXdqOukZyGz7RoFju323Tl/dioaK2lXehQ=;
        b=Lq7oZ2KTz/in1N6JNIupCLBkDblFPewMzqwPFMTGVSZTu21JRWUrLZbQtPwDYe7Yy2
         T6nUcqgtfPXdT+KnABYY03MkRg9cfDYVx55yz7EniMNDF9z8d3rD5YDn6J3IbSNItf7r
         vB1QUWdBKV3uysIapHIIe2N1G+jB3RypkkA9CV7TCIEklpMyjxyIbvadU8vEnk5YRXWP
         927h3wF9DHJ0FvOfPuqmqYtv2Ag1mEK1VjsiNIIOu9R5M/tdOwhZRISr/1KGlbvQp4nI
         WNPvkTHvBPg/lpNb33qWPGbA9a+eZuP222ZlL2n3Lr0TVW1cBk/joonD8zClGRv5abm1
         p8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719491742; x=1720096542;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XWUzuTbPzbXdqOukZyGz7RoFju323Tl/dioaK2lXehQ=;
        b=aNrnQhdUjjtka+EizcLmVb2/cV12gNE+4RtzbVtzgk6uQ1y9qYcdAoIfS7L+nepzF+
         9AjLmjraiEj9ijfpsC+OJ9XkTwl3ftOIQm65aUsPsPv8FUskna0KYfxmLco5+hVyAbcH
         Fntc/hziT/YGmxgGUvgY1JiGokySZO9tpAR2b7Gt41LyQO6GYOy842NV1sCKtnt65+kf
         fqD+JWTJKixL5TeRojfDhD9g88DZ5OwDKgD0vR4/gGmzr00U9XYbWRnVk4q8rXdhmpqP
         PNZ6YwNyEVJXZ7YShRwb1Fx5q/3mjtTDkV/mU8xgX3Hj9WpDrz4uNMHsWAS01hasy5Xy
         4a+A==
X-Gm-Message-State: AOJu0YwV3tNRyiFo0nD18Te3RGO6ZdnHmGsUHVrRMRIHPpdXubmh0WBT
	zOsBZjso6ghjzW4XvM6As5a/qFlUXikC+d6AGS5mvznMGJ7FnWEiKqQfJYE84Ynlj4YHl0eygHc
	YKtLhv/LDMCP3OEvXqJxg+3dtw4kxbCZHe/eGoraG8tiKC5weKqVP3uY6reKVP6I09us7Uz/ls1
	bLyZd3uQU4I9TSULsgR7ZvKdkkB6ZfbTkKjVI8mNuNm3g=
X-Google-Smtp-Source: AGHT+IGNgCeVg9eqvqd9BkibbRcM22iTaGBTJ6cerhSswbdOzK30myF8ZygCikKhJIdnKAegfcRLUdMnuOKjxKdrcYk=
X-Received: by 2002:a50:aada:0:b0:57d:397:d0b7 with SMTP id
 4fb4d7f45d1cf-57d4bdd0ac8mr10367852a12.37.1719491741709; Thu, 27 Jun 2024
 05:35:41 -0700 (PDT)
MIME-Version: 1.0
From: Mark Corbin <mcorbin@lunarenergy.com>
Date: Thu, 27 Jun 2024 13:35:30 +0100
Message-ID: <CAPfD7w=LCH33=5C9=F83pGuwYSJFaaNap-eR48R9Mwzqg=XL-A@mail.gmail.com>
Subject: Class file priority between meta-rust and oe-core layers
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000075a7fe061bde5e24"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 12:35:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63400

--00000000000075a7fe061bde5e24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello

I'm currently updating my project from Kirkstone to Scarthgap and have run
into an issue with bbclass file priorities.

We are using our own modified 'meta-rust' layer, but rust recipes are
inheriting the 'cargo.bbclass' file from
'openembedded-core/meta/classes-recipe' directory even though the
'meta-rust' layer has a higher priority. This wasn't an issue under
Kirkstone.

Is there any way to ensure that my 'meta-rust' classes are used by default?

Thanks

Mark

--=20

*Mark Corbin*
Senior Software Engineer  |  lunarenergy.com <https://www.lunarenergy.com>
  |  LinkedIn <https://www.linkedin.com/company/lunar-energy>  |  Instagram
<https://www.instagram.com/the_lunarenergy/>
[image: Lunar Energy Logo]

--=20
C2:Restricted unless otherwise stated.

--=20








Lunar Energy Limited is a company registered in England and Wales,=C2=A0
authorised and regulated by the Financial Conduct Authority under reference=
=20
number 767876. Company registration number: 05631091. Registered office: 55=
=20
Baker Street, London, England, W1U 7EU

--00000000000075a7fe061bde5e24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<br><br>I&#39;m currently updating my project from Ki=
rkstone to Scarthgap and have run into an issue with bbclass file prioritie=
s.<br><br>We are using our own modified &#39;meta-rust&#39; layer, but rust=
 recipes are inheriting the &#39;cargo.bbclass&#39; file from &#39;openembe=
dded-core/meta/classes-recipe&#39; directory even though the &#39;meta-rust=
&#39; layer has a higher priority. This wasn&#39;t an issue under Kirkstone=
.<br><br>Is there any way to ensure that my &#39;meta-rust&#39; classes are=
 used by default?<br><br>Thanks<br><br>Mark<br clear=3D"all"><div><br></div=
><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div><div><br><spa=
n style=3D"color:#264d74;line-height:1.6;font-size:10pt;font-family:&#39;IB=
M Plex Sans&#39;,sans-serif"><strong>Mark Corbin</strong></span><br><span s=
tyle=3D"color:#264d74;line-height:1.4;font-size:10pt;font-family:&#39;IBM P=
lex Sans&#39;,sans-serif"> Senior Software Engineer=C2=A0=C2=A0|=C2=A0=C2=
=A0<a href=3D"https://www.lunarenergy.com" target=3D"_blank">lunarenergy.co=
m</a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=3D"https://www.linkedin.com/company/l=
unar-energy" target=3D"_blank">LinkedIn</a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=
=3D"https://www.instagram.com/the_lunarenergy/" target=3D"_blank">Instagram=
</a><br></span><img style=3D"padding-top:5px" src=3D"https://storage.google=
apis.com/lunarenergy/email-sigs/lunarenergy-logo.png" alt=3D"Lunar Energy L=
ogo" width=3D"100"></div></div></div></div>

<br>
<font size=3D"1">C2:Restricted unless otherwise stated.</font><br>
<br>






<p><font size=3D"1">Lunar Energy Limited is a company registered in England=
 and Wales,=C2=A0authorised and regulated by the Financial Conduct Authorit=
y under reference number 767876. Company registration number: 05631091. Reg=
istered office: 55 Baker Street, London, England, W1U 7EU</font><br></p>
--00000000000075a7fe061bde5e24--

