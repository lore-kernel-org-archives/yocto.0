Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AE6C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 00:26:13 +0000 (UTC)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
 by mx.groups.io with SMTP id smtpd.web10.45816.1702599971593310334
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 16:26:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=tuAUfMTD;
 spf=pass (domain: mistywest.com, ip: 209.85.166.175, mailfrom: ron.eggler@mistywest.com)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-35f418f394dso785045ab.0
        for <yocto@lists.yoctoproject.org>; Thu, 14 Dec 2023 16:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1702599970; x=1703204770; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QOzEZ6wCvWMhF9a6fU/iaDKcQ1IHwRD9md2fVEzNtg=;
        b=tuAUfMTDLO8XTZHE1WAKnN1o/emvMukG5zIIZbdB4gQgqVLCR1yPxKX3wxJSIVENhf
         ZvjaOpEZ4R070d/DT9T0cZh0lSKcXuvFNVUEK5O8EDk/kp/vPNFQT62yoGD0rjefqXTC
         AaZwZtn8k+LzkJcPUItruwh6we5Kf5Yiuv0nkekc5exF/Jqpy+i6XSrpBrkfQUVcGSx6
         nLrTYAlycKnTnRVuirx302SPx4BFBFmLN1mIbRsHpaGVM8zoGRiDmZ0peyQrT67m8dAm
         GTV+6yhnybj1Ye08QklkWfwjtvz9CP8arRY6mqpYxdj1AEhElXYUYSf855vnzlvnqVwn
         pVPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702599971; x=1703204771;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9QOzEZ6wCvWMhF9a6fU/iaDKcQ1IHwRD9md2fVEzNtg=;
        b=rgE78c3g7yNL4RbNPCFYV8Xqe9mjyV3set/vPdrdbrC8LKHJpUlPTyrBylaMV15T9v
         IjoaVtZZpj2FYCyU+lyrWrDNc04FCWFjs/OXu2MpN317QjEVRQZG7m4ysoCLxuI62Eaw
         m6DOGijxgDyXzArTrObl0vukpkP7ULQ04PwaMiwCehxS2cQKWoE+knBPBTKg1WwQ4cC/
         dKHqCS4EaS6wGNkAUKoMii5/EHDoF2sUzj4bmAxFc0K9n/PFvUnl0Iyu3oNzY/k4F26D
         ch3obdu3IAs1F/K6VIeh7qYHHFKzpY7Jzjum4LUVNWNuDLY7YZK/22pB/aZtCCSXLVe2
         1MyQ==
X-Gm-Message-State: AOJu0YyXnNay74+5Lx8Y+T+OcxIPm8DgINDK3VBIW2hJxZCWf/L3lPBq
	yMQxs2z74dmNmX5RKPuM2SbGqJ99WgQomUErRVH5Ew==
X-Google-Smtp-Source: AGHT+IHQ4K8nziYgobeKNazjFH+NOr0BehZkwCheoAUGjupsHCbJ2LPbakaU+Uq1cBqHWSgwPQ6MVg==
X-Received: by 2002:a05:6e02:219d:b0:35d:5203:38ee with SMTP id j29-20020a056e02219d00b0035d520338eemr17854853ila.5.1702599970659;
        Thu, 14 Dec 2023 16:26:10 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id e6-20020a654786000000b005bd2b3a03eesm10639183pgs.6.2023.12.14.16.26.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 16:26:10 -0800 (PST)
Message-ID: <53e087bd-6afc-47b7-9810-5307ae91728d@mistywest.com>
Date: Thu, 14 Dec 2023 16:26:09 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
Subject: how to create symlink in dunfell after compilation of library file
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 00:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61892

Hi,

I'm working with dunfell and want to create a symlink after compilation 
of the library:

I added the following in aziot-keys_%.bbapend:

do_install_append() {
     install -d ${D}/usr/lib
     lnr ${D}/usr/lib64/rust/libaziot_keys.so ${D}/usr/lib/libaziot_keys.so
}

Yet, after building the image,
I do not see the symlink in/usr/lib/

I did find the recipe for which I created the bbappend with:
oe-pkgdata-util find-path /usr/lib64/rust/libaziot_keys.so

What is missing?

Thank you,
Ron

-- 
Mistyron

