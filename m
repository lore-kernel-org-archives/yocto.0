Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web08.1447.1614537070809860574
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Feb 2021 10:31:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CPLYw4Zb;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id e9so10152215pjj.0
        for <yocto@lists.yoctoproject.org>; Sun, 28 Feb 2021 10:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=IscT1Gte1ahhBkyhv2lk51NWf0l8/jmuW7WLJWgbCLo=;
        b=CPLYw4ZbjvjvBsLBNAiAo1IK0VHBliiEmofuMNpJhmcczgw/COK4gVvYFx+1jTn60r
         E3INV6ngf5mW4kcMRVzigpB04/Q0bCECva9hPHJpqPGaIbrMipK/5MYQnDq9X6OE6ZUJ
         +Bdhz3N1LkybV9Oi3d9qeVOzTHQiGEcSSTcWl+F5R6VQr3VBuZs2BK+AeXAtEb2fpUh0
         noctmSuVd2EMEDUwMXq24NfdrcDXZHUuE7JZDRZ74c5DkYHAjHMR22N+f+Qotuc4s95n
         wXqiGcjcVX2JP2Q8tOZ1J7lz+Q2KZG00r1NZX6rc8Flw8PNGTz3wHqsnwSJnCMe+fZav
         /+pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=IscT1Gte1ahhBkyhv2lk51NWf0l8/jmuW7WLJWgbCLo=;
        b=S1mW4nUExtmdiMOwhoZQIDv6xnSVuzcOWKzb6cRYcsBAkIHJeuR4eFWx1wve6W3SXG
         Cxxfn+h8WKfQ5/sMTWzREDID+RNTOANdvFfr9MSyOsBdX7Fbay0nKHYU6mr4ELahC/a7
         b0JYsX6GkkLQ7sofO5WE/+hwt0/f90EY1WOHID1LLJYnK0LjBVTAcJ6xnrpAQo+k9DLs
         xGmXW3fa9gS2n9yLDOA4uniCFdw4joCgnDuU/+Aza0FRB8wTSTFYk2LIJfgjP9+C54HW
         +mwILmb+TFZiz5EKSoFxSuvgWVSmB65f7xkXSxdzphPTFkYPb6t08Qn2Tn95PjbWrB/Q
         oEfg==
X-Gm-Message-State: AOAM5312olPeWAtpteZ7ywiJxy1bX0vhIL0UCmyWJ4A1hkY8jAvD56E3
	zJmPaiC+SbpQrvgbPzJrvfbMJqhMfMSKkg==
X-Google-Smtp-Source: ABdhPJylbGmH9j69AXuA880n4goImDaRcnpUGqCOZnd8q9Mh51OEsM8Dnc094qHhPU1GuG2meQoTKg==
X-Received: by 2002:a17:90a:4609:: with SMTP id w9mr14025287pjg.69.1614537070049;
        Sun, 28 Feb 2021 10:31:10 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0::5d43? ([2601:646:9200:a0f0::5d43])
        by smtp.gmail.com with ESMTPSA id x23sm10436482pfq.167.2021.02.28.10.31.09
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Feb 2021 10:31:09 -0800 (PST)
Subject: Re: [yocto] How to set static route in yocto for rpi
To: yocto@lists.yoctoproject.org
References: <adhJ.1614421109062395781.XsXZ@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <d57b585f-5a7c-bd0c-0125-798d5a48bdaf@gmail.com>
Date: Sun, 28 Feb 2021 10:31:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <adhJ.1614421109062395781.XsXZ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 2/27/21 2:18 AM, prashantsingh@dialtronics.com wrote:
> Dear Team,
> 
> I'm using yocto-dunfell poky for my CM3(Raspberrypi) OS.
> 
> In this I want to set static route for wan port. So how I can do the same.
> 
> I've tried several method from Internet for setting static route in 
> linux, not succeeded.
> Please help me with this to solve this.

ip route cmd would be the way to go

ip route [ add | del | change | append | replace ] destination-address


> 
> Thanks and Regards.
> 
> 
> 
> 
