Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web12.14800.1611782255281723970
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jan 2021 13:17:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista-com.20150623.gappssmtp.com header.s=20150623 header.b=U5Z5Jmft;
 spf=pass (domain: mvista.com, ip: 209.85.210.174, mailfrom: akuster@mvista.com)
Received: by mail-pf1-f174.google.com with SMTP id q20so2133034pfu.8
        for <yocto@lists.yoctoproject.org>; Wed, 27 Jan 2021 13:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=O4C6ON3lEizUiNxwxCnCd/7sc4gnRhqnUPVthLh1uQw=;
        b=U5Z5JmftBzD5dMJ+YlUORdizL9f6caULIriIiPCuS24LfWlf+eS2kHBXbY8BYuuv4q
         X8gakz2axfH8FYjCOTVIwxPfhNzkb5ZKQXrLXXD3sCGf6WI2a2LOmCf1Kjkxx23wVMol
         foo5M0/9O1WPuGknN9AHd5ARnd9HRGkJeqYZqvF1yWKv2E2MBiJpmXwu9ETIb+EEc+40
         WCaFoWaf9bPemlZZ+x6rrTEiSiaQh32QDi4X25OCNzKe7b+Nh2TJOX+N2y2z8eEO5Mkb
         ZURaLP5rW52MBMhjOIU/uw4snIwwvAlL+tc+wYB1owSVTAsEkvakLRlVt3RZUx1fKtNL
         OucQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=O4C6ON3lEizUiNxwxCnCd/7sc4gnRhqnUPVthLh1uQw=;
        b=t93ookX65fcITOquAzFAACfgZGGnbTo2UV9B2bhc5Z25ZNUM5CV+EDbkJiwV4fAgwJ
         H+xHZSQ0bHfl6eMvjESlZt1suT1aWEinkQK5GYAnqRhJPUbY33rqVLImkOOJUEyFmJsX
         ooRYglm8t/Fl3BcDyQL2iharaddjZR87QYGQpKl/eLSCENEJSU4IJuYi8zf/54+Txo6v
         3LrF75N/8dPnY7bz0QFR5DwNPmf0cRa6CtvCAljJJE4vdsFnXLueU4TtHh9CBMV3wXna
         BwOZcqWZwH7SfDmMLf93SX1e3UHvGigrMJSiPprsZ3Awd+ESenSKkLAk4unC0WQm97IA
         pJ1A==
X-Gm-Message-State: AOAM53285T0ODm7b2miFnYpEmRxqioOorb+BTo/BaF9NEZ1Ll8MDlLOZ
	DFfGrL3uktCUlpMx/6TWjJznqnBIlNE2tg==
X-Google-Smtp-Source: ABdhPJxQ2fXm355QV5WIonqc0LNyyB48O/LbQjE2Ju/LMuYJFjLcNXivXHZKOVz5np6krO9EWZSt7g==
X-Received: by 2002:aa7:99db:0:b029:1ba:5263:63c4 with SMTP id v27-20020aa799db0000b02901ba526363c4mr12468636pfi.53.1611782254401;
        Wed, 27 Jan 2021 13:17:34 -0800 (PST)
Return-Path: <akuster@mvista.com>
Received: from ?IPv6:2601:202:4180:a5c0:4860:954f:4399:8bca? ([2601:202:4180:a5c0:4860:954f:4399:8bca])
        by smtp.gmail.com with ESMTPSA id r194sm3370184pfr.168.2021.01.27.13.17.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jan 2021 13:17:33 -0800 (PST)
Subject: Re: [yocto] any interest in an official "meta-rubygems" layer?
To: yocto@lists.yoctoproject.org
References: <633c9c84-1d35-48f1-82b7-4f2dabc2585@crashcourse.ca>
 <1a4deeb6-a63a-8ec1-ff56-d50ec2ef071d@embed.me.uk>
 <4d3d282c-60d8-e6c8-3c9-671e2f8b1f4@crashcourse.ca>
 <a3853032-18b9-af2d-bc38-1c5c12e003f6@embed.me.uk>
 <20a136f6-280-1f43-f3c-88af76a77b51@crashcourse.ca>
From: "Armin Kuster" <akuster@mvista.com>
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
 xjMEX2PeihYJKwYBBAHaRw8BAQdApYu38y29q9C5d8w/q4iBO9Wn/oaIetOogCVLMmmMRAHN
 HGFrdXN0ZXIgPGFrdXN0ZXJAbXZpc3RhLmNvbT7CpwQTFggAOBYhBIUngHNZEEw31YUKg+ak
 yqCo4qAXBQJfY96KAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAACEJEOakyqCo4qAXFiEE
 hSeAc1kQTDfVhQqD5qTKoKjioBeLJAD/bZFPQoAdtc4IaqMHlP05WudFj578W2F4jV+lTiDA
 uw8A/3lsSgTTF/VvQ6fDB0VeAJsTaL8XMFCdVg02lHyEu9UDzjgEX2PeihIKKwYBBAGXVQEF
 AQEHQFKWikD8mBqAEf4oZhs6Purda3XQHXc9oJ+6CLSgCC0+AwEIB8KPBBgWCAAgFiEEhSeA
 c1kQTDfVhQqD5qTKoKjioBcFAl9j3ooCGwwAIQkQ5qTKoKjioBcWIQSFJ4BzWRBMN9WFCoPm
 pMqgqOKgF8N7AQDReOz+Z+EQ6uQkVeIjkqSf47G8HEV57zC2TNy+LO59uAD8C0f3lB05PoIb
 h4MQlQM84Qx3RWmP/f8Pybq7D8Hw7Ag=
Message-ID: <1f460c3f-f280-4af2-208c-8f804082040a@mvista.com>
Date: Wed, 27 Jan 2021 13:17:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20a136f6-280-1f43-f3c-88af76a77b51@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 1/27/21 12:04 PM, Robert P. J. Day wrote:
>   regarding the proposed "meta-rubygems" layer --- which sounds like
> it's going to take off as it can be initialized quite a lot just from
> konrad's existing meta-sca layer, what are the options for "official"
> YP hosting?
>
>   i notice that quite a number of layers live at git.yoctoproject.org
> -- would this proposed layer even be eligible for that and, if so,
> what are the benefits of living under the git.YP.org umbrella?
Are you a member of the Yocto Project?

regards,
Armin

>
>   if not there, then github would be the obvious alternative.
> thoughts?
>
> rday
>
> 
>

