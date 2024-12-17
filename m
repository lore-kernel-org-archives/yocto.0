Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91968E7716A
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 10:39:47 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.78838.1734431980895143626
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2024 02:39:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M9giBgo4;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-385ef8b64b3so4538415f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 02:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734431979; x=1735036779; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nybci9BHmqYHZsEs5q/h6/CQMmWM27Ad4I24WHrtW98=;
        b=M9giBgo4kyMa3iFtSX/jkkc/rSyKMssBn31mOhfWpFYoqlnkVkchsR22wm6j7Fj0BX
         rQuNRrlJSIqaKwgWxyT9ZhKKiUg/laqwoM3rLYpJCAYJXmzd8ufCBBDqE/ufqoc3tCKB
         VfJcRtyaSuF/1LIhE4XhG8Z0x7od/kVtB+5OzsnxhmTF5HQD2P6wcG4TP1P1x0j1cORW
         EZg1N4i8hXfBd4KB+fof67nMTasmX6J3WURlazAxaLDMgBXrCSl/JFg8Nvs9Kah5/LUc
         vqvkiDckffzUsJLlCmxmNlhHQIgTCoS9vq0QrvOl2jTwIi0wT23acUvTWnFcytcDoDGC
         HFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734431979; x=1735036779;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nybci9BHmqYHZsEs5q/h6/CQMmWM27Ad4I24WHrtW98=;
        b=IUAUeXESEHfK9ERu4sYDkBpkMwM4Hs/3rzADAKffTgLOtuIXnSUVBFALAi1iVn5FI9
         IUCIp2mt/NpY/MCBsOs4O2xJA/N1foiSIqkE3x3aIlOMxLvN5wZLglMnpI/vh9Bq4BBN
         TEc+c/h6eI5Cjh8wDQrarP/kN6C3bvsDtzsNTs9erSlIwuLySXbTIhU+hm/nIysm0d+L
         RAxxB38SlU41QstF65jJ/FJOuI4ytkIhSyjuaNLVTX+vc17P6ww8ndPkWrsqyplsLSt/
         CvjelBB4o50AROetEuobIdo3lu9aVTqnbtnBkW0Vqibs/a7LZ+T6LSTFlMHggDf/2pWW
         ztNw==
X-Gm-Message-State: AOJu0YyPUo2kDHWSFwRVJLA1RpdU3M+W4iCt+4lhmwwNDYyTtACyrodu
	Xj6pb4zMeeVeR/6uPFmbYTEDO0RVvhDXTJPOq4LpsvIOsOW6xEjJiUcm4fXa
X-Gm-Gg: ASbGncsr69hCzIy4ZXmRSNZ+aqDwV4Zozq9tm4n/CyHYuBYKOUSM2GODB1ZVf+ryGK2
	RU8iM5/SdRJSCF72Telq+8dIvspy2m9E3G6jdKsdn9Ltnta9Lkp1L3MHsuQTSqxe49PSCJYPfE2
	fdbGsuYIRuXqyPE/AzkQJmRfQRap7Zb6AHCf/WRCeGq958oDG+31Sk9bJCX/dg2oZgkwLSLhq5I
	nqVlt1EwXWcJxBAWLmRAFmhEKzioW8Mm7ogrvy58ieSQGbJXvNxLz34OftlYdYu
X-Google-Smtp-Source: AGHT+IGghBiVa54yHGnJPc6tuwMtDb4eJLNJ+RikzT9LRvOpO8z6f7siIZopu2jmijHFL95wPe6S3A==
X-Received: by 2002:a05:6000:1fae:b0:386:3e0f:944b with SMTP id ffacd0b85a97d-3888e0f4676mr12237908f8f.37.1734431978639;
        Tue, 17 Dec 2024 02:39:38 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c8016120sm10618308f8f.23.2024.12.17.02.39.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 02:39:38 -0800 (PST)
Message-ID: <b5d05693-8b82-4930-8ed9-875b49e43b4a@gmail.com>
Date: Tue, 17 Dec 2024 11:39:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Incorporating Qt6 in yocto mickledore #cmake #mickledore
 #qt
To: yocto@lists.yoctoproject.org, thejas.raj@mindteck.com
References: <R7X7.1734414792495085556.5Ts8@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <R7X7.1734414792495085556.5Ts8@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 10:39:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64454

Have you added any custom thing to the qt recipes (any extensions, 
PACKAGECONFIG or other variable changes, etc...)?

Also, if you'd like to use these failing switches with the default 
recipe, make sure to have "opengl" in DISTRO_FEATURES, and to not have 
"x11" in the same variable.


