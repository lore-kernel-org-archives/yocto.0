Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
 by mx.groups.io with SMTP id smtpd.web12.15435.1589989167515011651
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 May 2020 08:39:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KF36Wptz;
 spf=pass (domain: gmail.com, ip: 209.85.210.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f169.google.com with SMTP id n18so1745468pfa.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 May 2020 08:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=77YzRAPyxGiTlVWY+EHQ3rMRR1DZRJyN5QEi4tAIeQc=;
        b=KF36WptzzStYKwFGScJXi8ZpJou9xleNUAgToZt1SQWA74KWPWWFyVmOcWE4p21POi
         ywyotqhF30ddbqnJKidcTQjgoB7yyKMDBzKEMZ8Lqc6FvfI7RLCqx45VCdinenoxh1lW
         QdWrSNZBdgVr8Bini8Tgx/iPe+GqLRL5y27v/i533mB0N0+70GchlIC/iouCVH0XnJbH
         X/NoPWKGy2C/QEQASVuQPyi6ZSwV2aZDcquIODRW0YUGmx46QqsVbvWTCfbA5qYv2IJ4
         8bO6wFWS/xLuHgndbIDd1y1MscprBiYdOBPWAgJgSWOaDa89o2ptkxFgahqE/dF7Xqmm
         Bhew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=77YzRAPyxGiTlVWY+EHQ3rMRR1DZRJyN5QEi4tAIeQc=;
        b=bocnYb52MseAmYx6dMxLcxwn9UbtHNvK12YqQTTDrHS68Bg73yCbScIzFrr2PJwhDq
         0q0qnK6HvbfcyDHrTWijQySvOhtnULwVqHKpWqONynEHA/QvbfCP9O6SUFWYSBCh9TJd
         9t2sEhlaaTwYRsXi5ClftIMql1zfEf+AkHuIL77+pOw5uwQItw7xSUTb0WByiEV322LC
         ubOzzDG/zRzc2ZPvNWTrgVupKrCYg7Mw4gWNRMNxaozrBl9REVrsJYyg+hsPphZ+hZqR
         Xiac5CGzU/zdfGqcxlVK7qsvFffHJNmRgGhkCBoICbGeEOuKtciM1jSamsQ7qbCATH7U
         yfvg==
X-Gm-Message-State: AOAM531scQDf2Hn0qXgPiKpsTO4ACTKiGRUIxbItWKT0GLworbkFyoZp
	gyXbTSgpVIr8rlw6K0zPSF3LXHF2gBg=
X-Google-Smtp-Source: ABdhPJwj525FvMmKo/dZT441+6qVaTx7kbzcNRNPEE3bmAoGxKY7VTKA68lXAX6pli0F2JWJ4C9pLQ==
X-Received: by 2002:a63:f810:: with SMTP id n16mr4716158pgh.281.1589989166482;
        Wed, 20 May 2020 08:39:26 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:2911:7230:fac5:7fd8? ([2601:646:9200:4e0:2911:7230:fac5:7fd8])
        by smtp.gmail.com with ESMTPSA id q4sm2720682pfu.42.2020.05.20.08.39.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 May 2020 08:39:25 -0700 (PDT)
Subject: Re: [yocto] strange formatting of command output on core-image-base
To: yocto@lists.yoctoproject.org
References: <Mhgx.1589970231695626350.vE1J@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <dff0a65c-e27b-4077-933f-cbbed892e2f1@gmail.com>
Date: Wed, 20 May 2020 08:39:24 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <Mhgx.1589970231695626350.vE1J@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 5/20/20 3:23 AM, stefan.wenninger@evopro-ag.de wrote:
> Hi,
> I recently switched form an image based on fsl-image-qt5 to one based on 
> core-image-base.
> The new image works fine in every regard except that the output of some 
> commands looks weird.
> 
> I have attached the output of commands "nmcli" and "systemctl status 
> dbus". Once executed on the fsl-image-qt5 based system and once on the 
> core-image-base based system (_weird.txt).
> There are two main points I gather from that weird output:
> 1. There are some codes like "[[32m"+"[[0m" or "[[0;1;32m"+"[[0m", which 
> I assume are colour codes, that are printed and not applied.
> 2. The output appears to be opened in a vi-like editor?! It clears and 
> fills the entire terminal page and seems to display an input mode at the 
> bottom.
> 
> Both of these aspects are non-existent on the fsl-image-qt5 based 
> system. There, colours are displayed normally and the output is just 
> printed right beneath my command call.
> 
> I have discovered that I can get these two commands to work properly on 
> the core-image-base based system, if I pipe their output into cat: 
> "nmcli | cat".
> 
> My assumption for the colour codes is that, the core-image-base system 
> uses a different text encoding, or a different style of colour codes and 
> therefore does not recognize the ones presented by nmcli.
> I have tried to install the ttf-dejavu-* fonts that are present on the 
> fsl-image-qt system. I also verfied that both systems seem to be using 
> POSIX as their LANG setting ("locale" produces the same output on both).
> I have no idea why the output is presented in what seems to be a vi 
> editor though. Both systems have their EDITOR variable set to "vi".
> 
> Am I missing some kind of package or setting in my image?
> 
> I am at my wits' end and would greatly appreciate anyone trying to shed 
> some light on what is going on here.
> Stefan Wenninger
> 

Its perhaps some of  busybox applets like cat etc. Try 
core-image-full-cmdline and see if its any better.
