Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web09.10305.1631722981659111400
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 09:23:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PkeApF4b;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id bg1so1917906plb.13
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 09:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=9xaTWyPBaBHeEaKv0MfJUynhYbe+fHhb+caZNWpvfj0=;
        b=PkeApF4bZxPDV3YQfgC/DsCd4Acqb4SFKlWaGyikHWGwBvlhmXG5dcg9gc8bTl+h+0
         3+JeLcyF6zSYRapB6FlJytZh79OPBKfSFDc+cG+TZH6ESgLfMGv+vlnyBAGURLaL1OBy
         2/y32u0uBZjaDoMFz5ksZkVYz2b/8mhx6XD21ttcFCaQc/M3zjsyys4du4hzFfk+ySUK
         48UyPh+4H6IfLPUz1gh5aHSIaye0GzqLQZyAJo1F+yCmJAXaGm8GTGkVwYqad7Z4Vb55
         jbhfP8DQvbUJpWmdah0vwtsppbS5g9Uc5jV5h6eKo6AwphO6PZCxIkzzFtfbO79+NQt2
         Y05g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=9xaTWyPBaBHeEaKv0MfJUynhYbe+fHhb+caZNWpvfj0=;
        b=PdmP7218q3Yjv9JXZAMlQRl+lvrG0ZOoXuilOgcAAIc2cAgdV4bRpwI/wcYzSJIRLk
         VbWnjgQLHrLK5xGDhdfsCpTCAfVL9VPvkh9uCblE6+oNs68xx6YIOw7qPmgoZP7VxxCo
         Zj9wVltPjgPBjr2IJEwdNL7zOA0+Gg7sWWGl1yEaciEZ1Di3+1rQEIecqWiWjRO/HX/r
         FX5GlGp8qH4UoYEsSbbrW1o6umjjIqoOO8eUAIeEKIGqoylL6dS+kRJTQ5jXr+E5oa4s
         ewgJCuTEJ2xvAs9kAMsSsehkfqssk3IHFPSiAXIaZrRMalbBnS8AFiqPrvmAMrHzb84q
         CI1w==
X-Gm-Message-State: AOAM533p1YUtzH6IihItsUQCiU/oMdQJY9z4Rfp6+i9JSwIa1lLocHLv
	d0v9kMaozqt8jeWIPExdSpo=
X-Google-Smtp-Source: ABdhPJzi5kNJ+wlXCe5pwTTz1/a58k+nwIfgvKnKR6V3idZpNi4E/5Dtm5RPzcCKObzT09JaUS4BXg==
X-Received: by 2002:a17:903:32c6:b0:13b:9cd4:908d with SMTP id i6-20020a17090332c600b0013b9cd4908dmr584267plr.20.1631722980860;
        Wed, 15 Sep 2021 09:23:00 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPV6:2601:646:9200:a0f0:ddaf:c34:d8b0:df10? ([2601:646:9200:a0f0:ddaf:c34:d8b0:df10])
        by smtp.gmail.com with ESMTPSA id v3sm382954pfc.193.2021.09.15.09.23.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 09:23:00 -0700 (PDT)
Message-ID: <eadb2d8b-0b60-1ba7-d2bf-32618d9ac51e@gmail.com>
Date: Wed, 15 Sep 2021 09:22:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.1.0
Subject: Re: [yocto] How to build yocto image with Desktop #dunfell
To: prashantsingh@dialtronics.com, yocto@lists.yoctoproject.org
References: <REAf.1631685753823151919.s2ZW@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: <REAf.1631685753823151919.s2ZW@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 9/14/21 11:02 PM, prashantsingh@dialtronics.com wrote:
> Dear Team,
> I need to build Rpi3 image  with yocto which includes Desktop, so how 
> can build the image with desktop feature, so that I can use it for 
> browsing purpose after installing one of the available browser with this 
> image.
> 

there is core-image-x11 which will be bareminimal and core-image-weston 
if you want to use wayland/weston based desktop.

if you like XFCE for desktop then close meta-openembedded and add 
meta-oe and meta-xfce to your layers and build core-image-minimal-xfce 
also see 
https://git.openembedded.org/meta-openembedded/tree/meta-xfce/README

> 
> 
> 
