Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web12.5228.1612510952855965679
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Feb 2021 23:42:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=csV35JAM;
 spf=pass (domain: gmail.com, ip: 209.85.128.48, mailfrom: robert.berger.yocto.user@gmail.com)
Received: by mail-wm1-f48.google.com with SMTP id i9so5111148wmq.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 Feb 2021 23:42:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=xQbYap+n55n2wcdcIQvHCLmq+pQvVKxGnBZVSzi3Ekk=;
        b=csV35JAMqFMtYUMxL9WhFH5wd60o1/9goOuTzHDOjHGZQ005v6yYSmT9gNHMFMDZNn
         ZByMdBGQ9xgf4FbzYXLj8OvTyrSxa5qQXg2qhfIRZJ4aCdVk42tMqxbHUnphQv9fZUiI
         iEdsHhmAgi8Viktbel99aLpV6jkF9NlH5EDx0ZF2MRT4r5a1blBJevqdX9FLaOALoMIp
         6/vUTF1+Nhq84keI5iuIA8oYM3xQJP5Ik7NyDQjIQD1ezddXFs4Er/4LXCJr3QXWknEp
         f7JCTlqWXAwlumRILfxxd8zC9lL32cJDA4Ez1hBFaGWg3rxP9QyVn0NhcGaMXMs4g5M1
         6/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xQbYap+n55n2wcdcIQvHCLmq+pQvVKxGnBZVSzi3Ekk=;
        b=YEU8mCP9r/wMr4DASvg6WcMhm1jz2aHvWDLsVW4z90kw6ESkSReunAmgQt6+G0C2ZV
         +ks05XNmgA0MpdeaSFjpVMKg+wV2ehG7k8Y4t2l5AJEOBwiLcoZxsjuIIRt+ifMgSW0n
         JmeZ3S5fpKugAwzRkeRh5w69qmzguFD2IcvjCXqyUx6lqOUS6jsi3pHu0blF+z3a+Tkd
         lEOtlHVBaiuS08wFgGnyWO4OKpORdkMRJ1+cdUhF3uwl6dU84p3/qnM5R6U2+oEIapLU
         l6MKS90ASXNEi16QgYyFTyDd8ISvt+d0vET4WtlAfvmgduE7/lNkUxeSclrQFjYTTzSG
         tnIQ==
X-Gm-Message-State: AOAM532f0n/n0VDBrNzu9jWniUPBMlk4HmMPcuuKK/JTRjT9kb1VkDfi
	7IvGLwp7BWSt79sVtQe3oZWFuO1ZIIk=
X-Google-Smtp-Source: ABdhPJybb9nsBndOPrQIjcG3RsUVHGSNQLnxZn0kPhA1zRn5MYgOthnooAdrH6XkUM7nPodju2T+Aw==
X-Received: by 2002:a05:600c:4fc6:: with SMTP id o6mr2346609wmq.16.1612510951284;
        Thu, 04 Feb 2021 23:42:31 -0800 (PST)
Return-Path: <robert.berger.yocto.user@gmail.com>
Received: from [192.168.42.52] (ppp-2-86-140-5.home.otenet.gr. [2.86.140.5])
        by smtp.gmail.com with ESMTPSA id b4sm10770539wrn.12.2021.02.04.23.42.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 23:42:30 -0800 (PST)
Subject: Re: [yocto] Building eSDK fails #sdk
To: alexander.troff@deveritec.com, yocto@lists.yoctoproject.org
References: <hvee.1612460622520345943.gVz7@lists.yoctoproject.org>
From: "Robert Berger" <robert.berger.yocto.user@gmail.com>
Message-ID: <3bd9810f-e2ef-bf6d-bb1c-5dc41bcfcd66@gmail.com>
Date: Fri, 5 Feb 2021 09:42:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <hvee.1612460622520345943.gVz7@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

My comments are in-line

On 04/02/2021 19:43, alexander.troff@deveritec.com wrote:
> Hello,
> I build the SDK with bitbake core-image-base -c populate_sdk and it 
> works just fine. But trying to build the eSDK with bitbake 
> core-image-base -c populate_sdk_ext results in this error:
> 
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Unable to install 
> packages. Command 
> '/opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/opkg 
> --volatile-cache -f 
> /opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/opkg.conf 
> -t 
> /opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp/ipktemp/ 
> -o 
> /opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/my-os/0.1/sysroots/none  
> --force_postinstall --prefer-arch-to-version   install cppzmq-dev 
> googletest-dev libappcommunicator-dev liblogger-dev libmodbus-dev 
> libmyos-common-dev protobuf-c zeromq-staticdev' returned 255:
> Collected errors:
>   * opkg_prepare_url_for_install: Couldn't find anything to satisfy 
> 'cppzmq-dev'.
> 
> ERROR: Logfile of failure stored in: 
> /opt/build/tmp/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp/log.do_populate_sdk.155
> ERROR: Task 
> (/opt/yocto/poky/meta/recipes-core/meta/buildtools-tarball.bb:do_populate_sdk) 
> failed with exit code '1'

Which version is this?

Can it be reproduced?

If so you might want to add it to https://bugzilla.yoctoproject.org

> 
> 
> The listed Packeges are set in the TOOLCHAIN_TARGET_TASK variable. I 
> tryed using IMAGE_INSTALL_append but this didn't help.
> Does someone have an idea?
> 
> greetings
> Alex

Regards,

Robert

> 
> 
> 
> 

