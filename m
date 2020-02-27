Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web11.2854.1582847453650765481
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2020 15:50:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=MQRHG2Es;
 spf=pass (domain: burtonini.com, ip: 209.85.214.171, mailfrom: ross@burtonini.com)
Received: by mail-pl1-f171.google.com with SMTP id g6so468806plt.2
        for <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2020 15:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=8RyF2ClTc/XPaHKl5SlxcGOHyFuVLVfGEqrnS+fRWw0=;
        b=MQRHG2EsFj+cQpPtRXIRCQ2IvvK1T4DUxTGJAtG6QtC8qcewqHeH/eyFo+24aDZGlf
         2u7D7RrxzZk6qmlK/QfKwsO/CHjr811M6Koyrr811iXb3G1r6rfsuNB0rjvf+kP5DYR6
         QvqSDKTfxDyJ2+doYqugZqDikCPnicvMuknyK3G8w8hgIwhROMjQXOiB7ZOT5iAk1QQP
         DO/Vkqd9jRUQcrDFce11b6eC6jA/ip9U7mDEuMXoxsBLnXL1jhtpbO+wIEUag31X5AWn
         Uw+WgJia0uf8hdC03yQ3k0k8ADigcIoIrwrMTQsIeZe5e3y1hkW60iPht5EZYzn7crNQ
         jGwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8RyF2ClTc/XPaHKl5SlxcGOHyFuVLVfGEqrnS+fRWw0=;
        b=FH2s+G7/Ne1KYJ3LFBwjQSNValkbiW/1h0+VdTaAc/iHeboTbuBjoy5H/waT9rru5y
         G3C3LPkR64VWBZmbqeAFNgyTCXSZJfct3snm/J+GqM29C/yufLTw+YnW8tqqHsyyljx5
         jCXv6IFMPDWrUUWCsawf2jNbCzrKrjqZab0apjASbns7+BuXg4TxKxowcpoHU0eLMfch
         WCw7GjD0WCqoNVXndLJW/lriwt++LI+Sys3mDeRNZtyU27i0BxSNtYfrDSH+beG/07wc
         e81Tls5JiBtaBj6Q2zzz72unS8oNUy263u28O0JDmq9ZxPSEvE/ko0sFTbqtqXHsvtx7
         vQ4Q==
X-Gm-Message-State: APjAAAVxqPCiFxYfiwUU/0fKwMctW5AUarxbRsRC0oNlXTKKtFtIGM6Y
	jnebvxyEDILQi5dQnbPIwa3MGnQlSQQyJA==
X-Google-Smtp-Source: APXvYqyYX1lU9pzNAL5tDMzyrvRDUffkr2YomD2CdC5+vLVrd8A7YRtgfew4nJISn7/zfwDl626isw==
X-Received: by 2002:a17:90a:ff15:: with SMTP id ce21mr1535809pjb.124.1582847452516;
        Thu, 27 Feb 2020 15:50:52 -0800 (PST)
Return-Path: <ross@burtonini.com>
Received: from mtabaka-mobl1.ger.corp.intel.com ([192.55.55.41])
        by smtp.gmail.com with ESMTPSA id o17sm2657387pfe.9.2020.02.27.15.50.50
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 15:50:51 -0800 (PST)
Subject: Re: [yocto] ERROR: oe_runmake failed #yocto
To: yocto@lists.yoctoproject.org
References: <Zgww.1582843673303957332.kUxR@lists.yoctoproject.org>
From: "Ross Burton" <ross@burtonini.com>
Message-ID: <4c9a251f-f7d7-eebe-10b6-205c6fc33e0b@burtonini.com>
Date: Thu, 27 Feb 2020 23:50:45 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <Zgww.1582843673303957332.kUxR@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 27/02/2020 22:47, zidouhzakaria@gmail.com wrote:
> I have a recipe based on autotools. in the compilation phase, I always 
> have the following error:
> 
> | ERROR: oe_runmake failed
> | convert-im6.q16: unable to open image `screenshots/main-window.eps': 
> No such file or directory @ error/blob.c/OpenBlob/2701.
> 
> while the file exists.
> 
> I have compiled the resources for this recipe outside of bitbake and I 
> do not receive any errors. any ideas ?

Yocto does out-of-tree builds by default, and as many people do in-tree 
builds when they develop they don't notice that their rules are broken 
for out-of-tree builds.

Try inheriting autotools-brokensep instead of autotools.  If that fixes 
it then the problem is that the Makefile.am rules are broken and need to 
use $(srcdir) where appropriate.

Ross
