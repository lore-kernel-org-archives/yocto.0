Return-Path: <sdorigotti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03AAC3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 08:03:26 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.38234.1722412999288527614
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 01:03:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XV2I6wjR;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: sdorigotti@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-428163f7635so33326355e9.2
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 01:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722412997; x=1723017797; darn=lists.yoctoproject.org;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vpaRugC+T3lvvhmdUUtZv9x3+fkzNm3MmNrRInEqYOM=;
        b=XV2I6wjRMRy8bAMdrsAUqMXvPFOP9QMSxRSH59aCKLm6GmPu9oMjZIgePCcnkH/TQ5
         yUyzedwy+SWKqF+YtIEeHGg51otpdZryR4X8pv7g+XyZTQ2+/uIU17+byeeWTNylSbrr
         zDmrjvbC7Kw8ZJOY3qHF79X/TUxVIVpv7/rQG33NMVnCKkcldoC5XHTKjt1fDmkAuSYU
         t7GXP2cUmLqZh5Awbm9WRXSihZMKFbaNPb7JjwysMteqZiN7nZje9LgFp5T0ppFggBNi
         uQRuJsKRUH5vli8qu+p1vvxNLrHiZRDbr4QjapNt4tB5SnPIIHo9QLT3FTmKI04QZvPg
         ae1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722412997; x=1723017797;
        h=to:date:message-id:subject:mime-version:content-transfer-encoding
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vpaRugC+T3lvvhmdUUtZv9x3+fkzNm3MmNrRInEqYOM=;
        b=AOAs65P/gJzKqFqOhtrb+s0x5qxu3Fp0QUbtAh2S3srtQQY9J5JBUzogaHeQF1bu8z
         aC0buwDfoTKoVQVpEs/ccio0rKAiXVrSpsvg1gkeLQNLytM/7emjVM7iZoyR6+S+mwfJ
         AkiObI9kQt7pxHuUWVXwkjch+og/QPWcxOXmAD6zktCGF8oc+TzPyvIOPm10OqdDlpJZ
         BmIhbaOHy/u+tq591EwmbHtT8QQfJZF9CZa3u2m0wvMlZhZc5wXe1Eq09Qszb8PgEX/a
         8rqvvZ6dLB4Bg/0OS30D6rf/JDVnTzn/jxcPUcKsPQX5uQaDsI1LXJQr+wFqo5683+mw
         mw6w==
X-Gm-Message-State: AOJu0Yyp8eaJ66iK2x1shiG27dwq8fi7DH5SqC4RJppl29Jsf3usHFHZ
	q3ob7LZNrRw8cB1SOghvHI/DmDqAVuq5uKyCvzrOhlcLBA+EblZpAGihVg==
X-Google-Smtp-Source: AGHT+IGcJP1ddzAM/YV5U7R6YfU/XanvT17ElOv+3FnedRzYn8J3n929JG99rLzD4J8WIShETKnH8g==
X-Received: by 2002:a05:600c:450d:b0:427:d8f2:332 with SMTP id 5b1f17b1804b1-42811d6cb65mr84220275e9.7.1722412997329;
        Wed, 31 Jul 2024 01:03:17 -0700 (PDT)
Received: from smtpclient.apple ([37.186.164.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4282bafc596sm11445525e9.39.2024.07.31.01.03.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2024 01:03:17 -0700 (PDT)
From: Steven Dorigotti <sdorigotti@gmail.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.500.231\))
Subject: CVEs and OSS info for nested dependencies
Message-Id: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
Date: Wed, 31 Jul 2024 10:03:06 +0200
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3731.500.231)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 08:03:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63621

Hello,

I think I have come across some limitations in CVE and OSS handling for =
internal dependencies.

As a practical example to make this clear, let=E2=80=99s take this CVE:
https://nvd.nist.gov/vuln/detail/CVE-2023-35945

which doesn=E2=80=99t show up in the cve-check report, and the nghttp2 =
dependency is not listed in the license manifest file.

The CVE is applicable to all versions of nghttp2 =E2=80=9CUp to =
(excluding) 1.55.1=E2=80=9D which affects an internal dependency of =
nodejs. The latest openembedded recipes are unaffected but Kirkstone =
uses node 16.20.2 and nghttp2 1.47.0 which does seem affected.

Can you confirm that there is currently no way to define CVE_PRODUCT / =
CVE_VERSION pairs for nested package dependencies? Is this planned at =
all for the future or do you have any suggestions here?

Otherwise I=E2=80=99ll need to consider some kind of workaround, perhaps =
defining N dummy/empty packages such as =E2=80=9Cnodejs-ngttp2=E2=80=9D =
so that CVEs are detected and complete manifest license info is =
generated.

The same issue applies to many large projects such as Qt, which have =
many nested/static (and at this stage hidden) dependencies.

Thanks a lot in advance,

Steven=

