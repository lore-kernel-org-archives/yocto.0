Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
 by mx.groups.io with SMTP id smtpd.web10.14347.1583951202273691839
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 11:26:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=n2MbtMuk;
 spf=pass (domain: gmail.com, ip: 209.85.214.195, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f195.google.com with SMTP id w12so1461427pll.13
        for <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2020 11:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=xz1nZAkr5SNFYHtlFQpy4U4ditmwu1sQuk7i0U4wx8M=;
        b=n2MbtMuktSwjbdueTXqEYHlVVdCNFIbuvy8MTK170isTPFzRLfw9SPtjn5Y++UtF8K
         XOyzxOMWvuFb4BQFdauBGGqkgezoZz4MCwf7LKS2TOg/18nQB6aqO1oi0/K+6HOYq+8O
         SlFDOJiqeDa7JviVWlzwVtOUTX8Swp+zA71/hYTXz2+43MQvXLcb6xsyLo2bUlY5RKE7
         0L+pjV6qEQXsz/KdVyIwy5lbAOeWX92v1I6Ge9eslT8hFe9JT4iDgF7aCq9JMz1Uiiqf
         ifwb711lpz/plzIWY9JJRvjtmp0Z1egJnX2kp9/5svf/EHD7rvCsetvzGNeaLrzo+Ict
         2omA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xz1nZAkr5SNFYHtlFQpy4U4ditmwu1sQuk7i0U4wx8M=;
        b=tgVWlBkZOmGnHTfG1RV9xwkk31UmAKLzC2CeOLVzDJqg32H9z3q2+t190ltp2xcUqj
         /t2Sd2E0Cw7BJyDGXH3s6plwAxBHMcTqRtWM0TzLG6Bim2oeAH/km9GAZJAdMKxwm84G
         mI+FZdHMLT7njBYPbpVcgD2t2P22OskrOfCmRFJ9sEZZERB2a4DlVuwxwDR+lnPxGK8p
         iFhrPPYCNBGLuvUkiHe4SDeIBxevkOotVnE4GcS5csWr17FgzLUrgMMQMmFXQN/9QIim
         x4ilu95oWDwgg7lkS2XgKEbqxVNAOw8ByXT18VZFcp2W44jEZRpwcf+pGkd9VZMFd/fr
         QLnQ==
X-Gm-Message-State: ANhLgQ3Q5i0GwhjI7MbYLkCe5FoqnD2btYtf1mfNyiBceImVUzFAVLjI
	Jj7F7/9czlkIcPmIEjKZVq6lC08BOeE=
X-Google-Smtp-Source: ADFU+vsXwuEFwl+c04ahYA4G6p6eT5uVCubzQu6L9YIQd3JCkZqoNnckbFmxpSyV7tztaHZE62BMUg==
X-Received: by 2002:a17:902:e788:: with SMTP id cp8mr3532084plb.343.1583951201184;
        Wed, 11 Mar 2020 11:26:41 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:e8b9:f87c:18f3:1405? ([2601:646:9200:4e0:e8b9:f87c:18f3:1405])
        by smtp.gmail.com with ESMTPSA id q9sm50187732pgs.89.2020.03.11.11.26.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2020 11:26:40 -0700 (PDT)
Subject: Re: [yocto] EXTRA_OECMAKE options are ignored #sdk #yocto
To: Armando Hernandez <j.armandohernandez.j@gmail.com>,
 yocto@lists.yoctoproject.org
References: <j1dc.1583923078236353137.AMYz@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <830287a5-9dde-feea-89b5-55930cf56864@gmail.com>
Date: Wed, 11 Mar 2020 11:26:39 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <j1dc.1583923078236353137.AMYz@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 3/11/20 3:37 AM, Armando Hernandez wrote:
> Hi,
> 
> I built an eSDK.
> Now I'm using devtool add to create a hello world recipe.
> Once the recipe was in place, I added some cmake optoins via 
> EXTRA_OECMAKE in htis way:
> EXTRA_OECMAKE += "-DCMAKE_FIND_ROOT_PATH_MODE=BOTH \
>                    
>   -CMAKE_FIND_ROOT_PATH=/home/user/SDK/sysroots/x86_64-pokysdk-linux \
>                     "
> 
> Now, the problem is that after running devtool  build test-hello (where 
> test-hello is my recipe as you might have assumed), these variables are 
> overwritten with other values.
> 
> How can I successfully pass the correct cmake options via EXTRA_OECMAKE 
> on the recipe?


please post your recipe


> 
> 
> 
