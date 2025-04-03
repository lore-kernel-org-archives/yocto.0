Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A41BC3600C
	for <webhook@archiver.kernel.org>; Thu,  3 Apr 2025 15:57:02 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
 by mx.groups.io with SMTP id smtpd.web11.17162.1743695820616062276
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Apr 2025 08:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JkxpXNpM;
 spf=pass (domain: gmail.com, ip: 209.85.160.175, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-47663aeff1bso9766891cf.0
        for <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 08:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743695819; x=1744300619; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R2+Wd7Fx9Ao2DLdxihcAP/4z9AAn1o+6n+KAaj0JNng=;
        b=JkxpXNpMpbyirXYt57MAUbgeIiIQkeyRUF96oZ5xIQ2acsIoyNvOu3x3E0qw6HvfBB
         cL+NfMtzt0/GY36hC6PO046w+LmmzP+iV/aZyz1lUCu6UaVUTTTaYomSGKcZG/Z7mEkn
         V5rjTjkLC0hiOFc1LHlReJcKdzEEPtXTrcUZkEFCl1W9Ein3U9Gv44LiCqO+YPdgpIhc
         vopvxvtmsd5ONLWMjuz/Vs047gmVq6MiFD9ydFcnpoItiNhSOFBlvEW3pLNRpx11EV4e
         h8ktjyb194EuWolwusQGfiqLi0W+YrTBSML1WqrZUE2AzAOEZt4lb80BxjEkQZcO4df0
         QWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743695819; x=1744300619;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R2+Wd7Fx9Ao2DLdxihcAP/4z9AAn1o+6n+KAaj0JNng=;
        b=hAeHInJNMYRgefQkvavVpzBOlYSwtdKp2vxcohbP8qlV437XjeIEzEaMoDI6wk6uAc
         sYnE1rVWgFlH7B1puxG60mCnkTklyZMmm1mw1yZue7JRmWge0WJRTYIJZSFAAR1bmCd1
         mdFKy0BxAS4pWMNcwzzHBDC0wgCaD2ang6+3oI+xCoM/F6oL/YwWMiiTiMbTFMWp6i/T
         eWtsOsP56ns0iApPIKAXsRqTtE9XkvlcXjnTMz1p49EG6CjSHV5I6k/TWMfzsq4XWD0E
         /IyAQ8jW4d+1Oo/7pYgGq5lKja3JGTwrA9ksMF0kiGtC68IGd8i8FTViBFc7JXKsPZIh
         /JWA==
X-Gm-Message-State: AOJu0Yx0hy6vMABTPtSJiZoPEH7n3iikAzq/5haYjjXz+LpeISJJvFL7
	K6DJRBiMlnXWuyVYm3W4+kqX4k92iBnT9nEzUV2k4fL9dSssoTpdVIlH2ZzdoAo=
X-Gm-Gg: ASbGncuygGqQxEqkZKX3o9RA3GGAzxbS/cGXVGuVV7Rg4t1bn4XhGaSqccCAb02LekB
	eTtvj4N4JPTLfQAU+BlB71oteCqHL6xY3rsT9KV5pKqcGWIbJEYmACzSKZtRLEyrRckzoyIRToW
	a9u3boZXJ2xT3o63R4An+5yy2vnCvvLqVxC/sz/yp6CYLL9ZnrQZEEglorvCTyNTMoaGb23GQ0F
	wHdNpmepkF9SA1WoW3rQbFfGA979o9nwvcfhLKuoiewnGaNibq1k/EtTSTpOqNiNdo9GHmchmIy
	lxP1Pc0h0uXC9bjCRQKK8E1c5+aWCb836M0ln9hSJB69XU/kao/Vb0RbPGJXigL72VO9U7rN79l
	K1LbDcWxqwkQrwFT7jUHBHPw=
X-Google-Smtp-Source: AGHT+IEXA2ZERw9orYP6uzoCGNwoNB2Zvj4zSkjQ4s7bpRhYFHKSE13Mh0dL/TulisEs96ed/6tYDw==
X-Received: by 2002:ad4:5c89:0:b0:6e8:ebc6:fd5f with SMTP id 6a1803df08f44-6ef02c4b79bmr101024486d6.20.1743695819001;
        Thu, 03 Apr 2025 08:56:59 -0700 (PDT)
Received: from gmail.com (pool-174-112-62-108.cpe.net.cable.rogers.com. [174.112.62.108])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6ef0f139490sm8964806d6.93.2025.04.03.08.56.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 08:56:58 -0700 (PDT)
Date: Thu, 3 Apr 2025 11:56:56 -0400
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: yocto@lists.yoctoproject.org, miriam.rico@enigmedia.es
Subject: Re: [yocto] Yocto Kirkstone IMA Kernel Flags #kernel #kirkstone
Message-ID: <Z+6vyKw0b2LW7J29@gmail.com>
References: <xMfo.1743597142032633477.or5v@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xMfo.1743597142032633477.or5v@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Apr 2025 15:57:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65089



In message: [yocto] Yocto Kirkstone IMA Kernel Flags #kernel #kirkstone
on 02/04/2025 miriam.rico via lists.yoctoproject.org wrote:

> Hi,
>  
> I want to add IMA (Integrity Measurement Architecture) support to my Yocto
> build and I enabled it on my local.conf by adding: 
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
> After building the image, I noticed that the used algorithm is sha1. I would
> like to enable the sha256 algorithm, but I am having problems with it. I have
> tried to enable it using the kernel flags, but I can't get it. I have reviewed
> the configuration that applies when IMA is enabled and found it to be as
> follows (looking at the config file generated after compiling the kernel and
> doing a grep for IMA, I am using Kernel version 5.15):
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
> But after recompiling the kernel, the template and the hash remain "ima-ng" and
> "sha1". 
> 
> I have also tried to create the fragment file using menuconfig, activating
> "ima-sig" and "sha256", using diffconfig to create fragment.cfg file, copying
> the fragment file to meta-my-layer/recipes-kernel/linux/files and adding it to
> my linux-yocto_%.bbappend file, but the result has been the same, the template
> and the algorithm have not changed.
>  
> FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
> SRC_URI += "file://fragment.cfg "
>  
> I have been going through the tasks logs trying to see where the problem might
> be and found do_kernel_configme log. In the log, I saw the following:
> 
> Final scc/cfg list:  /home/.../Yocto/build/tmp/work/genericx86_64-poky-linux/
> linux-yocto/5.15.72+gitAUTOINC+441f5fe000_0b628306d1-r0/kernel-meta/bsp/
> common-pc-64/common-pc-64-standard.scc /home/
> /home/.../Yocto/my_yocto_project/meta-my-layer/recipes-kernel/linux/files/
> enable-ima.cfg
> /home/.../Yocto/my_yocto_project/meta-security/meta-tpm/recipes-kernel/linux/
> linux-yocto/tpm2.scc features/ima/ima.scc
>  
> So I thought that maybe the kernel features are applied after the user-created
> fragments. So, I added the following options to my enable-ima.cfg fragment to
> see if it was true or not.
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
> Can anyone tell me which is the order of applying Kernel configuration? I am
> not sure whether I am following the correct order. How can I apply my Kernel
> configuration? 

I've send the order several times for documenation, but I admit that
I haven't really gone to check to see if it is there. I've also answered
on the list a few times over the years, but also, that only helps if
you know what to look/search for.

Fragments are applied in the order they are found. And that order
is of course governed by the standard bitbake variable processing
rules (default values, overrides, etc, etc). A bbappend like you
tried first would work, unless the processing order of the variable
puts another fragment after that manipulates the same variable (as
you also found)

KERNEL_FEATURES are always applied after all "in tree" (aka
kernel-cache) and user supplied fragments (i.e. bbappends), since
KERNEL_FEATURES have more stringent checks to see that they
exist and are applied. They form a "contract" that if they aren't
applied, then we have a problem. Of course the order of KERNEL_FEATURES
is also controlled by normal bitbake variable processing rules.

So yes, if you have another fragment that is modifying an option
that yuo want to apply, you can either :remove that feature / fragment
from the SRC_URI or create a KERNEL_FEATURE that will be applied
after the usersupplied 'standard' fragments.

Bruce

>  
> Any answer will be appreciated.
>  
> Thank you,
>  
> Miriam
>  
>  

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65063): https://lists.yoctoproject.org/g/yocto/message/65063
> Mute This Topic: https://lists.yoctoproject.org/mt/112045333/1050810
> Mute #kernel:https://lists.yoctoproject.org/g/yocto/mutehashtag/kernel
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


