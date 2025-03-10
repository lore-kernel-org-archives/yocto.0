Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E84BBC282DE
	for <webhook@archiver.kernel.org>; Mon, 10 Mar 2025 09:09:55 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.33414.1741597785136138302
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 02:09:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=FUnUZQck;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43cf848528aso5661695e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 02:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1741597783; x=1742202583; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EAsHXCvLfwgF+3J4xujn/V717NLKNK6gLsM/e/Fsqf0=;
        b=FUnUZQck1ZrkSOzubkYLsGH5N62v5mfGzWQjiZna/y4rSppKV11WPf7S45EJzOC9O4
         /L5zU9fODhga+ayinc7S/RURcOj8W0SnlUJQxHHZ1757fLUTAqcqku7Pas2JtfwfQYta
         H/ofG6KDDD/IM4Imwd+eOQ0ozhOhjrSVypK3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741597783; x=1742202583;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAsHXCvLfwgF+3J4xujn/V717NLKNK6gLsM/e/Fsqf0=;
        b=lWkK6ACouPmgiWYL3LzgXSXIvvQpjrS/B7Fe69XrVWrJ9yEPqSv6e87CuH1SogyNzM
         /iFaDHFP/Ut7Lw/XywSGh8RKKLSdnsp4SOOYaVl3Pxg52QGkP8RFD3fsB2qNMCwa5UvY
         2wRsoZDS3p4j0dFxetoRQgIU1fgMfHrkMs5Q1KzBlfXbT05zz+jXI/Ni0/oo1i/jj3qx
         +nkc9jLg3jZI7HHWKe80i8gIaHigSOEAVjR51ZTLdV3rZtvoMgKyMeiDfBrvvHXPMzyD
         NfBcQuXJUK+4oRLb1mS57buVvxrnFOrASO26aGcGM36xRxk4YcVZH54UZ2JXk6o1RXlS
         7mbg==
X-Gm-Message-State: AOJu0YwpRxbtjLuVeoNQQawn3A0BZ1Qa3qOAMtQJx6O3ZS9q1qtOuyob
	XVkEKMmtUndndczUNyhDrbGeScs5twbZqN8oZTuLtxhArmbgRiWzfUAjV/IMqcnHRaEKTUwwHVZ
	D
X-Gm-Gg: ASbGnctwoV6Eyt5NmkZvLrycWaYiwactf3keRxNQj6XpLokldSlSu4l3qO3ITl5V/nx
	mmeTJe8P/sOfYRPhwiO2qi0sGqqit0ixH7vMjBjQmhuXce4ouh2Ol5fFMbwR9EO+AhxCVObfLJJ
	uv94HqdlS9ct8AfX2Dyd7pPgrcCWdJq0WlJRRFz69X7g1XxkVBmiKPba/yeUBvUtqJK9ivg+Tgy
	uphZInySjk2Ih9lyLn8rq9Wtp4+lvSFgijx0wHc0O49xo4dmMLAGicHSNJzFl9Ck/diMdhTctnu
	o95YhZa7QxVmBauvzt5Ek3zrvsFZEwSwDYrIXVDZrLqbj38rvuX/aiZKXzuYAwgBHxIc9/WUhNp
	IlygqcXPtEb3+7gIirZ2pTRCgc5qunATZ+g==
X-Google-Smtp-Source: AGHT+IG//i9O6qZE2nwvm2y6QNd/SLyyDSFmHFpIQFnNGbKgRphK98jWE8lORiSCSoxZYAKOR+wzLg==
X-Received: by 2002:a5d:648b:0:b0:38d:badf:9df5 with SMTP id ffacd0b85a97d-39132d1fc83mr6474034f8f.17.1741597783181;
        Mon, 10 Mar 2025 02:09:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:3d30:def0:6e8d:cbc8? ([2001:8b0:aba:5f3c:3d30:def0:6e8d:cbc8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43cfcbdd0a7sm10920725e9.11.2025.03.10.02.09.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Mar 2025 02:09:42 -0700 (PDT)
Message-ID: <c4b1b122b424616df3cd7de3dd91131c01ffeda4.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-5.2_M3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Mon, 10 Mar 2025 09:09:41 +0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 09:09:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64932

    A build flagged for QA (yocto-5.2_M3.rc1) was completed on the
autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2_M3.rc1


    Build URL:
https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/1154

    Build hash information:=20

    bitbake: d5562e007c7c64e8613a118ab9a6c73ed2063263
meta-agl: 17fd501fae2361588f2af72c229d56612cdca40f
meta-arm: b6227e29625c2509b083092e5e10975c3b2d037b
meta-aws: 886dea85a304b5db0346494b2e95e7c59cab14da
meta-clang: 3669c28e90ad710e38ad2381ef0292d706fa9ffd
meta-intel: 81b110e4fae3c47d65872ffc60bda6e92271b3f5
meta-mingw: edce693e1b8fabd84651aa6c0888aafbcf238577
meta-openembedded: 74110869a8c1c54270c3a919ef7e84bed896e166
meta-virtualization: 2b0e119d5ce4106e78c214babfc1c6fe02f636b2
oecore: 6027a6c6cf283bfb639bb6c3bc2f35b3da225352
poky: 046a92d351e2025e0dadead9f70f85eff8f5af70


   =20
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org


   =20

