Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web12.3222.1583240165387536291
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 04:56:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ay93ptVC;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: inigovicentewalino@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id g19so4154366eds.11
        for <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2020 04:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6BEDvqg68QfUNCEMSCwjxbUxpTS9QQ2duEnM2SHyoqc=;
        b=Ay93ptVCNw8ScWoDhtlzyxE5ALKDCF0ZDKRUsspON9Xp9JILiQf9WySUmhipcADYcy
         NvnRlRb2ODcKPYsV05p/ZxyBl+Y5CLUnI3oOl1u2acxpjPh2KxnkI+UJjlidKzMRTBuT
         rNxYSvliPfoXSNrzXr6ptqAkUgmv9NSL4kWNh8DuWwDuJ0iGxbbrREEUSxA0TdGXqEap
         AqV3drILkKGQOqoNQjEPNzPyIf7sB72y8VvrDpT5aFqXHByR8mmbL17w/tmZaosg9SKi
         fAd5UbuTboZmoOrtaHyez1qkNbjnzXm4GkiZei/dnYvKGL230qBduOHQHg/2AASK4ODK
         yeBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6BEDvqg68QfUNCEMSCwjxbUxpTS9QQ2duEnM2SHyoqc=;
        b=oscjhcheEA86D3EPAze64/6+aV2asxHX4PXX/fKVZvHIUySA/Y/fbAqfwG/YDepAR6
         kMThzEqaCnXljeKE+E/68bCw29+J3Kt1ez2dIMXC5TTNN5PCZWaYlCsqAWEtBLBDOeV+
         vaLyGS9rGHm+cb8pHpuuDlXxT2dMOp15nyxziamFxGZaQYQS/gWyfyfKJmYaodKbjriZ
         beixEbUx+Ekk2CGFca4u8U+48qY9b//UZWHYQduAvSbbpwQ6XITAGG+m88IjXLt1el8s
         WEid0voi+kd29phsrWI2ZAJlqJIjdlvnsLISrmcKvxEgxnDEvsEYuwu1vQxhjbJoWPOR
         Y5vg==
X-Gm-Message-State: ANhLgQ23vAdo6VfY8rDeuA18G8eHZRGeo3f+cNjWiQVHB0qY032r39tt
	Ug9mz8SuKNwMwfnUpKsNWBNSd0uUXAGrRsW8rBX9GYM5
X-Google-Smtp-Source: ADFU+vvIR0mEzFQdIJBVBOldzHIrxFGMu7jRhEO/+667MX8mxZgxEIiLcyryXpbnyyX9xo8/vwh7razbn2kkmtdQ1GM=
X-Received: by 2002:a17:906:c7d5:: with SMTP id dc21mr3904107ejb.316.1583240163553;
 Tue, 03 Mar 2020 04:56:03 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?B?ScOxaWdvIFZpY2VudGUgV2FsacOxbw==?= <inigovicentewalino@gmail.com>
Date: Tue, 3 Mar 2020 13:56:01 +0100
Message-ID: <CA+ABUwhXdEgn01xtYi9FK1ysp71CjF-_LqDXc-2GoEXm88gZVA@mail.gmail.com>
Subject: Imx8m mini boot
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008af48c059ff2d376"

--0000000000008af48c059ff2d376
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Is there any way to see the traceability or registers by the command line
of the secure boot on my imx8m mini board with u-boot?

Thanks
I=C3=B1igo

--0000000000008af48c059ff2d376
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Is there any way to see the traceab=
ility or registers=C2=A0by the command line of the secure boot on my imx8m =
mini board with u-boot?<br></div><div><br></div><div>Thanks</div><div>I=C3=
=B1igo</div></div>

--0000000000008af48c059ff2d376--
