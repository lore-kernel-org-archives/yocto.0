Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
 by mx.groups.io with SMTP id smtpd.web10.1.1603213451518032909
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 10:04:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TWbGgdHf;
 spf=pass (domain: gmail.com, ip: 209.85.214.196, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f196.google.com with SMTP id h2so1330248pll.11
        for <yocto@lists.yoctoproject.org>; Tue, 20 Oct 2020 10:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Hs9NP1FAInvkrpAPw6E4PcORzJuZwQ6ZHZFNHEth81A=;
        b=TWbGgdHfh+FCeFH/XXLmqn29V1RgD31FPwj9pkT5oiHuvPFstPsRXuKFUfAx/znfER
         vjnZJB7DKhYjbH2BfQkRrxqsNxWrXnJgC8hq6CPYROtryiVyMwK/IhcbVnYvtWFR0MlW
         qTAc7ZOnIQ1d/+LkkYYMmRsOQH8ZmpSXe6D6Qo+pTeGL2qJdUakGGFS9v/kMim0c6VIy
         9BU7lWKNdKtBn3em7HFofEWh8QBiBbxkrWqAg0RJIXKZHF2SkRq2qJVAB/YZNqbrp3MD
         +XLD+SrM/8aKypS5OmrjjO10DQC6AkNigotk9z4KZLls2p4+lu9OfXRxvmI+JfmsJ0ma
         9rRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Hs9NP1FAInvkrpAPw6E4PcORzJuZwQ6ZHZFNHEth81A=;
        b=ci9TWpBn66+rRWYVyhOyGRakRw86MvcxEyAQyetOl2bdSxnQ9JebklbzdMb3An4b0Y
         rRc51jazkpxIxzSeFRSKfXMou5RLFJqdOHV9bHbCXT3XfRIGDl0LB6GkKUFhhUoJdimJ
         ddGcWYcxci0j0804wbMrMFl8uFdUaOjUTIdzvx4XqXYwHqg9Pq/kHaBAoltke8tgpZ47
         pS64A8j4cVqi/FruBWp3+wCcqWQmEl8ZLzLWBgHIpzmn0SBneCiBCJZ29TAyxxwstFY3
         bcqfMawqgUXlFcbv5vgjlP+W/uCTpGFsuQTv1totr0p3qDwT0XcxAZPNfnkJgylas7f8
         nhew==
X-Gm-Message-State: AOAM530+YS2zAhlVfo2GhKlo5+h9hT5aPDHAnci1FMCqWvxBQElAVijS
	OISu/MferRA9uNxZrbtCUTA=
X-Google-Smtp-Source: ABdhPJxkJrAR7ZjyVYiKeD2EEPBKXxYwU908S67J+YlDAnMbW5dGaSJihSZlqFLiUuhi8hlTpoZ2aQ==
X-Received: by 2002:a17:902:a609:b029:d5:dde6:f135 with SMTP id u9-20020a170902a609b02900d5dde6f135mr928573plq.75.1603213450892;
        Tue, 20 Oct 2020 10:04:10 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:f406:23bf:ebb1:a1e8? ([2601:646:9200:4e0:f406:23bf:ebb1:a1e8])
        by smtp.gmail.com with ESMTPSA id mn11sm2377915pjb.19.2020.10.20.10.04.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 10:04:10 -0700 (PDT)
Subject: Re: [yocto] [meta-zephyr][PATCH] README: add patch submission details
To: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com
References: <20201020100418.136898-1-ross.burton@arm.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <636db143-3c79-6a6c-f83a-6a16d0ff4ddd@gmail.com>
Date: Tue, 20 Oct 2020 10:04:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <20201020100418.136898-1-ross.burton@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 10/20/20 3:04 AM, Ross Burton wrote:
> ---
>   README.txt | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/README.txt b/README.txt
> index be1ea39..a02659a 100644
> --- a/README.txt
> +++ b/README.txt

Can we use markdown syntax and call it README.md ? this helps with
other infras like gitlab and github where this might be cloned to

> @@ -69,4 +69,15 @@ or
>       $ MACHINE=qemu-nios2 bitbake zephyr-kernel-test-all -ctestimage
>           
>   
> +Contributing
> +============
>   
> +Patches for meta-zephyr should be sent to the yocto@lists.yoctoproject.org
> +mailing list.  See https://lists.yoctoproject.org/g/yocto for subscription
> +details and the list archive.  Please add [meta-zephyr] to the subject so
> +the patches are identifable.
> +
> +Git can be configured to send mails appropriately when using git send-email:
> +
> +$ git config --local sendemail.to yocto@lists.yoctoproject.org
> +$ git config --local format.subjectPrefix meta-zephy][PATCH
> 
> 
> 
> 
> 
