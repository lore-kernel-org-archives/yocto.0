Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25CC3C4332F
	for <webhook@archiver.kernel.org>; Sun,  5 Nov 2023 11:28:12 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web11.28090.1699183689653859808
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Nov 2023 03:28:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FsVhN6ad;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-54488f19b6cso27444a12.1
        for <yocto@lists.yoctoproject.org>; Sun, 05 Nov 2023 03:28:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699183688; x=1699788488; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y1Yxjk9yHugQXNe5K4E5f494R5LUG8lL3eGowEtjdW4=;
        b=FsVhN6ad1RSPzTODgKzcp5aKwecuEF+97rWaB0ajv1RfoQTuswQ+o56vHkg3dwrXhv
         Wc6EN2JNs8IBwWyLHIZ8DF6tvpZ4GIjYuU6gcuEWUlgizB7WVNpoQyUvvilnJoqJGwz2
         TYLUAFznAgnSw5Dm0ZrhURpowEa4HV9jekPHODNpcIoBQo9cB2QtmpcEhD1kC2rZK476
         irSG1UZVBOvrmf0Gf8W/UNluibppnJJK+oXcsJcvpd2MPb9ZJVfETBzEcS8Ft85P/1gp
         dErZGmlkf1nSAWsfG4xg79io+iCBpFXq/pSvvXW2DQBy3tfkooInNb7WEvtV/lsVxOgo
         3GUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699183688; x=1699788488;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y1Yxjk9yHugQXNe5K4E5f494R5LUG8lL3eGowEtjdW4=;
        b=lR4vxssWFtCd2OYldBkcL3Fp9gMQJ+XutrLPVi5G3+7sygQQGauJzraQLiATq3KvTW
         hM6P1IRpdbYteQ9zM5GacDEgCtkR0m+623kiD/xx1o2wcB6I9wtkknkJ0KV39ch0Mc20
         JhjRBshbsbraCGWS1ppDWFLxa/EQmp+QdUu2Yvy6UrpgrM02ZqxgEl5q1ZHQTBmtyhGX
         fPPAPp/1LX/EU8nQFlgDquVgC0oK363dYXJrP550kVlIqTMFDqNt1Wt1d7e1roBT3Gqc
         SxXC66AgF4k4A4C/wj0OgwZ27RiVrK/Ddmxdpt6g1i/1K3ZWTNA5kE6JqENSVubMQsoN
         77TA==
X-Gm-Message-State: AOJu0Yx/QWKKAEOlWnWnLa4j79YwGJ9zN+mPjZDojoQd+OAhSqqhS/r5
	vIjLKG/QRHFxU3VT7tsV/Fw=
X-Google-Smtp-Source: AGHT+IFCAvKOPExvypCEXJO7p1n0o6SEjhfq+y0t8CheCp2hZ77pLyHg1yp86z6q8rYhR2ArUjLlOQ==
X-Received: by 2002:a50:baef:0:b0:540:a181:f40b with SMTP id x102-20020a50baef000000b00540a181f40bmr19180237ede.4.1699183687729;
        Sun, 05 Nov 2023 03:28:07 -0800 (PST)
Received: from [192.168.1.64] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id dy28-20020a05640231fc00b0053deb97e8e6sm3084538edb.28.2023.11.05.03.28.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Nov 2023 03:28:07 -0800 (PST)
Message-ID: <de5721e0-d27e-43d4-b072-2de9e12098c4@gmail.com>
Date: Sun, 5 Nov 2023 12:28:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Private: Re: [yocto] how to add tkinter in Yocto?
Content-Language: en-US
To: shrikantvaishnav@hotmail.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <2efe609e-b54a-40d3-b12f-cfe6ad441179@gmail.com>
 <17154.1699176566812471423@lists.yoctoproject.org>
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <17154.1699176566812471423@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 05 Nov 2023 11:28:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61616

Please make sure to send your response to the list, so the most people 
can help you (and others having the same issue can find this info also).


On 11/5/23 10:29, shrikantvaishnav@hotmail.com wrote:
> Sir,
> 
> After adding *"meta-oe" *inside *"bblayers.conf"* image compilation is 
> successful now.
> But when I try to test for tkinter using the command: *"python3 -m tkinter"*
>   I get following error:
> 
> /*_tkinter.TclError: Can't find a usable init.tcl in the following 
> directories: */
> /*/usr/lib/tcl8.6 /usr/lib/tcl8.6 /lib/tcl8.6 /usr/library /library 
> /tcl8.6.13/library /tcl8.6.13/library */
> /*This probably means that Tcl wasn't installed properly.
> 
> *what am I doing wrong?*

Do you have tcl installed in your image? Add "tcl" either to the 
RDEPENDS:${PN} variable of tk in a .bbappend file, or add the same to 
the IMAGE_INSTALL variable in your image recipe - both ways supposed to 
help installing the missing file.

> *please help.
> 
> Regards
> Shrikant Vaishnav/
> 
> 

