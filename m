Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web11.1461.1590612488044974983
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 May 2020 13:48:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=advmJOtS;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id u12so938582wmd.3
        for <yocto@lists.yoctoproject.org>; Wed, 27 May 2020 13:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=xH2EvXFDwA06g8UTETNSgQk7UaWEDYPN0gbfLAv1iQk=;
        b=advmJOtS4UJvx6zqYIG1vYmNR6jD9RVOsAt4mPAZQ80cbpeLxzHCWPQ9ryouSVQzk2
         Qrm7wRCfToF7ZHzn/Ea/KXZTmxuP3jczM9SUiZNpLbA9+zvCXyVRa0x09kCnlb5s3HLr
         xSeFnFV943zcywV8jc4dOYEyg13ZbhlCme25Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=xH2EvXFDwA06g8UTETNSgQk7UaWEDYPN0gbfLAv1iQk=;
        b=pxW4j4661NlbfCp8SuL6efHnzbeENWcVLpn1KjXL3N2ziTLqhGgRQ/IeuoXSUXTWUr
         eae4tlXiE/QW8nrCOGejUlGKu9e+iQiUwajVpYHn/9N3rZ/ke0+zYlZFcwnpddAUptFP
         VfoQZyjjuo2n91S846x3naON9eIVaGQth/m6S6M2FWtLWbb4EMMk6lBKCdg23bN0o5iK
         CHzLn55f6DaaZ6g6y0Pri5GfZOmQb1ocy8gdmpJ5R56x3i/LUqAJU/OyyCQS3ntxocjh
         4RQDB2upPtQT4UnSO8tuAqzXNGhkat8av3ktRvf4t93UoD7EiE3Q4DZTUkhQHvkowTw0
         AXGA==
X-Gm-Message-State: AOAM532O5Af0tiVfde2SCCgGLNTD4kkCwm7ufk58qUwpA6H7iwdDaMMX
	x7tqVjPE76w9hbrAH/ftIY7TLQ==
X-Google-Smtp-Source: ABdhPJwUN5EuBb/+Yy02kSoSiUUXQeg29f+gkgFeRqXwi9U9PgUM8mKGZAp9qcVOc/O+qQ3N96lGHA==
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr5854340wmk.69.1590612486457;
        Wed, 27 May 2020 13:48:06 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id h20sm4029394wma.6.2020.05.27.13.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 13:48:05 -0700 (PDT)
Message-ID: <952758c461a1846f5069d1dfe6ccb6ee89c3f057.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-2.7.4.rc2)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Mills, William" <wmills@ti.com>, "pokybuild@ubuntu1804-ty-1.yocto.io"
	 <pokybuild@ubuntu1804-ty-1.yocto.io>, "yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, 
 "yi.zhao@windriver.com" <yi.zhao@windriver.com>, "apoorv.sangal@intel.com"
 <apoorv.sangal@intel.com>,  "ee.peng.yeoh@intel.com"
 <ee.peng.yeoh@intel.com>, "aaron.chun.yew.chan@intel.com"
 <aaron.chun.yew.chan@intel.com>, "akuster808@gmail.com"
 <akuster808@gmail.com>,  "sjolley.yp.pm@gmail.com"
 <sjolley.yp.pm@gmail.com>, "sangeeta.jain@intel.com"
 <sangeeta.jain@intel.com>
Date: Wed, 27 May 2020 21:48:04 +0100
In-Reply-To: <615783cf129245af8973e3376b06f3bc@ti.com>
References: <20200527120917.D994DE01C24@yocto-www.yoctoproject.org>
	 <615783cf129245af8973e3376b06f3bc@ti.com>
User-Agent: Evolution 3.36.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Bill,

On Wed, 2020-05-27 at 12:31 +0000, Mills, William wrote:
> In a script, how would I download all the files in this dir:
> 
> https://autobuilder.yocto.io/pub/releases/yocto-2.7.4.rc2/machines/beaglebone-yocto/
> 
> I see no global md5sum (or sha256sum etc) file in the tree anywhere.
> 
> The names are cut off in the default html list format so screen
> scrapping won't work.  Is there an automated way to request a better
> format?  WebDav? Am I missing something obvious?

If you look at the raw html it looks like:

<a href="am335x-bone--5.0.13%2Bgit0%2B7f6e97c357_f990fd0ce1-r0.2-beaglebone-yocto-20200526225701.dtb">am335x-bone--5.0.13+git0+7f6e97c357_f990fd0ce1-..&gt;</a> 27-May-2020 07:00               56237

so the href is correct and its only the displayed url that is
shortened. That is why you can click on them to get the artefacts and
it is 'just' a display issue. It also means any script can pull the
correct urls the same way.

I think Michael has tweaked the line lengths in the past but it keeps
getting reset to distro defaults as the machine is upgraded. He knows
about it and will look at sorting that again.

Cheers,

Richard



