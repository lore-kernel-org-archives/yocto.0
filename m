Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0DFDC36010
	for <webhook@archiver.kernel.org>; Sat,  5 Apr 2025 05:20:41 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.1314.1743830434282496153
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 22:20:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=i/3X7pUj;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-301c4850194so2159956a91.2
        for <yocto@lists.yoctoproject.org>; Fri, 04 Apr 2025 22:20:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743830433; x=1744435233; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=p91C4qC5nh1Q8RG4v4lflw7ZjsKN/jTg+LCQeIAJtYo=;
        b=i/3X7pUjoU5atZOF1Pbqu1fWkN9bC1eUBx3nYAZ6WBceQNT3JTPLc/0ZyPK+G2N8wm
         L6VSUHx52FEhf8/Vy8TGnPCjp8qNRDkd2AFx2XyETlufCHsoK7Y8zmmw+IB1/TbUS1as
         oGbP0lbOIRjtnsbgCurd4kUG5v04aKAsShO5lsWIS6i/aLYLypdL5iuU2QpZ92TIk1aU
         Dfh8iI7TJCjnvm0zHCHi4GtFhjChKnAh/OpzHV4bNjGDbd7/caUW9vD4kedGznM3BmHu
         aosaEFZKg6WCsOZkdHfWKlI5JyfyvDlUNqi3UVEUTkhJCBE1+D12JycjNAm6AMeQqYpt
         AZ6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743830433; x=1744435233;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p91C4qC5nh1Q8RG4v4lflw7ZjsKN/jTg+LCQeIAJtYo=;
        b=VL7ShymZwWzhLMGvrIzL1PoYwsWbzeA8Ym2gwURF2zuquElzYkno5v0NiGZJF0cYt4
         sCc3sJQUZqHKogWENN+NabSlRIRQwDm4sHlONOFZNv24iDz2KFYI3HXMhgstnt1za6Ks
         XGQihD3mbSZ6hEUxxp+rIHEuaehwXHYqUdtMuitZ4GmtHTzzXI3LuqHKByj6RE8jrPa+
         lIoOiimkguTlkApgBRyn25Kxvi0FynD7tlUH0HiQyBJq+Bf867GgEZ/hGjC7D4wcuBZ9
         kEy9Y2iwJQnbOCq4RSGBVTWpCYuG1gFXhECx19qcxqjGVJDO6ddQNgvVevYbc18N2Sur
         WSdg==
X-Gm-Message-State: AOJu0YzhDDKNQggPJyYLpaHzIpdG3NM5o4pKkUhl4fx1UE5bsEawupN/
	aT29Ir8L0eX/aOJiT+cx7iN9hJ0Vh3L0KYGsgfgYz8XRQw7iC9tIBl/mBZ/x
X-Gm-Gg: ASbGncsBLHVIkBD8Vu/y6A3AG7F0nHBYIgA8PdYjcTG1nSQJO5VktOMPRf/B2h0xr7L
	i3fxHKoW6fUhC+9cMcO44U0Hkj3P2KZ8L7N6PdfXfCAa2mytLCXF4soZC2morUcbRRzgbxSn7pF
	Jn54fi3SG/lxh/x2mWZolPZhLHFT14vHRe5xkCqg3B4taYQF8iEETHLAlk2aoVjgWYBAwszqNbl
	lHARktoSXUPYtaiHhFDXnxOI7YzFV8cMRXH8W/ovpHnqWhlA+CnviKNzyip/xBeKgoYTQoVe/DD
	WgQf2u0cE6r+XqPEjGF/bpnSHQpGMlo5xSi8OCTj6Fk55DZ0gPOQpWQzGz0XfkakwrAwGEs3eE3
	CWKfaSEhED56hKzLAT1noo/szwlVgQ5r7
X-Google-Smtp-Source: AGHT+IGpKDQ3bBroeHzDUvdiFTLLJhzTdMYPMucy0BjjdwPuuYKGKUpH0gJ5ds7WUJtJ6c7SIFZafA==
X-Received: by 2002:a17:90b:3cc4:b0:301:1d03:93cf with SMTP id 98e67ed59e1d1-306a4b84678mr7546167a91.30.1743830433075;
        Fri, 04 Apr 2025 22:20:33 -0700 (PDT)
Received: from ?IPV6:2601:646:8201:fd20:ec3d:c567:e156:a268? ([2601:646:8201:fd20:ec3d:c567:e156:a268])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-305983bce79sm4518590a91.37.2025.04.04.22.20.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Apr 2025 22:20:32 -0700 (PDT)
Message-ID: <08e1f302-7de6-423c-b4de-c93800384f7a@gmail.com>
Date: Fri, 4 Apr 2025 22:20:31 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] #bitbake #yocto Assistance with simple .bb file for
 compressed local file inclusion in rootfs
To: yocto@lists.yoctoproject.org, robert.vanrooyen@multitracks.com
References: <tgtz.1743804118728136318.wKQG@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <tgtz.1743804118728136318.wKQG@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Apr 2025 05:20:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65109

On 4/4/25 3:01 PM, robert.vanrooyen via lists.yoctoproject.org wrote:
> Hi,
> I am trying to install a .tgz file into the root file system via a .bb 
> file referencing a local "files" directory that contains the .tgz. After 
> some research and a bit of trial and error, I have a sanitized 
> candidate .bb file shown below. Unfortunately, it isn't working as 
> expected in that the file does not get uncompressed nor is it copied to 
> the appropriate location for distribution by bitbake to the rootfs. Any 
> assistance on what is likely a trivial exercise for seasoned Yocto 
> developers would be greatly appreciated. Note that I actually have 
> to .tgz files that need to be installed, so if the solution can include 
> both of them rather than separate .bb files for each that would be great.
> SUMMARY = "Summary"
> DESCRIPTION = "Descriptioon"
> LICENSE = "CLOSED"
> SRC_URI = "file://test.tgz"
> S = "${WORKDIR}/test"
> do_install () {
>      install -d ${D}/usr/local/test
>      cp -r ${S}/* ${D}/usr/local/test

In latest yocto you need to use UNPACKDIR instead of S here

> }
> INSANE_SKIP:${PN} += "already-stripped"
> FILES:${PN} = "/usr/local/test/*"
> Cheers,
> Robert
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65108): https://lists.yoctoproject.org/g/yocto/message/65108
> Mute This Topic: https://lists.yoctoproject.org/mt/112093369/1997914
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
-Khem

