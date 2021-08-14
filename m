Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.48009.1628936051936025687
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 03:14:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SGwVOvDQ;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id c129-20020a1c35870000b02902e6b6135279so6999135wma.0
        for <yocto@lists.yoctoproject.org>; Sat, 14 Aug 2021 03:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=SUfvvKLf9RzuLfKYK77T0KbeHvoi0JQ3Hq6YDAa9EFQ=;
        b=SGwVOvDQQG786MeVnk3ivCNc9vk0c5p9Nj3ayVLcbdQjY3d/J9OWPG4hYtvDReqcZT
         4jI6U6Eg3isM/c0v2cWBeO8h6TKGtiW29NhLH8U9W7F7WDm2BAttc489ZfG8Hek9CUzh
         I/VSw9pMKnkdU2y89wEdnf4T8LchphzbTFVZW3eGBB7TP7Bul0umTq6eWHM+/y4rQmQp
         y0FJFIHiNPIAPLRrbzOCiXvNLdHJ9phTV8EUIR5gomtjVjc7zMoPzPAKoUaZilLpDJ3M
         AV1jRD5XK9frhGOJFjnNidxRW8rkTqh8m8oAVv34Px0A1ENWO2VSEdqzag8gmQl606pl
         i2AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=SUfvvKLf9RzuLfKYK77T0KbeHvoi0JQ3Hq6YDAa9EFQ=;
        b=VvDG5EreEHoP4Mc2ulXXsl2Z45G6x0am+t2Ei4w1NPg83BtnszTFpPbz8Uz4MTgzX6
         JtXehM5J+PTn8uHqdkZTny+P9t1/2mZs4iBP7/g38W9AWq03+58BszRDwjHAYlky9D2Q
         AKyOAVKEXZ/YOpz60/+jSRxysnTyCkwvooYlEIDlEgz4LcRg/B8gLyrM/uZ4DoKemiS0
         sECzWRXyDRt1k/UMEL6lDNUTf0+s3mbq7tB/6HvG2vJcqzvhS7HDrIYkafALUSC4OVdg
         2c7SGPyD1HFqZFrBXtgmsxquZpNIpIwZaX0dPeCWw6/78lmldGsCHVsMtUyVAn6dTECu
         e/Jw==
X-Gm-Message-State: AOAM533SlGSaiAASSpCAqleJteAkP0zpbg5Bp/0xye5sJc41ox193kyd
	KRG5K0Bi4115oLoJVTuYEv03XsDcj3k=
X-Google-Smtp-Source: ABdhPJx7/aMS8d29mds21UDeUemrGhDYZxAozI+H8BfX1QC+ct48J1PmlUswgiQUy/lAZ+mp/B1vcw==
X-Received: by 2002:a7b:c384:: with SMTP id s4mr6466886wmj.109.1628936050501;
        Sat, 14 Aug 2021 03:14:10 -0700 (PDT)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-128-196.home.otenet.gr. [2.86.128.196])
        by smtp.gmail.com with ESMTPSA id t14sm4260721wro.24.2021.08.14.03.14.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 03:14:09 -0700 (PDT)
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
To: Manuel Wagesreither <ManWag@FastMail.FM>, yocto@lists.yoctoproject.org
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <991b2d93-b92c-2c73-58c4-c8cec2ea17e1@gmail.com>
Date: Sat, 14 Aug 2021 13:14:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 14/08/2021 00:28, Manuel Wagesreither wrote:
> Hello all,
> 
> I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
> 
> Since then, the build is failing with the following message:
> ```
> ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
> ```
> 

There was an OVERRIDE syntax change and this is what are seeing.
Some layers, like meta-openembedded incorporated this change into their 
master branch. So either you need to update all your layers as well, or 
you need to use meta-openembedded with a branch/commit before the change.

Regards,

Robert
