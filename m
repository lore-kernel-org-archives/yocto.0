Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84D1C54E90
	for <webhook@archiver.kernel.org>; Sun, 25 May 2025 06:07:12 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.4615.1748153227846222860
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 May 2025 23:07:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HKmLLaXt;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: skandigraun@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-441d1ed82faso9254155e9.0
        for <yocto@lists.yoctoproject.org>; Sat, 24 May 2025 23:07:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748153226; x=1748758026; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VrJoVoneUqZ3FbDp9x8ygSqCm2pN8aIcPz5++Vao0ko=;
        b=HKmLLaXth3RjDG7XuifXXu+ZsVhaO5jrZRuBMsYHYpxb6ihftzsuYRt/q6FQKNsl/F
         TxfLznmVv//xfs3yx0tEYDyPDT15dgbt1nZl5vCBpGA7AdEjN8kH2epJql0v/Ss7Ry6r
         6LWv0kQrYZZdTEmi/NdNotqC+f3bWVetnCJnOwD9HkVCWZdflIkCgBd8JEElVF4g3Pst
         pWnuOPNMq8fu114gU4e+ef3ckeokHIM+9aKyIkRZKZT0GPgF2ThYffgKeO4Fz3i2Qc6q
         UPnFxTFUm/4lXDGduwyvtp22QO3sCJacLfpYj7ES5GC49QWK6kA39uW3V1E1+cTTW1wv
         tiGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748153226; x=1748758026;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VrJoVoneUqZ3FbDp9x8ygSqCm2pN8aIcPz5++Vao0ko=;
        b=wcksHPExMXFLALnPB++XcQJ5DAgTFfJrjDxa3TrEdcyELMV2A43Bt+iRcgiJrtel2p
         vxOI8+W9r0Xe9ULAufbweYjaP82UnH4xrwbdAhInWyaZZBXeqY8JXonUaahCIMpdCqgf
         dSU7NIyN5vlmeGjmLrA2loawGXWLYPlM1uJyRKn3kLVl0XIUC5JAIcFQOuMLSjQVAqq/
         FraEG8JKr7kBbwv3WrcnOfIstCa7YXC0w8d1fGTYHcO4oy10TuZaURz1XjI+4tFv0scc
         9rKain3+ZR9M0BFCJ5PoBd3QAKXqFRan2f9qzNPs6o73G6K+Raw2wdWqAwyDwhO12dZc
         n/1g==
X-Gm-Message-State: AOJu0YxO1owRmQf6wfwV2qKBCwLkvkvfY76llyFuqA6HbuBGgd9AZGgv
	8KxyDu7cY/3jzR/LKsZK8p3KlSwLo82tF6znTF57/QIZ/YgVMKwuOID0lCibtA==
X-Gm-Gg: ASbGncsVva07y3TMdHo7s3kiFjFIPGMVO7TIGsC3ZXlDMfAoVRH92A7B8Ezv+cANyDq
	Y8DYItUtxL4X1odfNTxTiUQnRkoIdVCksCnSm1x35ZWW2zCcLRqFFO/eiWIj+wCdv+eN43+JrCv
	rDJ9yUhb4tou3P67TqJLgxa1554s83fGTxiOZSrjckZ8FSn0V1KK59NyN6phMInovNhyuQYfIvt
	Wmp0C0iG0cXtCxQx20t8PrxibUhRdNDQw2XrV1fpSvycE/p1i3dSgo+rW1wyK4LwVk8p7VvMem4
	7L5RgMMWv91VWYnTyI5mZdNT0Y6uP9ZWpiSasxVhzXl2VxxvthkOvEsIP7k=
X-Google-Smtp-Source: AGHT+IE1mj6aTdH7pmQjny0XyM3V/OadNp9iXbkPlfo9GmxlFMIhpyrJWJy6M/pi4QZumph8E598yA==
X-Received: by 2002:a05:600c:1d8b:b0:43c:fffc:7886 with SMTP id 5b1f17b1804b1-44c935dca57mr38764975e9.8.1748153225832;
        Sat, 24 May 2025 23:07:05 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f23bfe80sm194503795e9.20.2025.05.24.23.07.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 May 2025 23:07:05 -0700 (PDT)
