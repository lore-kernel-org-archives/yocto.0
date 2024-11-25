Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77B0CD58D62
	for <webhook@archiver.kernel.org>; Mon, 25 Nov 2024 16:11:35 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.22457.1732551087614348415
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 08:11:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CBENhBbr;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a9a68480164so654484666b.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 08:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732551086; x=1733155886; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BPoVL3w+9MxLaBRycZUeGXfi4UXA2jiQ+4K5tiMNc18=;
        b=CBENhBbrdgbvEZJ0K3ICI1/vsCtiALWBFqe49hTpdQ+3CnyiZKVhOeyaCg8Weqdve7
         zDiky0MQKYaciFttwdK/nxRqpoDQD+KFDf4O5XpO+NQXYA8xsZ4p429c48ywyUzEdJPQ
         BowQbJJf/wdfwhtFBPnEchSfa5cTWsNP+Ts6mW/AKt/btTK+6K0F3hd/puMVlySn6zEQ
         qy/mCias6WGD38b5XhjgFaeUoudxQ3N35G6y+vFes4Gyusn9uIX+nRbnSvCCECEjQLh+
         YsjheA04oxuyv8sqXGIEj+qlqMUZEeof4CuwvK0lEMjqlfKfUaoOuynZP+5pSGbEeYNA
         2Vxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732551086; x=1733155886;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BPoVL3w+9MxLaBRycZUeGXfi4UXA2jiQ+4K5tiMNc18=;
        b=Sw245+zEmIJXD0Mg6P3O2IKr4ff0MQgjy4Ko5+GHSioUF2bqvPn3c/WygDEsm/GMff
         a+/wUN45l0Z6rIw88IVJe4p6NJvQaUvsKAE4JyfGi/L+/bpGFYljMPoy0bcG25ly+eud
         Oa9YGu+ktFivjDJwlKb08KJiDTddRz2Saa4uZCeDyC7aQ4Upn2jhX6Au2kr2V3PArc24
         GpacHL/tsoFsfnxXs5KYTwjUkVBNMSfYgTYinHwRF8JEZUVVxgHONcMvHgxK5sP0v5R1
         0Rpbd7FIxN5pJXHL5+PlGIB0AiGnmHRtE4t72wkLT/LR3t5Bg9vpbur+B+m+LmaXWqR9
         LPvQ==
X-Gm-Message-State: AOJu0YznUf5F+fjkrqtuGeQxwmLlXvXxKz8PsBMgA4EJO8vqOOik8HEr
	VcAC8gXztZ9xffC6mBkiuLBh25qaoPFrewcqp03rY2HYYE8T3+WvQzslRA==
X-Gm-Gg: ASbGncsfDDzd3+C2fW4YkzXOjCaAmpT400t6jAds2FW9pEDAZ+6YNZJx4Y0OGMfQQJr
	FHVv8S5hPKT3orANZTsAhRv3RvMwo8MvbMZK43WL+dTfnwzNAqsdte+f2vthLXa1ikGOJa/9JS7
	yCdglClkXNa88iKfsvnJ9VsqcMz9O4+yFsiTT5WRnIqGgr+7s3qJ+yBeTdNbCR4ne9J7gSGc6XO
	31t46dMU1kwolWtmFgno64SViVfo03O4AFcIK3Eo5cnm612POEBWTI=
X-Google-Smtp-Source: AGHT+IGfBpwU+Dew7UcV1Vss3Bpf/ldN63Sa7EODOJrNf+XxiamDSRY7PQ7Ajiqqdly1KF99NNI4oQ==
X-Received: by 2002:a17:906:3293:b0:aa1:94bb:c475 with SMTP id a640c23a62f3a-aa509938cc2mr1201216866b.24.1732551085503;
        Mon, 25 Nov 2024 08:11:25 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa516396f6asm451702266b.158.2024.11.25.08.11.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 08:11:24 -0800 (PST)
Message-ID: <e01dc6d3-638b-4618-b980-a5d52d99ce0b@gmail.com>
Date: Mon, 25 Nov 2024 17:11:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] poky master gcc 14.2 failing at do_compile
To: yocto@lists.yoctoproject.org, kanakshilledar111@protonmail.com
References: <uLDAQA9NCYNb2YdDUyELhD7St0jSmMC214MYF8dgAa3gkIl8zZc-y3eTj-HP_HX0oPkiZVPaZ5oZpONslESKvwRgVM5mxovf0QXW4-faV_E=@protonmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <uLDAQA9NCYNb2YdDUyELhD7St0jSmMC214MYF8dgAa3gkIl8zZc-y3eTj-HP_HX0oPkiZVPaZ5oZpONslESKvwRgVM5mxovf0QXW4-faV_E=@protonmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Nov 2024 16:11:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64339

"collect2: fatal error: ld terminated with signal 9 [Killed]" - this 
doesn't look good.

How much RAM do you have in your machine? By any chance, do you see the 
OOM killer invoked in dmesg?


