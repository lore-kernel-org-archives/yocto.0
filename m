Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFBC9D42B9E
	for <webhook@archiver.kernel.org>; Tue, 12 Nov 2024 15:46:38 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.90008.1731426397501857569
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Nov 2024 07:46:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VE9gsUEA;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a99f3a5a44cso775475966b.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 07:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731426396; x=1732031196; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/BZdr/yww6c0NZGSSx+kqtFMDd09qmFOf3Rdu0Vv6OI=;
        b=VE9gsUEAvOyR+0BIMpH41MfviV9ZO+KMr61mb5Te0ycykoQ71iGHx0n890pHfDd6oo
         8FJnEiYDoAJTvf3wwaakI4HFu5j6+KOPGGtqmi19jbrNl+YYYZiNX0/i7JKBH+lsuUV4
         SgksBgWavZ15CN42m5qvhdbrpd75XuFu9jjP7OUOFd0ouYTbbr1oKtoyWq07oHOba6WR
         qrXli+lL+cBdwGPFK0d6jd0NHdO4tswGlOeU7rKlcY60p8oFeQbyY+aWo8r6/VFXhYL9
         h9pJ70aL3+pf221YY0cW6AwX/RBuemgvFIOWkdP0XDnydLh889sMAe6r94aYfueQvOMY
         1e+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731426396; x=1732031196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/BZdr/yww6c0NZGSSx+kqtFMDd09qmFOf3Rdu0Vv6OI=;
        b=gTwQLvo551XUJkv7eKR+LK2ZCj/8GoLMMZdqueTg+IZ0Keq+ViL+fgxh7yrL8d9/fS
         oq4bY2WRYFzHfERBrlIHfKRXrtCJvcUaUeQZ1787DlyhdBmCQMdzNAP7LovfYcUmf4jP
         67XsNx8z4sKWN43er585va5y2UQyTKk+5MxhTXzLiVK4yLzS1Ovitg4UyCZyGfEckI/c
         9v/riv8Z31t28DHp6OPJ8e45YNdzxxtSt0GM7bRTQl8/6s0SzpoBxMlOGUIv3V1ZuPPi
         xdm+NwBD4KNIDfyBW68o3VVNzumBE/DNmrI+Fcvc5GCtyiR+MSptrfpRlGEieuRVaviq
         Jhgw==
X-Gm-Message-State: AOJu0YwB4++LEOLSqitSUhg7P9Jq0XPkExKyAlmT4QliKodOaaxqoepC
	ormvWCTynZQJzKAHnUf5F5HgHVmr4SJj1fEAcjA0KJ769aA0WWfa
X-Google-Smtp-Source: AGHT+IGgkLcTQT5PXX3VtNst0qYNNE5PqDtGhPvHQ1mIbP/pw6H3lbM0kQzoENBFQzhfdTLlNf1teg==
X-Received: by 2002:a17:906:244e:b0:a9f:4f7:9fa3 with SMTP id a640c23a62f3a-a9f04f7aba0mr932421766b.1.1731426395474;
        Tue, 12 Nov 2024 07:46:35 -0800 (PST)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a184dasm730129566b.30.2024.11.12.07.46.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 07:46:35 -0800 (PST)
Message-ID: <4eb6e8ee-3b1d-4536-beb7-4a4c4218739b@gmail.com>
Date: Tue, 12 Nov 2024 16:46:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Id: 'weston': no such user issue Disable is required
To: sateesh m <sateesh0457@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <qdwm.1731305083820940791.ZN0b@lists.yoctoproject.org>
 <68e7b3be-48e9-4801-910a-51b0d136fc01@gmail.com>
 <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CACsETSup3qgwz3HrA3yh_HQrZJteiP=BWaNuzfSespLVa9iR+Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Nov 2024 15:46:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64265

On 11/12/24 15:48, sateesh m wrote:
> How to delete it.
> 
> Regards,
> Sateesh
> 
> 


How to remove a package from an image? Remove the package name from the 
IMAGE_INSTALL variable, either by deleting it explicitly, or by adding 
something like 'IMAGE_INSTALL:remove = " $PACKAGE_NAME "' to your image 
recipe or local.conf (or your other, favorite relevant conf file)


