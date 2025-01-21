Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EFC02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 05:17:30 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.9631.1737436642313016054
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2025 21:17:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=g+yYK8Kk;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4362f61757fso52952385e9.2
        for <yocto@lists.yoctoproject.org>; Mon, 20 Jan 2025 21:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737436641; x=1738041441; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZlrhrMn5UgMsNZXb7rAZQS2IhH8c3E1ZyqfZWHjahBQ=;
        b=g+yYK8Kkv8iLGRbEHSxAc9rUNGiHS65GrzKsJH68zgbrR85Cg3/6PhlBEHMqRgEW+e
         /TKYaGlMcE1cmQpXlfyo3xMtUolws9rzj1Cip/jMH1pdmWMTEvxkncTGYmVruwP7fILJ
         szI0zLAqFsRK34NxukJUoiHIlHTyFpfemBH0MPZfdRHVhHzig0ccFZS7lMsPIRNX+ISb
         ERivHm7B7913KZ9dajRPVI3hxqTaP1Zmw61dBlqe9rrpUdzELk48mGjbfzNXOCmPxqyC
         kIT9cDG9plhY49t9noYKMm62jRARnPH+mcPQovVMZwSsdqwsuJ84WHtTp85GTuTUQUUK
         dJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737436641; x=1738041441;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZlrhrMn5UgMsNZXb7rAZQS2IhH8c3E1ZyqfZWHjahBQ=;
        b=QYwl042YXzYC9xhK0WdcCMOIePf7MC7TBZ1qrny3W3AYmoEilW50jlmxcYIHCNubvg
         RaO9bw4/pws3LUtty3Eaq3Vtpz7U3gMB0id4w4rSdPW8jx3fCPdmNVSBFiA/EWPLYM4u
         CK8GEsKlhN0AbaIeADXdjJtSzUiGI9b8o9EmrposGWFNCcB4FEtlsohTy7pT3BKBzWcz
         XEfLvPqCGOymjtN603EoqW71JfJzejThYSSBoh84PLHSze4f1S3u74uCPUpuXYvqZn5c
         4XOntoQhJwZB75xPgbE94UP+/0lTJn37kruZlJVE4KdZic+LoiQn3umeuM4W7xFhGGUX
         tmQg==
X-Gm-Message-State: AOJu0Ywku/o6wl2JGNpKvwKJ383m/kb+9yVJyOmT1jQZvuokV5ZrMZDC
	roAA7PtrLQJpurl5FPNw70Fu4D510DjubShfu9XQ19jdgoC7JHvzdT5WdQ==
X-Gm-Gg: ASbGncvx4Uyq+c7JXh/iW8Prd1nxlfGUcTR39s/EAuEa2AgEMoBGsjIb+AXZz0FCJze
	kGgIu1aAQt4I6JOBAqQI2ZOhJDpDf49rKai6uCvIRxShsJHYdHsBRIkQHPCHBtQLt82mNSkr7SM
	ptlYHcoYYya2fI4c3+SRe50eYCFAl+GKLbVsBLJPfEseEGZQb3kkq8QZCwYtjI4jU6EaaWtLIyW
	C0L+13APWpz+qUS4P36jmSKwzDrXM4S/yW/dXX3YJ4U5BVe78mydsCa/XBp49J3VimYbQDzDM8D
	Ow==
X-Google-Smtp-Source: AGHT+IEmcLMsUedyouywTK9MsWTe6lpavRPoqY4K+OkQW4ljrMB5tTZtQ3braqQSDJb06ZGE0Ady0g==
X-Received: by 2002:a05:600c:511b:b0:435:14d:f61a with SMTP id 5b1f17b1804b1-438914304a8mr113485445e9.25.1737436640235;
        Mon, 20 Jan 2025 21:17:20 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4389041f7e9sm166765095e9.23.2025.01.20.21.17.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 21:17:18 -0800 (PST)
Message-ID: <da20e31a-03b9-4654-9ecf-060c09fe3ce7@gmail.com>
Date: Tue, 21 Jan 2025 06:17:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [scartgap] image-mklibs.bbclass support is deprecated
To: yocto@lists.yoctoproject.org, ganesh.manoj.mahajan@signify.com
References: <PPVa.1737434613568711102.0jzC@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <PPVa.1737434613568711102.0jzC@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 05:17:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64593

Looks like there is still something else referring to this class. Search 
for the offenders that are still in need of a fix:

grep -rl "image-mklibs" ./$PATH_TO_YOUR_LAYER(S)

On 21.01.25 05:43, Ganesh Mahajan via lists.yoctoproject.org wrote:
> I am upgrading from dunfell to scarthgap-5.0.5 (LTS). Scarthgap has 
> deprecated support for*image-mklibs.bbclass. *
> I have removed it from *USER_CLASSES ?= "buildstats image-prelink"* 
> variable in *local.conf.sample* file.
> The error thrown is from *BBHandler.py *from*def inherit *function as 
> below.
>
> ERROR: Unable to parse 
> /home/build/project/bitbake/lib/bb/parse/parse_py/BBHandler.py
> Traceback (most recent call last):
>   File 
> "/home/build/project/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 
> 71, in inherit(files=['image-mklibs'], fn='configuration INHERITs', 
> lineno=0, d=<bb.data_smart.DataSmart object at 0x7fd4f63fd190>, 
> deferred=False):
>              if not os.path.exists(file):
>     >            raise ParseError("Could not inherit file %s" % 
> (file), fn, lineno)
> *bb.parse.ParseError: ParseError in configuration INHERITs: Could not 
> inherit file classes/image-mklibs.bbclass
>
> location below has no image-mklibs.bbclass*  which is present in 
> dunfell and also the count of files is 45 whereas in dunfell it was 
> 201. The count may be different as i have removed meta-gplv2 from the 
> manifest file and bblayer.conf .
> *
> *build@ubuntu-bionic:~/project/meta/classes$ ls
> archiver.bbclass             distrooverrides.bbclass 
> own-mirrors.bbclass            sign_rpm.bbclass
> buildhistory.bbclass         externalsrc.bbclass prexport.bbclass     
>           siteconfig.bbclass
> buildstats-summary.bbclass   extrausers.bbclass  primport.bbclass     
>           terminal.bbclass
> ccache.bbclass               go-vendor.bbclass recipe_sanity.bbclass   
>        toaster.bbclass
> ccmake.bbclass               icecc.bbclass relative_symlinks.bbclass   
>    typecheck.bbclass
> chrpath.bbclass              image-buildinfo.bbclass 
> relocatable.bbclass            useradd_base.bbclass
> copyleft_compliance.bbclass  mcextend.bbclass  remove-libtool.bbclass 
>         useradd.bbclass
> copyleft_filter.bbclass      metadata_scm.bbclass 
>  report-error.bbclass           useradd-staticids.bbclass
> create-spdx-2.2.bbclass      migrate_localcount.bbclass 
>  rm_work_and_downloads.bbclass  yocto-check-layer.bbclass
> create-spdx.bbclass          multilib.bbclass  rm_work.bbclass
> cve-check.bbclass            multilib_global.bbclass sign_ipk.bbclass
> devtool-source.bbclass       oelint.bbclass  sign_package_feed.bbclass*
> *
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64592): https://lists.yoctoproject.org/g/yocto/message/64592
> Mute This Topic: https://lists.yoctoproject.org/mt/110728702/6084445
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

