Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web09.1566.1626193979465009617
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jul 2021 09:32:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FAobpwmN;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: koansoftware@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id dj21so14140866edb.0
        for <yocto@lists.yoctoproject.org>; Tue, 13 Jul 2021 09:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=reply-to:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zyAN03V+QiAFVLUSrFNBBbPCxklvywd5DUJIjVvoAvo=;
        b=FAobpwmNc2ilk5KrE9jB+FX1FYE8ewzNgd3rqHBp7gTKX7qvzVfNWeLFAo99tTSoDn
         gOZGyTnrnVRNZhFEiUB8RdRuEzmTvzSN9bfHvgvYeQoSx1WF5z3PELHyk8N7Z2abw6Cn
         iuSY8RNYGoYBYE9sUqPN3Z74ZbtJxln6efwoBcQikzCWfl06m9EXaKfFXS3WAFMYg9xB
         cjTzUfFsz4HWsTdKjZgpoD0Ox+/3lw56uLi5v0pXtwJen+GwBhF2fo0UqoSA7gOgJUH6
         U7dy+nS4zS/SJm1IKEl1EyIWgpGt8FSvQ3MyjsTrx32RzVGieSoIJN1jdtE6ld1RzagP
         7i5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zyAN03V+QiAFVLUSrFNBBbPCxklvywd5DUJIjVvoAvo=;
        b=Knl9aW9Db1jIjCjJaq1M/VBXfrSsEXLrkgwQ9Sf8cc0IHBwQP4TzrV5EQywKLGM6eD
         XWr5WaysfthW8lDnEFF9k1lnBKQbJblJYk3nYW234cSimZphZMJ6a4/1NtwSq1PkI+55
         h+pfnMy8YGQJSviWBErGZ8RtvDrav8FvjiSM4YVThH4RU8eFMImxCnGbCJ4gMqit6sIR
         oISHcDk8GJKPFEBNdyp6t5HyJVgcH04jvif7GoOfqCfbUbPKADh6JkDObEMgBHOoaTx3
         5YLWAFnAEPm4g6uzaaNOWlM/Ff/jNLQY/wqEcmnhcEWQkTH84On0Mw3bD6PdGw2lmoNn
         AI1w==
X-Gm-Message-State: AOAM530N9NI7r/9BjS34/xbUTEGiV8bkTVWCI9EcOfK0tmdzRrpUj5EN
	tqo+bLpl8NqMy/ZGDKUqHyI=
X-Google-Smtp-Source: ABdhPJyQMHHLm0glYogChaz664gsHX6HgUResUXftNAb3lDu0CCRCnSMOSQ7tX+OHai7lcjaboJORQ==
X-Received: by 2002:a05:6402:2789:: with SMTP id b9mr6782022ede.201.1626193977827;
        Tue, 13 Jul 2021 09:32:57 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from [192.168.0.6] (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.googlemail.com with ESMTPSA id b12sm9970242edu.30.2021.07.13.09.32.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jul 2021 09:32:57 -0700 (PDT)
Reply-To: koansoftware@gmail.com
Subject: Re: [yocto] [meta-spdxscanner] Question about meta-spdxscanner
To: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <bcef287b-9214-aa03-3274-2a84f6d7ede4@gmail.com>
 <OS0PR01MB61787445FE37FB683A45754BA0149@OS0PR01MB6178.jpnprd01.prod.outlook.com>
From: "Marco Cavallini" <koansoftware@gmail.com>
Message-ID: <d845896b-3703-0933-0fc8-a867b638abbe@gmail.com>
Date: Tue, 13 Jul 2021 18:32:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <OS0PR01MB61787445FE37FB683A45754BA0149@OS0PR01MB6178.jpnprd01.prod.outlook.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 13/07/21 10:57, leimaohui@fujitsu.com wrote:
> Hi Marco
> 
.snip.
> By the way, why not try fossology? It is really good that you can browse the compliance information on fossology server after you get spdx files by bitbake of YP.
> 
> Best regards
> Lei


Hi Lei,
I tried the latest meta-spdxscanner with a Docker version cof Fossology 
but the entire process fails with errors on the Yocto bitbake side.

I'd like to have a minimal proof of work of this toolkit.
Would you mind sharing the version and the configuration you are using 
successfully (for both meta-spdxscanner and Fossology)?

Thank you
--
Marco
