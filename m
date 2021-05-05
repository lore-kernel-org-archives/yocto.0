Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1141.1620173525350502001
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 17:12:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=p3/m/o7P;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 419F938C04F7
	for <yocto@yoctoproject.org>; Wed,  5 May 2021 00:12:04 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id d21so574705oic.11
        for <yocto@yoctoproject.org>; Tue, 04 May 2021 17:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=L7BiMNpvPeq1ePxFVV2ePKUwouBKy51Nx4SNCc0hvKg=;
        b=p3/m/o7Pw9Hg5WVLeoYzJRpeVfveEhdYRjDtlkooxm7eGV99BVQGfW+pdyX6GvgvYd
         IPtyxGRcqE05gvtcerDHDQo2darxsSczHLt1ODo5+zcdAo0bMbZsRY+9VSIz3MdkHwqL
         0RqfFZAFfZ23iSlH1jck/ZBOpKQEWPObYjyl2MbgKMOC33zcrvpcu/38rlWH1dEkeOPS
         LpicrXzCLeYImTkzlisTwMIrWvxGZ4xKAVUvsomp0xeZ/7R88rWPYIDEpozrM82wfV2m
         fv4XRerTSpATPsOhr8X8A7UHpR+evx2I11GaIp/tiBuC/SFfmYtImLSyqjN1w3fDnlgA
         lXOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=L7BiMNpvPeq1ePxFVV2ePKUwouBKy51Nx4SNCc0hvKg=;
        b=ZMcQfvK96qeAyxGrg5F0I8lSdG5MVVEe25/hTRIZmH1MUESplMJRTiuvhyQBegkQ9L
         LYp6Kl+3ryrHXR7RRjvRw9EXRW2CE+MxDLmQrOt6ZDbzHu6SoHEzgXRjzzSJO2iY9J6p
         hg5oF/l+GmpTkgKaVptURSrQHZgwS1mpUxUPOBDG1eJma68EuvlR5rIs9OMIb48dkvRX
         9UL6CT92SWHIlgrWs/snnrWh/22RqcoBoKPPL7mRKCBm+DP2Nw1LE8F0u8kObeTM01IP
         yBxTtk/VFp7kEBk37jRZvHyudZee5PMtiMXJGPrFEAqEfI8M+YYwpE3df0VIuoxxfBZw
         CJdA==
X-Gm-Message-State: AOAM532KGaQMAhAaNLpI2c8ld7dc4ISJr9QMcSogndObVrjpK6LKY7cz
	jTMHDzQjQjsV+fYBPDwlhuMXZWtiThwCYg==
X-Google-Smtp-Source: ABdhPJy0mPCvelvQmkRBq6Vk5OYsDX/V+cksSrMs1wcQlIKPblUkpGNis+/W1a7Wy6VS4jLnpjTiKg==
X-Received: by 2002:a05:6808:2d0:: with SMTP id a16mr19302208oid.116.1620173523038;
        Tue, 04 May 2021 17:12:03 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:d5e3:404f:2c38:3462? ([2601:202:4180:a5c0:d5e3:404f:2c38:3462])
        by smtp.gmail.com with ESMTPSA id k7sm1060266ood.36.2021.05.04.17.12.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 May 2021 17:12:02 -0700 (PDT)
Subject: Re: [yocto] what OE/YP layers should be considered "supported"?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
 Yocto discussion list <yocto@yoctoproject.org>
References: <f0f1c2d4-ef14-a211-6bff-8f7b876fdc7c@crashcourse.ca>
From: "Armin Kuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <cac05b3c-8876-de8b-ef1d-5b894f9d467d@gmail.com>
Date: Tue, 4 May 2021 17:12:01 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f0f1c2d4-ef14-a211-6bff-8f7b876fdc7c@crashcourse.ca>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Helllo Robert,

On 5/4/21 2:03 PM, Robert P. J. Day wrote:
>   related to something that richard purdie mentioned on the OE list,
> if one wanted to do a YP-wide "cleanup" of some indeterminate form,
> what are the layers that would be considered mandatory to cover in
> such a cleanup?
I don't have an context in the email you are referring to. Can you
include it please?
Supported will mean different things to different people.

-Armin
>   no-brainers would, of course, include:
>
>   * oe-core
>   * meta-openembedded
>
> beyond that, what else? i would think:
>
>   * meta-virtualization
>   * meta-java
>   * meta-security
>   * ... more? ...
>
> and there are the vendor layers:
>
>   * meta-intel
>   * meta-freescale
>   * meta-qcom
>   * meta-boundary
>
> where can one stop?
>
> rday
>
> 
>

