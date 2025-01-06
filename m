Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BEBBE77188
	for <webhook@archiver.kernel.org>; Mon,  6 Jan 2025 15:05:13 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.61247.1736175908899280735
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jan 2025 07:05:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QC9Rge82;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5d3ecae02beso18224538a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 07:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736175907; x=1736780707; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pv6I7hyB1B80MBHxBpvwvCPMrNfOR5f6cSzFTfXwBqQ=;
        b=QC9Rge82Fl7LOvYiMY1pvtvOJWNWrPJmRfM1YmV4swS7hnNb+uH79cRx5o3e0zmVsL
         NCQP0HtYucT0bp4VdQ5ylivr2Te511z8oDVQ6VDp2vQFnz+74iVFllKj0vtAsmivOIOx
         W5fMOV5X9IV5lGQRZeBoNWvzbhqbRk4HIe4DlK2kud/TY/29yW3s2v7l9r5Spt0Xobp1
         aX7Vnr2SN1CPLtGhH5N34ppGbyHbPSRM00Qilp6FF0yXr4HAnbu+GOWWr0wiIYxfn2lm
         pd6vIQ6vj0DwrgichwEjosb8PFeDcDQ0gv81uiGeE/55AAYesAjH/X/vDFMzeBH3DP8f
         o1dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736175907; x=1736780707;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pv6I7hyB1B80MBHxBpvwvCPMrNfOR5f6cSzFTfXwBqQ=;
        b=ssEaLbYQiXjIxVju6qcpbJ7WG4UK/mr8qRhg6fpIFHXnIix2cXB81C84U0OD8Z6JgE
         7Q/XRkX0Zs0xWp6DUene33hQF8phDwpFVxES9u821d9209vvZsrB9UsaDX56CUJricCM
         HwJsbaTNrTjNEOb9v+2H3oSTOhJV6CCNHEGAhlIHf410lkRzVt5p7MWnGBLjdOFIsW+1
         LAfUY6G06WmjoXKwCIwSof8I8msMWXeuz+yV2R+aJsvXVXcGXpujO1NqmV0yO0YQD8t/
         /1dZB8YbLn0w0y+hw0qnobEzlXu55llSqvY75bvcLA7n9/IlMRTF0Fn5wtW3g2GAwoRl
         Z/Fw==
X-Forwarded-Encrypted: i=1; AJvYcCVAndvpkn2gZh6UISbE91kxafMIu8+g41vliTnHEkosarXFnTVxDJ0rN45T4GvFubS5yCBlAw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz9mJC0m9pzzWXUScv2DTNzuCcoq9n3RF6p9Z18lku1S/5K0Zol
	6q+ZB3NzAzqSVF+tDElDrRsTcUkoucLfX5iG+Sy6L77duegvRY3RO8PDsA==
X-Gm-Gg: ASbGncvNjik6ywVWM2C5npDiR9tvq3TBEvofcy55RTaYINNZg3hNigWi4xShwyEuaBN
	YRXcXQSJcjGS2+WdFTS8bAkeS7j6+MUaeof6RaNsGzeeWHUcx933zxCTgOhKvgFHfLlwmGWR26O
	+Q5dr3eKuBgrqjZsOLbFonpOBQZUL/t4acuUDX81n+CRXmfegAPRab/dVMnssiUXD64DmOfIzuU
	DjNFOh1xeEaZQmKKltsrDdAMUQ/gPoznD7vgMZWErKsDU0m3OUKtB9SKIuqkGqg
X-Google-Smtp-Source: AGHT+IEl8FU1toqgiRW70iW5h8odITmO90rCzfokg7aNeTsWPjPr2Jnhg74c6pS0sSAaaQwwdtYk4A==
X-Received: by 2002:a05:6402:3216:b0:5d0:9974:7da2 with SMTP id 4fb4d7f45d1cf-5d81dda8403mr55037571a12.19.1736175907011;
        Mon, 06 Jan 2025 07:05:07 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f128sm22981653a12.44.2025.01.06.07.05.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jan 2025 07:05:06 -0800 (PST)
Message-ID: <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
Date: Mon, 6 Jan 2025 16:05:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
To: "Kumar, Manu" <kumar.manu@siemens.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Jan 2025 15:05:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64498

On 06.01.25 13:52, Kumar, Manu wrote:
> Yes Sarvari, you are rite.. I have declared as per your input .. but i 
> am facing same as I mentioned in previous thread ..

Hmmm... I just tried to build your recipe with Kirkstone, and it did 
work as expected.

Do you have the other folders populated in the rootfs folder, like do 
you see a bunch of so files in custom_image/1.0-r0/rootfs/usr/lib/ 
folder? Or is it also empty?

Also, do you use any custom bbappend with lighttpd?

As a last thought for this mail: lighttpd recipe provides a number of 
lighttpd-modules-* packages (most of which are not installed 
automatically). The easiest to see this list is to take a look at the 
build packages in deploy/$PACKAGE_TYPE/$ARCH/lighttpd-module-* files.

You could check the output of 'grep "Installing lighttpd-module" 
log.do_rootfs' command in both Dunfell and Kirkstone. If Dunfell 
installed some extra that you are missing in Kirkstone, you could add 
them to the IMAGE_INSTALL variable (or do the RDEPENDS variable of the 
recipe that needs it specifically).


