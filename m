Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web08.810.1616610918692132246
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 11:35:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bp0re12a;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id x26so17960292pfn.0
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 11:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OgqXUE1B5qAQPJ7SDmz8p8mOeyAzQgMSR+CPFoVaShA=;
        b=Bp0re12aXq+84dQiaEU2U00YlNopoa8YJYadWDrTB0ezszzjX1tHMXhl/qcRdYaEkH
         xuEv1Jj903ATPgKv1UqstoJgJwDs6pGjLp3WXJxWdEUqf7abhNCzwvtiScr/kNJay2Rs
         vg02WCV2a1yb0+J5TLdgKpmTRF5ukdDwtE+uzka4bium38Z4CtIBDN/T5f8D8/wFYf1V
         r3FJQIUYZrIPytfOIGFrD8uTQRR34YICKVCGWY7uLByA7S0aVoC4GftwPAiHxiHdHNVr
         rio/c7/rBZ38keHX6EViMT7lq9t5tlzn9jRBj4dL3MC5srkpTKYBg8RCvnlufDBT0ZVB
         +I7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=OgqXUE1B5qAQPJ7SDmz8p8mOeyAzQgMSR+CPFoVaShA=;
        b=PNtOqcXfNWtYsJ5+D9UUVlSt0oclVyYxgFMhJyr2mrhNOiU1XFNDM7M4DVHMh06RKG
         3oi5RkKYyR9Z1wI6Ttape7MBeISJi87Y4Q1HHwfTeFnIkaaC9yWDOF/SrSADsTZDR1eR
         T8wCeOxZcnlsJ68H82Jlag9C+xQLkaDmYASqq9MqPuKTIGtcA81e6gl96eyWfhNvU998
         YCUsNKhxDsoYeO5F8x28ZL3G9vaM+vdEL7OPJetQl03j/6hZsUPAnmmHU4LLs2E4ys6t
         XT8zftuByUWggaE3Uipj+vGsb2vsQRVusfZcvFGs6uLPNDqJSw/hwhRNG5j6b8+aG0L7
         sj2g==
X-Gm-Message-State: AOAM530K7nmLg6OtxaJqv1h61x2rr1EPUesDPqFX/Hx2lts+KX+qAPBn
	q3egt8/Zg+tHqzEjK+AXldxHUiL/ZOnq0g==
X-Google-Smtp-Source: ABdhPJxWgrJZ2AwT2MMBErO58Cs7k+Z6fCTmu6k+o3xgaRIHww6cGzEBMfSACj8Rqts/GcpLuZE9Qw==
X-Received: by 2002:a17:902:f68a:b029:e5:b17f:9154 with SMTP id l10-20020a170902f68ab02900e5b17f9154mr4836918plg.28.1616610917292;
        Wed, 24 Mar 2021 11:35:17 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:a0f0:2da1:1afd:1712:ea8b? ([2601:646:9200:a0f0:2da1:1afd:1712:ea8b])
        by smtp.gmail.com with ESMTPSA id i13sm3069615pgi.3.2021.03.24.11.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 11:35:16 -0700 (PDT)
Subject: Re: [yocto] #yocto #sdk
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.166F53A2942DA5DE.11971@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <e443df78-b218-0cd7-8179-b68428ce2cb9@gmail.com>
Date: Wed, 24 Mar 2021 11:35:15 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <MADEUP.166F53A2942DA5DE.11971@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

I think there still are signature differences. perhaps try to add 
incremntally on top of minimal sdk and see where it breaks.

