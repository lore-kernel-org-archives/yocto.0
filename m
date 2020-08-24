Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
 by mx.groups.io with SMTP id smtpd.web10.195961.1598277598862840587
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 06:59:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jy8I+czZ;
 spf=pass (domain: gmail.com, ip: 209.85.166.44, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f44.google.com with SMTP id h4so8714535ioe.5
        for <yocto@lists.yoctoproject.org>; Mon, 24 Aug 2020 06:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=HcTr7A67ZFmXHjtUqbsgREekclLn3/Wz3ocoK5KVzHE=;
        b=Jy8I+czZjauGgj2Qr6BTQ79H+xnGTr4xutwqpcWc+PTqZiyfvqGM2jh7O7cmZSYGQb
         +o/Dt7t3Ob03shssDkfUFYU0PTJd3o8TZ0Pg91qBlSRdqMv+EjsiG0KG9UwJHyKOADtF
         wcjqPrBhDMjLUKf8cnn6GiStckV53ktoGVyzW0n0rGVuudpZrlQxg8T1nAY5iAWOgQtv
         Bj8P0j+3GdiNaxcHO7xlBh/JnrSgwGP4h0YM+Qtf+Sfdr+Mlwe0aPGKKG+RVGhpzl/YP
         FRsTcUQr7lHvPOiYYpElktKZpo17yFyWZo8znBc+W0CFBEL4KAu18auRUG19C4oGzylk
         KPfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=HcTr7A67ZFmXHjtUqbsgREekclLn3/Wz3ocoK5KVzHE=;
        b=sKejq8Bz6Ev36ICt3/ygR5iOMOsi6bOZ4+TevNn8u6/PWX9/iO5F0Gq6PEn2ni0rLo
         h1STyjNh9Aa7fuwTowd1porVNwBI22hjXL5Mp7++yd6x1G1h+JVDesLpEMZ3XrryouYG
         0T+rZ67Eh2n5k6txGs502El5FSiZvf24SLIZyaHr8MPOdEZIhxCl02ExcQzSmRpl0q4k
         g9bVpKXF5UTdk+nKYDtg51ufpvnPc/3gX4ZHGvCliIrTMM22mIpKzacdw7fHkrS+aU3M
         +lYsYsDXF5AdbZUXoPVoVYGAeWEXlAiW+R+RXPBBwWTiR3P+HkI9S7aLkl44XOmBfgFt
         MlDA==
X-Gm-Message-State: AOAM530jW5sUGcPO2NchPJ1nY2B3XoEAWz5mg/MfhDBJN4y+Qx6AOC+A
	G6EGBPa7WiGjsZGaci0/nvg1iiLH0Cg=
X-Google-Smtp-Source: ABdhPJxpBDz0VU2vBZVNMEN+OPVeubKam2DIzBC9CUis6ZhUQD5S9muTvl1psEJEsWSlGaIQxxTe7Q==
X-Received: by 2002:a6b:c9d5:: with SMTP id z204mr4961063iof.55.1598277597798;
        Mon, 24 Aug 2020 06:59:57 -0700 (PDT)
Return-Path: <jpewhacker@gmail.com>
Received: from ?IPv6:2605:a601:ac3d:c100:6dae:a176:f106:40a2? ([2605:a601:ac3d:c100:6dae:a176:f106:40a2])
        by smtp.gmail.com with ESMTPSA id h18sm6839412iow.16.2020.08.24.06.59.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 06:59:57 -0700 (PDT)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] Additional log handler
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Konrad Weihmann <kweihmann@outlook.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
 <e83e206763f44e2b5fd4622e8a336355df3bf655.camel@linuxfoundation.org>
 <5e250483-1277-7e3e-8422-a245e3978e15@gmail.com>
 <f5fefdf3d0e61080c8f36a76aec419274f0f3d2d.camel@linuxfoundation.org>
Message-ID: <f312f1cd-c57a-fdc5-10a3-cc451947978b@gmail.com>
Date: Mon, 24 Aug 2020 08:59:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f5fefdf3d0e61080c8f36a76aec419274f0f3d2d.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 8/24/20 8:26 AM, Richard Purdie wrote:
> On Mon, 2020-08-24 at 08:10 -0500, Joshua Watt wrote:
>> The newer log handling uses Python's structure logging configuration
>> [1], so you should be able to use whatever capabilities it has
>> (including logging different domains/levels to a separate file). In
>> fact, this is the only way logging is handled by core bitbake now;
>> all of the other logging mechanisms used by the UI are additional
>> configuration specified on top of the user's BB_LOGCONFIG file. If
>> you are interested, you can see this in bitbake/lib/bb/ui/knotty.py.
>> In that file is an additional tool that might be helpful. Around line
>> 553, there are two commented lines of code:
>>
>>      #import logging_tree
>>      #logging_tree.printout()
>>
>> uncommenting them and installing the logging_tree python package will
>> make bitbake dump the entire structured logging configuration to
>> stdout on startup so you can look at it.
> On a slightly different but related note, could we remove the
> debug_domains code now? I assume that can all be handled by
> BB_LOGCONFIG?

Ah, right; you jogged my memory :) Structured logging still co-exists 
with the debug_domains, so it's not the *only* way the core speicfies 
logging messages. The main reason for this is that we still need to pass 
the set of active logging domains to the bitbake workers that they only 
send back requested logging levels over IPC instead of all log levels 
(per some code I believe you wrote Richard). It should the theoretically 
possible to send over the entire structured log config (which isn't very 
large) to the worker and add in worker side handlers to send back logs 
over IPC instead of the simplified list of logging domains (as a bonus, 
this should allow you to log anything on the worker, not just things in 
the "BitBake" domain). IIRC I tried to get this working in the original 
change, but it ended up being more complicated and not strictly 
necessary for the feature at hand (extra logging hashequiv on the AB) so 
I left in the debug_domain method of filtering in the workers. Since I 
had to leave that in, I also left in the UI code to directly deal with 
the debug domains. The log handling itself still all goes through Python 
logging, and it correctly merges the structured logging and user domains 
so that the actual logging domain level filter level passed to the 
workers is the lower of the user specified logging domain and whatever 
is specified for that domain in the structured config. The UI code could 
fairly easily be converted to instead map the command line arguments to 
structured logging configuration, which would remove any knowledge of 
them on the UI side.


TL;DR No, we can't remove it yet, but we could with some work.


>
> Cheers,
>
> Richard
>
