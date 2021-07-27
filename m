Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.web12.8202.1627371216173511921
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jul 2021 00:33:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=c55jMvAt;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: koansoftware@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id u12so14117293eds.2
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jul 2021 00:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=pRxuMFwin4zSGd28KP5Pcg32WVxE+KMdOdMA22VCQws=;
        b=c55jMvAt1HWlRsZvUxQbEBb7N/htlnm+Prkc29fDP6WzGiLApadzFG5Jx2nivcCwyi
         raxG5Jph4bCiz7tu4C/JmzIUmBxzLd14h+YUeRovmxz3sY8MxfzVRPiLW4PACUlcsZF2
         3AwWJLh7fXLRMTg7UGkKy9i7e7Sens8z9AZssBjji7ALjnvhAh57lskRlBAIDjNq4qww
         yQCs3p8wmRL6Ilu9yFsDq485jMBPsHniaMIgtSTD8+mgmIRiXEJxeb+ulfV0r+62xHpa
         0gA17uWXeqLM3FZFE60xlT+Eon0ZhvAkZlN+DLFXebsC70FOwDHY1m62EbYXGdxQG5mO
         LOkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=pRxuMFwin4zSGd28KP5Pcg32WVxE+KMdOdMA22VCQws=;
        b=d8ENrRqLvlOGWA88JL+qmyosJ5vTE6Ibzk3hMqBmEPthcKmguWE9XJ9CVkYgpp6zNn
         /1DYAbZ/hcda/gkzGYSiG6bVVm+Pqh/Q5zJIkPV6HkIy72nn2mZQnCqytXX49h6EK8PB
         q/ddlf8slgaUyzh5RTqzvmF+7p9EMwNHxlhIflkt2Yd48f+D+3B8Gacp0njIlWemSRa8
         z8oJyII0bq/M+nCdOIaRTltfrIc+j9PLQFm9yjAmtQ46WqxFNtMgSUa9hJ2SVLgZlGHV
         pEEhVAISvBr88Bfn2OMGrxkGA998UkJ2iFvoaEWk+6ROr2h9TxsYIF5w3tvhWdQ1CKaG
         ar2g==
X-Gm-Message-State: AOAM533k25MT8hwIduB0zunROdFZyv5CV6K0UsWuMDnKmjGLITj1tEQV
	DyvSmODNjHh4PQ20rkCXF2Q=