Message-ID: <18beb35e-66f3-4ecf-9017-31b3b7e23111@gmail.com>
Date: Sun, 25 May 2025 08:07:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How to upgrade rust? #rust #scarthgap #sdk
To: yocto@lists.yoctoproject.org, tsoos99@gmail.com
References: <GR0d.1748137994057198920.MOMS@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <GR0d.1748137994057198920.MOMS@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 25 May 2025 06:07:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65419

On 5/25/25 03:53, Tamás Soós via lists.yoctoproject.org wrote:
> Hi. 
>  
> I'm trying to upgrade rust on Scarthgap. The current version is
> 1.75.0. So I tried to get to 1.76.0.
> I ran devtool upgrade rust-llvm, which seemed to work. I resolved some
> conflicts and was able to build it.
> Then I tried devtool upgrade rust. After getting past the conflicts
> again I get the following error:
> ERROR: rust-1.76.0-r0 do_rust_setup_snapshot:
> ExecutionError('/home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/run.do_rust_setup_snapshot.2027011',
> 127, None, None)
> ERROR: Logfile of failure stored in:
> /home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/log.do_rust_setup_snapshot.2027011
> Log data follows:
> | DEBUG: Executing shell function do_rust_setup_snapshot
> |
> /home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/temp/run.do_rust_setup_snapshot.2027011:
> 152:
> /home/tamas/poky/build/tmp/work/cortexa8t2hf-neon-zeus-linux-gnueabi/rust/1.76.0/rust-snapshot-components/*/install.sh:
> not found
> | WARNING: exit code 127 from a shell command.
> ERROR: Task
> (/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb:do_rust_setup_snapshot)
> failed with exit code '1'
>  
> This part of the recipe didn't seem to have changed. I'm out of ideas.
> What could be going wrong here?

The recommended way to upgrade Rust in Scarthgap would be to use the
meta-lts-mixins layer[1]. It regularly backports the Rust updates from
the master branch. Add it to your project, optionally add the oe-core's
rust folder to BBMASK (or use PREFERRED_VERSION variables), and build away.

[1]: https://git.yoctoproject.org/meta-lts-mixins/ - "scarthgap/rust" branch

>  
> Ultimately I need nativesdk-rust for my app development. Trying to
> build that results in another error:
> ERROR: nativesdk-rust-1.76.0-r0 do_patch: Applying patch
> 'zlib-off64_t.patch' on target directory
> '/home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-rust/1.76.0/rustc-1.76.0-src'
> CmdError('quilt --quiltrc
> /home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-rust/1.76.0/recipe-sysroot-native/etc/quiltrc
> push', 0, 'stdout: Applying patch zlib-off64_t.patch
> patching file vendor/libz-sys/src/zlib/gzguts.h
> patching file vendor/libz-sys/.cargo-checksum.json
> Hunk #1 FAILED at 1.
> 1 out of 1 hunk FAILED -- rejects in file
> vendor/libz-sys/.cargo-checksum.json
> Patch zlib-off64_t.patch does not apply (enforce with -f)
> stderr: ')
> ERROR: Logfile of failure stored in:
> /home/tamas/poky/build/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-rust/1.76.0/temp/log.do_patch.2028507
> ERROR: Task
> (virtual:nativesdk:/home/tamas/poky/build/workspace/recipes/rust/rust_1.76.0.bb:do_patch)
> failed with exit code '1'
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65418): https://lists.yoctoproject.org/g/yocto/message/65418
> Mute This Topic: https://lists.yoctoproject.org/mt/113289446/6084445
> Mute #rust:https://lists.yoctoproject.org/g/yocto/mutehashtag/rust
> Mute #scarthgap:https://lists.yoctoproject.org/g/yocto/mutehashtag/scarthgap
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [skandigraun@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>


