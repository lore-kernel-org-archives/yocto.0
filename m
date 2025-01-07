Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E380FE77197
	for <webhook@archiver.kernel.org>; Tue,  7 Jan 2025 17:18:59 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.26295.1736270330214671826
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jan 2025 09:18:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VoquihvL;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: skandigraun@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d0ac27b412so21433112a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 09:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736270328; x=1736875128; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wRpHWjkoK1PdhV4MucRAcv+L2ugEJHSmL4yiSjgkLsE=;
        b=VoquihvLXZyIjFLkICc2KB2dIkrSx0YbVQh/7Rm8ghL5BcU/B6aHX4o0BenEIQUOja
         JDlfXsM8nwUJ1d+Qh88rAZNqGLYGkrTN9epo52BSmDjeskhyrtW8RVTJrdE6ubskQ99/
         dqbVGztSyacSEQPGvfaalAu0QAzx95L8C87u9lWE2WXOfLay6Zb0reP4r5LrSfT5xauQ
         f++hvs02UkB3mQQAMFdbvuiKhBZ9zWO4QIPdsifLqy4l34/0MsPXqL9Q2uOJu6hi0mMg
         oB7iTTXopGDQi0fN1J4bHytGTlOYj1rrjIIaotWD9pHuhEkK0P5a+kJc8KCUNloc91Ay
         5xMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736270328; x=1736875128;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wRpHWjkoK1PdhV4MucRAcv+L2ugEJHSmL4yiSjgkLsE=;
        b=UEyzj5npUVuS3UTbJv9hTGAhi8F+ULUlNrJGmWsJU4+RUoarxNU+Ti5EADjOkk4xB+
         c21mDUPd3WgE2X+tTluIJleX36osfALxMYy39aE1cfyu5AzLlt7D4COUg/d9mATial27
         T16CiXdq4YqjjlygA0wYkwf33NudQUYVOQCrxhZaKj4k0KU4ghQDkOg7xihur8w+4h/R
         sh9s87TjDK5w5PCaueyZLa9MxGUYvbDq4dAv7twJVr3wLCPvuYbHOskHJylf0EUFDbFp
         kuC6qrth5z0cOh9WrFgGMNOOUzXWLN48qlpdm9z1QIUuemKvgRpLT2pGyTO2MQzNO6Ol
         Z8OQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCcmw9wBq7quF/fMvlaSeMXVxGfvM+w3S5OGYI/CLLTGV7oUbcVMj5D769hSdyDpkHsYl5CQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwS/Rm0EjCvorx6vE4fL3CHmzKzhNou/Sx9d6MEv6t5668jLj7r
	WQa2ZLPcLNgD+AYELgyMKxj2JTCwBTJd/3fhbC0xuudliA4YaXUC
X-Gm-Gg: ASbGnctOucGWJZ2BxS0y2hGher22FE/fxI5gJ4vSBv/LnIJRQqrRcv7i9t+MgLP9hUr
	9NwV50HKg8bLxncpofaB/p1zzVXKLISvbRenU25TscANTzQwZ/Uvw1dihMGieaDmzRECaZtyQtM
	eP0YUKnH0ZZ/YRk8E4UXqgHg9zMz8hANiWzTHdWgqvB1ffR3wxDQ/md4a3P98SXeJrrCUItLJKx
	2Mk6qb9psKT96tX4TQOryyzbcDZfbxqcn9x/llwtoCD52BgdTGmcrkoqLRBVqfH
X-Google-Smtp-Source: AGHT+IH7vCgHRR7Owa7reRlaJ/Ix/5CN7QuoHuLbc64B/8xRxPpq2S1cK+8MSuedG478yXIEQTmNdA==
X-Received: by 2002:a17:907:3e8d:b0:aa5:1a1c:d0a2 with SMTP id a640c23a62f3a-aac2d0478bemr5448180966b.34.1736270328241;
        Tue, 07 Jan 2025 09:18:48 -0800 (PST)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f011f87sm2414809266b.142.2025.01.07.09.18.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 09:18:47 -0800 (PST)
Message-ID: <ffe32e3d-021f-4224-96d5-e3e496dcd950@gmail.com>
Date: Tue, 7 Jan 2025 18:18:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not
 copying
To: "Kumar, Manu" <kumar.manu@siemens.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <TYZPR06MB5178D4A9A5949582BCFB9C5286102@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <b8af4304-ee4b-4903-8d4d-2d91b804e393@gmail.com>
 <SI2PR06MB517020EDA3F2E22BC5EA20B186102@SI2PR06MB5170.apcprd06.prod.outlook.com>
 <767702b3-302c-4695-96f2-7299547f2da8@gmail.com>
 <TYZPR06MB51784D93F9A0D31C8265747A86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <5af3a54b-8f9f-4a16-ab36-e886d23fc2c9@gmail.com>
 <TYZPR06MB5178AF5905FCB5E5C445A0AB86112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <TYZPR06MB51783A4E0A436D1469C9120286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
 <6bd68955-44a5-4a5b-b1f8-990643cb698a@gmail.com>
 <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <TYZPR06MB5178AB7FF8792D7ABBC1A47286112@TYZPR06MB5178.apcprd06.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jan 2025 17:18:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64512

