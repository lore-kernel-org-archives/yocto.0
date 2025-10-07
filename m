Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 774AACCA470
	for <webhook@archiver.kernel.org>; Tue,  7 Oct 2025 11:51:43 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.16473.1759837894470051536
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Oct 2025 04:51:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JtLg3aBl;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: marek.belisko@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3ee15505cdeso4907110f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 07 Oct 2025 04:51:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759837892; x=1760442692; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=deTtuoNDt+TjdTluiBgYhcxXJ2faMATL4PsbwRJ+VWQ=;
        b=JtLg3aBlxgQBb3C1v4UYjDgu81a3OijZySvgDNRczH+HddkDIe0DXdvubOF8XI0Qt3
         fx0XhSnwXVbQmDEZxRj3lC3p7GI65Y5xC3fKO9YYEwNlAQlsFYNaoaZE5oWqRs4m7iqH
         RvZf9QlZVN2rp9/Y03LF6FLCVdBAq0lIvsV5AWEE1l+r+zcE7TIE5OBKDJUKDUncTwHI
         4SQr6Jn0HQ1KVLHe8l/erxs1hs3glmK1J6TSy7ujwl4Fnpnu6zs4YGyyAecvMYq26nAJ
         TCzN/URlhzj60iqCSprdqyGTCUfyyGzmfhXwcAWrQQywmdDK5Xw55ziCyCwmovpMpNUf
         5mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759837892; x=1760442692;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=deTtuoNDt+TjdTluiBgYhcxXJ2faMATL4PsbwRJ+VWQ=;
        b=hLZwCw5zwzX3zJYMAgzyz1lsx5ciH6fSXpyWwKNPpk2abVEfL1ITO+AYKh8gIRbWcR
         rIm4zVC0be3cqY/iYlM0DFUR2feyDzx3Sk8uCzjfoyh8yws7B6y7u7ZgxBnGf6so381l
         gCPVJK04VZAiSZpacVtRAp+vCFTXywR45AZbyYbs1h8iM8CIT8byc5IKa03sX9OL/PSQ
         uoPQ081XNOtLErU+SD9khEeoiYsLCezakX9d5ZxBClfwSrC9Sp6CM04ZSANbX8wRZq2L
         nDnoJmKMn7Z46HiizEJrHWtVp/FfZEDdNopeISt1oRgZ1q3vI4z74HXw+o2qUheK+rub
         i4gQ==
X-Gm-Message-State: AOJu0YznAxvaxfBbddeWMOBespiy9vCbauD80RhGk1VpFVNeiNMgneHj
	h0xfs68Suul/zW6X75ZfodiAwswsrJ42linHmXWTBUZmzz2V5yN8eCVA0jBcUTyvOfo1Ju7aPTf
	eFIXa65BwBMfZ0WV3lEuzNhnMUZjdEJ0U/JoR
X-Gm-Gg: ASbGncvZ9+fkFQUmIz6ZqK3YvVc3U4GsNRtcgf2kN7O6KmKqivUNuDx/hsOUdKcNxGz
	Bbzv3CvQ+q3hjtz217nReG21x0XL6oBGp85ElJPWDGCCEccSf1mTd6CLWBikZHh42a95nYCAU4W
	qKX56Fae2wtpb2gWBrRWN3TOv9ze0GjHikL0lMsV58OqnhwGedq0lxt+ls1SVTCr7AplmNqYd9J
	6dxx8pqbp/c0IEStTiYDsR75u1M2kE=
X-Google-Smtp-Source: AGHT+IEyHmOi+3FPfCr6VzneacI65yDXQGdr6QQxusVpFRzHXzlJM21p5M5T4KJ/hSynHxa6crrKrfPddsr2btAokd0=
X-Received: by 2002:a05:6000:2909:b0:414:c2e8:a739 with SMTP id
 ffacd0b85a97d-425829ed8a3mr2149613f8f.31.1759837892154; Tue, 07 Oct 2025
 04:51:32 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 7 Oct 2025 13:51:20 +0200
X-Gm-Features: AS18NWB6z79okHXw9ILjtpfb6s8H7qALUlcRy1HgeiqjofsQ8_TBuzT2uit88Io
Message-ID: <CAAfyv37sk+aT8Zp3DZYT+Up6O5JFsT9+xYCbefDgnjRMqPcxwQ@mail.gmail.com>
Subject: [meta-rockchip] accelerated chromium on rock5a on actual master
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006c9a880640903087"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Oct 2025 11:51:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65908

--0000000000006c9a880640903087
Content-Type: text/plain; charset="UTF-8"

Hello,

I would like to ask if anybody tried to run chromium on an actual tip of
poky + meta-rockchip with GPU acceleration on a rock5a board.

Thanks and BR,

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

--0000000000006c9a880640903087
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br clear=3D"all"></div><div><br></div><div>I w=
ould like to ask if anybody tried to run chromium=C2=A0on an actual tip of =
poky=C2=A0+ meta-rockchip with GPU acceleration on a rock5a board.</div><di=
v><br></div><div>Thanks and BR,</div><div><br></div><div>marek</div><span c=
lass=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature">as simple and primitive as=
 possible<br>-------------------------------------------------<br>Marek Bel=
isko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Preso=
v, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>t=
witter: #opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_b=
lank">http://open-nandra.com</a></div></div>

--0000000000006c9a880640903087--

