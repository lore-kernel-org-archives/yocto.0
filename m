Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14E12C76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 04:34:36 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.47219.1680237275032019922
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Mar 2023 21:34:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I/hAnP1H;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id eh3so84834664edb.11
        for <yocto@lists.yoctoproject.org>; Thu, 30 Mar 2023 21:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680237273;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=LZ9YFcsvsKZfhxuQIMHD9d/He1iBDrxK+BGzc9kWeCk=;
        b=I/hAnP1HV6x/yD4012N5PXbgTHh5PsfD1O4u3dHBO3M0AZe4hh69+Sd9zc0I/qMQuF
         WNTc4pTIRCidYPU66OZwg7SeEN2jbd4UdR3ivC8zSwFom7tyaLnq4XtnIjCXdxJEfF2j
         ZoQbrVCskutKeGoox0ERM5za3sADHVuTHKiHalhGLMjTuQ+3hjlQZfrkZE1gf45dm+b+
         88Jg9MUjROPBrvMidShCZftQHoUOmZA0tlkacGhVTPp5aYv2kf0dI9yrcqvMnWgq630g
         z1UmcmH+IqtuRjCUWK8m7Ttp508IDDexKBL2BUGv45RRQ+QFJA2ANa8WzVligebbNgtg
         n48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680237273;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LZ9YFcsvsKZfhxuQIMHD9d/He1iBDrxK+BGzc9kWeCk=;
        b=hskudH26ZpVMAfsgePbhN2vMoGVl8XZYSWs7eRCpNUiqo2plJ0AkfTSwb0xTC//3L7
         59CfEirQJcNyDdErDP/f+Jc3nk+NrQ3w1pDv7L88uTslDVl2y4rdO2eVT4wbUwG4acqN
         w92eTgYdT4If/dCSZyaxmXmBLG1AsA89lnt6h0lzpV7Qt8RO2mlR2nnTWDjE1ChdxN1S
         7M0iTq5WWf7V06G2yxhA2QslcU3a9MQfVMGPpTC/66zvoQmpVXu4xQ0Yg4F3U1Tf8SKh
         arUFItp7+6afRQJWqL1vHpExsNuhZViX6QRgmgr6SpOesx/eG775Fm3i/J4OhgQtlk3U
         JiNg==
X-Gm-Message-State: AAQBX9d/szOeTz2DahDqHErtFM9BAxEFLMqaHkwDzwVQtkjwZdRGgigu
	4+Gme/PixsRw9b6Bn0piIGN4wmOhA96Nh0uXs7GhpCmLtjJojA==
X-Google-Smtp-Source: AKy350b/BsS2QKhIWMXuU7s/jo8gKolTljoJM0wHmAQsYUaQMfBxHo8ifYrr++vkigN95TbYr4DwTArznNSBSMp9wN0=
X-Received: by 2002:a50:999c:0:b0:4fa:e5c1:d142 with SMTP id
 m28-20020a50999c000000b004fae5c1d142mr12539768edb.0.1680237272881; Thu, 30
 Mar 2023 21:34:32 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 31 Mar 2023 10:04:21 +0530
Message-ID: <CAPJWBniLt1kzG4zoDuHNZyQX1NFkneBTo=hoFBPH2AFJAhyv6g@mail.gmail.com>
Subject: How to compile binary executable files
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c9e0c205f82ab932"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 04:34:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59557

--000000000000c9e0c205f82ab932
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am new to yocto needed your help.
I have an executable binary file that is probably compiled using the gcc
compiler. I am using yocto dunfell for my project my build_sys is
"x86_64-linux" , my target_sys is "aarch64-poky-linux".

Can you please guide me as to what I need to load this binary executable
file is my generated image file.

Thanks and Regards,
Hassan

--000000000000c9e0c205f82ab932
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I am new to yocto needed your help.</div><div=
>I have an executable binary file that is probably compiled using the gcc c=
ompiler. I am using yocto dunfell for my project my build_sys is &quot;x86_=
64-linux&quot; , my target_sys is=C2=A0&quot;aarch64-poky-linux&quot;.</div=
><div><br></div><div>Can you please guide me as to what I need to load this=
 binary executable file is my generated image file.</div><div><br></div><di=
v>Thanks and Regards,</div><div>Hassan=C2=A0=C2=A0</div><div>=C2=A0</div></=
div>

--000000000000c9e0c205f82ab932--