On 3/24/21 9:18 AM, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> I corrected for the sig warnings, but still have an issue with the 
> extended SDK installing correctly
> 
> (though I think I am close…)
> 
> *Note: The only issue now appears to be around the “…/poky/meta” layer…  
> and all with regards to “do_populate_sysroot” task…*
> 
> I am building my kernel clean, and update the MIRRORS after…
> 
> The unihash & taskhash values are identical with respect to each 
> component below…
> 
> I am building “uninative” support into the EXT SDK only…
> 
> *None of the poky/meta references below are being modified by bbappends… 
> should be a straight build*…
> 
> The EXT SDK local.conf appears to be setup correctly for my build env…
> 
> Am I missing something, a required variable setting, an additional 
> support component ? *- seems odd it is all centered around the one 
> unmodified layer…*
> 
> I am able to build and install the “minimum” EXT SDK correctly, but I of 
> course need the toolset…
> 
> I would appreciate any advice on how I might resolve this issue.
> 
> Install Output:
> 
> 10:50 smonsees@yix490016 
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk>ls
> 
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.host.manifest
> 
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
> 
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.target.manifest
> 
> limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.testdata.json
> 
> x86_64-buildtools-nativesdk-standalone-3.0.4.host.manifest
> 
> x86_64-buildtools-nativesdk-standalone-3.0.4.sh
> 
> x86_64-buildtools-nativesdk-standalone-3.0.4.target.manifest
> 
> x86_64-buildtools-nativesdk-standalone-3.0.4.testdata.json
> 
> 10:50 smonsees@yix490016 
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk> 
> ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
> 
> LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
> 
> ====================================================================
> 
> Enter target directory for SDK (default: ~/limws_sdk):  
> /disk0/scratch/smonsees/sbcbSDK_EXT
> 
> You are about to install the SDK to 
> "/disk0/scratch/smonsees/sbcbSDK_EXT". Proceed [Y/n]? Y
> 
> Extracting SDK...............done
> 
> Setting it up...
> 
> Extracting buildtools...
> 
> Preparing build system...
> 
> Parsing recipes: 100% 
> |#############################################################################################| 
> Time: 0:01:33
> 
> Initialising tasks: 100% 
> |##########################################################################################| 
> Time: 0:00:00
> 
> Checking sstate mirror object availability: 100% 
> |##################################################################| 
> Time: 0:00:00
> 
> ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/libgcc_9.2.bb:do_populate_sysroot, 
> unihash 
> d5a9dff48660903403f33fe67d6d43e03c97c03232c6d8f0ed71f99a94670bce, 
> taskhash d5a9dff48660903403f33fe67d6d43e03c97c03232c6d8f0ed71f99a94670bce
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/gmp/gmp_6.1.2.bb:do_populate_sysroot, 
> unihash 
> cde9ef4fc769ee9a2733a1023534c15bfe199009270bcebb6c24c638729194dc, 
> taskhash cde9ef4fc769ee9a2733a1023534c15bfe199009270bcebb6c24c638729194dc
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot, 
> unihash 
> a1def57d3e655defdf1f85eec749be672ffe52a0a3c247585da9d6c57617cca2, 
> taskhash a1def57d3e655defdf1f85eec749be672ffe52a0a3c247585da9d6c57617cca2
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/gcc-cross_9.2.bb:do_populate_sysroot, 
> unihash 
> 5f0f3533314c754b184e6f63f11ef2b570c7a5d47bc18fee2b4217aa294f08eb, 
> taskhash 5f0f3533314c754b184e6f63f11ef2b570c7a5d47bc18fee2b4217aa294f08eb
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot, 
> unihash 
> d5e6bedb0cfb876a2925ea2e7f3bd00b090326b1cebf1182a6322974a6f055a3, 
> taskhash d5e6bedb0cfb876a2925ea2e7f3bd00b090326b1cebf1182a6322974a6f055a3
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/python/python3_3.7.8.bb:do_populate_sysroot, 
> unihash 
> 8ee0c0eafd3b1c3f774a26f59659fc0c563816b6badfa57d9fa9097a182b1de5, 
> taskhash 8ee0c0eafd3b1c3f774a26f59659fc0c563816b6badfa57d9fa9097a182b1de5
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-gnome/gtk-doc/gtk-doc_1.31.bb:do_populate_sysroot, 
> unihash 
> fbc7421c8a324ed0cbca81f98430f509ce4cf6593b0961cad8109d467df9e35e, 
> taskhash fbc7421c8a324ed0cbca81f98430f509ce4cf6593b0961cad8109d467df9e35e
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/meta/meta-extsdk-toolchain.bb:do_populate_sysroot, 
> unihash 
> b9d46f79061ad82c4630a3db00aefe484f743a84a526e8afb24d953d04752276, 
> taskhash b9d46f79061ad82c4630a3db00aefe484f743a84a526e8afb24d953d04752276
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/attr/attr_2.4.47.bb:do_populate_sysroot, 
> unihash 
> 3a6c84cf03e3103e46c02b01aed446fc31617f348b40d9e51b5b2ee8c2f3d0ee, 
> taskhash 3a6c84cf03e3103e46c02b01aed446fc31617f348b40d9e51b5b2ee8c2f3d0ee
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libmpc/libmpc_1.1.0.bb:do_populate_sysroot, 
> unihash 
> 39109487309272ea510afb753a0dd84775625c73f7a261b9d0078fe0ea718f17, 
> taskhash 39109487309272ea510afb753a0dd84775625c73f7a261b9d0078fe0ea718f17
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot, 
> unihash 
> 51964ba6ff2cd62ad6d9077e9fddfe53be566eb23beca10e9c882a1eee20aa5d, 
> taskhash 51964ba6ff2cd62ad6d9077e9fddfe53be566eb23beca10e9c882a1eee20aa5d
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-multimedia/libpng/libpng_1.6.37.bb:do_populate_sysroot, 
> unihash 
> 6d92093db77054a96cd23e00ca2bf3468a9ae8ebddc191a59e1a0136778d6be1, 
> taskhash 6d92093db77054a96cd23e00ca2bf3468a9ae8ebddc191a59e1a0136778d6be1
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/gcc-cross_9.2.bb:do_gcc_stash_builddir, 
> unihash 
> 62ba54c4db5ba11db400ba0277892d92f665f35b5c334c17f8e6ad9ded9c16b1, 
> taskhash 62ba54c4db5ba11db400ba0277892d92f665f35b5c334c17f8e6ad9ded9c16b1
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot, 
> unihash 
> 01723d04843fdbeec3fabd109c34281bd49c0979e09c722b2c189335cb6c957a, 
> taskhash 01723d04843fdbeec3fabd109c34281bd49c0979e09c722b2c189335cb6c957a
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_populate_sysroot, 
> unihash 
> 19b266239a8f93f5273ac6213d0f58a73bfc1ecbe84c5cfd273f5351b0740ca1, 
> taskhash 19b266239a8f93f5273ac6213d0f58a73bfc1ecbe84c5cfd273f5351b0740ca1
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-graphics/xorg-lib/pixman_0.38.4.bb:do_populate_sysroot, 
> unihash 
> 66cca6669fc3fdc571970b1ccabb7a8b334139013df8b71c8b033d15705ec5a7, 
> taskhash 66cca6669fc3fdc571970b1ccabb7a8b334139013df8b71c8b033d15705ec5a7
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/unfs3/unfs3_git.bb:do_populate_sysroot, 
> unihash 
> 46e3dd7e07935b77a618c4587f5bc8dbaaff1ba030e779683e2bf2679f57c8fb, 
> taskhash 46e3dd7e07935b77a618c4587f5bc8dbaaff1ba030e779683e2bf2679f57c8fb
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/gcc-runtime_9.2.bb:do_populate_sysroot, 
> unihash 
> 7200138112d31332099cf647ee83441c6739d6f276f2ba859bd440b7a4eed9fb, 
> taskhash 7200138112d31332099cf647ee83441c6739d6f276f2ba859bd440b7a4eed9fb
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot, 
> unihash 
> ac801ce28f4bf45c7c08e2721a765872a1bd6561f783c570ed47dad7e9642901, 
> taskhash ac801ce28f4bf45c7c08e2721a765872a1bd6561f783c570ed47dad7e9642901
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/expat/expat_2.2.8.bb:do_populate_sysroot, 
> unihash 
> c47a5a2b37341edbfeab516b931c8f0015b52d6159f251e70f57e086a6502fe1, 
> taskhash c47a5a2b37341edbfeab516b931c8f0015b52d6159f251e70f57e086a6502fe1
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/bison/bison_3.4.1.bb:do_populate_sysroot, 
> unihash 
> f8fb4d2026cb4192c03bc75c357f9890dcb4f7593d23407f9a60c32d383d7c57, 
> taskhash f8fb4d2026cb4192c03bc75c357f9890dcb4f7593d23407f9a60c32d383d7c57
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/dtc/dtc_1.5.1.bb:do_populate_sysroot, 
> unihash 
> 8ee1e9314ae7a6235f2ec876f7d30336d6e65d7879ac17cd1044ac3f20f969ec, 
> taskhash 8ee1e9314ae7a6235f2ec876f7d30336d6e65d7879ac17cd1044ac3f20f969ec
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_populate_sysroot, 
> unihash 
> 7aaaf6c0cf3a9c104029683b93a62b965e91827c487ee707a23c84560aea1d3e, 
> taskhash 7aaaf6c0cf3a9c104029683b93a62b965e91827c487ee707a23c84560aea1d3e
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot, 
> unihash 
> 66c8139add58f12cae0334108b226f4f91f1fdb34fd34822c9ff9612d6c11b64, 
> taskhash 66c8139add58f12cae0334108b226f4f91f1fdb34fd34822c9ff9612d6c11b64
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-graphics/xorg-util/util-macros_1.19.2.bb:do_populate_sysroot, 
> unihash 
> 070d343bb7de5e6402f4190283e6d40ca33031eac71601d7ab92a92ef0e175d0, 
> taskhash 070d343bb7de5e6402f4190283e6d40ca33031eac71601d7ab92a92ef0e175d0
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/python/python3-setuptools_41.2.0.bb:do_populate_sysroot, 
> unihash 
> e8771b3e23f0d5c3e799b093dd9657a2fd863abf459fa500399930111a8fd388, 
> taskhash e8771b3e23f0d5c3e799b093dd9657a2fd863abf459fa500399930111a8fd388
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/qemu/qemu-system-native_4.1.0.bb:do_populate_sysroot, 
> unihash 
> 33ac287a8d8aded61eb77dd21cb3c54986126430c78a243f706a5917ef0a0183, 
> taskhash 33ac287a8d8aded61eb77dd21cb3c54986126430c78a243f706a5917ef0a0183
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/mpfr/mpfr_4.0.2.bb:do_populate_sysroot, 
> unihash 
> 25d61942ed599e037b2e75a5b722ce5ff251005c2a4ee23e9faef34c9e54777b, 
> taskhash 25d61942ed599e037b2e75a5b722ce5ff251005c2a4ee23e9faef34c9e54777b
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot, 
> unihash 
> 6ebe8680a921a8927ef6cd0061b2b50667bb787be010c8ee4ca6ccc3593024b7, 
> taskhash 6ebe8680a921a8927ef6cd0061b2b50667bb787be010c8ee4ca6ccc3593024b7
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot, 
> unihash 
> 28e64747a95953ec8626d3027958e12d1fd854a7615bc69cf5adbbc3d49c323a, 
> taskhash 28e64747a95953ec8626d3027958e12d1fd854a7615bc69cf5adbbc3d49c323a
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/libtirpc/libtirpc_1.1.4.bb:do_populate_sysroot, 
> unihash 
> 147f1ca7d20e89f2786b48fcda4ebaf36c1c3d941b53b0b8b56c42beb9220c1d, 
> taskhash 147f1ca7d20e89f2786b48fcda4ebaf36c1c3d941b53b0b8b56c42beb9220c1d
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/qemu/qemu-native_4.1.0.bb:do_populate_sysroot, 
> unihash 
> 00651d4d53b4b7b10e44770326d5f0a1f5482c1262671621523ba12c21508977, 
> taskhash 00651d4d53b4b7b10e44770326d5f0a1f5482c1262671621523ba12c21508977
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_populate_sysroot, 
> unihash 
> bf9b767f8e30be92fa06079f2e7350aa304648b0d113829d315e6cb64bad0565, 
> taskhash bf9b767f8e30be92fa06079f2e7350aa304648b0d113829d315e6cb64bad0565
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glibc/glibc_2.30.bb:do_stash_locale, 
> unihash 
> d64e054d019028151912ffface31585789df48f4de7e3a66b201cd614c2f4aca, 
> taskhash d64e054d019028151912ffface31585789df48f4de7e3a66b201cd614c2f4aca
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/ninja/ninja_1.9.0.bb:do_populate_sysroot, 
> unihash 
> ab3ecdf2561adc51338d36576f60eab1e05fc09ed69bb6444075d7adbeb57b9e, 
> taskhash ab3ecdf2561adc51338d36576f60eab1e05fc09ed69bb6444075d7adbeb57b9e
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/sqlite/sqlite3_3.29.0.bb:do_populate_sysroot, 
> unihash 
> c1a988a16d4368098e178f7fe5f0e2e5f8adf4fa485a7b79c4c093a38005264e, 
> taskhash c1a988a16d4368098e178f7fe5f0e2e5f8adf4fa485a7b79c4c093a38005264e
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot, 
> unihash 
> ad223f3318940531fa279bd74480cd6410abc46644f8fe98f7399a71cfe09179, 
> taskhash ad223f3318940531fa279bd74480cd6410abc46644f8fe98f7399a71cfe09179
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot, 
> unihash 
> be5aa9a356c12c9b4220c3d3d6dfe16c737e9be88e7d331c0511b275e4d603c4, 
> taskhash be5aa9a356c12c9b4220c3d3d6dfe16c737e9be88e7d331c0511b275e4d603c4
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot, 
> unihash 
> 9c37027658f2832321efe3657d91f29d1bf286ad1fda0c9916b256adfa246455, 
> taskhash 9c37027658f2832321efe3657d91f29d1bf286ad1fda0c9916b256adfa246455
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/readline/readline_8.0.bb:do_populate_sysroot, 
> unihash 
> 3d909d0d6de7cf72b631aa1805efc1147459bef5bddca5f60ff07022ba777e0e, 
> taskhash 3d909d0d6de7cf72b631aa1805efc1147459bef5bddca5f60ff07022ba777e0e
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/libnsl/libnsl2_git.bb:do_populate_sysroot, 
> unihash 
> 19357ca137093c4e1e063d14a0d3844f889dce933a4eebdc34acf0c321d707ec, 
> taskhash 19357ca137093c4e1e063d14a0d3844f889dce933a4eebdc34acf0c321d707ec
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glibc/glibc_2.30.bb:do_populate_sysroot, 
> unihash 
> df6ecc8017c1a3fa278fc743c85fa6049465da674f169777b9a544eb423b84b5, 
> taskhash df6ecc8017c1a3fa278fc743c85fa6049465da674f169777b9a544eb423b84b5
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/gdbm/gdbm_1.18.1.bb:do_populate_sysroot, 
> unihash 
> 8b0d7a859afc0cc39a32d26b8d5c79b5c1b8970a8e5d566098ff59fc916335f5, 
> taskhash 8b0d7a859afc0cc39a32d26b8d5c79b5c1b8970a8e5d566098ff59fc916335f5
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libcap-ng/libcap-ng_0.7.9.bb:do_populate_sysroot, 
> unihash 
> 784e3c4b04d227379d94e85251233a568fb9e9f841d737584882d0da0b009d5c, 
> taskhash 784e3c4b04d227379d94e85251233a568fb9e9f841d737584882d0da0b009d5c
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot, 
> unihash 
> 770d0b4be83a17d65464ade3adc3c6be443a9f8fffbe53d303c5765674a274d7, 
> taskhash 770d0b4be83a17d65464ade3adc3c6be443a9f8fffbe53d303c5765674a274d7
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/unzip/unzip_6.0.bb:do_populate_sysroot, 
> unihash 
> 82d365cde8a3375461fb47f650aa3fd7c8aa029b0cd2f23ccd38b6f73a9902d9, 
> taskhash 82d365cde8a3375461fb47f650aa3fd7c8aa029b0cd2f23ccd38b6f73a9902d9
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot, 
> unihash 
> de3b4482bf2a0878b99c904fecac19e917d374838da4c9df62929bb14d1282d1, 
> taskhash de3b4482bf2a0878b99c904fecac19e917d374838da4c9df62929bb14d1282d1
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/binutils/binutils-cross_2.32.bb:do_populate_sysroot, 
> unihash 
> 50ce76092848b0214480dd7a4f0fcc7e5927f4f8071601bc094847d20d2c879d, 
> taskhash 50ce76092848b0214480dd7a4f0fcc7e5927f4f8071601bc094847d20d2c879d
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot, 
> unihash 
> 90db72e6ab74de51a86e0b14980b2c204076fc3ef8297a374b660d8645853cac, 
> taskhash 90db72e6ab74de51a86e0b14980b2c204076fc3ef8297a374b660d8645853cac
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_5.2.bb:do_populate_sysroot, 
> unihash 
> 7b6f6e59c3431987b308c78d6f72e5aefae1b9afbf158a47540f0db5e04ebdb0, 
> taskhash 7b6f6e59c3431987b308c78d6f72e5aefae1b9afbf158a47540f0db5e04ebdb0
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gdb/gdb-cross_8.3.1.bb:do_populate_sysroot, 
> unihash 
> c623832386a7201b2a59b170e7c9015edfffbfb21dbec6ab44e81662d1d7c504, 
> taskhash c623832386a7201b2a59b170e7c9015edfffbfb21dbec6ab44e81662d1d7c504
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot, 
> unihash 
> 23290d029e88d49579ce286326ba82d42ad77874a2cd0e05e71166b964190822, 
> taskhash 23290d029e88d49579ce286326ba82d42ad77874a2cd0e05e71166b964190822
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libffi/libffi_3.3~rc0.bb:do_populate_sysroot, 
> unihash 
> 5be2fdefd4b14100290247d24d2df8da234ea32cb91e4508ffd793aabc06d30e, 
> taskhash 5be2fdefd4b14100290247d24d2df8da234ea32cb91e4508ffd793aabc06d30e
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/make/make_4.2.1.bb:do_populate_sysroot, 
> unihash 
> 7a82e867fd7be399f5d92200e43de6e7d9d42ad98e5f771a6e54a0975053ae2e, 
> taskhash 7a82e867fd7be399f5d92200e43de6e7d9d42ad98e5f771a6e54a0975053ae2e
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:do_populate_sysroot, 
> unihash 
> 2d20a98fe86b071366643317507293df9594c15528ef49f3fbeeffe4af532501, 
> taskhash 2d20a98fe86b071366643317507293df9594c15528ef49f3fbeeffe4af532501
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gettext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroot, 
> unihash 
> d579308c5efa4cef283785d540731bf0f02dffeef6ea677b0fa7cec6332e7902, 
> taskhash d579308c5efa4cef283785d540731bf0f02dffeef6ea677b0fa7cec6332e7902
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glib-2.0/glib-2.0_2.60.7.bb:do_populate_sysroot, 
> unihash 
> b7ff5dcd7278fab62aa716be6cf652bcc1d463d884738fb3232297fe6f81880a, 
> taskhash b7ff5dcd7278fab62aa716be6cf652bcc1d463d884738fb3232297fe6f81880a
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot, 
> unihash 
> 6765ae416e5360039914d6216c0d02541c5afc070545804303d75d1016b7b460, 
> taskhash 6765ae416e5360039914d6216c0d02541c5afc070545804303d75d1016b7b460
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot, 
> unihash 
> f468831b3be537588a35b7fdf2e1a46dc52d1737fbf168c0e83ff0f162a99cf9, 
> taskhash f468831b3be537588a35b7fdf2e1a46dc52d1737fbf168c0e83ff0f162a99cf9
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-multimedia/alsa/alsa-lib_1.1.9.bb:do_populate_sysroot, 
> unihash 
> 39d5b05d5ec0e2b2abbb710c7c31f17d3047a255f5a11deb121d7323e06fb900, 
> taskhash 39d5b05d5ec0e2b2abbb710c7c31f17d3047a255f5a11deb121d7323e06fb900
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libpcre/libpcre_8.43.bb:do_populate_sysroot, 
> unihash 
> 3eed4e011c853b98bf31e1c1b2eee2073aeb4ef0546c9bd230f2bfcc3ac05088, 
> taskhash 3eed4e011c853b98bf31e1c1b2eee2073aeb4ef0546c9bd230f2bfcc3ac05088
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot, 
> unihash 
> 373490cc20455b0913b69b35ab9cc61340356d7b27f7ecb6cf51a3ad9459a068, 
> taskhash 373490cc20455b0913b69b35ab9cc61340356d7b27f7ecb6cf51a3ad9459a068
> 
> Task 
> virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/unifdef/unifdef_2.11.bb:do_populate_sysroot, 
> unihash 
> 3e6814932d42ab266096948b4b81f9c1fbdbb26f7b990963ca4322a718e13170, 
> taskhash 3e6814932d42ab266096948b4b81f9c1fbdbb26f7b990963ca4322a718e13170
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/libgcc-initial_9.2.bb:do_populate_sysroot, 
> unihash 
> 07136816c5d9bb085d8dab671c1689d08254d92b7e0edbb4a23abb3ae2628bea, 
> taskhash 07136816c5d9bb085d8dab671c1689d08254d92b7e0edbb4a23abb3ae2628bea
> 
> Task 
> /disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb:do_populate_sysroot, 
> unihash 
> 4ba7e532221d903e4c3556460d09d7bf7eabc9c4ca73f6a481849be0eaba23a3, 
> taskhash 4ba7e532221d903e4c3556460d09d7bf7eabc9c4ca73f6a481849be0eaba23a3
> 
> This is usually due to missing setscene tasks. Those missing in this 
> build were: 
> {'/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gettext/gettext-minimal-native_0.19.8.1.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glibc/glibc_2.30.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glibc/glibc_2.30.bb:do_stash_locale',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/meta/meta-extsdk-toolchain.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/binutils/binutils-cross_2.32.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/gcc-cross_9.2.bb:do_gcc_stash_builddir',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/gcc-cross_9.2.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/gcc-runtime_9.2.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/libgcc-initial_9.2.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gcc/libgcc_9.2.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gdb/gdb-cross_8.3.1.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/libtool/libtool-native_2.4.6.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/qemu/qemu-helper-native_1.0.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/qemu/qemu-native_4.1.0.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/qemu/qemu-system-native_4.1.0.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/texinfo-dummy-native/texinfo-dummy-native.bb:do_populate_sysroot',
> 
> '/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_5.2.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-connectivity/openssl/openssl_1.1.1g.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/expat/expat_2.2.8.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/gettext/gettext_0.19.8.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/glib-2.0/glib-2.0_2.60.7.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/ncurses/ncurses_6.1+20190803.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/readline/readline_8.0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/util-linux/util-linux_2.34.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-core/zlib/zlib_1.2.11.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/autoconf-archive/autoconf-archive_2019.01.06.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/autoconf/autoconf_2.69.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/automake/automake_1.16.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/bison/bison_3.4.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/flex/flex_2.6.0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/gnu-config/gnu-config_git.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/make/make_4.2.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/meson/meson_0.51.2.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/ninja/ninja_1.9.0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/patch/patch_2.7.6.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/pkgconfig/pkgconfig_git.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/python/python3-setuptools_41.2.0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/python/python3_3.7.8.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/unfs3/unfs3_git.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/unifdef/unifdef_2.11.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/bzip2/bzip2_1.0.8.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/gperf/gperf_3.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/libnsl/libnsl2_git.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/libtirpc/libtirpc_1.1.4.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/unzip/unzip_6.0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-extended/xz/xz_5.2.4.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-gnome/gtk-doc/gtk-doc_1.31.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-graphics/xorg-lib/pixman_0.38.4.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-graphics/xorg-util/util-macros_1.19.2.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-kernel/dtc/dtc_1.5.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-multimedia/alsa/alsa-lib_1.1.9.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-multimedia/libpng/libpng_1.6.37.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/attr/attr_2.4.47.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/gdbm/gdbm_1.18.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/gmp/gmp_6.1.2.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libcap-ng/libcap-ng_0.7.9.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libffi/libffi_3.3~rc0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libmpc/libmpc_1.1.0.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/libpcre/libpcre_8.43.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/mpfr/mpfr_4.0.2.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/re2c/re2c_1.0.1.bb:do_populate_sysroot',
> 
> 'virtual:native:/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-support/sqlite/sqlite3_3.29.0.bb:do_populate_sysroot'}
> 
> ERROR: Task 
> (/disk0/scratch/smonsees/sbcbSDK_EXT/layers/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_fetch) 
> failed with exit code 'setscene whitelist'
> 
> ERROR: SDK preparation failed: error log written to 
> /disk0/scratch/smonsees/sbcbSDK_EXT/preparing_build_system.log
> 
> 10:52 smonsees@yix490016 
> /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk>
> 
> *From:*Khem Raj <raj.khem@gmail.com>
> *Sent:* Thursday, March 4, 2021 1:22 PM
> *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] #yocto #sdk
> 
> *_External Email Alert_*
> 
> *This email has been sent from an account outside of the BAE Systems 
> network.*
> 
> Please treat the email with caution, especially if you are requested to 
> click on a link, decrypt/open an attachment, or enable macros.  For 
> further information on how to spot phishing, access “Cybersecurity 
> OneSpace Page” and report phishing by clicking the button “Report 
> Phishing” on the Outlook toolbar.
> 
> right, the change seems to be happening in task checksums and that 
> happens if some of bitbake variables change when SDK is built built and 
> when it is being installed ( when it will run parse again ) perhaps the 
> workspace under the hood is still accessible and you can use 
> bitbake-diffsigs to narrow it down the variable that is changing
> 
> On Thu, Mar 4, 2021 at 9:38 AM Monsees, Steven C (US) via 
> lists.yoctoproject.org <http://lists.yoctoproject.org> 
> <steven.monsees=baesystems.com@lists.yoctoproject.org 
> <mailto:baesystems.com@lists.yoctoproject.org>> wrote:
> 
>     I am seeing similar issues on line  for my eSDK install issue, but
>     no resolutions…
> 
>     Can someone advise on best course of action to debug this ?
> 
>     11:10 smonsees@yix490016
>     /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk>
>     ./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
>     <http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh>
> 
>     LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
> 
>     ====================================================================
> 
>     Enter target directory for SDK (default: ~/limws_sdk):
>     /disk0/scratch/smonsees/testSDK
> 
>     You are about to install the SDK to
>     "/disk0/scratch/smonsees/testSDK". Proceed [Y/n]? Y
> 
>     Extracting
>     SDK..............................................................................done
> 
>     Setting it up...
> 
>     Extracting buildtools...
> 
>     Preparing build system...
> 
>     Parsing recipes: 100%
>     |##########################################################################################|
>     Time: 0:01:36
> 
>     Initialising tasks: 100%
>     |#######################################################################################|
>     Time: 0:00:04
> 
>     Checking sstate mirror object availability: 100%
>     |###############################################################|
>     Time: 0:00:02
> 
>     WARNING: The efitools:do_compile sig is computed to be
>     5851605e22907038837428950427053e22ea655641a08b5dafa39d6d6e1c5e15,
>     but the sig is locked to
>     b81a26e3591c71acd3d22212bfdb70a15a0df49af72e7634e6a39851f16e18b5 in
>     SIGGEN_LOCKEDSIGS_t-corei7-64
> 
>     The monkeysphere:do_install sig is computed to be
>     13a65b26dfff91f2432a8064d98003559eafffa214d81c3c6ea112c2dfba0391,
>     but the sig is locked to
>     2058fc9032b0e7f5c1ea358de4fa8d25ccec7204b73ebc636e79222d8cc00469 in
>     SIGGEN_LOCKEDSIGS_t-corei7-64
> 
>     The signature:do_compile sig is computed to be
>     ac0c5c19cdbe7484046657ccb7b768c02fbbabb43166befa93b71a85d5fcf55b,
>     but the sig is locked to
>     cf5c3f72489f447b1199aafe4b4148988ff91cecd970422352f2238afb127683 in
>     SIGGEN_LOCKEDSIGS_t-corei7-64
> 
>     The grub-efi-native:do_clean_grub sig is computed to be
>     4e16b100c32e9428126eb10864508038527cec795c5e4391208d96a55735c90a,
>     but the sig is locked to
>     a2bd26be0297624af53d6f8cf657d79740fb229db821c446d564c5ee9dc80ea3 in
>     SIGGEN_LOCKEDSIGS_t-x86-64
> 
>     The grub-efi-native:do_compile sig is computed to be
>     630cc346f7ececf98c54f9134e8fee546e85c92f1e3c6ac3c258a1cdf24d4565,
>     but the sig is locked to
>     802bba0874ce26169a9e16dcdb440795e8fa904977b036d637d6c4086ce72de8 in
>     SIGGEN_LOCKEDSIGS_t-x86-64
> 
>     The grub-efi:do_clean_grub sig is computed to be
>     faf0ae3c9159ef3ebb13d2521ecf51dfeeac0c2c47691cd0aaa80de91187af3c,
>     but the sig is locked to
>     0075bbd34297bfbc62685ff5477feec11d0dd2bcda6787a151cfb7927a7f39c2 in
>     SIGGEN_LOCKEDSIGS_t-corei7-64
> 
>     The grub-efi:do_compile sig is computed to be
>     30c09f3e8db4059b7e1ff23823f208be94d0e622904fc43eda497027be095a71,
>     but the sig is locked to
>     a9e8ddd9ecac11e67c66d9fccbabe23b6eb4a19c5996baef8ff960dfcdc898ed in
>     SIGGEN_LOCKEDSIGS_t-corei7-64
> 
>     ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
> 
>     Task
>     /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/db/db_5.3.28.bb:do_populate_sysroot,
>     unihash
>     dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c0,
>     taskhash
>     dcfb179ae99ac73583d33eec1357ff5d06fb58f160e5d7285061b6e1c9c3a9c0
> 
>     Task
>     /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-extended/sed/sed_4.2.2.bb:do_package_write_ipk,
>     unihash
>     a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe3,
>     taskhash
>     a37dc1cc0064749d1f6de69d0a9b8eab9ff6ef4089eff28a76e1851f8f8f8fe3
> 
>     Task
>     /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/libatomic-ops/libatomic-ops_7.6.10.bb:do_package_qa,
>     unihash
>     2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add8,
>     taskhash
>     2b17b70b3e1568840e3b39488b9e6470c89d5ffd502f02b2c129331d7609add8
> 
>     Task
>     /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-connectivity/openssh/openssh_8.0p1.bb:do_package_qa,
>     unihash
>     87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a155,
>     taskhash
>     87a24567344a646de9ab6fba50b398e41711ff4d1bca749ebe02d84359c2a155
> 
>     .
> 
>     .
> 
>     https://www.mail-archive.com/search?l=yocto@yoctoproject.org&q=subject:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&o=newest&f=1
>     <https://www.mail-archive.com/search?l=yocto@yoctoproject.org&q=subject:%22Re%5C%3A+%5C%5Byocto%5C%5D+eSDK+install+script+failure%22&o=newest&f=1>
> 
>     https://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html
>     <https://www.yoctoproject.org/pipermail/yocto/2017-August/037359.html>
> 
>     https://bugzilla.yoctoproject.org/show_bug.cgi?id=12344
>     <https://bugzilla.yoctoproject.org/show_bug.cgi?id=12344>
> 
>     *From:* yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org>> *On Behalf Of *Monsees,
>     Steven C (US) via lists.yoctoproject.org <http://lists.yoctoproject.org>
>     *Sent:* Thursday, March 4, 2021 8:13 AM
>     *To:* Monsees, Steven C (US) <steven.monsees@baesystems.com
>     <mailto:steven.monsees@baesystems.com>>;
>     yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.org>
>     *Subject:* Re: [yocto] #yocto #sdk
> 
>     *_External Email Alert_*
> 
>     *This email has been sent from an account outside of the BAE Systems
>     network.*
> 
>     Please treat the email with caution, especially if you are requested
>     to click on a link, decrypt/open an attachment, or enable macros. 
>     For further information on how to spot phishing, access
>     “Cybersecurity OneSpace Page” and report phishing by clicking the
>     button “Report Phishing” on the Outlook toolbar.
> 
>     Is there a list of certain classes that might interfere with the
>     ability of the eSDK to lock down the configuratiuon ?
> 
>     Thanks,
> 
>     Steve
> 
>     *From:* yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org> <yocto@lists.yoctoproject.org
>     <mailto:yocto@lists.yoctoproject.org>> *On Behalf Of *Monsees,
>     Steven C (US) via lists.yoctoproject.org <http://lists.yoctoproject.org>
>     *Sent:* Tuesday, March 2, 2021 3:26 PM
>     *To:* yocto@lists.yoctoproject.org <mailto:yocto@lists.yoctoproject.org>
>     *Subject:* [yocto] #yocto #sdk
> 
>     *_External Email Alert_*
> 
>     *This email has been sent from an account outside of the BAE Systems
>     network.*
> 
>     Please treat the email with caution, especially if you are requested
>     to click on a link, decrypt/open an attachment, or enable macros. 
>     For further information on how to spot phishing, access
>     “Cybersecurity OneSpace Page” and report phishing by clicking the
>     button “Report Phishing” on the Outlook toolbar.
> 
>     I still appear to be having an issue with the SXT SDK install…
> 
>     Building for zeus/x86_64 Intel based platform…
> 
>     I build my kernel image clean, fully functional…
> 
>     Standard SDK builds clean and appears functional…
> 
>     Ext SDK builds clean, but on install I am still seeing Error below…
> 
>     (1)What is it comparing  between unhash/task hash ?, more sig issues ?
> 
>     (2)What is meant by “This is usually due to missing setscene tasks” ?
> 
>     (3)In the local.conf under the SDK they set :
> 
>     SSTATE_MIRRORS += " file://universal/(.*) <file://universal/(.*)>
>     file://universal-4.9/\1 <file://universal-4.9/1>
>     file://universal-4.9/(.*) <file://universal-4.9/(.*)>
>     file://universal-4.8/\1 <file://universal-4.8/1>"
> 
>     Under sdk-extra.conf I set :
> 
>     SSTATE_MIRRORS += file://.* <file://.*>
>     file:///ede/tms/yocto/zeus/sstate_cache/PATH
>     <file:///ede/tms/yocto/zeus/sstate_cache/PATH>
> 
>     My SSTATE_MIRRIOR is based off the clean builds I mentioned above,
>     is this the correct procedure ?
> 
>     I am trying to figure out how best to debug this issue, it is
>     occurring on the post install, and everything pretty much appears in
>     place.
> 
>     Steve
> 
>     14:43 smonsees@yix490038
>     /disk0/scratch/smonsees/yocto/workspace_3/builds2/sbcb-default/tmp/deploy/sdk>./limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh
>     <http://limws-glibc-x86_64-aiox_orange-corei7-64-toolchain-ext-3.0.4.sh>
> 
>     LIMWS (BAE LIMWS base distro) Extensible SDK installer version 3.0.4
> 
>     ====================================================================
> 
>     Enter target directory for SDK (default: ~/limws_sdk):
>     /disk0/scratch/smonsees/testSDK
> 
>     You are about to install the SDK to
>     "/disk0/scratch/smonsees/testSDK". Proceed [Y/n]? Y
> 
>     Extracting
>     SDK..............................................................................done
> 
>     Setting it up...
> 
>     Extracting buildtools...
> 
>     Preparing build system...
> 
>     Parsing recipes: 100%
>     |###########################################################################################|
>     Time: 0:01:32
> 
>     Initialising tasks: 100%
>     |########################################################################################|
>     Time: 0:00:04
> 
>     Checking sstate mirror object availability: 100%
>     |################################################################|
>     Time: 0:00:03
> 
>     ERROR: Task quilt-native.do_fetch attempted to execute unexpectedly
> 
>     Task
>     /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-support/liburcu/liburcu_0.11.1.bb:do_populate_sysroot,
>     unihash
>     cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601,
>     taskhash
>     cdb08644b85fa162bd9f88cb00113fe3193cc347e39e33e8f405f9c23f60c601
> 
>     Task
>     /disk0/scratch/smonsees/testSDK/layers/poky/meta/recipes-devtools/python/python3_3.7.8.bb:do_packagedata,
>     unihash
>     925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f,
>     taskhash
>     925a72cbe872aad09bd3fbbe74ed1c944e9c19a732e120feae5c4784e6330d4f
> 
>     .
> 
>     .
> 
>     .
> 
>     This is usually due to missing setscene tasks. Those missing in this
>     build were:
> 
>     <<appears to list every recipe under ./testSDK/layers directory here>>
> 
> 
> 
> 
> 
> 
