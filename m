Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AF87C3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 12:13:01 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web11.11786.1743682375226198991
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 05:12:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c2I78HIj;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-39ac56756f6so687149f8f.2
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 05:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743682374; x=1744287174; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C5IdCh8lcAlI8gfj0VcOyQ2IaUwxLvFtfqqQCQM4Q0g=;
        b=c2I78HIjD2aVCfVMwj6s66+tnvsJV2xOE7ncf6/QGBrkQFR1hSf5lfnmJt1XFAtoDG
         0NAOpNUSJ+TRVPr1klCjHd2gvpWcoSaKvaCnp3tor8fyVvu/dYz679muFXIYnBVUlqZ4
         JE39JrLa2SqH+k9xB/NPm1SM8a7YCflRo3qlkSp7dfXLM1HOIYjI742E2xradz97k3Lh
         ShJsETzLLTz/umEaUUVpL6Z0yc1aAeqbDsYViNzNoLBAtXSLQw6wdQ0YlUiEi+6M6Qfl
         4lLmK6uaAnsVy/ImslBDBVn9+SdUdGIYjwVx5OCd7IU4sUCDmd06ay585GGbtTt+IbNF
         oe0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743682374; x=1744287174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=C5IdCh8lcAlI8gfj0VcOyQ2IaUwxLvFtfqqQCQM4Q0g=;
        b=JJE1smGIdWZmVdyHPJ/y8v5wUVsVDZ5AVbe0Qw7JtOQOy0esYq3C5dA4z4uBx1JPL/
         XlTd4FNNsFSbl4qcBrUs4s5dc/s6f3aQpnu+xTHLBPS4PfDRgU3HIc4HodUH+8f4EtYM
         35oWzeW+Duw+riaRIwDZF8ot919+f+jfJQxm3uYpVOvKVs3n2j7lfPEFvnvIWsOt1YC3
         G+cQki5iYq1fdq9IHluiwLi+WNebvqkvkMRvQHvlh++odp476Wqfq8r01f7WOSvhmr7M
         lZyJjKuAunEZ+HHIyegW47XjvFKNI+AmOXxl+rxjHEpH9w4LuduRkE1RqLfHIriaMlwO
         zt1A==
X-Gm-Message-State: AOJu0YyKoENP65SOQpmZnQzlOQqC/GqyaMObUHB0PbveIh+U4rBxslHv
	TZw2n6yYXYGII6GDt9WDvlTLjmHBySq6UyPzOHHMeZJ+9iajSH7ozNjIHg==
X-Gm-Gg: ASbGncv4heUyfMhsOv5pHzWH6H4yf1znige/xsLeuijFi5RAtu/SC6Ab0z+7379aoX9
	hQKS0xXkETW/0jRgsN+Aaa+G75meahrFUr2vOj42h0AW/jxYzdqDSkfI7s7CpaNhGJIe7l1FRG3
	PxveLjYN+ssGgn8NMsBcrec0cV/j84xdFiDpuxKIV4FG8fEj503tavXw02FCuiuNVRHy5oAV56J
	kELXiaVLq/VUPyuTDCous/tr+VFp28+3Y78Iyy//SPNEwSu5K67c6LIYjiwdLlEvMgT3vZ5xjjR
	YOxzMVFeAZMr6DqNuV1Y9Y6hwOZhyGJAIOl7W5DRzz4vjZs/DSu5+K20znHW
X-Google-Smtp-Source: AGHT+IH2GbXp3e/T74G4p0HG3HSqzzS8/d1S3AQsn8sBHxQcKnHfBVP+qWtxQEr62KCIWEjz4iIa2Q==
X-Received: by 2002:a5d:6d8b:0:b0:399:6dd9:9f40 with SMTP id ffacd0b85a97d-39c2f8c94camr1842100f8f.9.1743682373035;
        Thu, 03 Apr 2025 05:12:53 -0700 (PDT)
