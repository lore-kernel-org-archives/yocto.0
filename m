Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A8CCC47DB3
	for <webhook@archiver.kernel.org>; Tue, 30 Jan 2024 02:46:43 +0000 (UTC)
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web10.10095.1706582802747059065
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jan 2024 18:46:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QTEkqikZ;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-783da8920e5so283435385a.1
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jan 2024 18:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706582801; x=1707187601; darn=lists.yoctoproject.org;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E70pgvRDmNzpRb8rFF8mV8A87BBibto3fQ/JlNrA/Bk=;
        b=QTEkqikZtyPgwOgWagD+b+bMRL/rAVbB5uBSc+1T6WZM0XRdszBRwBeYlALMV1RsMz
         wDu691VbkJLstyEU2Ir6WF710dDhnYJv9cTA95Ngnc6YTRbULvoK2Bo6JboSsw95rGCy
         KpBPb98MIHIHvDOedqMjz3OICln428cw1AolxaMxPpd2oZywDYtyIZppFn72mjPj3AJH
         2LzIW+GRQYDL0R4YcLmfnsY4PaU0gd1XWqqcanQKslUb4N57aY/hI71BtpyzG1TGS5Ow
         GvfROV8cz2xVkfeNvNIWh0QIGIgAIz8wiqX92QxMbrYPPr8vY3Cuy931umd1CFCyMu/J
         wn3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706582801; x=1707187601;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E70pgvRDmNzpRb8rFF8mV8A87BBibto3fQ/JlNrA/Bk=;
        b=mVioSH3eGslDhEz+/yYc0gesfEMXNJdFetA0RefzYdPlpCZqO/kSu7vTv3htwSybNL
         D3HxQRw5i8oPViIRNTk1heQd5QYYQzl2rdKWIlojaF0AE6QuTjiNFD3SdC51/Rsf0nOB
         aKWe9NqYn2Y+5OzU2ji6qd6MkEeWBJstZZHPRhReI33VzHJcGNj46I/NKCZvOtC8Q67u
         Sm3Gvv0VmbXaBbjbT9rIUIHX9HH2m6UB1nuRSqTjP8aPgUf5y8KCLB95RmvOhFfkc7zh
         wpMZ/0EfhttdMCle/FlXEmIz3fmOyNASB4iY2E3M2mrsnHlsg8GtKNofn7XeABoZ+L9Z
         VQlg==
X-Gm-Message-State: AOJu0YxIBPvkAEO9CuYU+OXuFvpyCHZRR8C5v+VYJwTFgVRH7+NlfKmA
	0tniriaEGm9qwwhjQ8INPQ/X4brDPEcxiVwSt7ZsnYt6YizsJ08bnoNKmyQ/
X-Google-Smtp-Source: AGHT+IHwrpKGz3UFxGzf9mk0D02bYN4cgUdhxQR+r04iBzN+XjnGyiJRS7WHzp0fB1cljpQDihFszQ==
X-Received: by 2002:a05:6214:1c09:b0:685:8ac0:c027 with SMTP id u9-20020a0562141c0900b006858ac0c027mr9601190qvc.23.1706582800623;
        Mon, 29 Jan 2024 18:46:40 -0800 (PST)
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id p2-20020a05620a112200b00783fe59ce07sm1418651qkk.21.2024.01.29.18.46.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 18:46:40 -0800 (PST)
Date: Mon, 29 Jan 2024 21:46:38 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH 2/2] rename u-boot bbappend
Message-ID: <20240130024638.GB15911@localhost>
References: <20240129012920.23122-1-twoerner@gmail.com>
 <17AEAD38CFF258E8.21687@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <17AEAD38CFF258E8.21687@lists.yoctoproject.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jan 2024 02:46:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62328

On Sun 2024-01-28 @ 08:29:20 PM, Trevor Woerner via lists.yoctoproject.org wrote:
> The bbappend provided in this layer only needs to apply to the
> u-boot_<version> file itself and not all u-boot files in oe-core.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  recipes-bsp/u-boot/{u-boot%.bbappend => u-boot_%.bbappend} | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-bsp/u-boot/{u-boot%.bbappend => u-boot_%.bbappend} (100%)

Applied to meta-rockchip, master branch.

