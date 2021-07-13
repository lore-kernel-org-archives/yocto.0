Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.2179.1626168836974049636
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 02:33:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QjUCjC3G;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: koansoftware@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id l1so10520557edr.11
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 02:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=SQ/VxOBAktoRl5P7sZERwusm68kO6u24tIw1qfkXzBQ=;
        b=QjUCjC3G4NEEgtC4UDW9NAzWjhl/DmsfYdzd5pvooR4yhoNGVQca6N0qlZ6DPtyQT8
         OqYLqH22D/WcT1MwPUd5eEAxUeuXF92eRORtn7n5H1YBulvqHpVYJYmJAQiS843uIbT8
         Dk2TE+6dk/2/7sxSf874/DzD4rNjvGJmylVwK6X1t2z8UR+NbU+5T9JSYcmCTk8dX3LF
         qAhP1RQrpqljlkjvzwnqLqlp9Yq6tIAbQI/SHZDb2MZ/v+o0y0Va4dWqeU+yoBOipPHq
         6frLvFUcUcMuMVD0dzCLc9HdHXG6HEvfS2Svct3s5lIuqRaVFpp3CCKglJi3txM8ssJN
         RLjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SQ/VxOBAktoRl5P7sZERwusm68kO6u24tIw1qfkXzBQ=;
        b=Sh+CxyC6h8VG084JpDKWYe2m6Oii59q6lmpg13UMPcHznf/7uqqWROPBjEN0LmEc0m
         W8WwXtmEI0EjqyMpno2ZwAsbSBX4B1Kk+rZHx8vcLSVokHa4/NY2o/BpPrVpUoWxYwrU
         PI+H3x6tbLy1Vs5uXoR9qdbPl6EnMuhWgD4ZNPtNgdIAb1PPreMeHVsBUB1aBORyYpEC
         CM+ah4Xh1MtIhinxws4dEoDDR2p5ZD5oWrWmDw1U1ogJzEGsFT8GL4RxTWjTbuDmThfR
         O6lAYvifPDHtjsY2u+JP4nDQoaHv7RAL2Yw3ZqDJIuaT3EqPy8AF96ZjbsEUdkbj/Kur
         4QkA==
X-Gm-Message-State: AOAM533QX7Nuc2kdbdMstHo9OaTN0zStEh0jad2j8wTX3eoicBSoOOPf
	Yq89dmCEQWM0DdAWFJclWtcUWTOZSNm2RQ==
X-Google-Smtp-Source: ABdhPJyC+mUOc7avuWKoYSU2DXNR/59A4krFlklPwB8xZb60HS5doKWRD4vzsRPfmaNIa3z6H7JDjQ==
X-Received: by 2002:aa7:c804:: with SMTP id a4mr4555209edt.294.1626168835101;
        Tue, 13 Jul 2021 02:33:55 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from [192.168.0.6] (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.googlemail.com with ESMTPSA id hg23sm5689889ejc.106.2021.07.13.02.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jul 2021 02:33:54 -0700 (PDT)
Reply-To: koansoftware@gmail.com
Subject: Re: [yocto] [meta-spdxscanner] Question about meta-spdxscanner
To: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <bcef287b-9214-aa03-3274-2a84f6d7ede4@gmail.com>
 <OS0PR01MB61787445FE37FB683A45754BA0149@OS0PR01MB6178.jpnprd01.prod.outlook.com>
From: "Marco Cavallini" <koansoftware@gmail.com>
Message-ID: <245e1e57-42c9-abaa-9080-f235f8177095@gmail.com>
Date: Tue, 13 Jul 2021 11:33:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <OS0PR01MB61787445FE37FB683A45754BA0149@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 13/07/21 10:57, leimaohui@fujitsu.com wrote:
> Hi Marco
> 
>> I see that meta-spdxscanner has been moved to http://git.yoctoproject.org,
>> and doesn't maintained on github
> Yes, you can contact me or contribute to meta-spdxscanner to this ML.
> 
>> I'd like to have advice from you to understand if is it possible to test it without
>> any external service and discover what kind of artefacts are generated into
>> deploy/spdx.
> 
> I have not maintained scancode-tk for long time. And recently there are somebody else asked me about scancode-tk.
> Yes, I planned to make scancode-tk.bbclass work without external service. But there are always issues because environment.
> The problem of scancode-tk.bbclass that scancode must work with specify a version of python(latest requires 3.6), but you know that for YP or your host, it is hard to meet the requirement.
> I found the newest version of scancode-tk support running in docker. So I plan to make scancode-tk.bbclass work with scancode command by docker next.
> Of course, if you have good ideas, please tell me, or contribute to meta-spdxscanner directlly.
> 
> By the way, why not try fossology? It is really good that you can browse the compliance information on fossology server after you get spdx files by bitbake of YP.
> 
> Best regards
> Lei
> 


Hi Lei,
thank you for answering.

Considering the problems I encounter with scancode-tk and that the 
artifacts it produces are simple text files that need further analysis, 
I was just deciding to migrate to Fossology with "fossology-rest".
The only drawback is having to install the server, but I don't think it 
will be a problem.

Thanks again, I will contact you again if you have any problems with 
this mode.

Best,
--
Marco Cavallini | KOAN sas
Bergamo - Italia
embedded software engineering
https://KoanSoftware.com