Beside that change you made, you also need to make sure that lighttpd 
installs the files to the location where you expect them to be. Add 
something like this in a bbappend (this option comes from the 
meson_options.txt file, where the module install location can be specified):

EXTRA_OEMESON:append = " -Dmoduledir=lib "


On 07.01.25 17:37, Kumar, Manu wrote:
> I have tried to change "sources/oe-core/meta/recipes-extended/lighttpd/lighttpd_1.4.67" only last 2 lines as below,
> python populate_packages:prepend () {
>      lighttpd_libdir = d.expand('${libdir}')
>      do_split_packages(d, lighttpd_libdir, r'^mod_(.*)\.so$', 'lighttpd-module-%s', 'Lighttpd module for %s', extra_depends='')
> }
>
> But I am getting error as below,
>
> NOTE: Executing Tasks
> ERROR: lighttpd-1.4.67-r0 do_package: QA Issue: lighttpd: Files/directories were installed but not shipped in any package:
>    /usr/lib/lighttpd/mod_alias.so
>    /usr/lib/lighttpd/mod_wstunnel.so
>    /usr/lib/lighttpd/mod_redirect.so
>    /usr/lib/lighttpd/mod_webdav.so
>    /usr/lib/lighttpd/mod_evhost.so
>    /usr/lib/lighttpd/mod_authn_file.so
>    /usr/lib/lighttpd/mod_secdownload.so
>    /usr/lib/lighttpd/mod_staticfile.so
>    /usr/lib/lighttpd/mod_usertrack.so
>    /usr/lib/lighttpd/mod_setenv.so
>    /usr/lib/lighttpd/mod_proxy.so
>    /usr/lib/lighttpd/mod_indexfile.so
>    /usr/lib/lighttpd/mod_auth.so
>    /usr/lib/lighttpd/mod_ajp13.so
>    /usr/lib/lighttpd/mod_deflate.so
>    /usr/lib/lighttpd/mod_simple_vhost.so
>    /usr/lib/lighttpd/mod_scgi.so
>    /usr/lib/lighttpd/mod_openssl.so
>    /usr/lib/lighttpd/mod_vhostdb.so
>    /usr/lib/lighttpd/mod_accesslog.so
>    /usr/lib/lighttpd/mod_fastcgi.so
>    /usr/lib/lighttpd/mod_ssi.so
>    /usr/lib/lighttpd/mod_dirlisting.so
>    /usr/lib/lighttpd/mod_status.so
>    /usr/lib/lighttpd/mod_access.so
>    /usr/lib/lighttpd/mod_expire.so
>    /usr/lib/lighttpd/mod_userdir.so
>    /usr/lib/lighttpd/mod_sockproxy.so
>    /usr/lib/lighttpd/mod_evasive.so
>    /usr/lib/lighttpd/mod_cgi.so
>    /usr/lib/lighttpd/mod_extforward.so
>    /usr/lib/lighttpd/mod_rrdtool.so
>    /usr/lib/lighttpd/mod_uploadprogress.so
>    /usr/lib/lighttpd/mod_rewrite.so
> Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
> lighttpd: 34 installed and not shipped files. [installed-vs-shipped]
> ERROR: lighttpd-1.4.67-r0 do_package: Fatal QA errors were found, failing task.
>
>
> Can you please help me how to overriding it in a bbappend or similar as you mentioned in older thread.. it helps !!!
>
> -----Original Message-----
> From: Gyorgy Sarvari <skandigraun@gmail.com>
> Sent: Tuesday, January 7, 2025 3:54 PM
> To: Kumar, Manu (FT D IN PAMC MI EMB FW) <kumar.manu@siemens.com>; yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Query: Regarding lighttpd/librarries in /usr/lib not copying
>
> On 07.01.25 11:05, Kumar, Manu wrote:
>> reason behind ask this question is.. in earlier tisdk all the modules were there in "/usr/lib" as when we start lightpd service(which was there in (/etc/init.d) it will check modules in "/usr/lib". in the latest tisdk also if I run "systemctl start lighttpd" looks like it is searching "/usr/lib"
>>
> This change comes from this[1] commit (look at the very bottom of it).
> If it causing problems, you can try overriding it in a bbappend or similar. Though maybe it would be more interesting to look into why your ti-sdk is looking for these files at the incorrect place. TI layers are usually reasonably maintained, I'd expect them to follow changes in the oe-core layer...
>
> [1]:
> https://git.yoctoproject.org/poky/commit/meta/recipes-extended/lighttpd?h=kirkstone&id=3755f6c4eb404b6218784ad21c3a56312c425cc2
>
>
>> -----Original Message-----
>> From: Kumar, Manu (FT D IN PAMC MI EMB FW)
>> Sent: Tuesday, January 7, 2025 2:37 PM
>> To: Gyorgy Sarvari <skandigraun@gmail.com>;
>> yocto@lists.yoctoproject.org
>> Subject: RE: [yocto] Query: Regarding lighttpd/librarries in /usr/lib
>> not copying
>>
>> Ok , I will try and let you know !!
>>
>> But how can I make all the modules to be present inside "/usr/lib" instead of "/usr/lib/lighttpd" ?
>>
>> Regards
>> Manu
>>
>>

