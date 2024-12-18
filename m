Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8F3E77187
	for <webhook@archiver.kernel.org>; Wed, 18 Dec 2024 11:17:54 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web11.103177.1734520667494968470
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Dec 2024 03:17:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TLaQsF/x;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-385df53e559so5119152f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2024 03:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734520666; x=1735125466; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=80Jh7JdgsJaRTtla9fcAxLUHfn8rrUtC1Paqnsp6Zec=;
        b=TLaQsF/xsA5DKhGJar+4K0IyQKZBPhA3HunmJIsAWnwbiBUrcITE9tQZCB0ZkcPFeg
         O2ltniT8UWZhaXcry3SopfSicV28KIeZv0siAtjQ97ASON6gHRL5axfg9Ta7IEvq3bJl
         F2315dEQgU/3/+8XhUPxZJwONGJneGr6xHjqlhKED5yKLa2AvMSZq9fCnhNbBW6uHIgT
         qIv+DzAAR0+ONpkJBB/IZFnWsfL2pKK5M+GygdVmstMzXUyYhMnzd5hGIvFQ8bOF1z6b
         g0/B1OVyX4mEKo96blNoxSg9k78RVuvhqglz0DMy5mYQR4rCBb94E0YXGLw1yjwgiA+l
         piSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734520666; x=1735125466;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=80Jh7JdgsJaRTtla9fcAxLUHfn8rrUtC1Paqnsp6Zec=;
        b=SF/m54fV9wuShZ7LeFp0GUjj2UFiBarEkthKcStMQATtAifmVdwMUWYj+TlQHt32+R
         B1r8PiRDXwaxpCG/jC6wMfAakzT9aXNNxqUFaRw5ErxVG6brzENQ4iQTcQOvkzA/vODr
         apCi+2KTAlOxvTSlu4pNAhkOfhU60Iw3CWiCP3thktJklW3TFwWaYe6BvKkMrdRrGQzE
         k/cq43lh9wtpHPHe2dytzbZySTX2Zmv7EKvc690uPnPRN1tXv8qHlUq1Du2E3eC+rjN9
         Aa2ZD0d5XvS6SQFljmYCs9YeOq+Hl1TYQzmhYvJnkEzQBo+bgtkDcin+cVyuZkAh6Y1c
         ZsjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOL8TbcNYXNK8/cacbrbW16QQadsAX9T9byxBsEvOC17FA+tDxrYemabYOZRjwNZLzYJqNsg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy0w9FVhgoyUDrreU622T85FdsEtquEHpjyqFUbzYEkmiiyH818
	NyImI5evfkSsCed2cVawdeayBakkq9NaAEYIO5WB1w3YUtqy76BG
X-Gm-Gg: ASbGncvUSM29kzcv1vdwAgDvV/IE3o9q2WmgsuhZSUQsQuRaKDYAiltSlqhkAdBcGfo
	QnUNJHtGCPNNbD+ypLX8L9md4YfM1UDmJUmI7iIqY6U2TG8XxdH2Opald5OKQ+7OGXZLITnR4Yv
	5PwxayIBnx6Cx7HunNyQbIEm4OqD/izugeae4eDGUZZvlUbciyWXldaYsqk2KyHENlaf26y1VsB
	fgU6WridG6D92+NwZQdGSaQUGMHf/TAxfnXFnOVJSF3dXVTS/qGXLFiq9SrtXVR
X-Google-Smtp-Source: AGHT+IG8FJ8h8OyVIrbqmQOpE4i6o/gELf88Ma5ASx3Rfm7LGr5Q5qnUq9/pY9bjv765y2aA9uf6mg==
X-Received: by 2002:a5d:64eb:0:b0:382:4ab4:b428 with SMTP id ffacd0b85a97d-388e4d2e010mr2374944f8f.8.1734520665692;
        Wed, 18 Dec 2024 03:17:45 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c8016120sm13581629f8f.23.2024.12.18.03.17.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2024 03:17:45 -0800 (PST)
Message-ID: <34b0137e-87d2-43ba-bc3a-e93676d4fa5a@gmail.com>
Date: Wed, 18 Dec 2024 12:17:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Incorporating Qt6 in yocto mickledore #mickledore #qt
 #cmake
To: thejas.raj@mindteck.com, yocto@lists.yoctoproject.org
References: <043628b5-77b6-4b8b-99c7-49e975766589@gmail.com>
 <4730.1734515621830278631@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <4730.1734515621830278631@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Dec 2024 11:17:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64467

On 18.12.24 10:53, thejas.raj via Lists.Yoctoproject.Org wrote:
> The provider is "rockchip-libmali".
> And the qt version is 6.5 .

Your logs say that you are compiling Qt 6.9, and not 6.5 
(...qtbase/6.9.0-r0...) - though I don't think that mismatch is really 
relevant.

I suspect the culprit will be rockchip-libmali, most probably - this 
recipe is not from the meta-rockchip layer[0], right? If it comes from 
some third party vendor, the vendor should be able to help. (If the 
recipe is available online, you can try sharing it here, though 3rd 
party layer support is on best-effort basis)

As an alternative, if that works for you, you could try disabling these 
features, by removing "eglfs" and  "gles2" from PACKAGECONFIG - though 
note that graphical performance of Qt apps might suffer.

[0]: https://git.yoctoproject.org/meta-rockchip


