Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web12.12290.1596737157250411312
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Aug 2020 11:05:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=cSTf6feu;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.214.179, mailfrom: scott.branden@broadcom.com)
Received: by mail-pl1-f179.google.com with SMTP id g19so15616284plq.0
        for <yocto@lists.yoctoproject.org>; Thu, 06 Aug 2020 11:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=t0sDlSrxS8GiURKZ6B0QteuCQRwSxu/Fg3IH7s4E5q4=;
        b=cSTf6feu2QcRL+dIq4jzE+4J5uI7BqyS1uXDidYT8ssw06m0wfz10FKUt/AQF2+Nsx
         assP3osYwmXVLvIH3aXPkP79pdLYmbDtO4+Yp9wxTyHGSg4rBaVThhqFpumSaAepSZog
         QW7JY96cZQknajBp1Ywgdvtc3f0kKJ63IHRvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=t0sDlSrxS8GiURKZ6B0QteuCQRwSxu/Fg3IH7s4E5q4=;
        b=geVu75x1Mg/txbfUH1iIXe2aY1IYX8SVxvgC6fR8cMIOW2uOIDTpKRETPkatbjHAen
         BKSXbzEyJH8B2kh2UQP9CuU81nOzqel7/Jb4o/x4WnxW2T/u5KehPS6zr+Qi1oBPj3Cz
         Q6U/ydW9ODckJoL4ei/AdQ1d215YoS2XNOeIB5RnfBEenQgCpXoGxfmz40zV32oMJmLj
         C/FO2A6UC9CeIGaqDdiu8lLx+zKWIOdgdNbGPe5m4WYsQ0QxJwWgx4xPg0j7gF82TsMb
         qF9MMh7eC56xWggdxCho6rmIGC/mT9uDPg0yLSjQHZs8zZpHor3AhGUcXFLCg8XL9UBT
         Tb7g==
X-Gm-Message-State: AOAM530KwGq0HeFdU+7NxGPnfBvrgDpT2FcUTHKfa8YmRxKio3I+Cy68
	dHFbzfewDT9udMLOsVuNb5gvtA==
X-Google-Smtp-Source: ABdhPJzQDTr0uYmTotxc4klPD6r9LsizqjUHZwjhU2RQ8QjDRBR62JZpYhCm2ZIwMEr5AbkDu9y3/Q==
X-Received: by 2002:a17:90a:33ab:: with SMTP id n40mr9770290pjb.74.1596737156287;
        Thu, 06 Aug 2020 11:05:56 -0700 (PDT)
Return-Path: <scott.branden@broadcom.com>
Received: from [10.136.13.65] ([192.19.228.250])
        by smtp.gmail.com with ESMTPSA id g12sm8559573pfb.190.2020.08.06.11.05.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Aug 2020 11:05:55 -0700 (PDT)
Subject: Re: [yocto] Is http://downloads.yoctoproject.org/ down?
From: "Scott Branden" <scott.branden@broadcom.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: Rick Liu <rick.liu@broadcom.com>,
 Jonathan Richardson <jonathan.richardson@broadcom.com>
References: <20200512131738.GQ11927@denix.org>
 <4061.1596576995601033488@lists.yoctoproject.org>
 <14aa33ffb8218838763ba61c809149365d92ab98.camel@linuxfoundation.org>
 <b93acfa6-0d88-9542-8ab5-1372bf5cff18@broadcom.com>
Message-ID: <4521ef13-3e15-0d57-11ad-a415b89b9e0f@broadcom.com>
Date: Thu, 6 Aug 2020 11:05:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <b93acfa6-0d88-9542-8ab5-1372bf5cff18@broadcom.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-CA

We found the source of the uninative fetch problem:

SOURCE_MIRROR_URL needs to be set in order for uninative to be picked up from local mirror.

The standard PREMIRRORS mechanism doesn't work for this single tarball.
So every time a clean poky build took place it always went to the internet to fetch the uninative tarball
the first time and store it in the local build download.

I think this should be clearly documented somewhere in the yocto manual?

On 2020-08-05 10:07 a.m., Scott Branden wrote:
> Hi Richard,
>
> On 2020-08-05 2:50 a.m., Richard Purdie wrote:
>> On Tue, 2020-08-04 at 14:36 -0700, Scott Branden via
>> lists.yoctoproject.org wrote:
>>> With downloads.yoctoproject.org down again this begs the question:
>>>
>>> Why does uninative tarball get fetched by default from the internet
>>> every time?
>>> Why is it in not cached like every other tarball that is downloaded
>>> by recipes?
>>> The default behaviour for the yocto project should be to have the
>>> tarball stored in the yocto cache such that it is not fetched every
>>> time?
>> Those are good questions. 
>>
>> As far as I know on my own local builds, the uninative tarball *is*
>> cached locally in DL_DIR. We don't see repeated downloads on the
>> autobuilder either so it appears to work there too.
> Yes, the uninative tarball *is* cached but I see repeated downloads.
>> If you're not seeing that it would definitely be something to
>> investigate.
> I just did a clone of poky.git and the repeated downloads do NOT happen.
> So I now need to investigate what is different when adding layers and conf settings
> that is causing the issue.
>
>> Cheers,
>>
>> Richard
>>
> Thanks for confirming the uninative caching should work, but it is not in my environment and I will have to investigate.
>
> Scott

