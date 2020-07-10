Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web11.1136.1594341517680220300
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jul 2020 17:38:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kOzEWVRD;
 spf=pass (domain: gmail.com, ip: 209.85.210.175, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f175.google.com with SMTP id z3so1732460pfn.12
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jul 2020 17:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=l/q2+7XxRg+vUbtZhbSBpcVrOcpwFzCg9C/eq76Oat0=;
        b=kOzEWVRDJKBuyW87DHkTK9+fEEggSvQVG9C38mPcybDmzG2RecIte0PZv9iXOk+02o
         QFPf7r4tI1ubRICGtcxm0WMJ4UPoWcyGmTICDvEDCFC9KloUZrnBpZ4fvIxtMH6qorAw
         8PUTsjGi/7/SAGx0QMyopQjT54s9w9zVQ7sRVwmSFpfQvGxPldEo4jjVt5fJtVJ8l6gd
         grmR9tN1pBt2UFqGGZaSUQl56Kpidg+7mr/y+L4nVCeem9n8ui4ZLVjfIjkRgqtUngGC
         sJ0O28v9yA8etsS4H4mRwQ9NSnWTXYuopjzApRuRSM6TLUDU9STuLONdu0fbWKrhuilO
         Bp7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=l/q2+7XxRg+vUbtZhbSBpcVrOcpwFzCg9C/eq76Oat0=;
        b=JToQqRjlBp1GSamdqMDrKIfZwwxv/0WZ5imXhLlZ/mlG6t/b97+MwSbArionI8Pkzp
         IilRp00QT1d4st+4CsqQ3otAvJEIHo8YfgQLs8Cl42OiV1nK/r02Bipn37/oxIjhBKzM
         akrnBkMKX+hej3dFtPVmGI4/z/c7XFho5JnS7qL0mUZskI2aaOppKb4bhJCHe98xmc7Z
         Ww7+yUreF5fI6tCTVddZWRY9yxoAWzSyN9WFCVr0riZ9SzSVZXoc8XSgcej9Zl0q3XPJ
         u/uMGTj1vYULODhic1DQhcN4EiKXETi8qPt/7f/g81PI1NeE4Z2w+9f7oCxRAnyz+W86
         GjAQ==
X-Gm-Message-State: AOAM533a11Wu+/YmbRv6twGF2JnWK71ykpAHvvnRJ5tH4oehBJGpyEky
	RCXErfkUblkQ2k4TjU7Ckp30toI6XtQ=
X-Google-Smtp-Source: ABdhPJye/YTeVptiBqVKDJYsp4jHIyhKkyKhV2fGoe54E4LLE2yWsWEXlpYO0ebU94Udec5I4DVATw==
X-Received: by 2002:a63:a843:: with SMTP id i3mr57390684pgp.190.1594341516786;
        Thu, 09 Jul 2020 17:38:36 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from [10.0.0.10] (c-73-63-224-124.hsd1.ca.comcast.net. [73.63.224.124])
        by smtp.gmail.com with ESMTPSA id c3sm3923230pfo.203.2020.07.09.17.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 17:38:36 -0700 (PDT)
Subject: Re: [yocto] Add application with library to target
To: kfa@deif.com, yocto@lists.yoctoproject.org
References: <WBxu.1594201038361970285.H0ZY@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Message-ID: <589397f5-4ba5-d2a0-c318-fc3187537aab@gmail.com>
Date: Thu, 9 Jul 2020 17:38:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <WBxu.1594201038361970285.H0ZY@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 7/8/20 2:37 AM, Kjeld Flarup via lists.yoctoproject.org wrote:
> I have a functioning Yocto build today, but two of the recipes are
> optional. An application and a library.
> I would like to split my build in two. 
> 
> One that contains the basic system with kernel rootfs etc.
> A second that just contains the application and the library
> 
> If I just had the application, it would be simple just to use the SDK
> and generate the application. 
> But when adding the library, things starts to be more complex. 
> 
> I would also like to use my existing recipe with dependencies etc. 
> 
> What is the best approach
> 
>   * Can this be done with the ADT?
>   * Can a layer solve it
>   * Do I need to do it all manually with the SDK
> 

I think eSDK might be good fit for your usecase.

https://www.yoctoproject.org/docs/current/sdk-manual/sdk-manual.html#sdk-extensible
> 
> --
> Regards 
> Kjeld Flarup
> DEIF A/S
> 
> 
> 
