Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web11.573.1594658271680658370
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 09:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EPVDepG2;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id d4so6259516pgk.4
        for <yocto@lists.yoctoproject.org>; Mon, 13 Jul 2020 09:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=mqjaKHpnDmJ+xE+fMmhY8HCf7FEEbo7fUxZ6Wf17/Fo=;
        b=EPVDepG2zScDVVVR9Ya0bhI/wzeSKjVMD1nYkIVFrq2J4Xl6OY8KJBLJTPeBSeir1L
         qVgc1ogV1pmn1cE65dhLz2deiiAGvWJqYYV8U5YdCG5NY6c34GKm+ZXTBIqSDcACG+3T
         MqEUQuHID4CY0OqzCWNwESUgHo21EDRCTTJmOumP0E0K6+Lb+BaNYfexVTs1tcg/Lbcn
         bG4SyU0b1ZAOgMCKj1KFJ3acri97pmnhORjAueCu6IQJzuI3xutEEABzxk2YmVTDumvJ
         k2XYVtmgASmE5H4DyYR4Ji7ps9WpdeHCCI0Ql2uW/gxPdhuVT4YcHadL9sYW1h0SK6Yg
         p7Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=mqjaKHpnDmJ+xE+fMmhY8HCf7FEEbo7fUxZ6Wf17/Fo=;
        b=Va41YQwbDv3JDxUy+/IEoVAedCLEVjHGNPnZ8Fy29FX+Tb03GOGWBOW23EQzvqch3I
         AXDqAETTKhDBZCLpA6BbNbg8k6En8kQ1imtR3Fjg4GXtWDA5c1ErerDqqyceD+URb1R0
         G3FgSLyoiI48j2McjvTukVkaw9gOSYVwV+5apmD8r+meS5LOV0zlmJb8FaZezDnK+rlW
         YztMPB7Fkm3/rhJppZ+ecELrJbUyPd9RKxzGJVOxmNCwBcRByv/Gji/5/iHvFTmTPisG
         pZgKo6OSYrJg4zcjiX8vzMatPfLcdGgapBTnrzIDQDMycuzx1rJRVldZbSrkAtaf9BAU
         TJvQ==
X-Gm-Message-State: AOAM5306uyJMhpcPwUo5Lhv5tJY6Mw6YPuThpSx9S668YHqoSlDBFF1L
	DhNfeBmfEjdS1wPkC3n/YY675vIs0zo=
X-Google-Smtp-Source: ABdhPJxtwqwCxfDd7bHkhlQ7ylH31ecWtwCOqv03XT7gbkzXL/N7VP9pSk473AjhqjBcfYdmZPvCsQ==
X-Received: by 2002:aa7:988f:: with SMTP id r15mr686840pfl.2.1594658270697;
        Mon, 13 Jul 2020 09:37:50 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:5886:34b9:1392:15a2? ([2601:646:9200:4e0:5886:34b9:1392:15a2])
        by smtp.gmail.com with ESMTPSA id o42sm112297pje.10.2020.07.13.09.37.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2020 09:37:50 -0700 (PDT)
Subject: Re: [yocto] [poky] python-setuptools dependency loops error #yocto #python
To: Bel Hadj Salem Talel <bhstalel@gmail.com>, yocto@lists.yoctoproject.org
References: <le8z.1594631073716482968.ix2I@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <972051c9-7cc5-b26f-bc60-f5ba67a91f14@gmail.com>
Date: Mon, 13 Jul 2020 09:37:48 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <le8z.1594631073716482968.ix2I@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 7/13/20 2:04 AM, Bel Hadj Salem Talel wrote:
> Hi all,
> I have a problem using *python-setuptools* with yocto when bitbaking any 
> recipe that inherits *setuptools* , or even when I execute "bitbake 
> setuptools"
> but there is no problem with setuptools3, but I need to use python2 for now.

perhaps you can see if commit [1] helps and if sumo already has it then 
there might be something else going on

[1] 
https://git.openembedded.org/openembedded-core/commit/?id=3e3c5cc579482041f0233e3e03ace736b62fb364

> Here is the log:
> 
> ------------------------------
> 
> *ERROR: 176 unbuildable tasks were found.
> ##########################################                                                                            
> | ETA:  0:00:00*
> *These are usually caused by circular dependencies and any circular 
> dependency chains found will be printed below. Increase the debug level 
> to see a list of unbuildable tasks.*
> 
> *Identifying dependency loops (this may take a short while)...*
> 
> *ERROR: *
> *Dependency loop #1 found:*
> *  Task 
> virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_compile 
> (dependent Tasks ['python-setuptools_40.0.0.bb:do_configure'])*
> *  Task 
> virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_install 
> (dependent Tasks ['python-setuptools_40.0.0.bb:do_compile'])*
> *  Task 
> virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_populate_sysroot 
> (dependent Tasks ['python-setuptools_40.0.0.bb:do_install'])*
> *  Task 
> virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_prepare_recipe_sysroot 
> (dependent Tasks ['python-setuptools_40.0.0.bb:do_populate_sysroot', 
> 'python-native_2.7.15.bb:do_populate_sysroot', 
> 'python-setuptools_40.0.0.bb:do_fetch'])*
> *  Task 
> virtual:native:/media/talel/data/sumo/sources/poky/meta/recipes-devtools/python/python-setuptools_40.0.0.bb:do_configure 
> (dependent Tasks 
> ['python-setuptools_40.0.0.bb:do_prepare_recipe_sysroot', 
> 'python-setuptools_40.0.0.bb:do_patch'])*
> 
> 
> *ERROR: Command execution failed: 1
> 
> *------------------------------
> 
> Thansk, Talel
> 
> 
> 
