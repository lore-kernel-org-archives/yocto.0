Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web12.8794.1587896546113979334
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Apr 2020 03:22:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=axmYj9YM;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: qian.hao.developer@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id j7so7127313pgj.13
        for <yocto@lists.yoctoproject.org>; Sun, 26 Apr 2020 03:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=T9zZNKDHxKwNqKWOGEgBi3LA0RWfT7f+I5jHIcyEBHw=;
        b=axmYj9YMRSnWsxySxwOU2z5oZ02NYRVRNr/A5B9v2Qr4jFcYBNUGK3SP/piiuJ4xsS
         sZScOALc4d9fHYqXF0kA3DWQvu9UieHMFPSnMZ03KJXz8YESbT+R1T4/neQ4QcnpXWGq
         aWNBn4P3ti/i1xoR0cSptPBNcvTGz3NI9YjxJ77H4QQ3S7lKnnzDwCg+OyYBCHZONZFk
         L/syVxcExwAs/y7LLx7T3Bjez46tA/8UkmnGlOsv6VT70uJ2UburcL5rqTovIg9woXIt
         aKfuozRuR6CIIR4XyOdot0Tbp6oXpzBs7JI4OBVX3HQ3MsVfZcCInxa4CvNH/NQrSwB8
         ap/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=T9zZNKDHxKwNqKWOGEgBi3LA0RWfT7f+I5jHIcyEBHw=;
        b=rVygqavB5iDN6U7L1gMjmpvzB0zVDefY9M/oSX+6quosVbn10b8SsAwhJwClKjlWHp
         9qjN4nCirpQiP7s9sn7gfYCSudyjghL7bAk1Iiw0SrrwAyT908TVVOPGbdfmeZFxY7Mo
         jaDxJuurDgY8xe+NFccmgsOpdn6cL1gofMF5O7LNoTxiyye1B7lPWCqBUg8L0v04SW8g
         d0PUT0yfpXXbzoMtD69LLhn3ZrhxvJhS/Lro7/aUYWZVataeYM8EfLPr6uEjLWfafY+n
         Vv61L1TZCSoB9mLvccvcRw3rL25XrL67Qywx8BYsp669u3dpPRCWm/ed2Fp4j5TCu86S
         hhaQ==
X-Gm-Message-State: AGi0PuZiCXsDDWQ4tmbPjPWLsj2DVbGBMmp07HhaJKZ8lMh5uU0mV7qG
	01+Y4LzDu7fGCJRNHzR0gcG/ioXG
X-Google-Smtp-Source: APiQypLkjhz6qoVo19maO6EtmMFK5TtbIyLEVivrdRe6bwIwS0yPv8KQGTfRiuObZdcFs7COlmMN8Q==
X-Received: by 2002:aa7:9904:: with SMTP id z4mr18119343pff.38.1587896545220;
        Sun, 26 Apr 2020 03:22:25 -0700 (PDT)
Return-Path: <qian.hao.developer@gmail.com>
Received: from [192.168.1.196] (p8fbd630c.kngwnt01.ap.so-net.ne.jp. [143.189.99.12])
        by smtp.gmail.com with ESMTPSA id b75sm8507465pjc.23.2020.04.26.03.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Apr 2020 03:22:24 -0700 (PDT)
Subject: Re: [yocto] Can not use wildcard in SRC_URI to apply patches #yocto
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
References: <CACxpVWfYGoGiivXCeMOtoPvBYuJBqC9zu+KS3OdnB5bZoyuYyQ@mail.gmail.com>
 <60d25691239036fd72ca41c8369962b7eee4e7ed.camel@linuxfoundation.org>
 <CACxpVWfrQZ90u9gigoMMXBR_VfrDbD0=q2Lnb7fMYmgYSbRFRg@mail.gmail.com>
 <c4c1e128a628acca820e0e3f37604da75c9c9b00.camel@linuxfoundation.org>
From: "Hao Qian" <qian.hao.developer@gmail.com>
Message-ID: <e69128ae-5dce-19f1-22f3-c5dd2dd5ac8a@gmail.com>
Date: Sun, 26 Apr 2020 19:22:21 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c4c1e128a628acca820e0e3f37604da75c9c9b00.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 2020/04/26 18:44, Richard Purdie wrote:
> The patch linked to from there:
>
> https://patchwork.openembedded.org/patch/8443/
>
> gives some clues about when it might happen to work:
>
> "Wildcards in SRC_URI are not supported by oe-core and work only
> when last (or first?) FILESPATH element points to the containing
> directory"
>
> So it sounds like it can work in some cases but isn't something we
> really support or encourage. I'd also note that information is 9 years
> old.
>

Hi, Richard


OK, I understand that it was a special exception which worked with 
wildcard, and wildcard in SRC_URI is not supported officially.

Thank you for your answer, and it fixed my confusion.

Appreciate it.


Thanks and have a good day.


Qian

