Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80B7C02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 14:39:50 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.52817.1737988785697821877
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 06:39:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N4NlMZ1i;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-438a3216fc2so46793655e9.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 06:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737988784; x=1738593584; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=uANs9MgGq6YZ/x3WJT1CHYqo6ZLXhQz1VIwgsAjU0kg=;
        b=N4NlMZ1ihTbdA5p7HAavUBkoZJ1AQGYa1UvpfiZCfTnTo87DFmWXIlcCGbA8XyLkNb
         Yy1mmJN5wjS7tSeyISLPCaH96NIjN0ooX5xoSNOFxls2rloMgz+RXk8tcBsjadtKiYc2
         Mg97oxkDmmtQBjN25aiy+Fhb0qoBbPHoc04eaWQlRfb8NFE5bXSvJPTZXEixNWac/F6d
         a6yijxTozrtEygu/GaHqWonxtdte/3JsBQdt1Jq7JnCQoV6C9p1iCI8G3BksebNS07Yb
         6FvFHdbox+TZoUInZ2L5oRkgoa5M0yeCWMbqhAJlVN0BMp/4pErE2Aeua53Zm2EtEZcI
         6zLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737988784; x=1738593584;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uANs9MgGq6YZ/x3WJT1CHYqo6ZLXhQz1VIwgsAjU0kg=;
        b=EWxMd7EwAX7G25HXibyeKsnGvkrS+vzQo9hsL2F5jqbMPRu0l/4RQVFDaBe0LXyB9R
         E1+JO/JlLDqs9ElztCQdoUQqUIGaXg72yPDHQ0tyMoOzmWZpCYFB6tRFDC/CF9kuFbgW
         NVLID+xwPBxA7E2BjYE5lY2qFXac7y2QU23ECnFTnxHp0q1CmsBymm+VI5KT5EItRpZJ
         M9qhpY7clJRzYC9Acd/yq++T9j+nmd3TpWn0ke1Fb0l7I7SPB+Us5XhGRMLJ9IZ7Enbe
         obUcb7a4+UGBLVDkZ4opNp+1ygD0B0JbG7av+O/EtI2EUVnaHBRJzOJjQrb6AIld4BJ4
         I1Eg==
X-Gm-Message-State: AOJu0Yw4dTfI0adw67HSmBdkWG6e/Re5r+K94hbGNunAs7vCiMMVoIYx
	Q8os/i3h6CY2JiN/U9Fo8b/2bZF6pM2Hgt54Rf68h6IE8Hwg751kGkS7Sg==
X-Gm-Gg: ASbGncvMXgEu2px1oG9YqSD8Zm2iIIz5rQaLOjhgRNJrlMrmOIDrP8UrVxaOGZm1v+w
	2Rn6JlrcznaJsECM2Oq+MnzLJval41YQAkZAUEy1iDFCx+h2NA1Uqq+Mixm2UZTokyy7mn/H9rd
	Omt+nSq7FL6ooB2rhEmtU5sV8dNG4tAr8sLnRqtaKJQvDLRXGgxvvV8w0zQABwRRR6kEMiOr/Ai
	e0qMYAQTgKKlCqFh85ii0YGLIKAeditrfDMpraWlx7BVwvr401CDgayOkbNJIeVM4UuXE7eq8VR
	9/2VB5yGFusX5b7JLXFNcUs=
X-Google-Smtp-Source: AGHT+IGyiLXc6uQoCffe4bVj3vZV+cJfy+7UwkWHW1qXQ4zSOmSyb5q0cHFNvxkViY/Xk/zYS3eLqQ==
X-Received: by 2002:a05:600c:a45:b0:436:faeb:2a0b with SMTP id 5b1f17b1804b1-438913e32bemr396881485e9.15.1737988783818;
        Mon, 27 Jan 2025 06:39:43 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd575468sm132436815e9.39.2025.01.27.06.39.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 06:39:43 -0800 (PST)
Message-ID: <79a79a8a-7494-45d1-9333-22c18deeb2c3@gmail.com>
Date: Mon, 27 Jan 2025 15:39:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] kernel append file with dts in SRC_URI and subdir
To: yocto@lists.yoctoproject.org, david.daniel@vrag.ch
References: <6761dc4a56d319b617e61e18fb37df8e6c5e227b.camel@vrag.ch>
 <4dff1359-2be1-4ad7-b7f0-22e9f968edd2@gmail.com>
 <a1657de15b95836d7694155634388de223edae86.camel@vrag.ch>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <a1657de15b95836d7694155634388de223edae86.camel@vrag.ch>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 14:39:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64640

For git fetcher, if the unpack directory already exists at the time of 
unpacking, then it first gets deleted recursively: 
https://git.yoctoproject.org/poky/tree/bitbake/lib/bb/fetch2/git.py#n660 
- it doesn't check if the content conflicts or not :)

On 27.01.25 15:33, David Daniel via lists.yoctoproject.org wrote:
> Ah I see. That's weird though, as the name is unique, it shouldn't
> collide with any existing file. But adding as a patch sounds
> reasonable. I'll try this instead and see.
> Thanks!
>
> Am Montag, dem 27.01.2025 um 15:10 +0100 schrieb Gyorgy Sarvari:
>> Depending on the order of unpacking, it is possible that your dts
>> file
>> overwritten by the actual kernel source.
>>
>> Try adding it as a patch?
>>
>> On 27.01.25 12:12, David Daniel via lists.yoctoproject.org wrote:
>>> Hi
>>>
>>> I am trying to figure out why the following snippet of a kernel
>>> .bbappend file does not populate the custom device tree source file
>>> in
>>> the proper location:
>>>
>>>
>>>       FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>>>       SRC_URI += "\
>>>        file://defconfig;name=config \
>>>       
>>> file://cf200.dts;name=dts;subdir=git/arch/${ARCH}/boot/dts/freescale
>>>   \
>>>       "
>>>
>>>       COMPATIBLE_MACHINE = "(cf200)"
>>>    
>>> It also seems the configuration is not applied. If I rename the
>>> defconfig file to doesntexist the build fails early. The defconfig
>>> file
>>> does get placed within the sources-unpack folder though. Within the
>>> sources-unpack folder there is no dts file though and the dts file
>>> is
>>> as well not placed within the dts folder of the kernel build or
>>> source
>>> folder.
>>>
>>> Is it possible to modify a kernel somewhat like this? What am I
>>> doing
>>> wrong?
>>>
>>> Thanks for any hints!
>>> Dave
>>>
>>>
>>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64639): https://lists.yoctoproject.org/g/yocto/message/64639
> Mute This Topic: https://lists.yoctoproject.org/mt/110836825/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

