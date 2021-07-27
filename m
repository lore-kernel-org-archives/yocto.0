Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.7927.1627368690461819665
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jul 2021 23:51:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvIS30VB;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: koansoftware@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id go31so6667637ejc.6
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jul 2021 23:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Yujdl3uhdzEsUc/APanb4qUeok4PqFbsDkLxdAIvahI=;
        b=MvIS30VBIMlV1Us/jwvtsWzWoDKEDEt15JbHSZYBza3RnphNa4M+wBBTN2kJLct+JO
         AK5/tNrXXcJqoRQ9eJ2H74P4g+Y5vNTxijm2mlwN0rfpkFkHjKmYd+dAijitLZ27XxuQ
         dlKp+GAbtXbNan40xJqstIPXzxu9V3AyuD03XKU+zXLcwC1GtcHZlZfpl7RKW5RWM/5v
         LamYhO2kGb6jTERJ/Q9XrS4Rsrj4cjyd1h3tq3ahHMZzZzGGK6OBKejmYsXSEGunI4IG
         6mPKAhA4tv1TtLouZzIPDVvJRkilWReUrosvTdMrLetC3Yg2bCH1/W9sj4g/sN1u34op
         7MDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Yujdl3uhdzEsUc/APanb4qUeok4PqFbsDkLxdAIvahI=;
        b=feu3JbRaKqbUUM+nxl4DznVz6HfxXjASBDt0dR356geBqt7ZlrvMsiISUcfniMUC7L
         gcIYkuPo4rmWezFuQpa+Ryfr6jx6dqgo4oG63ybQ5Aq6qspZyaIw0ChpzYaK/Ol54tfS
         d85FEC3mNjwIwKbo2SMTwjoZy7NYSPW7feUOHACopOVa6HayqPrsJ7nWg8QtHYQqH24D
         BsYcQ6wxpUtlfWf1DXBeCmxP5UZFeba3hby3/eCJxbQ+olkAjSEKjv+d7ZcsDmoGRgKd
         IY77CWO7vMU4EuT6E66Zd+DqWxLal8iaLgptfwmwiZhTABt6XxdRmop2vms35MYQvfG+
         6v0g==
X-Gm-Message-State: AOAM533ql0KgIhZ5DPNQu/mOmICeLNbVn9tbIh2UgeiLMT5Z4CO0axtX
	RBl5eUFaBQom/tsghqO5A+g=
X-Google-Smtp-Source: ABdhPJzro29ar7r9SljhS2zZm2EnFZ86kg7kftYW33fst7W+nNstYoQaYdON5tC3TMIzxWWdvC5vrg==
X-Received: by 2002:a17:906:a08d:: with SMTP id q13mr20216552ejy.465.1627368688950;
        Mon, 26 Jul 2021 23:51:28 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from [192.168.0.6] (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.googlemail.com with ESMTPSA id f5sm560963ejj.45.2021.07.26.23.51.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 23:51:28 -0700 (PDT)
Reply-To: koansoftware@gmail.com
Subject: Re: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved check if spdx already exists out of the task
To: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: Marco Cavallini <m.cavallini@koansoftware.com>
References: <20210722130623.30388-1-koansoftware@gmail.com>
 <OS0PR01MB617873FAB04E7A2F07A309AEA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
From: "Marco Cavallini" <koansoftware@gmail.com>
Message-ID: <beee77ab-64f4-8c6c-0d1d-e6679a9cf558@gmail.com>
Date: Tue, 27 Jul 2021 08:51:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <OS0PR01MB617873FAB04E7A2F07A309AEA0E99@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=shift_jis; format=flowed
Content-Language: it-IT
Content-Transfer-Encoding: 7bit

Hi Lei,
my patches are based on branch MASTER therefore they are based on the 
latest source code.

Would you mind to apply this one so will be possible to call "bitbake -c 
get_report" ?

Thank you

--
Marco



On 27/07/21 03:11, leimaohui@fujitsu.com wrote:
> Hi Marco
> 
> I'm sorry, but your patch seems not base on the latest source code.
> https://git.yoctoproject.org/cgit/cgit.cgi/meta-spdxscanner/tree/classes/fossology-rest.bbclass
> 
> Best regards
> Lei
> 
> 
>> -----Original Message-----
>> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf
>> Of Marco Cavallini
>> Sent: Thursday, July 22, 2021 9:06 PM
>> To: yocto@lists.yoctoproject.org
>> Cc: Marco Cavallini <m.cavallini@koansoftware.com>; Marco Cavallini
>> <koansoftware@gmail.com>
>> Subject: [yocto] [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved
>> check if spdx already exists out of the task
>>
>> From: Marco Cavallini <m.cavallini@koansoftware.com>
>>
>>   With the previous code was impossible to run the do_get_report  task
>> whenever a correspondent .spdx file was already present  in
>> tmp/deploy/spdx.
>>   Now the check if spdx already exists is at a higher level  therefore is possible
>> to run : bitbake -c get_report
>>
>> Signed-off-by: Marco Cavallini <koansoftware@gmail.com>
>> ---
>>   classes/fossology-rest.bbclass | 18 +++++++++---------
>>   1 file changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass index
>> 3694440..e55e859 100644
>> --- a/classes/fossology-rest.bbclass
>> +++ b/classes/fossology-rest.bbclass
>> @@ -84,6 +84,15 @@ python () {
>>           create_manifest(info,sstatefile)
>>           return
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
>>       d.appendVarFlag('do_spdx', 'depends', ' %s:do_get_report' % pn)
>>       bb.build.addtask('do_get_report', 'do_configure', 'do_patch' , d)
>>       bb.build.addtask('do_spdx', 'do_configure', 'do_get_report', d) @@
>> -157,15 +166,6 @@ python do_get_report () {
>>       info['outfile'] = os.path.join(manifest_dir, info['pn'] + "-" + info['pv'] +
>> ".spdx" )
>>       sstatefile = os.path.join(spdx_outdir, info['pn'] + "-" + info['pv'] + ".spdx" )
>>
>> -    # if spdx has been exist
>> -    if os.path.exists(info['outfile']):
>> -        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>> -        return
>> -    if os.path.exists( sstatefile ):
>> -        bb.note(info['pn'] + "spdx file has been exist, do nothing")
>> -        create_manifest(info,sstatefile)
>> -        return
>> -
>>       spdx_get_src(d)
>>
>>       bb.note('SPDX: Archiving the patched source...')
>> --
>> 2.17.1
> 

