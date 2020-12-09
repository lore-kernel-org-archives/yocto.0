Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.695.1607540387235365004
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Dec 2020 10:59:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Fg0/AY4Y;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id r4so1425811pls.11
        for <yocto@lists.yoctoproject.org>; Wed, 09 Dec 2020 10:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=uSy1e/qd5oGnncovknvbbEqJvzYJIANM2OZsCfkYA4E=;
        b=Fg0/AY4YvAt98hg6z4qm6rgMMO/xqqsfaImxRCluMzMAeoa5gLcV0Y9aaFL1bpkUMW
         dYYWQHuuPu23ri5Vt5H0C0mQKGDadp97e0hj/1J/pX9LpnbA2KZyxyfP5ELFqE+1UrwG
         wOVIGNWzWBnEZ0NFkPatPiD6iLLr5Z3O1WAPAIuszLQHvKpKvx/NSrisNpiwLEVEhKCM
         itXksauBBs91exL5IVI8ZqLX2qta5aYvUfhGqKPeuAPb1CzRYvJSpVVHTbOsTA/LjQsx
         zKOrqyPLqHv/KlNjJ4O+tFey2XYK/SK/LK2iBKNhs61K1g+O9tIptAAxPz232Od5y5g9
         CaJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uSy1e/qd5oGnncovknvbbEqJvzYJIANM2OZsCfkYA4E=;
        b=lAl6oF82OuXH9x/CLMRY4Y1RkjwM8vShOpMHIUe+lbiSdB7elabaAKxqyxOGzkZ7JE
         l7K4H+ajc/211Yop0uR8YblOIBKAjiD1mARo9/fGHtBwMFCU+NgNbBYpuA2UlFsxL9+j
         SW5vGmgbZeev9bX93btT9VWqmjIsKC/nR8cmxXB9To3fkaZiX1/ep6Drouv5pZUji3bd
         UfF5y35zWWk1nzYHMm0Oi1PV8kHfZhZGXvF1QlrSYA+yyMVQl7suiq8W2xJZ0+lznOTb
         mJW+ZeDrLwerHy9y8sjOvEzm69kGDV8H9TLcrDxs9hISYan7tnuZtp7UeMaKLp0aAdDF
         n4Nw==
X-Gm-Message-State: AOAM533cgLEUbVXba278T6X1num9eU0pb4thi3X3DWil6TWOypWBcJYR
	UQHCb8Z+AyUTT43lcp/tzMQ18y0SwAuTXQ==
X-Google-Smtp-Source: ABdhPJyQVTOmcSeZ/3CNWq4LIIY2idt1dL8t81kdduhkMhxyj6Dd8oTFn83/3ZLfGwcDjyp5RbeWOw==
X-Received: by 2002:a17:90b:3687:: with SMTP id mj7mr3437081pjb.76.1607540385732;
        Wed, 09 Dec 2020 10:59:45 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::5bf5? ([2601:646:9200:4e0::5bf5])
        by smtp.gmail.com with ESMTPSA id x22sm3505390pfc.19.2020.12.09.10.59.44
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Dec 2020 10:59:45 -0800 (PST)
Subject: Re: [yocto] #yocto #zeus -broken atomic modsset
To: yocto@lists.yoctoproject.org
References: <MADEUP.164F1EF6FC714447.19788@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <53d63337-3220-8f3e-0249-e6daf0b3a046@gmail.com>
Date: Wed, 9 Dec 2020 10:59:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <MADEUP.164F1EF6FC714447.19788@lists.yoctoproject.org>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/9/20 10:12 AM, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
> I’m building/running zeus 3.0.4 on intel platform…
> 
> Can someone tell me why I might be seeing the following error and how to 
> resolve it ?

https://patchwork.kernel.org/project/dri-devel/patch/20190905181834.6234-1-daniel.vetter@ffwll.ch/

might give some context

> 
> X.Org X Server 1.20.5
> 
> X Protocol Version 11, Revision 0
> 
> Build Operating System: Linux 3.10.0-1127.13.1.el7.x86_64 x86_64
> 
> Current Operating System: Linux sbcb-default 4.19.135-intel-pk-standard 
> #1 SMP *PREE broken atomic modeset userspace detected, disabling atomic*
> 
> MPT Mon Nov 2 15:55:20 UTC 2020 x86_64
> 
> Thanks,
> 
> Steve
> 
> 
> 
> 
> 
