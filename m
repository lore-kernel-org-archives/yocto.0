Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04D47CAC5B5
	for <webhook@archiver.kernel.org>; Mon, 29 Sep 2025 11:59:15 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.51612.1759147151424092736
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 04:59:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V0SU2rLZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-6228de280a4so8909982a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 04:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759147150; x=1759751950; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=terkIEPkaZk1PLqYtR3mCdUnLwe8cI0cOsfOmmBkLC4=;
        b=V0SU2rLZm8wvSp7iILnQ8q4RJGS+owWA7AVEm40FoZjYFGxLjUk+rlgkJ2Osw2V0Vb
         Nnk59WMb4Dbb/kK8gjaPoeua4QT0yZ4BpbPJMMEYJ1NZ2SdB1pOqdv/gkoxSd7zQ26DD
         Mbnd7O4Age6Sm6ams8+w3z8mfcJ8MX1X7Hx18zFYdgfOCH4rd9a2IMTugjxcZArhYnqd
         G+qqaBVBpqRqnvUSE8z8GHGKg1CVyl/BNX9z3B003kM0/2tGiiuqO9k/XRcnidiObhfe
         uz+avT1vMDwbj/B9emDhvp19QsTkT6HVNPu2cf+3OLsL6qYH6ded6RBTbxgoByvJrmTy
         jJAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759147150; x=1759751950;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=terkIEPkaZk1PLqYtR3mCdUnLwe8cI0cOsfOmmBkLC4=;
        b=Qfequb+wQ6KSykYn3xjUCkEm3z+2nuY71FlIttbex2zvK/8xe1rX2dOojYpIuGGFGC
         1vELbG9bHBKjhNuCi3PBBn0QVBVmGanMsNHlchqrU7KcEUaGVrUHVEvuaM0DGb80Fz/q
         l+NGep2OBtgN/eBuxfvsK4o4L/XpobcjiS5XGtPhKz0R4JO6ASTWyuTCJpOCeC7xtNVs
         8jw5LRP8daEMGrlwYGTyE3Icxi1wLh+CovyC58p76P1jxFwZPW985rPOdNNQNPNOK3sL
         w6cNUCv7ANYVqo6I1n2UHZ4S6XZRkxijm3VPGJe/Kz0aNllnwyOQKz+5gJmYMJ1upGhC
         AzXQ==
X-Gm-Message-State: AOJu0Yx0C1OGnXdFE0QrCSss/6iWdpWJGzLjuTfN3NVURbuUYFfIdWQf
	O0jGds3/NpTlfOpjqt8d+XEcVnKDJimpIplUJyY/Wir/KKv9nMybWvmrG3/R+Q==
X-Gm-Gg: ASbGncs+8n36MBWcoSbyceleH4Ur9DnSjGx40iPjR/Q1jkEmqA+YBueZGiw9MTEZo45
	oDlCF1YvVcWXSyB51awfyzzrlLmP9kh1+wIV/hbPft4x4lgcpNxUOLnZTZTlkUNLuKAyOa2NL8S
	BnEYqrTYakqNKYdynbM+FvaW03/GUWB0neqSyVY3y/y9mHr5cMdDWQKLXN18Filfux5Vy8h6Owa
	TeogpYrDc9afjY6v3w+SAvJb8ohEz2RtJQMrNIfLjpH8pOLt6P8zsQ83z0recwEzLTln+OvPNIv
	ZhW3AuFFFezt2ve/TNZKdWYA2feN8IvSoXuQIZBBiZLdnJFj27FcgQ7kL6ehTPKInxbV4U24xyT
	d2IAncJb7Iium52tFd4ZJ4xkZapanNuc=
X-Google-Smtp-Source: AGHT+IFgvcRE32uKCzFYmrZUE1E0LT8QDvNNmeWR+hEjRuqhqaOYq8tYmLObfFglUteI8yd8LIqPwg==
X-Received: by 2002:a17:907:3c8c:b0:b09:c230:12dc with SMTP id a640c23a62f3a-b34b7209e46mr1720714766b.8.1759147149520;
        Mon, 29 Sep 2025 04:59:09 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353e5d2f92sm897906666b.18.2025.09.29.04.59.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:59:09 -0700 (PDT)
Message-ID: <4d18af3f-dbbb-485f-9505-1beb256cf482@gmail.com>
Date: Mon, 29 Sep 2025 13:59:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Failed to fetc qemu-project/u-boot
To: yocto@lists.yoctoproject.org, nicolas@saliencelabs.ai,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj-D4psxuu1wZR5D=SB+zDQdvF0pN+7TL1TcPjOgL8BqLw@mail.gmail.com>
 <12545.1759143340455701969@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <12545.1759143340455701969@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 11:59:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65886

On 9/29/25 12:55, nicolas via lists.yoctoproject.org wrote:
> Thanks Alex.
> I am a little confused however as I didn't need any gitlab
> configuration to build the project previously and I am also not sure
> what steps I should do in order to make it work.

As a temporary quick fix, you could try the workaround at the bottom of
this issue: https://github.com/Xilinx/qemu/issues/104

> I would be surprised to have to do manual configuration for every
> single gitlab repo yocto is accessing. 
>
>


