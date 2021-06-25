Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web08.9907.1624637803176097030
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Jun 2021 09:16:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qd9JIBWm;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id d12so7966324pgd.9
        for <yocto@lists.yoctoproject.org>; Fri, 25 Jun 2021 09:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=y3j3uIY3l4dSEwLUNc28SuzQonMCIP3QJTMsl53MLLw=;
        b=Qd9JIBWmUFrc77VB3oX3lDzM8Jvs3aNKq+I0FTFQ5KKI5LgEau9h09XoXdmFEZUH99
         BA55XG4N9BpCCj9Pe6Y51kfOC09zkmcmPz0Rffmvl6zRC0f4RJ6W3fNs8NzXvR/oW0eg
         It4KQIgy3ltcLWa/KpQfyB7ThRpcFC4B8PtV7gxaqcGh8JDB+lRpHV+YQ7Ibe+DT7gVI
         s3neXA30YvodIf6jEKjF27fqxuAUYAUSrNcHJX3dTZ02xV3102S2jhxnTw0Hq5v6jzq0
         LuDCNa+dm5zmv6A/8o3H8dXt9N0vn5Dm4pK873U25EieAsEA+tf9tU0a6kVaIWZhxzBd
         UM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=y3j3uIY3l4dSEwLUNc28SuzQonMCIP3QJTMsl53MLLw=;
        b=Je5yRgqBzuyxJ1K5QuggaD2Ys9EKhvDVfBhHLPGwUOmakTQWrs+TcnZg+9eSDG4uak
         6C1tiJXqJFAZnOIcD7jqSJjKrdEMvUyprK/obR89/kkgnLAI4G07zZkMYAHir8mxNMsn
         yYsReaopC6GPSZhcdTCL5JjRWVykrUlN30UJ7mpkDecfGgKyqwwCrkdjFMWF/PfYKgSF
         fzQKQoF4vSb/mHC6QDskXrGGL6o8xi+IElwKB4P4QV54AsoqricJnXnt+Q6pW2tnjxAo
         c+/RO2c9prt5Sw3AWpmF9Sskl62k/mzHyZzP0VDjVLcAuWmh9YY+6Z31/Jp8ctbVY6fa
         UaTA==
X-Gm-Message-State: AOAM530mlPMCt+x7AS+kIpK1M2Zsm5aa0ZBrfEuooD7zfH5QugsrFJp1
	oRXNesOBnN5zCPx9JBOBm5V1TpJQHwcGPA==
X-Google-Smtp-Source: ABdhPJzfEHLdkRAi5gyjn9qmU6YR3DzUOmD5wePQjZJsv+fGgIzbMZpbehRa57YBEaJdAie58lUMDQ==
X-Received: by 2002:a62:7a49:0:b029:302:c04b:36d1 with SMTP id v70-20020a627a490000b0290302c04b36d1mr11294749pfc.27.1624637802364;
        Fri, 25 Jun 2021 09:16:42 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:9c2:2fa:950b:5920? ([2601:646:9200:a0f0:9c2:2fa:950b:5920])
        by smtp.gmail.com with ESMTPSA id a9sm6148657pfo.69.2021.06.25.09.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jun 2021 09:16:41 -0700 (PDT)
Subject: Re: [yocto] Recipe for include-what-you-use and rpath problem #sdk
To: Francesco Cusolito <mous16@gmail.com>, yocto@lists.yoctoproject.org
References: <83Fh.1622711773141741245.p9im@lists.yoctoproject.org>
 <20394.1624629623473093776@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <671afd28-0407-36ff-488f-171e91c0b67b@gmail.com>
Date: Fri, 25 Jun 2021 09:16:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20394.1624629623473093776@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit



On 6/25/21 7:00 AM, Francesco Cusolito wrote:
> I was able to make it work correctly enabling |CMAKE_SKIP_RPATH|.
> Here the working full recipe:

this is fine, if you are interested submit it as a patch to include in 
metadata in meta-python

> 
> |LICENSE = "NCSA" LIC_FILES_CHKSUM = 
> "file://LICENSE.TXT;md5=59d01ad98720f3c50d6a8a0ef3108c88 \ 
> file://iwyu-check-license-header.py;md5=cdc4ab52c0b26e216cbf434649d30403" SRC_URI 
> = 
> "git://github.com/include-what-you-use/include-what-you-use.git;protocol=https;branch=clang_10" 
> PV = "0.14+git${SRCPV}" SRCREV = "0.14" S = "${WORKDIR}/git" DEPENDS = 
> "clang" inherit cmake python3native EXTRA_OECMAKE_append_class-nativesdk 
> = " \ -DCMAKE_SKIP_RPATH:BOOL=ON \ " BBCLASSEXTEND_append = " \ 
> nativesdk \ " |
> 
> 
> 
> 
> 
