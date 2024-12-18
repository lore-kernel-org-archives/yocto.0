Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFEBE77183
	for <webhook@archiver.kernel.org>; Wed, 18 Dec 2024 06:59:03 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web10.100144.1734505140656261333
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2024 22:59:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MVrvn6f3;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-436202dd730so43619455e9.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 22:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734505139; x=1735109939; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wZYTfo9HpU0Y7AnoXTI565ynhXKu6SxbMwaomG3JXjs=;
        b=MVrvn6f3qrwKV86ixIQnRxDdyE3LWftnzhEF2Q7dPQOFlQrWgVE01MgSCyEjkFa9WA
         5zCoNBWRYez9VqhKzKtfeHkz3Tx92m+0s8f4shWg0+TsOMsLYWo0vh3C/X22l9VnbhT2
         gCENFoxn0/thf5KERa8VC6GvpQ170T9lKg+sO95PKl2NFQtJgwO/0/5tPiMqhpIsC5ya
         P1lB6JYOCR8mcb44M+uYjR+RcQkI5i7Qn+z8wRLaHv/sCKB0CIshRRlVK25SC6Ezbiu5
         +c9M1v4yPLBBJm4YMzFgvsqcfyQwu5pAszsu4hDXTxeXaqrgdZYkYGymmY+BKEFuAIV4
         +m6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734505139; x=1735109939;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZYTfo9HpU0Y7AnoXTI565ynhXKu6SxbMwaomG3JXjs=;
        b=KqbeprKYk6tN+aPjaznJQ1zyslrzCHsuaAew9XRKwCwp2I5YnvWvlBCexj5hU39xUr
         RLBY95fO0hzx2IdFgjn51BIjDObds9MsbfUCFkKqBN8KADproPeTRi+NgDC9lgUP1E2I
         +ApZijPH0BxUr7jikDlVXKSdzGmwZvj+aQGT7ar/faiIROpYHV8el2tjiWMMF+djb/Es
         3kg9+P23K7l9h4PEno/be79o/ymXsBV65OwifkxDTx8rxIoexFsbqzPAgtvCEvVIeUOE
         zWHZYI57p0kKFdAlImm57+5kBDEuYOZ9ZWU6MuJmQ90vTRMVgtqNfNeOOMHom5GmaPef
         s9hA==
X-Forwarded-Encrypted: i=1; AJvYcCUD+4Rze+ajkvTnzKadW81x6cvVaFZiDldpa+4ApYSj4HixNIbF4kmJ09uT9/75/mYBlOfCWA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy0DMMbpt4Zk9wAbUhJ/zouKSTZZwZvaJRrM40BwXRydVKYUdtV
	nxCZhHfkfpWLOudn5dLo9FKodaOd5jB1gxBQA3WSIsOAiqojqSQ0
X-Gm-Gg: ASbGnctcFBFkLVLldAWAciJkKSQmroIyewyiTML+hxVUhYNs3FnvjVWlLZj5udIufHu
	JA/bOLBLgCTIyGKd9wEWYsvkTMQ8ZG7fLcbG0VskfVhczWm6RWq5WIcjL4AuQQ9LAC0P6PQcD4W
	r0+R80FUipW1eiXawCEPrhU+eyn/lCWRdrj6Gxo1skAah7P0sJd0cdQnN7a31oTuH04Ua87Hta7
	cj7onlB17bTKXKJ1ec3Q6BZOD5y/OuSi5t5Gjo4AUR/ZQWqQ0Gf3l1bWlrvzZzq
X-Google-Smtp-Source: AGHT+IHUU4NTKaLXkSWySHSZcuxougu42LFmJEFtCN86+gp7b33oSB4l/djIT/dnFiT/tTnkqZr9aQ==
X-Received: by 2002:a05:600c:3106:b0:434:fb65:ebbb with SMTP id 5b1f17b1804b1-436553689fcmr12768725e9.17.1734505138658;
        Tue, 17 Dec 2024 22:58:58 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43656b015absm10481985e9.13.2024.12.17.22.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 22:58:57 -0800 (PST)
Message-ID: <043628b5-77b6-4b8b-99c7-49e975766589@gmail.com>
Date: Wed, 18 Dec 2024 07:58:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Incorporating Qt6 in yocto mickledore #mickledore #qt
 #cmake
To: thejas.raj@mindteck.com, yocto@lists.yoctoproject.org
References: <1de6dead-1277-42fe-8898-d4a13c62edd4@gmail.com>
 <13203.1734494609149462818@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <13203.1734494609149462818@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2024 06:59:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64465


Hmmm, I have built is successfully, with the same PACKAGECONFIG as 
yours, targeting rpi3-64. (Using the head of mickledore branch for 
oe-core, meta-oe and meta-rpi, along with "6.9" branch of meta-qt6.).

I wonder what's your provider of virtual/libgles2 and virtual/egl for 
this recipe? (bitbake -e qtbase | grep ^PREFERRED_PROVIDER_virtual | 
grep 'egl\|libgles2')

If it is mesa, are you using the standard mesa recipe from poky/oe-core, 
or is it from some vendor layer? Usually these dependencies supposed to 
provide the files qtbase is looking for.


