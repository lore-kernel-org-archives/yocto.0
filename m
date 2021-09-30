Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A4E2C433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 13:55:24 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com
 [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web10.12832.1633010124025300943
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 06:55:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=I5iXKIFy;
 spf=pass (domain: gmail.com, ip: 209.85.210.173,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id h1so961088pfv.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 06:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=SqoRg7M9YGDHzgKBq3+jqnmYOTPHJXlF5bC2wYI2UOo=;
        b=I5iXKIFy9xJaBj81nGA2fTMBQ16vZ9lXbpjZ9HtUjWbuQ+0GonZsEBJ3NzwX0TZCeP
         GmhD9AtrCHgT07J3vocIIYkPEN0cBNvJ4aH89ulLzBaFBXMgOQGV2qcio5KfDcHhcUWj
         yHFjrjLcRspPb//q7kbnGDy7Bw3+G3NB12gghQEgLmdPTn6uN8rHgxvSPNkfVaNJz6z8
         hJZTHnZGEF4KOVlML/J2rzrKr2cG6PlNRTYxbWqQlBYngj+Mmf+7bi5mbCYRZC5qquRQ
         CK8e/bIzGw8Erfzimudim7Di4c7lRpgxOG9LMX1+/SeWz6R5IoiBMBhiamuYkctAT4lF
         +PAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=SqoRg7M9YGDHzgKBq3+jqnmYOTPHJXlF5bC2wYI2UOo=;
        b=ltb+7GaAfB1eAIc1RT+FY1mAL98s9kNET3QOTf3YDfxzrPkOfYoRaQL0uBBdP6saQd
         FeTfU1ydLzPkKk94S8l7JXepFjpjt1GcS4rYmqu0L5Nx3dbO1rDGV6EFM8x4NR9f+RVi
         sYbxs/XhYDzUNP0e1gHH95x1o+4j9ppFtcVW4HwggLx2WFEly7LmVlICkHWjA3CH5OaN
         wBYx8dVXfW+2wjMxwCJ7RBh25hnzJaqmgQrQ/UiMRngM4wACRWITmaF+nSfLtO2ZVVBe
         RBsB3+gV3TN/aZ7JzEzgQu9JmU7gV7E1k/gY8MoTliEe42eSEQOe6WceLfe/fdF/yian
         E9MQ==
X-Gm-Message-State: AOAM530XZodjRPH3DUujJWqO++P7eLHOhgjvfohbPKaINXQqGD8BV4WR
	2+s3mQU8EmeuvoGfcRPB1NDfUMsS6oY=
X-Google-Smtp-Source: 
 ABdhPJynd39arGjqbl4PAWqcvjjr3ycM4SIaJggNHMmeNjtOmVzl6Nz2bb7EnzD3WgjeBoBQAbhqQw==
X-Received: by 2002:aa7:8d53:0:b0:44b:fcd8:112 with SMTP id
 s19-20020aa78d53000000b0044bfcd80112mr2046008pfe.26.1633010122987;
        Thu, 30 Sep 2021 06:55:22 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:b057:74c9:aa8d:e27b?
 ([2601:202:4180:a5c0:b057:74c9:aa8d:e27b])
        by smtp.gmail.com with ESMTPSA id
 y5sm1902643pju.33.2021.09.30.06.55.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 06:55:22 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH 2/2] swtpm: fix build issues of
 missing expect
To: Kristian Klausen <kristian@klausen.dk>
Cc: yocto@lists.yoctoproject.org
References: <20210928233909.3574965-1-akuster808@gmail.com>
 <20210928233909.3574965-2-akuster808@gmail.com> <YVQLW66LKT7DXF1Z@bob>
From: akuster808 <akuster808@gmail.com>
Message-ID: <645d5846-f5d3-7cc2-4d13-7191bfb48e25@gmail.com>
Date: Thu, 30 Sep 2021 06:55:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YVQLW66LKT7DXF1Z@bob>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 13:55:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54919



On 9/28/21 11:44 PM, Kristian Klausen wrote:
> Den Tue, Sep 28, 2021 at 16:39:09 -0700 skrev Armin Kuster:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>> ---
>>  meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
>> index 807c02b..d602ee0 100644
>> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
>> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
>> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>>  SECTION = "apps"
>>  
>>  # coreutils-native and net-tools-native are reportedly only required for the tests
>> -DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
>> +DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib expect expect-native"
> expect is there twice now (+ native). Would expect-native be enough or 
> do we also need expect?

expect-native only fixes the build issue.
>
>>  
>>  SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
>>  SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
>> @@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
>>  # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
>>  # used by swtpm-create-tpmca (the last two is provided by gnutls)
>>  # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
>> -PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
>> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, bash tpm2-pkcs11-tools"
> expect is needed as a runtime dependency for swtpm-create-tpmca, but I 
> added it as a recommended dependency as I don't think all people are 
> interesting in swtpm-create-tpmca working out-of-the-box.
> expect should still be here, no?
>
>>  PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
>>  PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
>>  PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
>> -- 
>> 2.25.1
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#54899): https://lists.yoctoproject.org/g/yocto/message/54899
>> Mute This Topic: https://lists.yoctoproject.org/mt/85937662/6376886
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kristian@klausen.dk]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>


