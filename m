Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910EBD609D1
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 10:39:49 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.69101.1732703978662953603
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 02:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ObmgmlzW;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa52a5641f8so654333766b.3
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 02:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732703977; x=1733308777; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IStchRK6LEJlS8mzEWVvRxHa+823g1VY2UwTsHeuEoc=;
        b=ObmgmlzWTvV7ves6VB2Q4VF+qlLu0W6u9scPS7WSyC+NXcBdCO4jeFTVP320BfPs5O
         /bUsa3SEYmTsJfwoKgOGWms1cqLzjoBK/AT+eO627cTQlyEAnuXW77MoyEqAdERDhnA6
         vd6z92YpNJZg0Eydx47VrHujskMiuXlysJgj9ajpo1OI6XChgvIIHE/k0abWCaxQwSu8
         ECQYoaXUNOYnu/ucsvr1Q5kIz3s5IinyDH4izBUnBhYfDGI0LSV+QdMdlH34jfLMGHwV
         NgKWffXlQ86y9a1p57er1L1M0J2gXVsRzVV29LgueHCTz/v0U9uKu5heqkGKo36QvH9E
         YcDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732703977; x=1733308777;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IStchRK6LEJlS8mzEWVvRxHa+823g1VY2UwTsHeuEoc=;
        b=UfGGTpBXSiDcyrO8CYZPTE3fRJed6P98AeobQtxPJb2rj5ukQazCgHqzc8wxUFVv+P
         X2dR56lW4fIHTve42/vcmxm6riEaBU70JXoUQELrp4w18u93frGhR7QAupOIv+Eul3pB
         95ZV1aPMX+P0iksZxGeZZeqmYd+hknxOwUqqVhgs2FiKlznjabDO7BTCo/ykITLGG22K
         /wOvhsc49ZSAd5ESt+Rw6lTZBVKArIavPQMxOvC+Urcr/yA7R0zv/gcRIL6hloHJRgWV
         peMjvWGBZog7Yy+4JuN20zKsfZJt91z+s7NlWlxYnxNHMKgSb9XPIp2+/rhQo4l2P9BI
         56+Q==
X-Gm-Message-State: AOJu0Yw3m5jfc68/UjPmTjqtVPoMEMENxFj53WL6GvPOc/IAYBhBfjvz
	PdE4wME4dPMDzS/3ZQqmfPloE06NRFJT6tzxK88HRnSUqOUMAOzlOuCukQ==
X-Gm-Gg: ASbGncvS6i2074tWA055/vKa0gXDkkn1DHRvGGZkNXPi1wouTR1e4TlVDTDSJsXQ3c1
	9nyW4SRpHF/vegO33oc7RUd4cYyA/FksIJDeQCM3zZY9SGIklbzBSk0glqlnPCxXTqi5utotiBI
	XaAMIovlgBk/3RuBuOS4tcFxA7//90g6hWUSz8rhV4DuO8qXO4lm2zdkV/CEH0sYtt+Y0IKhCy3
	Dd/zROchGuNzLDyheGKh3eR6My3IoNG2XOYtgR7DntkIbm1XYmiS5o=
X-Google-Smtp-Source: AGHT+IG5xHotd9hXQL7+gyQZlrMjXAQKhnSVU/ECLZfHENxJMfpPoY+ihjgi0JP+T/rfC1AaTg4m+A==
X-Received: by 2002:a17:906:cd2:b0:aa5:2575:e75d with SMTP id a640c23a62f3a-aa580edfbd0mr155029066b.2.1732703976696;
        Wed, 27 Nov 2024 02:39:36 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa51a449c24sm652310866b.178.2024.11.27.02.39.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 02:39:36 -0800 (PST)
Message-ID: <5c363586-89ac-4430-b3d6-5fe16ce78dd8@gmail.com>
Date: Wed, 27 Nov 2024 11:39:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone
 version)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
References: <14717.1732697293417372320@lists.yoctoproject.org>
 <14717.1732700393282937209@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <14717.1732700393282937209@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 10:39:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64361

On 11/27/24 10:39, sateesh m via lists.yoctoproject.org wrote:
> Hi Team,
> I have tried below method
> SYSTEMD_SERVICE:${PN}-avahi = "avahi-daemon.service"
> SYSTEMD_AUTO_ENABLE:${PN}-avahi = "disable"


Don't use "...${PN}-avahi", keep it "...pn-avahi".

Couple of questions:

1. Where and how do you set these configs?
2. After setting SYSTEMD_AUTO_ENABLE:pn-avahi = "disable" for example, 
what is the output of "bitbake -e avahi | grep ^SYSTEMD_AUTO"? (This 
supposed to output the history of the variable, how it got its final 
value for this recipe)
3. What happens if you try Markus' advice, and rename avahi recipe? What 
package is complaining when you try to build your image?

