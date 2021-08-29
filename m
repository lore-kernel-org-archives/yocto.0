Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web12.3930.1630246437715423805
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Aug 2021 07:13:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JEWakcw/;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id x6so10160026wrv.13
        for <yocto@lists.yoctoproject.org>; Sun, 29 Aug 2021 07:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=n3NwE6KHxqETsTIrW4CxGTP6N46ST69B6BtwJklaipw=;
        b=JEWakcw/8xWOCJ2l5enKzdvUQPlvpXFbq0Ij4Pps9wuP3OTa3Zulusl3YzltJnmbJa
         AD6LzoGF8aXc9PUY/msbLXTEpXne6myGz6xaFtTNTSxvlqUQQx75jKMkps3XX3fxyRWu
         racRxQRSuxgPXoHI88pkZBbgoofl6rwfqL0zwTYLoeVpZDIwtq2d+bYqTOR33pxnn5pp
         sWqz2ZM8YtgL5UU6UtGiCV/2zKjR47rUI1elxUlGKFZ6WWLZsAF/Jk/uNg49CVME6BBW
         WDofaVGWBg+8UzjwICA/uh2ckxQU48in9D9wFMkk7BVe4AMJ7fmUf9mETl5zal1Qm1jq
         0QUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=n3NwE6KHxqETsTIrW4CxGTP6N46ST69B6BtwJklaipw=;
        b=GRtPJfX4smjfg0Jnz8CP10sVYc2MMZ6yohG23k5xpgfc6PCn0xXuiFp3qv/qtRzllq
         c3YTBamab6r6428J1/EqNYiX3ZK6nKOtauC2Sr2E0GZEkJA/KTO73fmGPkm/JCDN7aJN
         xYC9HiTpPkD8elKW4FtW017MosfB/WaV9ho2kon2R7LY7DlLda/Rv9/kbGHd+B20S6Ed
         +esQ4uQuk3FX885aVY2Hjqs86OQa+wno8VXOKIYMrOsnlOVn9VrVc30imDvbm2BJzTIX
         lekbq9iJ0thutHyTPogT6Sxp0/qdpTYkhzSKe++G0AXS3FbvwnSrEqHmX3YwgyYSIfJm
         Wvzw==
X-Gm-Message-State: AOAM531wPmCRtMG/PISb/q76+R31pMwePKa5tWm66IJJ5vlexQW6MyGg
	n8ERCeGLAAnE2U68wdSTCYyGDyGogRc=
X-Google-Smtp-Source: ABdhPJxocbkm5W5/dctbOeXDGQ0Fu+6oYmjrVjJQ1GOBLVAl7PPr6gIRtIG8hQdJV3qIQ+yxgQYWpA==
X-Received: by 2002:adf:fc4f:: with SMTP id e15mr20758188wrs.95.1630246436094;
        Sun, 29 Aug 2021 07:13:56 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-94-66-232-217.home.otenet.gr. [94.66.232.217])
        by smtp.gmail.com with ESMTPSA id e2sm14101109wrq.56.2021.08.29.07.13.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 Aug 2021 07:13:55 -0700 (PDT)
Subject: Re: [yocto] Pyinstaller error in yocto #yocto
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
References: <UnCS.1630234103126913538.1OOj@lists.yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <f5593fe5-e0f5-fdee-7386-aa273b3c2edd@gmail.com>
Date: Sun, 29 Aug 2021 17:13:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <UnCS.1630234103126913538.1OOj@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

Please don't use screen shots, but pastebin instead. I already mentioned 
this on fb.

My comments are inline.

On 29/08/2021 13:48, yasminebenghozzi6@gmail.com wrote:
> Hello,
> I successfully installed pyinstaller in my yocto image , but while 
> executing the command it doesn't work

It misses ldd.

It's here:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/glibc/glibc-package.inc

You might want to try something like:

IMAGE_INSTALL += "ldd"

Regards,

Robert

> 
> 
> 
> 
> 

