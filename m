Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9688DC71155
	for <webhook@archiver.kernel.org>; Fri, 20 Jun 2025 04:34:44 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.560.1750394076479937230
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jun 2025 21:34:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DXqS6fPp;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-adb2bd27c7bso207542766b.2
        for <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 21:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750394075; x=1750998875; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HD8h/WiJqIJm+aCFzeXfzStvObQT5AJpKsFF5s8ilgs=;
        b=DXqS6fPpJtjDB9fbjUdtwQHq4GEsq5oy3mAJaIir0Z+hYESHhtcWAmX6RkUu60i4Ze
         PgtriX5r9UXRR57N57Vi4HkHWbFqkWgmUtzwIlsrdpWzguBTPytcqO0XCOvKNESfKYht
         7D0kWh+Pp6TdksqK/9I2zqVvWThXi13MbL1T/l2wODEaoMvotKoBpTSD3CPHQz9UGylC
         pttXhk6/WoOEXJNufVb+HFUwqbnwMjJfZ98BnMpjjg02V2rbEBeejY3W3HjmdhECAs61
         aFK8StRepRLWd/sm5QNSR/kLmTrsoZrhDM0tFlekNtGJyrJX6rGSLxF5uSLSuhdbqTVq
         lSSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750394075; x=1750998875;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HD8h/WiJqIJm+aCFzeXfzStvObQT5AJpKsFF5s8ilgs=;
        b=AkIuloO1bYUy6rbqWPqMuF7OEEPHCoEFW91pdH1xM4K1bmcaQNKA2idFriisEqeF01
         UidBDntDLK/u2VL4//LrOZmWpZ1/16prdDeoRiaGydlvFynJsHn/1f6CTar+BTNjNhQT
         qmkHiG9w6xA71RpLWnPF8FSXCg9gNoIclP09cW4Pdm06SFdOXTRhyMWmRtIUYzvn+d5M
         ibgqgUC8SojTAiHpjF3+eKjT8rLPT7DREmUw1ctXBrm1oNULrck6+UxBck9C5WPCPw4A
         bhXB6KPOhfN0sdaLi07IS0W02gPrb2aGNLAy2VO5c53Pa7R8pKX+iR8cv5BI4pQT3Fsf
         BjcA==
X-Gm-Message-State: AOJu0YxC9+P5l1D0FV3tgSkFbpW2b9LUjMsrTH9lc5R8WcCHSFDBN7Hy
	xqHGC6LQLOkCBPpiP33NfZN/4MJXgCAmT+zHkUawjD5OauRDsbwVeGLf+xiYD7IswWkBWTr4uAS
	m+QOQ69gZmcfcCgOXipFtQr+BfhVvy6qf5A==
X-Gm-Gg: ASbGncvGblfkf/LKqzx0jTahfLzW6c+YZTlbvXA5aG5/onIsxLqQ3GpExOVMWzECyuH
	eh8IOgzYNVqtqB3iB/82Qj+82AOhclN78a3F3m5gXkxpPtOuRorSOHGiEqVQmwjKOIYnomH1+z1
	cEXJWqNRrhM2fV3Xge4dSDtK/nLFuKeIrL/pOcNtlElH7ILCZDPtsoZBQ=
X-Google-Smtp-Source: AGHT+IEaCFTDbzuTSPoSm4Lx4rXz369S3yk08PktEtZ0JcNgtGdvhlba5UDhwn3JS0nTym4E+/dHY7rhcofRGO74Je8=
X-Received: by 2002:a17:906:c44f:b0:adb:2751:1979 with SMTP id
 a640c23a62f3a-ae057ce90afmr103695766b.20.1750394074549; Thu, 19 Jun 2025
 21:34:34 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 20 Jun 2025 10:04:23 +0530
X-Gm-Features: AX0GCFt1BF1-fzvTzBNkiZS1TVEop-C5Q2-4rQ_cqHIJrfuHV1HF7uaX0cUD02M
Message-ID: <CAPJWBniNPkLC+7Gd3Ryh=qTqysjKUX2fCfFAo-7NxASq_Z1UFw@mail.gmail.com>
Subject: Building nodejs with only 16GB RAM
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000007d14e0637f96172"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jun 2025 04:34:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65528

--00000000000007d14e0637f96172
Content-Type: text/plain; charset="UTF-8"

Hi all,
I have to build nodejs which I noticed takes 32GB RAM. Unfortunately, I
only have 16GB and can't upgrade. So I want to know if I can increase the
processor cores and hopefully that might help. I am using the Lenovo
Thinkpad P15v laptop. Let me know if this can work or any one has tried it
here.

Thanks

--00000000000007d14e0637f96172
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div>I have to build nodejs which I noticed takes 3=
2GB RAM. Unfortunately, I only have 16GB and can&#39;t upgrade. So I want t=
o know if I can increase=C2=A0the processor cores and hopefully=C2=A0that m=
ight help. I am using the Lenovo Thinkpad P15v laptop. Let me know if this =
can work or any one has tried it here.</div><div><br></div><div>Thanks</div=
></div>

--00000000000007d14e0637f96172--

