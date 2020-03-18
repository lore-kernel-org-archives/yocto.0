Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.351.1584572217849023331
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 15:56:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=fg9ldakD;
 spf=pass (domain: burtonini.com, ip: 209.85.210.179, mailfrom: ross@burtonini.com)
Received: by mail-pf1-f179.google.com with SMTP id z65so281641pfz.8
        for <yocto@lists.yoctoproject.org>; Wed, 18 Mar 2020 15:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=a67vjKbg4ydby0CTTTCzXQGkSZZJzgLYx5ZyfQLpnS8=;
        b=fg9ldakD4UkRw3E6PYq39xWtl8wARDzn9aj3kXJeMvuIRVnMHMZgGvhRDq0SjzXR0r
         VogFOP7Ze4bc+WuI2xCK7gz4ZWOtRgqokvL0PXCM+o0s7APIxqrdBlx+xYmCCo/v5JKo
         B4npXu53BdxIm8WqRqUahUnqOBntkxpQBVDCYeh3L7//IAcOdNNaQ3Aq6roB6neeF/vM
         HnfQgN2ryMyOYx8KD5vB6tNApXBWyr3/pKORnDrLHUlpmvS6HCxAoA9XFtgm7w3wYOvF
         KxXVJFPnwFl2zcolT9c+j1P8nOmafLlDrrqLL/2IzBM2ratUz8WY+V9uf1RPQGYSRFhH
         klXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=a67vjKbg4ydby0CTTTCzXQGkSZZJzgLYx5ZyfQLpnS8=;
        b=BkvvDGuOxo1Dq55f+IqsOwtL1JgovsAeU4RP+/92t5HvMVWwUhv7R4IAaNOniW9waC
         4HuWAVpHE29UcaMOucqYOd2SXlBoBtkwVUFV5PBEWISJmQcsYQ+j/KDct6xfZpMs3O52
         MXZr4EtjrWmeIjC/nICVucM/m2ZIzYPPmCEJBFJLxbfvlD0JW08P7bItp82zWPDdBtdT
         mFRluxQEEoEI2xWqMxJ1xlK8aq9XqcJWgfZfM8MZ0HKjrs1FITdZnfTYyiTEUCtBeZe6
         tNIxgJqzcP/FqN2paEDcL6XiHYhgbSwih1mo0+YNwR+vS4w+omRm0l6N/ZHaA//XOFHc
         AUFw==
X-Gm-Message-State: ANhLgQ1v0dgd+EGVBp3dble5u1Ez4VRzFgw1vhneK9d6UPBhpMTdhUxn
	/fO1A+gXCFfl2pGsp5fxrWZJ4u7GXZw=
X-Google-Smtp-Source: ADFU+vv9hUdLjRNDJsDlK558+6v1uoOcicFrvmaIjomfpEHFY8qXFlhsMeeyLUo735rx5jeA2GZ0SQ==
X-Received: by 2002:a63:82c6:: with SMTP id w189mr49930pgd.357.1584572216837;
        Wed, 18 Mar 2020 15:56:56 -0700 (PDT)
Return-Path: <ross@burtonini.com>
Received: from placki-mobl1.ger.corp.intel.com (fmdmzpr04-ext.fm.intel.com. [192.55.55.39])
        by smtp.gmail.com with ESMTPSA id c207sm91358pfb.47.2020.03.18.15.56.54
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 15:56:55 -0700 (PDT)
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: yocto@lists.yoctoproject.org
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
From: "Ross Burton" <ross@burtonini.com>
Message-ID: <8032ed75-802c-9dd3-2d76-f468159b90af@burtonini.com>
Date: Wed, 18 Mar 2020 22:56:50 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <f53ec55d-5f43-4ea3-f9a7-827f0f29154f@topic.nl>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 18/03/2020 14:09, Mike Looijmans wrote:
> Harddisk speed has very little impact on your build time. It helps with 
> the "setscene" parts, but doesn't affect actual compile time at all. I 
> recall someone did a build from RAM disks only on a rig, and it was only 
> about 1 minute faster on a one hour build compared to rotating disks.

My build machine has lots of RAM and I do builds in a 32GB tmpfs with 
rm_work (and no, I don't build webkit, which would make this impractical).

As you say, with sufficient RAM the build speed is practically the same 
as on disks due to the caching (especially if you tune the mount 
options), so I'd definitely spend money on more RAM instead of 
super-fast disks.  I just prefer doing tmpfs builds because it saves my 
spinning rust. :)

Ross
