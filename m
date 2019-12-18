Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6601.1576642270060067472
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 20:11:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hdw29xg6;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91BD2E0122A; Tue, 17 Dec 2019 20:11:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com [209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68142E0107E
	for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 20:11:08 -0800 (PST)
Received: by mail-pg1-f194.google.com with SMTP id b137so513123pga.6
        for <yocto@yoctoproject.org>; Tue, 17 Dec 2019 20:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=1xZQT1d/4+9BmdMP21l4e1cAnJstKObsk0WM0PTrEjE=;
        b=hdw29xg61UqJsuvGAuIbGarRcVSCBMTGSzoo3BayebRrvt2WdRPewggNslnD6qQSUJ
         Rz4PTyWtaaqfPVzjEzyR4Gh/tb8ykNTFDRtisYrwRR5qCvLcTAvIdFv6E/DLERcpe1fn
         gEjSLr/i0op3lDT/zdxc3cgqKxRUmZY7h2Yaw/+p4ajnf1zaalURb2eJV2ZI0rk5D8wl
         NEJnRMaT6XEefMq/s9i4KW26mtmR47uJjTbrT+uwAijdc0pYpTtm9veJzmZgsu53n57b
         YMouDGtMKcjmiXgYJrPtNhdZRV5NEBzQo8Ix67t1AkPqCjgRCSYQDzPCy/3MPaaAc6De
         rOBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-transfer-encoding:content-language;
        bh=1xZQT1d/4+9BmdMP21l4e1cAnJstKObsk0WM0PTrEjE=;
        b=m3JCYKhW7MSX0kJJEkrDDD6XrBL3dDvtYcfX48+YV7NpwNvHY+ldYBCjPh8yhJuIz5
         nNKkvX+39c64E2InmqDsdbgb9mOw/h9y8I3M6azSYjMmVQ2iTwed0+RvKmjbVV2mV9D0
         VoCOdc4+Igxbah/h6SOvlKv7bQ8+WzuDgnyUYHpc+gLE5gORxiX/emyhLmV5Lnh4wHZv
         881QYbpylCjGdQzM5dEsrjsgdwxUsSLjMgXYrOawNd8NLewMAYWk+kj5E2uS07zU09+9
         LLXjbMymv7l0HIzCLeMBZDVgkff/ww8nSv7wJH1aoAl5uHJdgqSoE8By8FoQdQxoyiFE
         jFiA==
X-Gm-Message-State: APjAAAUPWsRvRsywY9nXXgAUTpeVuL6l5OZQaREW5B8lfPMK0z0XOpQg
	1FVOj2epomQ3gNEXnP+s5ww=
X-Google-Smtp-Source: APXvYqz/JUpBlzT7vXlRzqpogXHogZvNkV7C3jRhIPTvbmvjcb9nzx6prMS9JeMgZBefDxzQSJOmkQ==
X-Received: by 2002:aa7:9111:: with SMTP id 17mr672298pfh.57.1576642268023;
        Tue, 17 Dec 2019 20:11:08 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:65af:eb70:9d7f:1668? ([2601:202:4180:a5c0:65af:eb70:9d7f:1668])
        by smtp.gmail.com with ESMTPSA id z64sm725947pfz.23.2019.12.17.20.11.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Dec 2019 20:11:07 -0800 (PST)
Subject: Re: QA Cycle report for build (yocto-3.1_M1.rc8)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>,
 "Sangal, Apoorv" <apoorv.sangal@intel.com>,
 "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>,
 "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
 "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
 "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <b909f574-7cb4-0e89-d49d-4a34da778786@gmail.com>
Date: Tue, 17 Dec 2019 20:11:06 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CY4PR11MB1879E2568F55FFDDB413B54FE3530@CY4PR11MB1879.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 12/17/19 7:32 PM, Jain, Sangeeta wrote:
> Hello all,
>
> This is the full report for 3.1_M1.rc8:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/tree/?h=intel-yocto-testresults

Thanks.

>
>
> ======= Summary ========
> No high milestone defects.  
> No new defects are found in this cycle.
> glib and valgrind ptest failed (BUG id:13713). 

I believe the valgrid failure is a known issue:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=13666

- armin
>
> ======= Bugs ========
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13713
>
>
> Thanks,
> Sangeeta
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf
>> Of pokybuild@ubuntu1804-ty-1.yocto.io
>> Sent: Friday, 13 December, 2019 3:15 PM
>> To: yocto@yoctoproject.org
>> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
>> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
>> Aaron Chun Yew <aaron.chun.yew.chan@intel.com>; Ang, Chin Huat
>> <chin.huat.ang@intel.com>; richard.purdie@linuxfoundation.org;
>> akuster808@gmail.com; sjolley.yp.pm@gmail.com; Jain, Sangeeta
>> <sangeeta.jain@intel.com>
>> Subject: [yocto] QA notification for completed autobuilder build (yocto-
>> 3.1_M1.rc8)
>>
>>
>> A build flagged for QA (yocto-3.1_M1.rc8) was completed on the autobuilder
>> and is available at:
>>
>>
>>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M1.rc8
>>
>>
>> Build hash information:
>>
>> bitbake: 99d46107ccfcec576238d32cfe7903440857038d
>> meta-gplv2: a67a5fd160f97129a6afd65f107cd2cbdfec41e7
>> meta-intel: e1b373f3cbb9acd71efe84d782675025d59b6035
>> meta-mingw: 126efdad243e1a3bead5b695df6656e94353dd46
>> oecore: 0f04e81c797d5d337ece4e8638a6b71c75bc0a00
>> poky: 1abffc542a0571f0d1512b92c1a59d138cf3ea6a
>>
>>
>>
>> This is an automated message from the Yocto Project Autobuilder
>> Git: git://git.yoctoproject.org/yocto-autobuilder2
>> Email: richard.purdie@linuxfoundation.org
>>
>>
>>

