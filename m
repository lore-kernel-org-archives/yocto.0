Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C41FCA0EFA
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 06:46:54 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.58748.1756190807332751252
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Aug 2025 23:46:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SNElEsVE;
 spf=pass (domain: gmail.com, ip: 209.85.208.51, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-61c24250b38so4551946a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 25 Aug 2025 23:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756190806; x=1756795606; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KtjrjaXbf2a11Rj+6wcRdLcvzDLzaR1dxj+N31Bul1Y=;
        b=SNElEsVErEG/D868oDKii0ggxFPNzrQvQ4f51tRUCrvVscT1nhxSnWr/4vTPJNTFRe
         wzPcIo/UcvxEXPcN6zOcqP928OzW4bsdo3S8MVc0q9XWD5uVoAOMlNZGNnP+LAXj+EaE
         W2xLKUiM4MILNDa03fjY0RcKERT0T1UCwLO/7xiQ8KMVuaUgBNUMSrHUFAesUSxzTHBE
         rV97ldOAVHzzQicDI7SkV16wNlkgF+kne64uOTU2/RoMDRXpd+yp6UhGtWMr75CE0mfe
         3hZ+M3wFQBorLZ3jQLvRP8pCkABhiePFphP6ZZzircRKB9oy1uCSUn3IDTGIek+QiVvm
         BmSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756190806; x=1756795606;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KtjrjaXbf2a11Rj+6wcRdLcvzDLzaR1dxj+N31Bul1Y=;
        b=MdOlcYXTI/ogkeBFHN6qRaWkrEKqDyhkagGbnfCPUPXHYw5psbSKOPktFL72HxQKCT
         UuLKaAMffAK2T4LTVZHrd6VCUTsXU4QBrQJt3JRI0O4K0PFGuqJ0mK5VPrzrTVIHyVc+
         7s/FDabg2zmrQTmD/hzH8GoiPff7J1BtLR2ra5ZI9w4gx9cO2POeR0Wv9zXiun3MT8LJ
         oTrIW3jN8rmatxY5qhvyBPe3kRs5z8Nmz+79aMMVklGVkvFfLFmqI8oAvM6OVO2PtouJ
         D4gd/hgBxooSNo60+SsKgmmkRCWKTBem7x47lX2AwOdmXgfzxXy9mPjF4sTZuXkYr89P
         LBOg==
X-Forwarded-Encrypted: i=1; AJvYcCWaoiM6MHUQ5qkBE+qYDuJHH4qgDnzRYR88oZxHNYRK50DahqcFAhI0ReWoMoXHwHscnFvQgA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzMsCYjrYn1UQv7BgNPm8omjbDOgVmQEcd4B1KEyOfYF8csm7B8
	BeTk1xHDbX132EKc/F9SJUxuGHF6ctXYTkk3Vfi4tucBUvZDKVmvQp3H
X-Gm-Gg: ASbGnct8sSn+BFLdGzbOSQiF5fEcJ4pSnuUG5nWtyAP85LpLnW9GKN9dFqf3GDcm1aH
	p1HBQ4GZ5Q9x63uTcVjpWpbhAj7JRXhccA6/lq0lmmkG5+sWweiiNemkzGcNAtXqQqtUX06qGiF
	z11dt+xE8ODMSaF5FdeCrDpC683pibaLXc22JMjsBfP8hTzWqD7Q8qmx6vw0/zOWPHZNYppQ5Ze
	1H6Y9FkC6pTVuP29gs9agar67j4ZwuXeJXErE+HaqGd49z7mPgrXk3btMwXiVjTYYugwc5gM620
	mwir18100nKim8seQFfQDiJosa36uJqV3cFSm1or78ZKE8sKc3H5aNhAK8TRnnHEgVXVv20hSj4
	jNZinFqqqcVBDepfa2Wiot3UNDcQ9ghBVqvYhHAAM+Q==
X-Google-Smtp-Source: AGHT+IHvgVrpNRjw6bC87zh+5aWUfJsTOMQ2grKaqpdTQabYnzVIp4+MBQ+0OUpxripDjDjzOlu3GQ==
X-Received: by 2002:a05:6402:2710:b0:61c:916d:ead6 with SMTP id 4fb4d7f45d1cf-61c916e0079mr1154137a12.12.1756190805417;
        Mon, 25 Aug 2025 23:46:45 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61c316f5048sm6394865a12.30.2025.08.25.23.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Aug 2025 23:46:45 -0700 (PDT)
Message-ID: <00426710-7049-4369-97b2-eee601ff6559@gmail.com>
Date: Tue, 26 Aug 2025 08:46:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Circular dependency issues when building Qt with Yocto
 Scarthgap
To: shivaji.yannaboina@thermofisher.com, yocto@lists.yoctoproject.org
References: <783586b9-5aef-456e-b13e-0171ab013df7@gmail.com>
 <2959.1756190160441438084@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <2959.1756190160441438084@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 06:46:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65794

On 8/26/25 08:36, Yannaboina, Shivaji via Lists.Yoctoproject.Org wrote:
> Thanks for response,
>
> I didn't add any Application still.
> I was supposed to add meta-qt* layers to my existing yocto project
> structure and build them successfully, so during this,
> 1. Performed Yocto build without QT layers and succeeded, and image
> didn't have the  QT related details when i verified in the manifest file
> 2.Added QT layers- build-getting errors as mentioned earlier-idea is
> if build successful- hope these packages will reflect in final image
> Ex: in manifest file,
>
>

To do a sanity check on your config, try to build an actual application.
meta-qt5 has some examples in recipes-qt/examples folder, and/or for
meta-qt6 just grab an example from qtcreator, or use a graphical "hello
world".

If you add such an application to IMAGE_INSTALL on its own, and it works
in the final image (without explicitly adding Qt dependencies to
IMAGE_INSTALL), then you can verify that it works - Qt apps can be
compiled and executed in the final image. If you build an image with
having the meta-qt layer present, Qt parts will be only included in the
image if there is something to require them.

