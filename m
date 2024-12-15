Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604B1E7716A
	for <webhook@archiver.kernel.org>; Sun, 15 Dec 2024 22:48:05 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.44829.1734302881700004851
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Dec 2024 14:48:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=AmaHREh3;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.48, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4361815b96cso22431385e9.1
        for <yocto@lists.yoctoproject.org>; Sun, 15 Dec 2024 14:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1734302880; x=1734907680; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=goxLA4LCPs48fGjSFJ9hpOXi4tWeo/Nq8DhgxUGfGaE=;
        b=AmaHREh3vyZ8EeQKJo6KTCaEskH5Q0ZvMBb4BZQUAKKiV1EpBMwAizkOzcS961ds0W
         beTV7cFWFmncNG5XKgGuvOVL6vFpcQln3pdCJxQgQkfsMrYBbAESUn14lyYXSAFDrhJy
         IfUE+Rzv+7xGKdljVvoCrKOUKKsxlY2hpT96g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734302880; x=1734907680;
        h=mime-version:user-agent:content-transfer-encoding:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=goxLA4LCPs48fGjSFJ9hpOXi4tWeo/Nq8DhgxUGfGaE=;
        b=hWDFOUiLCE6s11m7x49YKui9GgYK11DDGivWyH9ZzXRJryO9nBOX+ijvl31R/uDNGY
         xOEN/BrLQWyLRtY7cUHWXP6QjPniDwcoYv/6iz0qqujpCr+zbaktCDAyHgBa0bgh8Cgh
         e9la4u1AsPGFS83Ah99cwCAPqxaN8M/zp17lFvAna+MzVT15iGwy221zgrO8mHulL3BZ
         RPpT14lYvLjKw2ZES9c5IEz/A00IynMI7htuXs60Pd6V6i+eg8p5PpmZ2qoFuOJVotED
         p7TvaE00w3eUsVH9tovAqH4ee5I0eXlo9Fd14GEX1Vr8xYhB1UDan8ZF9/VYwKvVnOQ6
         q6FA==
X-Gm-Message-State: AOJu0Ywtayn4PVrUmrZe7Tux6cbOMEirMjY55BEx6HhVpUGANVWb7Du5
	TtUrimZWi5Ahh5hYizvS3CcVUqUkKPijkiQxMlQkqSwLVkphHjrk8ulv8A2gyrgzDmlm+ieySJ/
	a
X-Gm-Gg: ASbGncv8tkqgsrJLH7rg9FRa/HsD97Lr6GIXG09QUbOAdGe5j+pY5kbvdbM4NBxUGUz
	TSwLtF+YYXJ7kLox3x6EQN5WTtlio1pJRMNJ78YfQoTWHnLmMHPgeQx8fZnBIq5mry1UkJ9fOzK
	DHfSffOUyWi0VemRSMQroJ+VImscn7M4RA/aiSZiAZk5PL6PsEZnZgE5s9fP4qUXaHGKqQCT6jc
	v3MtEgojWtCyv3Z2rOD4cUbPUZ2lZ/nni52WU63vtlh6ErzMPSniFNW5xfTXzWxMbvF1DWRkp8u
	kRQ9hZXOczVu5vJQBgTGeJYBrZS0P/2yrQkoc1FUk8babA==
X-Google-Smtp-Source: AGHT+IHblYqogcPyFg5e0994WsA3xymHpgn4umkPEpPyn3XjkAH22u3ZosUN060m+fMRPXB6oCUT4A==
X-Received: by 2002:a05:6000:2a4:b0:382:4115:1ccb with SMTP id ffacd0b85a97d-38880abfbefmr9134577f8f.7.1734302879607;
        Sun, 15 Dec 2024 14:47:59 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:444d:802f:f68a:bc3c? ([2001:8b0:aba:5f3c:444d:802f:f68a:bc3c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4363602d940sm66579765e9.12.2024.12.15.14.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 14:47:58 -0800 (PST)
Message-ID: <2157aff053df3e53717993042e587b20e256f87b.camel@linuxfoundation.org>
Subject: QA notification for completed autobuilder build (yocto-5.2_M1.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Cc: qa-build-notification <qa-build-notification@lists.yoctoproject.org>
Date: Sun, 15 Dec 2024 22:47:57 +0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.0-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 15 Dec 2024 22:48:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64447

    A build flagged for QA (yocto-5.2_M1.rc2) was completed on the
autobuilder and is available at:


        https://valkyrie.yocto.io/pub/releases/yocto-5.2_M1.rc2


    Build URL:
https://valkyrie.yoctoproject.org/#/builders/29/builds/647

    Build hash information:=20

    bitbake: ba90fe673aa87cb0cda9b2e465ebe2063551f527
meta-agl: c036aa7b02f8cdf0f9190358bb8d8128c47c689b
meta-arm: b2c43dbf9b4e7c22038bdd5d01633962afe8f18f
meta-aws: 74dc7bc21a81c82fa9640997da206ee097704341
meta-clang: 147349b7334b8a25b96bb08c2361ae0ae95e7eb6
meta-intel: d0150964ca7c6a83d38ba54cda3e19b34d274f80
meta-mingw: 220a8ad605d60247df27d3a66facc89c1854ed10
meta-openembedded: da51096bcf257723a929c799bc6934877de81fa5
meta-virtualization: c1f668c337a56457acacbbefe4d1f1989202ba95
oecore: e345b34703d4fa5e0bc9a82ac33b7c1fd84f99fe
poky: fafd1db382cc24c53c17170df82780f9d593ca1f


   =20
This is an automated message from the Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder2
Email: richard.purdie@linuxfoundation.org  =20

