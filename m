Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
 by mx.groups.io with SMTP id smtpd.web10.1320.1582153128944106625
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:58:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ry4zZXKR;
 spf=pass (domain: gmail.com, ip: 209.85.215.194, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f194.google.com with SMTP id b9so848812pgk.12
        for <yocto@lists.yoctoproject.org>; Wed, 19 Feb 2020 14:58:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kdxwm166sdrB2G0jExxmzkoWlqWBCo8aIm5fYVR6R2E=;
        b=ry4zZXKRHMUgvcLBPoZOrG74kZ3x2rdUsM3/ohClffK1+/OeGJc52KdGcTzS0lhTBK
         YKPYMGmgogFYXsCzN7oZv7fjhqUDvW1h4tVkWfNBjuzePi+BoLTHDo1guWX3+ADFBuKm
         JCsBaFiS0nQS6B4beNd3syBZjaolrOqVje9ZPfzzRjfqSb+AfK3W+4ERecqWOa1HaK6U
         kZZvNSlTAK5xoC9RrQUR6xnAADDQB8YPGJB33itcpkT8YsmTIY22xwjagyP7+IQYKNRX
         xNBC1/VpuDDeafeBcYF8CwUYxXY1hp91NV9NQt7HRrvf/f/S17aBRYqzDMqS6crf2dVP
         dRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kdxwm166sdrB2G0jExxmzkoWlqWBCo8aIm5fYVR6R2E=;
        b=FGol1Ho3CCuynuNKkVQmBfhgPIqZcmqI6w0zfZNvXbBGQrllTKUkO93zQs2au53Tbv
         rip3w/g5SlVP7TDTSHP3ZjKnlWFW2Za+/4gO+P9R+B1j8MRHEe1sJHnagWQkCJVT44sD
         3kf3h1aVE2iY8AlMjCYkB5XvO7M71mPdbeVlopPwGH1n+qWOdqsX4EkzxxQUVLi/ZF3m
         hzc0pWg2W5744epHtpFxHBRx0r4o18aRlkycJBsMhAek5usw0+F4CyJ9vPRTpHBBrk4w
         AsuB26Lfjc1BLq12SptpPHRZcblHpI680v81m81jqp4PPT1d6/KLHLpyaEo2DC7VCaTU
         NgSQ==
X-Gm-Message-State: APjAAAX/GK3lwm6zsOspn2XTR8JpruBV+kUpyuWQ4ocYiLUvFYvJoj9J
	bRb7UT1ha2zh+sKvGD1h5Wg=
X-Google-Smtp-Source: APXvYqyXZ84QFbgREn7LMTdhpK6FHnReyWQylqO5zYO/gjk0KakLDymAv6tUNRHgqKNaXYGf8OdABQ==
X-Received: by 2002:a62:36c2:: with SMTP id d185mr30206091pfa.203.1582153128189;
        Wed, 19 Feb 2020 14:58:48 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:cca7:f312:1961:a4b9? ([2601:646:9200:4e0:cca7:f312:1961:a4b9])
        by smtp.gmail.com with ESMTPSA id n2sm680436pfq.50.2020.02.19.14.58.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 14:58:47 -0800 (PST)
Subject: Re: [yocto] QA Cycle report for build (yocto-3.0.2.rc2)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 akuster808 <akuster808@gmail.com>, "Jain, Sangeeta"
 <sangeeta.jain@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
 "Tummalapalli, Vineela" <vineela.tummalapalli@intel.com>
References: <CY4PR11MB1879657C3887087DEC4B7573E3100@CY4PR11MB1879.namprd11.prod.outlook.com>
 <c5548ebb-b027-40da-5c93-d944aed949d0@gmail.com>
 <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <3f6918ff-4f8e-faa3-aede-a08fc983c4c7@gmail.com>
Date: Wed, 19 Feb 2020 14:58:46 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <c49287d5cf34bb5318b34e60028eda8ab3efe088.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 2/19/20 2:42 PM, Richard Purdie wrote:
> On Wed, 2020-02-19 at 14:41 -0800, akuster808 wrote:
>>
>> On 2/18/20 11:33 PM, Jain, Sangeeta wrote:
>>> Hi All,
>>>
>>> This is the full report for yocto-3.0.2.rc2:
>>> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults
>>>
>>> ======= Summary ========
>>> No high milestone defects.
>>> one new defects are found in this cycle - oeqa/runtime test
>>> 'test_dnf_exclude' failed (Bugid:13797)
>>> openssh ptest failed (BUG id:13796)
>>> bash ptest failed (BUG id:13795)
>>>
>>> ======= Bugs ========
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13797
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13796
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13795
>>
>> Thank you for logging the defects.
>>
>> I suspect this in now in the hands of the YP TSC.
> 
> What is the stable maintainer's thoughts on this?
> 
> In particular I'm worried about the bash patch and whether the ptest
> regression above is related to that or not? Any recommendation?
> 

I agree, two failures are openssh related and I think they should be 
root caused.

> Cheers,
> 
> Richard
> 
> 
> 
> 