Received: from [192.168.1.2] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b6778sm1595464f8f.46.2025.04.03.05.12.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 05:12:52 -0700 (PDT)
Message-ID: <e1bfa8f7-0752-42ad-880d-f16bc324bf6b@gmail.com>
Date: Thu, 3 Apr 2025 14:12:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Yocto Kirkstone IMA Kernel Flags #kernel #kirkstone
To: yocto@lists.yoctoproject.org, miriam.rico@enigmedia.es
References: <xMfo.1743597142032633477.or5v@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <xMfo.1743597142032633477.or5v@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 12:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65078

To me it looks like the KERNEL_FEATURES are always processed last, so I
guess it always overwrites the corresponding config fragments?

I don't see a nice way out of this at the first sight[1]... as a not too
nice (but most likely working) hack, you could remove
"features/ima/ima.scc" from KERNEL_FEATURES, and add the corresponding
(modified) config to your own fragment from ima.cfg.

[1]: which doesn't mean a lot, but will see if correction comes

On 4/2/25 14:32, miriam.rico via lists.yoctoproject.org wrote:
> Hi,
>  
> I want to add IMA (Integrity Measurement Architecture) support to my
> Yocto build and I enabled it on my local.conf by adding: 
> 
> DISTRO_FEATURES:append = " integrity ima"
> IMAGE_CLASSES += "ima-evm-rootfs"
> IMA_EVM_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
> IMA_EVM_PRIVKEY = "${IMA_EVM_KEY_DIR}/ima_privkey.pem"
> IMA_EVM_X509 = "${IMA_EVM_KEY_DIR}/x509_ima.der"
> EVM_X509 = "${IMA_EVM_KEY_DIR}/x509_evm.der"
>  
> Also, I added the meta-integrity layer to my bblayers.conf file.
>  
> After building the image, I noticed that the used algorithm is sha1. I
> would like to enable the sha256 algorithm, but I am having problems with
> it. I have tried to enable it using the kernel flags, but I can't get
> it. I have reviewed the configuration that applies when IMA is enabled
> and found it to be as follows (looking at the config file generated
> after compiling the kernel and doing a grep for IMA, I am using *Kernel
> version 5.15*):
>  
> # SPDX-License-Identifier: MIT
> CONFIG_IMA=y
> CONFIG_IMA_MEASURE_PCR_IDX=10
> CONFIG_IMA_NG_TEMPLATE=y
> CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
> CONFIG_IMA_DEFAULT_HASH_SHA1=y
> CONFIG_IMA_DEFAULT_HASH="sha1"
> CONFIG_IMA_APPRAISE=y
> CONFIG_IMA_APPRAISE_BOOTPARAM=y
> CONFIG_IMA_TRUSTED_KEYRING=y
> CONFIG_SIGNATURE=y
> CONFIG_IMA_WRITE_POLICY=y
> CONFIG_IMA_READ_POLICY=y
> CONFIG_IMA_LOAD_X509=y
> CONFIG_IMA_X509_PATH="/etc/keys/x509_ima.der"
>  
> So I created a fragment file with the following:
>  
> CONFIG_IMA_SIG_TEMPLATE=y
> CONFIG_IMA_DEFAULT_TEMPLATE="ima-sig"
> CONFIG_IMA_DEFAULT_HASH_SHA256=y
> CONFIG_IMA_DEFAULT_HASH="sha256"
> 
> Then, I add it to my linux-yocto_%.bbappend file:
> 
> FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> SRC_URI += "file://enable-ima.cfg "
> 
> But after recompiling the kernel, the template and the hash remain "ima-
> ng" and "sha1". 
> 
> I have also tried to create the fragment file using menuconfig,
> activating "ima-sig" and "sha256", using diffconfig to create
> fragment.cfg file, copying the fragment file to meta-my-layer/recipes-
> kernel/linux/files and adding it to my linux-yocto_%.bbappend file, but
> the result has been the same, the template and the algorithm have not
> changed.
>  
> FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> SRC_URI += "file://fragment.cfg "
>  
> I have been going through the tasks logs trying to see where the problem
> might be and found do_kernel_configme log. In the log, I saw the following:
> 
> Final scc/cfg list:  /home/.../Yocto/build/tmp/work/genericx86_64-poky-
> linux/linux-yocto/5.15.72+gitAUTOINC+441f5fe000_0b628306d1-r0/kernel-
> meta/bsp/common-pc-64/common-pc-64-standard.scc /home/
> /home/.../Yocto/my_yocto_project/meta-my-layer/recipes-kernel/linux/
> files/enable-ima.cfg
> /home/.../Yocto/my_yocto_project/meta-security/meta-tpm/recipes-kernel/
> linux/linux-yocto/tpm2.scc features/ima/ima.scc
>  
> So I thought that maybe the kernel features are applied after the user-
> created fragments. So, I added the following options to my enable-
> ima.cfg fragment to see if it was true or not.
>  
> CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=y
> CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=y
> CONFIG_IMA_APPRAISE_BUILD_POLICY=y
> CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=y
> CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=y
>  
> After recompiling the kernel, the result was the following:
>  
> # CONFIG_MDIO_BCM_UNIMAC is not set
> CONFIG_FB_CFB_IMAGEBLIT=y
> CONFIG_FB_SYS_IMAGEBLIT=y
> CONFIG_FRAMEBUFFER_CONSOLE_DETECT_PRIMARY=y
> # CONFIG_HID_PRIMAX is not set
> CONFIG_IMA=y
> CONFIG_IMA_MEASURE_PCR_IDX=10
> CONFIG_IMA_NG_TEMPLATE=y
> # CONFIG_IMA_SIG_TEMPLATE is not set
> CONFIG_IMA_DEFAULT_TEMPLATE="ima-ng"
> CONFIG_IMA_DEFAULT_HASH_SHA1=y
> # CONFIG_IMA_DEFAULT_HASH_SHA256 is not set
> # CONFIG_IMA_DEFAULT_HASH_SHA512 is not set
> CONFIG_IMA_DEFAULT_HASH="sha1"
> CONFIG_IMA_WRITE_POLICY=y
> CONFIG_IMA_READ_POLICY=y
> CONFIG_IMA_APPRAISE=y
> # CONFIG_IMA_ARCH_POLICY is not set
> CONFIG_IMA_APPRAISE_BUILD_POLICY=y
> CONFIG_IMA_APPRAISE_REQUIRE_FIRMWARE_SIGS=y
> CONFIG_IMA_APPRAISE_REQUIRE_KEXEC_SIGS=y
> CONFIG_IMA_APPRAISE_REQUIRE_MODULE_SIGS=y
> CONFIG_IMA_APPRAISE_REQUIRE_POLICY_SIGS=y
> CONFIG_IMA_APPRAISE_BOOTPARAM=y
> CONFIG_IMA_APPRAISE_MODSIG=y
> CONFIG_IMA_TRUSTED_KEYRING=y
> # CONFIG_IMA_BLACKLIST_KEYRING is not set
> CONFIG_IMA_LOAD_X509=y
> CONFIG_IMA_X509_PATH="/etc/keys/x509_ima.der"
> CONFIG_IMA_APPRAISE_SIGNED_INIT=y
> CONFIG_IMA_MEASURE_ASYMMETRIC_KEYS=y
> CONFIG_IMA_QUEUE_EARLY_BOOT_KEYS=y
> # CONFIG_IMA_SECURE_AND_OR_TRUSTED_BOOT is not set
> # CONFIG_IMA_DISABLE_HTABLE is not set
>  
> The newly added options appear in the configuration.
>  
> Can anyone tell me which is the order of applying Kernel configuration?
> I am not sure whether I am following the correct order. How can I apply
> my Kernel configuration? 
>  
> Any answer will be appreciated.
>  
> Thank you,
>  
> Miriam
>  
>  
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65063): https://lists.yoctoproject.org/g/yocto/message/65063
> Mute This Topic: https://lists.yoctoproject.org/mt/112045333/6084445
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