X-Google-Smtp-Source: ABdhPJzlSemOwtP6ip4U7VN41OeUNTJmxU63sIf8TCEv+Pm4EaK282P11um32fcoycf6gROVSadDag==
X-Received: by 2002:aa7:dcd2:: with SMTP id w18mr26390000edu.145.1627371214660;
        Tue, 27 Jul 2021 00:33:34 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from [192.168.0.6] (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.googlemail.com with ESMTPSA id w13sm894006ede.24.2021.07.27.00.33.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:33:34 -0700 (PDT)
Reply-To: koansoftware@gmail.com
Subject: Re: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved check if spdx already exists out of the task
To: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: Marco Cavallini <m.cavallini@koansoftware.com>
References: <20210722130623.30388-1-koansoftware@gmail.com>
 <OS0PR01MB617873FAB04E7A2F07A309AEA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
 <beee77ab-64f4-8c6c-0d1d-e6679a9cf558@gmail.com>
 <OS0PR01MB61781B8046F68D205CD1755DA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
From: "Marco Cavallini" <koansoftware@gmail.com>
Message-ID: <601b9b3f-6ce4-de8d-3dbd-76445e8369f4@gmail.com>
Date: Tue, 27 Jul 2021 09:33:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <OS0PR01MB61781B8046F68D205CD1755DA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=shift_jis; format=flowed
Content-Language: it-IT
Content-Transfer-Encoding: 7bit

Hi Lei,
you are right.
Ignore this one and please see my other patch I set a few minutes ago.

Thank you
--
Marco


On 27/07/21 09:27, leimaohui@fujitsu.com wrote:
> Hi, Marco
> 
> I got what you mean, but I think your patch should be modified as the following, just make do_get_report not check spdx file again, is it ?
> 
> $ git diff classes/fossology-rest.bbclass
> diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
> index 3694440..c29e57f 100644
> --- a/classes/fossology-rest.bbclass
> +++ b/classes/fossology-rest.bbclass
> @@ -157,15 +157,6 @@ python do_get_report () {
>       info['outfile'] = os.path.join(manifest_dir, info['pn'] + "-" + info['pv'] + ".spdx" )
>       sstatefile = os.path.join(spdx_outdir, info['pn'] + "-" + info['pv'] + ".spdx" )
> 
> -    # if spdx has been exist
> -    if os.path.exists(info['outfile']):
> -        bb.note(info['pn'] + "spdx file has been exist, do nothing")
> -        return
> -    if os.path.exists( sstatefile ):
> -        bb.note(info['pn'] + "spdx file has been exist, do nothing")
> -        create_manifest(info,sstatefile)
> -        return
> -
>       spdx_get_src(d)
> 
>       bb.note('SPDX: Archiving the patched source...')
> 
> There is no necessary to add check in line 87, because line 79~85 has checked whether the spdx files exist.
>> @@ -84,6 +84,15 @@ python () {
>>          create_manifest(info,sstatefile)
>>          return
>>
>> +    # if spdx already exists
>> +    if os.path.exists(info['outfile']):
>> +        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>> +        return
>> +    if os.path.exists( sstatefile ):
>> +        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>> +        create_manifest(info,sstatefile)
>> +        return
>> +
> 
> Best regards
> Lei
> 
>> -----Original Message-----
>> From: Marco <koansoftware@gmail.com>
>> Sent: Tuesday, July 27, 2021 2:51 PM
>> To: Lei, Maohui <leimaohui@fujitsu.com>;
>> yocto@lists.yoctoproject.org
>> Cc: Marco Cavallini <m.cavallini@koansoftware.com>
>> Subject: Re: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved
>> check if spdx already exists out of the task
>>
>> Hi Lei,
>> my patches are based on branch MASTER therefore they are based on the latest
>> source code.
>>
>> Would you mind to apply this one so will be possible to call "bitbake -c
>> get_report" ?
>>
>> Thank you
>>
>> --
>> Marco
>>
>>
>>
>> On 27/07/21 03:11, leimaohui@fujitsu.com wrote:
>>> Hi Marco
>>>
>>> I'm sorry, but your patch seems not base on the latest source code.
>>> https://git.yoctoproject.org/cgit/cgit.cgi/meta-spdxscanner/tree/class
>>> es/fossology-rest.bbclass
>>>
>>> Best regards
>>> Lei
>>>
>>>
>>>> -----Original Message-----
>>>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
>>>> Behalf Of Marco Cavallini
>>>> Sent: Thursday, July 22, 2021 9:06 PM
>>>> To: yocto@lists.yoctoproject.org
>>>> Cc: Marco Cavallini <m.cavallini@koansoftware.com>; Marco Cavallini
>>>> <koansoftware@gmail.com>
>>>> Subject: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass:
>>>> Moved check if spdx already exists out of the task
>>>>
>>>> From: Marco Cavallini <m.cavallini@koansoftware.com>
>>>>
>>>>    With the previous code was impossible to run the do_get_report
>>>> task whenever a correspondent .spdx file was already present  in
>>>> tmp/deploy/spdx.
>>>>    Now the check if spdx already exists is at a higher level
>>>> therefore is possible to run : bitbake -c get_report
>>>>
>>>> Signed-off-by: Marco Cavallini <koansoftware@gmail.com>
>>>> ---
>>>>    classes/fossology-rest.bbclass | 18 +++++++++---------
>>>>    1 file changed, 9 insertions(+), 9 deletions(-)
>>>>
>>>> diff --git a/classes/fossology-rest.bbclass
>>>> b/classes/fossology-rest.bbclass index
>>>> 3694440..e55e859 100644
>>>> --- a/classes/fossology-rest.bbclass
>>>> +++ b/classes/fossology-rest.bbclass
>>>> @@ -84,6 +84,15 @@ python () {
>>>>            create_manifest(info,sstatefile)
>>>>            return
>>>>
>>>> +    # if spdx already exists
>>>> +    if os.path.exists(info['outfile']):
>>>> +        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>>>> +        return
>>>> +    if os.path.exists( sstatefile ):
>>>> +        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>>>> +        create_manifest(info,sstatefile)
>>>> +        return
>>>> +
>>>>        d.appendVarFlag('do_spdx', 'depends', ' %s:do_get_report' % pn)
>>>>        bb.build.addtask('do_get_report', 'do_configure', 'do_patch' , d)
>>>>        bb.build.addtask('do_spdx', 'do_configure', 'do_get_report', d)
>>>> @@
>>>> -157,15 +166,6 @@ python do_get_report () {
>>>>        info['outfile'] = os.path.join(manifest_dir, info['pn'] + "-" +
>>>> info['pv'] + ".spdx" )
>>>>        sstatefile = os.path.join(spdx_outdir, info['pn'] + "-" +
>>>> info['pv'] + ".spdx" )
>>>>
>>>> -    # if spdx has been exist
>>>> -    if os.path.exists(info['outfile']):
>>>> -        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>>>> -        return
>>>> -    if os.path.exists( sstatefile ):
>>>> -        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>>>> -        create_manifest(info,sstatefile)
>>>> -        return
>>>> -
>>>>        spdx_get_src(d)
>>>>
>>>>        bb.note('SPDX: Archiving the patched source...')
>>>> --
>>>> 2.17.1
>>>
> 

