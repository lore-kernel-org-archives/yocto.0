Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web12.3879.1623487646285155629
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Jun 2021 01:47:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EOhbd3QS;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id l9so9290474wms.1
        for <yocto@lists.yoctoproject.org>; Sat, 12 Jun 2021 01:47:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=Gq4gUm3qcb6QhnnN+u99pijzCprIXei/uLzy4tjq1wA=;
        b=EOhbd3QSMXE3kZp6Rj/Bu3nTR9xvwe4hXfEQrolS9hxbopGKFy4xYJtDMnYGH/Dktc
         tCi1NsIp14BCzXpsmsIMLYmkR9KYAU+X3UQvZhYwuksUIQReV44Lw9h+9HINeNddDPh/
         V7tXRX95Q9WGTpsjP77R8x9vxEwm9NQqW3pxIxlk0SqDUG69wwGE4XFqoU3n4pEN6t7k
         ucQRDYSixjc8FsHLwp7gfVxUeUCKtBHpsgGNKzxwaMF+FjsqjdfCEbZ1+jEL4RJmArZN
         eBPBsiraSas2z5scYRv/1DDksGcj23UEF0LpC71S1hNfGwtOREmwKRAeTM7xvnvE4j6W
         cxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Gq4gUm3qcb6QhnnN+u99pijzCprIXei/uLzy4tjq1wA=;
        b=HDCR4OP3RskNJhvWJsAL2f6VBpHQ/AMYyvP0LMTjCD8FzW5l3ZoLcLujVe4SVpPDqV
         9+rqCNIz7uQMfagRG/Ahrw2o0n3QaaN8AwDQl6rm1gbmoH0fSuCFWOBPFJMXbS3UxPNg
         CvE3pgpHFVM0zVJBraGvex94AwEfrUBm1xujAGj5qhrHWQgV3+N8tUQqxai3JzPJD8mE
         PiJomLuB9D3LmIfeueFkdCZAUstRkSz7RdbhHsI0pZHVPdoLdf0FJAdG4diUgVBDb7n9
         OKJNKhNFPcbr9KJqX511dVIsVzVxUGmbxRaER5nZYQeDMvCANYXB6p04m9NE8Hx/fVfu
         nkEQ==
X-Gm-Message-State: AOAM530HjArdCzDfh0J/EbRHaCyLPHIIQPZ3PAevHYee6tiSFbkocn0Y
	d2v0RzsawElHv9Aha9iy7hkyG+lVqyM=
X-Google-Smtp-Source: ABdhPJwTbqNlKkBuIIyQMKhjuXNpPacZiy2UQ+levXM2qc+lwZUZySsM/SFoljaBdQvIKAnJLRgwag==
X-Received: by 2002:a05:600c:1553:: with SMTP id f19mr7452870wmg.158.1623487644586;
        Sat, 12 Jun 2021 01:47:24 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-84-14-202.home.otenet.gr. [2.84.14.202])
        by smtp.gmail.com with ESMTPSA id v16sm10217012wrr.6.2021.06.12.01.47.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Jun 2021 01:47:24 -0700 (PDT)
Subject: Re: [yocto] Extensible SDK of core-image-minimal fails to install
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Hendrik <yocto@h3ndrk.de>, yocto@lists.yoctoproject.org
References: <1686F53371AAAEA1.32444@lists.yoctoproject.org>
 <7d3b564b-d17d-f926-0037-e19ed3e73321@h3ndrk.de>
 <14938a84618aa48d76d6a8c15ca5930fc72d957a.camel@linuxfoundation.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <daed1c45-fbc1-4240-48e9-406e61e6825d@gmail.com>
Date: Sat, 12 Jun 2021 11:47:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <14938a84618aa48d76d6a8c15ca5930fc72d957a.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 12/06/2021 10:47, Richard Purdie wrote:
> 
> I think it may be this bug:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=14428
> 
> We don't have a fix as yet, it looks difficult to solve :(
> 
> Cheers,
> 
> Richard

Not a fix, but a workaround, if you are willing to use containers is to 
create a build container and a similar sdk container.

I added more information to the bug above.

Regards,

Robert


