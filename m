Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F062C433EF
	for <webhook@archiver.kernel.org>; Sat,  2 Oct 2021 16:47:12 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web09.12893.1633193231384086781
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 09:47:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MQc/uaA+;
 spf=pass (domain: gmail.com, ip: 209.85.210.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id y8so10775482pfa.7
        for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 09:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=JuhM+WPQb6x2MdGX6YlyXc6l3G81X877wfc9eIe9jc0=;
        b=MQc/uaA+Mr94s9wFEwdirPDHQnsf8139L2UFkS/UBGfXtAk3XIBfM/F79OVEenisLx
         5+E8pKnjMIBNf6DX6mqXErAy0QqpcuoqBm3UvSVToNTH3DRl98E9O2ynbIHlv6u6xxoy
         DL8WKethJayP7TJXJ17WkiYpMqJrCs0M4qBe9GHMy4CaPBYWeGzNWIGH2rstoykrkcHK
         Fy9fBrha6OeIEMslJ/eS8+qhNmT0XC2EDNrHT+rMMcvT61tiIOlnEOzBW9XlnB23j8yn
         x0IqdBtXjxJZQV1eGT339W8CaO20g0o8GKKJdSdADFf7bGr+RPE6O7PzH8DC1z+QosqF
         HRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=JuhM+WPQb6x2MdGX6YlyXc6l3G81X877wfc9eIe9jc0=;
        b=nF+Fv2nzavNSVhdk/eA9D6DnFcJ7tei0fzLr5z0iIKAQBGoQ4qn0A3WsNnYSuPGNl2
         lzeubslV9x637sMWxlzCtSSvpA90741np1pDjnnk+/N4YnQsFYu0rTc0m5G1qIjlYyhU
         JsiFbQsUpAqItGagRzFgxsK6XG1tzAJqGrI0XqT/6ss+EV8KFVvBmbq8Wgwz4TKKv11N
         Xn/SYqm/Q9g6gkv6x3vUc9vtGr2BxLjMWQ1/ltvOsuxtfBpTT7jd7XD7Y9JVIep8NLFY
         b0wjkNXFI/yS45K9W86lswlFBwGRicDryZK7MUzla8csLgWRY9OEGfVYeegm4AV3C7P8
         dFiw==
X-Gm-Message-State: AOAM533jzii6fVQ2DE5GrbSrMXXs0I/BLCzH/zJxGnSYMKWFPHNmlXnZ
	1L8pRtusiLKdFCghbgL/BanNykLAj9c=
X-Google-Smtp-Source: 
 ABdhPJxp0j2+douFXty1GqvrPdlmpsU+aIA6Z8PizgwWYzJDklo3QYFIboh9XFeoj+GTVmtXcrHQVQ==
X-Received: by 2002:a63:950f:: with SMTP id p15mr3508599pgd.265.1633193230406;
        Sat, 02 Oct 2021 09:47:10 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:8520:653a:b0d5:75b8?
 ([2601:202:4180:a5c0:8520:653a:b0d5:75b8])
        by smtp.gmail.com with ESMTPSA id
 f33sm2123135pjk.42.2021.10.02.09.47.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Oct 2021 09:47:10 -0700 (PDT)
Subject: Re: [yocto] [meta-tpm][v2][PATCH] swtpm: fix build issues of missing
 expect
To: Kristian Klausen <kristian@klausen.dk>
Cc: yocto@lists.yoctoproject.org
References: <20211001222517.2359884-1-akuster808@gmail.com>
 <YVeUWUdJeOStEDyY@bob>
From: akuster808 <akuster808@gmail.com>
Message-ID: <fccb4ab6-21da-7001-12b2-cfd41a89af85@gmail.com>
Date: Sat, 2 Oct 2021 09:47:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YVeUWUdJeOStEDyY@bob>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 02 Oct 2021 16:47:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54931



On 10/1/21 4:06 PM, Kristian Klausen wrote:
> Den Fri, Oct 01, 2021 at 15:25:17 -0700 skrev Armin Kuster:
>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
>>
>> --
>> V2]
>> Only need expect-native
>> Clean up PACKAGECONFGI[gnutils] to conform to spec
>> ---
>>  meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
>> index 807c02b..0087367 100644
>> --- a/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
>> +++ b/meta-tpm/recipes-tpm/swtpm/swtpm_0.6.1.bb
>> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=fe8092c832b71ef20dfe4c6d3decb3a8"
>>  SECTION = "apps"
>>  
>>  # coreutils-native and net-tools-native are reportedly only required for the tests
>> -DEPENDS = "libtasn1 coreutils-native expect socat glib-2.0 net-tools-native libtpm json-glib"
>> +DEPENDS = "libtasn1 coreutils-native expect-native socat glib-2.0 net-tools-native libtpm json-glib"
>>  
>>  SRCREV = "98187d24fe14851653a7c46eb16e9c5f0b9beaa1"
>>  SRC_URI = "git://github.com/stefanberger/swtpm.git;branch=stable-0.6 \
>> @@ -28,7 +28,7 @@ PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
>>  # expect, bash, tpm2-pkcs11-tools (tpm2_ptool), tpmtool and certtool is
>>  # used by swtpm-create-tpmca (the last two is provided by gnutls)
>>  # gnutls is required by: swtpm-create-tpmca, swtpm-localca and swtpm_cert
>> -PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls, expect bash tpm2-pkcs11-tools"
>> +PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls, gnutls expect bash tpm2-pkcs11-tools"
> Hi Armin
>
> Support for RRECOMMENDS in the PACKAGECONFIG was added some years 
> ago[1][2]. Whatever they should be RRECOMMENDS or RDEPENDS I'm not sure 
> about (I don't think swtpm-create-tpmca is a hard requirement for most 
> people).
>
> If you like I can squash the changes into my own patch and resend it.

Please do, that sounds great.

-armin
>
> [1] https://git.openembedded.org/openembedded-core/commit/?id=ec96c985ce1c888c3ce3c4d964d7a106c3c88a5c
> [2] https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-PACKAGECONFIG
>
> Cheers,
> Kristian
>
>>  PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
>>  PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, fuse"
>>  PACKAGECONFIG[seccomp] = "--with-seccomp, --without-seccomp, libseccomp"
>> -- 
>> 2.25.1
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#54928): https://lists.yoctoproject.org/g/yocto/message/54928
>> Mute This Topic: https://lists.yoctoproject.org/mt/86012566/6376886
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kristian@klausen.dk]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>


