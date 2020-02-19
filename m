Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.948.1582152068165570726
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:41:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nmTQZu8d;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id ep11so698932pjb.2
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 14:41:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=CfYUg/eiWTBfQA9pXn/P5/wCzj3Kt0eVZBv8jEMoVlA=;
        b=nmTQZu8dmSr//qn8uHp6yCIhLS4Q93zevG45FWRXgdigvzRU4e/jRNEFNC2zfBhTKR
         uCdMchPrd2ohz/AmvUXKqgXqwfySH8dtjgo9VNfnTsRu9HQv6pa0lEVTJBHzee0ZIhhO
         rMhVXjF+6FQJ87sBpR4RbK0FHy78WrEB9ohuRQTipI3xYgMioAxnKWo5fcG7pYMom8tR
         Xsovc0iE4YQoDFtsuUxtw7lFjdKMrJhtWFYZK92hgQoqtnrnqFHXnMUbEIIT1smYZuM4
         b3l48HlZ4EFz+kMwLeajKFioQ5vX06rse5yysViCVvZE+r0wWvpwheNZuHhhcOkiH5wo
         1iGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=CfYUg/eiWTBfQA9pXn/P5/wCzj3Kt0eVZBv8jEMoVlA=;
        b=KH108v5GhwjbQ9dTeDdAJGq2w3TVPOcnjwpkC9QvWB5MQQEiKDJ6juG750eTt+Fqh9
         C6qV23iqFAjOCy42s9+k+X6i+CCD2GQqIhZK9YD3cADUkSe7x3WWOEajhIh0j1eQeTlt
         pVz1YW9AR63lksmRZGMTcisd8cG+YvWvr6sxjjjarHvSdvcmJZriDfmC2UdD9ExLla3U
         uNPglcXzg3IZsyrVIAbOfnqgZrRtEWQ72Tind+uYJraGyYcGaqF9VKhWDGL8RVF2wWd9
         /iydn9zh+7HODUExms1qPxnZTq4/gJVnTRyd/gRb0U9eC1CF9gBwGGW3KkPHicAR57uE
         kQ/Q==
X-Gm-Message-State: APjAAAVR5AOX8SSvqn9vaXOhdlWScSIZaQn4oui2AFyn/772OMD3XLCF
	FcEKARGzqt4v2x4vYNZHm0k=
X-Google-Smtp-Source: APXvYqyQFN3GnRLSP2Zr7YsL7g2tCB3Eip8okh9+kFLaWRwg5ig+nAvTIVnpsx6zY52Lz9J3a39r6w==
X-Received: by 2002:a17:902:694b:: with SMTP id k11mr27996345plt.334.1582152067573;
        Wed, 19 Feb 2020 14:41:07 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:88be:17f0:935c:9e35? ([2601:202:4180:a5c0:88be:17f0:935c:9e35])
        by smtp.gmail.com with ESMTPSA id q187sm630118pfq.185.2020.02.19.14.41.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 14:41:06 -0800 (PST)
Subject: Re: QA Cycle report for build (yocto-3.0.2.rc2)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "akuster" <akuster808@gmail.com>
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
Date: Wed, 19 Feb 2020 14:41:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 2/18/20 11:33 PM, Jain, Sangeeta wrote:
> Hi All,
>
> This is the full report for yocto-3.0.2.rc2:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>
> ======= Summary ========
> No high milestone defects.  
> one new defects are found in this cycle - oeqa/runtime test 'test_dnf_exclude' failed (Bugid:13797)
> openssh ptest failed (BUG id:13796)
> bash ptest failed (BUG id:13795)
>
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13797
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13796
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13795

Thank you for logging the defects.

I suspect this in now in the hands of the YP TSC.

regards,
Armin
>
> Thanks,
> Sangeeta
>
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf
>> Of pokybuild@centos7-ty-3.yocto.io
>> Sent: Wednesday, 12 February, 2020 3:56 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
>> richard.purdie@linuxfoundation.org; akuster808@gmail.com;
>> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
>> Subject: [yocto] QA notification for completed autobuilder build (yocto-
>> 3.0.2.rc2)
>>
>>
>> A build flagged for QA (yocto-3.0.2.rc2) was completed on the autobuilder and is
>> available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-3.0.2.rc2
>>
>>
>> Build hash information:
>>
>> bitbake: 95687be83e716220eb3893b67428f97fd59fc2c5
>> meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
>> meta-intel: b04e1edb9300a57e200a187a3255f67b50519202
>> meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
>> oecore: 799b3cd1016bd765f4452a5e81ea5613c9089bce
>> poky: fe857e4179355bcfb79303c16baf3ad87fca59a4
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>

