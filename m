Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C09C0218A
	for <webhook@archiver.kernel.org>; Sat,  1 Feb 2025 14:39:56 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.43958.1738420790461558442
 for <yocto@lists.yoctoproject.org>;
 Sat, 01 Feb 2025 06:39:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TZcOO2uN;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38634c35129so2297274f8f.3
        for <yocto@lists.yoctoproject.org>; Sat, 01 Feb 2025 06:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738420789; x=1739025589; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=T20zt7cRZzqW6BRX5DEEOvgpPS63GUfMel7WHY7eY58=;
        b=TZcOO2uNwgErlQaC/5lWnJhxdkwPuCSvAcRRp6Vgb9nJC0qt1g9nMch1IHMU5rN1S+
         KtiCiRwT8nAdaRh71ZVkFcwdaKfN40QkGci1pzpLig9Do/1dg7rZq+Ssl4hit6VHXLUT
         L6AhlLZEiiQKdRS0jbfKWP6ETHXg7sdV1rArpWa9yApcDwr9Q46cOI6g8CC/zSeLwEVa
         f0ZGiqA+al+WLcspx3nqpvma6HQRvuRwEtt/rBANym0mIi+laZETodEp9sKjZORmHAZy
         EsP5OIyTDDwmVMi8jLRwVTHcxTT2/HC6fC1jNSJiC8ESaAxZ53pGsUB+L2IfbvuFJsZm
         iFZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738420789; x=1739025589;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T20zt7cRZzqW6BRX5DEEOvgpPS63GUfMel7WHY7eY58=;
        b=qBNZaHjchoPrAm2hEjPZdziuwdxXUOuDz3JCPZaEOELEJz6nLgK0HvlyodvbIu9a/4
         708RHAZXKceXqumcq8O8u71LL9KZ75QxkOAwFQa61LkYNiEskfxqzdR2wjdRGiL65sfH
         m476Iy3/8b1J/aMCFxkZX/toSs0MGhHH92oDEWGVP1eMRpa4vNeKxgKN67C9xlUnzug6
         lYfrHr5r90KEwdEEhOd2hBgD194E1X2f6NAC4/yB6JMm1Iwc6OjJUHyHPDjqYvV/x+fQ
         QUrI/NDzJcbVZp5IDi1dFVTI6AcFUxMoFr2bpwjlaQjTK3EOVhPjdGEnges34mAnDeSs
         ZwVw==
X-Gm-Message-State: AOJu0YxwD/X65tFe//1VGnq63bo2OO/6VTi4Wv8Nz4eXRCPSnvx0MDHd
	2BzS8y/8Jife7PZm9sPJv3rm6jvvv0wPyOWNtSHWGffqG2hXSBXiTjBQ8kpW
X-Gm-Gg: ASbGncueOxLxn9iPrdO4y5hzbbvRuIn5CHh/gGs2CFpjx3j5+rgT8Fj4tdocyvmZTI+
	GJ1AVAksF3w9WSQZpk+zlQXFCjVFxWUVjFve+KOfq85pnYi7Pb3p56iHy9pc9h4LgofVTV1/czX
	/2HwdWs1BOPBmfuGmEA60QABhWFl+g9h+3aXpicoSXKAKnme+b7IATR8qkyQRCVfpNy374/XHw0
	fGJTiHHNf3DwJJ3TZgd07icZDRLJS//6cwzL74eVNoNF+J699To3SRNPuld5785KPqSMWd3XO4m
	qmiJW3OWOC0Ubs4F8PCOYc0=
X-Google-Smtp-Source: AGHT+IEw3LP+9Dp6ALUqVSY+Z/CpxqQD/NS3JxjG7VYoo7RNx3LpkQXdef4p8SJ3bDWh+teU5OTn2A==
X-Received: by 2002:a5d:588e:0:b0:385:f16d:48b4 with SMTP id ffacd0b85a97d-38c5209715fmr14029105f8f.40.1738420788640;
        Sat, 01 Feb 2025 06:39:48 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102ee0sm7568331f8f.37.2025.02.01.06.39.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 06:39:48 -0800 (PST)
Message-ID: <136b355b-ce93-4269-abee-014d6e22191d@gmail.com>
Date: Sat, 1 Feb 2025 15:39:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Adding timestamps to yocto log entries
To: yocto@lists.yoctoproject.org, markus.haberlander.sw@gmail.com
References: <CAHbqxhqd57JckCrhD7ofzM13wvDUYcf28nGGM0Vbmj-izPRoxw@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAHbqxhqd57JckCrhD7ofzM13wvDUYcf28nGGM0Vbmj-izPRoxw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Feb 2025 14:39:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64692

That logging config is based on Python's logging module, and it also 
requires some
knowledge about the internals of BitBake (which logger is used where). 
With this config
you can change some of the console logs, and create new files with 
custom format/content,
but the log.do_* files' format and content is coded in a 
non-configurable way (not sure if it's accidental,
or intentional to ensure a predictable log-standards in those files). I 
know that at least it can be
configured in a way to have timestamps for the tasks in a separate file 
(do_compile started,
do_compile ended, etc) - but if that would be good enough for you, there 
is an easier way to get this info.

You could achieve very similar results using the buildstats class[1], if 
you add
'USER_CLASSES += "buildstats"' to local.conf, and build your image. It 
will create a
build/tmp/buildstats folder for each recipe you build, containing stats 
about the build process.
These are text files, you can just read/grep the elapsed time (and other 
details).
Or: you can visualize this data with a script (see link for the 
details). That would
allow seeing easily which tasks of which recipes are the most 
time-demanding ones.

[1]: https://docs.yoctoproject.org/ref-manual/classes.html#buildstats

On 31.01.25 15:31, Markus H via lists.yoctoproject.org wrote:
> Hi,
>
> I'm currently debugging a few yocto recipes, especially regarding long
> build times. In order to get further insights, I simply would like to
> have timestamps in all my log entries, so I can easily spot which
> command took how long.
>
> Is there an easy way to achieve this globally?
>
> I found this here:
> https://docs.yoctoproject.org/bitbake/2.10/bitbake-user-manual/bitbake-user-manual-execution.html#logging
>
> But I'm struggling to understand how this can be used:
> * Is this for additional log files only, or can it be used to simply
> change all logs? Does the latter make sense in your opinion? What
> would a config file for this case look like?
> * How does the HashEquiv example log file get linked to the related
> messages? I see "BitBake.SigGen.HashEquiv" and
> "BitBake.RunQueue.HashEquiv" - where do these identifiers come from,
> and how can I set this up to match e.g. all tasks for specific
> recipes?
> * Is there maybe a better way to debug such issues? I found almost no
> code using BB_LOGCONFIG online, so I'm wondering if I'm using the
> right approach here.
>
> PS: I'm new to this mailing list, and I hope this is the right place
> to ask such questions? If not, please kindly redirect me to a more
> suitable place :-)
>
> Best regards & many thanks,
> Markus
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64690): https://lists.yoctoproject.org/g/yocto/message/64690
> Mute This Topic: https://lists.yoctoproject.org/mt/110916286/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

