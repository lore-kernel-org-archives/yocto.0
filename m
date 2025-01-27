Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0D06C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 14:32:40 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.52795.1737988357368921052
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 06:32:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CUAUPoYb;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43618283d48so31886875e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 06:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737988355; x=1738593155; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kK95Fx4ySNY5k3GlQxkbH7wzQ0vJL2h780zHnCW/1eE=;
        b=CUAUPoYb0CizD2N/3H604VC3k5rOgkx5BZtidPsXQUatvUAa1RDQCatAZlGWcBVgVl
         MxjE1nN9XVx4Sv05iwac4AQpkY/L44w6YCRlzZdEwcYk8Zb3LaGiqawspAAtYqTpez/F
         sIZx7KOre5EPXeBUVxWf6r9EooXuyhZcp9Dy7ccZQnT/eD0jjhgU4oE8IbKtjl9l9OuN
         8oOuqT/04AC5QXSA/OM5HQ1sG4Fo4EYmEReRWexdjeimyewpibhpaszAeCRSwatotmDt
         DBxl8Zl/2sfwlgbsFgEgWxkfLGY5rXfu9h3l3vkxOLyXHkf9npQi0gZV5I7RVRz4TeIo
         wVZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737988355; x=1738593155;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kK95Fx4ySNY5k3GlQxkbH7wzQ0vJL2h780zHnCW/1eE=;
        b=BuuSMKwcqHgTby09/XidgVuxWcLqaJt0JzSuNaXk1NmHyldU9iuJ+bZOYRdEBkQ1B4
         XXhf5G4X33bH/ZPGuR/ZNQe/OWQ5pDtZ0nv2MvVYYkOcj2Abt6RdVKurmojUaXI2JyyM
         ckrHZCWbDrknX/HKsBPBCOjZruAe4qpY1sEYpZM9Kurntn02Ef2wOL8w4UrGbADJG9tt
         lh7ZFumY+VZmWLUoQPD6F2JxpoAb6Luy2vwIWJMS4nhYV9m6//Wv3ueZmyAXtyERA0pJ
         qIJ1l9ZgtkgbYTC4g/Pt9i8CJ2E83ynCyctGofvYF/dZOUAGBPB9OL9fPN1D7SLN/MYj
         UDEw==
X-Gm-Message-State: AOJu0YwK3m/RZcGmvQpLDAqwjpbI5QUe8GD+ID6c2TSgACvV5sFqKShC
	qAO8wOUf6fgZjTV35Qh0cYQp28otDH2VpXJwaV3op4AslMohgMJpb3txVA==
X-Gm-Gg: ASbGncu3bcNGuzhD+EQrUGt/Sbq+LqMdvG6bHAw/3m3AX+ycZVf0u/Wd9NfMpWJtg11
	O2But/9RZFE8eqZY96v49Anaj9LcWfS8Yx89lTeaXgk0qWtczJ3qZkTp+JlrhSgZVpjH48WDg+k
	Lyr/zx3ygVhspcGzUkA+NB8atqATODJ07ovMshruxx80uDXtlJ0jjGWOHXxpjG+Lx2S/+D8nlzj
	jrwuTa78iNm26BZpcpfrj9C33C2Pb+YZOUE7q9zvwMAAaeIxKtukPBdb9UETDQwoUAlzzrohbdy
	iw+/DXQqLH6D
X-Google-Smtp-Source: AGHT+IEooQUPQsbqznAnH0tY56DZ2jiEQLTaYezTYd94z6U72KqfcZ1FvXvbgBvTr5VESIqGkJ1uWQ==
X-Received: by 2002:a05:600c:5119:b0:434:a529:3b87 with SMTP id 5b1f17b1804b1-438913cb50dmr450455895e9.10.1737988355179;
        Mon, 27 Jan 2025 06:32:35 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f120sm137095615e9.2.2025.01.27.06.32.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 06:32:34 -0800 (PST)
Message-ID: <aba92c6d-924a-4747-bb66-c8338b334b97@gmail.com>
Date: Mon, 27 Jan 2025 15:32:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scarthgap]- unable to build image due to Nothing
 Provides error
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
References: <4UEu.1737977430670649281.aO8G@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <4UEu.1737977430670649281.aO8G@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 14:32:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64638

Do you get any error messages if you try to build util-linux?

bitbake util-linux

On 27.01.25 12:30, Ganesh Mahajan via lists.yoctoproject.org wrote:
> Hi Team,
> I am migrating from dunfell to scarthgap when i try to build image 
> face below error.
>
> ERROR: Nothing RPROVIDES 'packagegroup-base-ext2' (but 
> /home/build/project/meta/recipes-core/packagegroups/packagegroup-base.bb 
> RDEPENDS on or otherwise requires it)
> No eligible RPROVIDERs exist for 'packagegroup-base-ext2'
> NOTE: Runtime target 'packagegroup-base-ext2' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['packagegroup-base-ext2']
>
> Command to build:  bitbake -k wac-core-image
> above error is for multiple packages in 
> packagegroups/packagegroup-base.bb
> packagegroup-base-( bluetooth, keyboard, ipv6, wifi, usbhost, 
> zeroconf, nfs, distro-base, vfat
>
> In systemd
> ERROR: Nothing RPROVIDES 'util-linux-swaponoff' (but 
> /home/build/project/meta/recipes-core/systemd/systemd_255.4.bb 
> RDEPENDS on or otherwise requires it)
> No eligible RPROVIDERs exist for 'util-linux-swaponoff'
>
> udev-hwdb, systemd-journal-gatewayd, pam-plugin-unix, pam-plugin-unix 
> many more.
>
> I went through the packagegroup-base.bb of dunfell and scarthgap 
> PROVIDES = "${PACKAGES}" is missing in scarthgap(But that might have 
> no issue)
> I am mission something in case of syntax or configuration.
>
> For syntax change i did execute the convert script on my custom layer.
> Any help is appreciated.
>
> Ganesh Mahajan
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64636): https://lists.yoctoproject.org/g/yocto/message/64636
> Mute This Topic: https://lists.yoctoproject.org/mt/110836989/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

