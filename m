Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 164D2E7717D
	for <webhook@archiver.kernel.org>; Fri, 13 Dec 2024 09:34:22 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.11806.1734082449082507156
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2024 01:34:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=INoskLVF;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43623f0c574so10484865e9.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 01:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734082447; x=1734687247; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=RXVN/5OyRM3Z6u4pjrVjpEILs3MnOFRoZdjtFerx4K0=;
        b=INoskLVFeRGLxhYyuivO8Gd683hnuwTqEFTv4CkNEPRLYVpV9gigluBJwsD9aXULHp
         83oLIPSF9vn00cqZ31oMIKCRVRREK3fvc78RI7rmDOrGcVo/xqgmKMhqYN62TJJlHIgh
         zW8teM8LpTsflUiqYjHY3gPMRvEJ6g4ptlu7K4qoei6fsUYklNZmptLYKA13nfZGfTrW
         X5WV9n6y+Q6UNulpaIuqD8OO7Dsbvt/7VO+ECzTI0q8DzpLAqu8m6ASyf8wX9AwqB0lr
         jxtkOGlS+8lxnBINLQPdj9C8LWcdpDRkEITqsihchCBgdo9ERzIcEJtDmKBBawZPeeFQ
         Eowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734082447; x=1734687247;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RXVN/5OyRM3Z6u4pjrVjpEILs3MnOFRoZdjtFerx4K0=;
        b=IoHrQqCNddJjprU0dGPZxiFshR2a2koZayn5mjYF/oGUHofYUT482DSS4QPmqV4LzX
         XtQxfgx/EogdsKyTuDBk8F+qvZkFXk45Jw8wPaH90t/NjWacfGS+76hPq8xXNswo2ydU
         ak3RO8BW3UsFgWTObF9IVFZ4u/faBucYnwdeBDTk1IZsDlMpXJuUMTLm306q2q40bEyK
         ZI6+8XQ6I0XpfLMwPvq0iUP+3/X/c7hq+uqpDKh0bw98G0Cf32khmfjhQ8B+QcRKEkOh
         uubU92qX4hDyjKYTeDrFN6J1y5Il2XZODhwOv421KbFJ1mbNT1JJMKxfse4p1ZX3MbFD
         Rptg==
X-Gm-Message-State: AOJu0YwHVJXZsp2lb1DuvuRTMfG+U9jLnfR5pfoyyx8A0LOjhPQrUQWi
	p6C6B1A6KzQJ1mal2pftEK2HuvZirEYANS8gjACS9gZVfH3MjOThwmQP9CBk
X-Gm-Gg: ASbGncsFT2TewOF1p28ZAxZc3jkusNCNi4/o1Iwm1ksqWOxQxMSQ423KvTWPeesyAvZ
	23vuXUKZ2IS/0xqzbC3P4QF9OHp1AFcGfTr/mOoxGasT4wa5VY03s5l1DEYvjeJ3WoMOrL6lPVq
	36uvYfBK5xDI3LGigIkZLKGpbGC3oNXegFERWExy66odZzcodMnUgJBfwyEknu4Q5lwTkD4PKTK
	r2T41QkVr09+BuA8uwc4VL0+sIT4XHKIrMp+9fJgVzCQiTAi4R6OQJU0jp7s9Hm
X-Google-Smtp-Source: AGHT+IF4Xhq4naH3wMNLk0i8pzWUqSj2axJp16WQoYqinxPXSL5/mExsb1Azzn2uLgbBrnO7bf91BA==
X-Received: by 2002:a05:600c:510f:b0:434:fae4:1630 with SMTP id 5b1f17b1804b1-4362aaa0036mr11837645e9.28.1734082447196;
        Fri, 13 Dec 2024 01:34:07 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4362559eedcsm43222805e9.23.2024.12.13.01.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 01:34:06 -0800 (PST)
Message-ID: <2440ad33-31a5-4396-b12c-18852d437704@gmail.com>
Date: Fri, 13 Dec 2024 10:34:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] issue while adding spinnaker package to Yocto build for
 core-image-sato
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com
References: <QelM.1734081786631409977.1Hgg@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <QelM.1734081786631409977.1Hgg@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2024 09:34:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64442

It seems that you have hit this bug: 
https://github.com/ros/meta-ros/issues/1268

There is a proposed fix: https://github.com/ros/meta-ros/pull/1269 (have 
no idea if it works or not)

