Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A790C433F5
	for <webhook@archiver.kernel.org>; Fri, 12 Nov 2021 10:35:09 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.14148.1636713308385719409
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Nov 2021 02:35:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RFNm+CaV;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.47,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f47.google.com with SMTP id
 77-20020a1c0450000000b0033123de3425so9488766wme.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 12 Nov 2021 02:35:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2WPLv+UiGNyEPr3rf9IX5EqRHg6+5xi7j7eN7o2loUY=;
        b=RFNm+CaVJoVee/iSwQY6vgQr1+lrxDDDJLCdDTlXU7V5Adf+sWvcd5S8r9C2xuV5+H
         qRyVdPoTTW7ZjwJDTFHFBQ0QiLWuSdSmw8k+/48RZYKy8EDB6Dd+lI42+QQHFkKDVbY5
         TlbUXNkvsIN+hKl6Qtk3SsYJi6ZWncK750z/I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2WPLv+UiGNyEPr3rf9IX5EqRHg6+5xi7j7eN7o2loUY=;
        b=6YPZZPjkGVmpNWjriaCPCWYgy6MWx0DDi2Iai7IJXlTLMr4h6EOJYbcdF2laXtGaxD
         50CWsnJwg9zQNBWlUdVc559tzt6s2n2c3zm0fZZyH5pb52Opeswt6qOsNi63rajX08yw
         MJ9aQuOO3rDYMN2ReQV+gjCL4dz+Eu8tx555Mwu8CYcTvMNv9hA5xbJXRBoYu1fykToy
         dkHUlDWmwGNFaPEHdUfMcIfr7tLOugtglxdwA783xGZVNLoB8B1W2AAvGrxdX5KMBr5I
         FTQU5C73uZPTL1w0YxnHEiVN0QW9lyNmugI5I8sNuNb4v9HSwt0BFDjV7KPKLfRNykUy
         h8EQ==
X-Gm-Message-State: AOAM530Io3v1OXFemFo7RYgZJxfll33z5+VU1I2fhOLUNJL09IApyNa9
	DWinTUAoBJCOSP9/B1dOBAJJ3g==
X-Google-Smtp-Source: 
 ABdhPJw8qJwafG7GJQ1pDYiiUFqwrpAhYPwXIXmn3j6BVBxoRZEu/jHPTp3hBUKN/jKynJN2xCjS0w==
X-Received: by 2002:a1c:4d8:: with SMTP id 207mr33048480wme.2.1636713306548;
        Fri, 12 Nov 2021 02:35:06 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c0bd:72b4:105a:2914?
 ([2001:8b0:aba:5f3c:c0bd:72b4:105a:2914])
        by smtp.gmail.com with ESMTPSA id h1sm5297041wmb.7.2021.11.12.02.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 02:35:06 -0800 (PST)
Message-ID: 
 <3b634ba0411818686f962b7d53591bace5204140.camel@linuxfoundation.org>
Subject: Re: [yocto] Yocto suddenly creating directories with 700 instead
 755.
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Stephen John Smoogen <smooge@gmail.com>, Manuel Wagesreither
	 <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Fri, 12 Nov 2021 10:35:05 +0000
In-Reply-To: 
 <CANnLRdjO+iCFGhHT6X41kTa5FAJP=fOToR+5DbiTaQVm4K8VpA@mail.gmail.com>
References: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
	 <CANnLRdjO+iCFGhHT6X41kTa5FAJP=fOToR+5DbiTaQVm4K8VpA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Nov 2021 10:35:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55320

On Thu, 2021-11-11 at 18:28 -0500, Stephen John Smoogen wrote:
> On Thu, 11 Nov 2021 at 11:10, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
> > 
> > Hello all,
> > 
> > sorry, wall of text incoming.
> > 
> > tl;dr:
> > If recipes install directories with `install -d path/to/dir`, how is the default mode determined? What can cause it suddenly (that is, without updating metalayers or similar) to change from 755 to 700?
> > 
> 
> when I did this to myself recently, I had changed the shells default
> umask value to 077 which caused exactly what you are listing. I would
> check to see if the users or system wide umask was changed recently by
> an update.

I'd note there were a number of fixes for umask issues in master/honister:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=f4fb74465787b50030d7fed5e0b293774ccb371b
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c4ecf7c1122380cdbc74fe692aa91756dc5bdf6b
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=522607e704876c67ed093bac47dde9238709ccae
http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=58c97902933cced2981dfc7480fc0a458b4fb900

Cheers,

Richard



