Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.1688.1631205889370569850
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 09:44:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=mCeNuhM+;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id e7so2365480pgk.2
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 09:44:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=0RH6bnNxq1ZeiBz1TXtNKfachDpVR/U7pi9tRM+T9/U=;
        b=mCeNuhM+WstUBXuawq+8r8jglH2yZXwWkK3lHagfa5jkkmB44EVeBACjQZeIkasWXs
         FIRDqFAzPPcti80zSNzpJ/y1du9KyqXx2pgdSzCjFPt/Ei1jt7YdynqHOxhC9lpt5Tu3
         xSL1144tWYmGAuGn9pm6yLfzC0IZCoY/tTwkoVSw1urs7AHZ9CcBDmQnUdBe3GXXIoax
         O6oovU2LRcyrjrS31/Gq6h1HfP2f0WOjoCbuPVWD5SI3/KdKij1tslamJL48zOweO5g/
         Nty7CfCp55mLqTgwlbl7kHnFAcD+mVSHrqB6BNtwkkRZNo2jzG4g0FPPdRSvGydApXds
         oiHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=0RH6bnNxq1ZeiBz1TXtNKfachDpVR/U7pi9tRM+T9/U=;
        b=cO2sM1/fL0saLuo6+epY/m39nsNlmHwfpEUD37DJ3S4P1bG9W8BCDmIzwJlvZzd26F
         2sWk3EAtTKi9NZovFhaLPB+iXAvj9TD5qSbemL0lWRr7bAqXHQEnz/QaEnyQp7NY4zoF
         lYjpAe0CI+F8la/+txHIZmONB8JEz/doO/Ao14O/YCZF4/n737F9K99QNDXQGbOf0n4i
         S5whG23hFbvN5NVdiFVfV6gZczu7MtfqkS79JOXikaXaSrcJQGl+M62X0Ul+OSVc0yS/
         D+hviB/0Zhpp6QPkU1+Zk7nHkoHHwFor+zib3PCbFZ+Cw05RyXM9s2CXXGAch6WaPAyU
         M3+w==
X-Gm-Message-State: AOAM531jF/lCe0xf9IepPorSWu71IIZfThy+g8ArdeC38Wy6cBV3IB4n
	pUNLhTuQmCpv7UFp/MzRmrOaZyzekN4HxA==
X-Google-Smtp-Source: ABdhPJzRWvZ74G0zKDMIx5Y3+ISHyOUJUR8UxcX0tjQf1HYU7QkywwoO7FfteIYakstj2KwsqLdo4w==
X-Received: by 2002:a63:371c:: with SMTP id e28mr3352678pga.302.1631205888845;
        Thu, 09 Sep 2021 09:44:48 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:889e:9651:ed1e:11b0? ([2601:646:9200:a0f0:889e:9651:ed1e:11b0])
        by smtp.gmail.com with ESMTPSA id g3sm2955006pgj.66.2021.09.09.09.44.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Sep 2021 09:44:48 -0700 (PDT)
Message-ID: <643d861c-116f-405a-4f07-df32c863c779@gmail.com>
Date: Thu, 9 Sep 2021 09:44:47 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.0
Subject: Re: [yocto] Enable graphic in core-image-minimal for raspberrypi #yocto
To: yasminebenghozzi6@gmail.com, yocto@lists.yoctoproject.org
References: <VXHy.1631183292855261780.pFCN@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <VXHy.1631183292855261780.pFCN@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

minimal image is not ideal target as it is console only image
perhaps use core-image-weston (wayland) or 
core-image-x11/core-image-sato ( X11 ) as starting point.

On 9/9/21 3:28 AM, yasminebenghozzi6@gmail.com wrote:
> Hello,
> I cant find how to add maybe graphic conf for the yocto image I already 
> have for the raspberrypi,
> Any help?
> 
> 
> 
> 
