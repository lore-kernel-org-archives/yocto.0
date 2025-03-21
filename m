Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78FABC36007
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 12:53:50 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.20364.1742561622789796633
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 05:53:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SHz+SQHk;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: marek.belisko@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso12056835e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 05:53:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742561621; x=1743166421; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yjRsD0/0zCxmc063MRwzsj4fqek/kCbtFm7gxPuNSB0=;
        b=SHz+SQHkhAsa6nFZwq/Szkq2IXXkmViRxkjBGlpTIOoV2/TNYyBxEoAX3ahyEdV1/z
         pF+swKztilWn7dBwxte0uz7xwswW0f2O88p5suGqwYXUZ6Vgc9TTu9uJaPDN/CnaOWdC
         FA7BXvViaGDs1i19EaV4pjesdtD7QTnIuj/7Kcd8cKR9AOmryAfW/3C7Ii+efWwEXEal
         NhTtRr3qZBg6YJeSm2lQd0AhrqLk8kdz+u5bhXMz1jsjSGeyWJFsujzotaxDYmiep/Xz
         /4PbZyUfnwluvUAyti8K0aaQ2uG/aG5wzuVhdar3+KmlGRavn7ha9/u9RKqPbHohNQ4l
         QCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742561621; x=1743166421;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjRsD0/0zCxmc063MRwzsj4fqek/kCbtFm7gxPuNSB0=;
        b=VZCK2aLzds1pLITZ0l7YLl5xiFRL1AKJNFZ2ZO0ytc5oavGKiFCixwJ9yWTkP5MpRR
         NpVPEVzl6NYXvRuFu3zqJY2Rn+FNd7L1/qbX/dEk4JdKkCrhpf4mDD5d2wVSU8RbbhHq
         4glKcw6idW3hJlO1Xi4MNAC7yyBj+xxmU9TQ697qx5P3nBEnNyLKSEAG/EalTEQFsaXA
         wEKeW9j/PZv+L/TGX7MzCLNPey4y/PJyzBzRQJMQmzfFAvaS+yrblEfBClApZquxYpCS
         2oXsZmGmZFTNRVpnNWZwcL1XnU8QtT+eJQtrCvkDd1p3CWu8vKm670ATCqL65jBwv/7P
         P+8w==
X-Gm-Message-State: AOJu0YwipxENYZ3Ra2TvPWK844TZ/GKE1SMBZNsKISr6Vkym5+ooFKCR
	mzPjW5/6GrfZv8yUnjzbTIhAnuEfTQavT6ze2MbjaGh/RvijeH08T5epQAGs4ExJJRF1q7WKRGr
	CY+X9lpv3WEFCH+yatyrxgGoEv85N5yL7sCU=
X-Gm-Gg: ASbGnctY3808rwP8t7svDgk7X52AXZ2ctpv82errVaMkROcgzKUOE494lOntOFJNCwd
	QJMiaDu1qmpcH6nSNwtPSbbm9DZFx84mZx2yBeWUvKOxoHIBn6pSHOBEiQfYLTRJEndbSKyLn+k
	g6isFE2xh8duI9h+7YYbm1DGvFmA==
X-Google-Smtp-Source: AGHT+IGrQOQK2u7cvVwsk9vXoU0DZo3FlVEYRLxLk2NHBFLS4/kYcdt9S9i7zWJ3KU5g1pUe9iM4n8EiqYa5yO76Bfk=
X-Received: by 2002:a05:600c:ac7:b0:43d:abd:ad0e with SMTP id
 5b1f17b1804b1-43d52a8fa06mr15539755e9.18.1742561620555; Fri, 21 Mar 2025
 05:53:40 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 21 Mar 2025 13:53:29 +0100
X-Gm-Features: AQ5f1Jp34V0lypF7c20EyTxX91FVW7DGLhdXbTgGgtwqi_l75PpeG_I6lShTPvY
Message-ID: <CAAfyv34APw3tfs=C08zMH6U-OXYwXK1b2GRZ25RHdA6DmWVBEg@mail.gmail.com>
Subject: weston screen capture tool
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006483210630d9beda"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 12:53:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65002

--0000000000006483210630d9beda
Content-Type: text/plain; charset="UTF-8"

Hello,

I need screen capture (image only) from my system which runs weston
(scarthgap poky release). Do you have any recommended tools? I've tried
grim but it report an error:
grim
compositor doesn't support wlr-screencopy-unstable-v1

I've tried checking wayland-protocols but the above protocol is not present
and even manually added it behavior is the same.

Thanks and regards,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000006483210630d9beda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br clear=3D"all"></div><div><br></div><div>I n=
eed screen capture (image only) from my system which runs weston (scarthgap=
 poky release). Do you have any recommended tools?=C2=A0I&#39;ve tried grim=
 but it report an error:</div><div>grim <br>compositor doesn&#39;t support =
wlr-screencopy-unstable-v1</div><div><br></div><div>I&#39;ve tried checking=
 wayland-protocols but the above protocol is not present and even manually =
added it behavior is the same.</div><div><br></div><div>Thanks and=C2=A0reg=
ards,</div><div><br></div><div>marek</div><div><br></div><span class=3D"gma=
il_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature">as simple and primitive as possible<b=
r>-------------------------------------------------<br>Marek Belisko - OPEN=
-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Sl=
ovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #op=
ennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http:=
//open-nandra.com</a></div></div>

--0000000000006483210630d9beda--

