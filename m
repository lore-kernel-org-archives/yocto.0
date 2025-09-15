Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4395CAC592
	for <webhook@archiver.kernel.org>; Mon, 15 Sep 2025 17:07:14 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.296.1757956029683345058
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Sep 2025 10:07:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hxf6tlQL;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: skandigraun@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb7322da8so127249366b.0
        for <yocto@lists.yoctoproject.org>; Mon, 15 Sep 2025 10:07:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757956028; x=1758560828; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=icTbSWTu3/OeimZXoCAwii17svCbyLuXCSPpuJ7feIM=;
        b=hxf6tlQLOxAcXMbR1nVQ3IYjietkpo4REG08WGRhphREKFLTD7B1S7ojFb7aMb0xaw
         yAwZFaH9RdTa5wgdebSj8NEb1p8eSYIKJ7i7K1jNW/ruTw0um7IDj3L1RaPOICguWCbK
         aja9g0sw+e/LGxprygOLMch4fgFOyE/py9gAUeke4smnIbobKCgJeDeVbJa6Ky5f9LfT
         bIYAvmd9NAN0e8sQ2SXYHyRS7TVaCoXP38ZckDhzh9jY6klDy8CZXtt6rG6ocl4YKIIy
         5Bw/NOeA18pn4yVHbOpuuaEzFKuygP3Md8VvefqXbzM4g3HRGuwsUOLIAQp2t1vP2ebY
         QmkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757956028; x=1758560828;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=icTbSWTu3/OeimZXoCAwii17svCbyLuXCSPpuJ7feIM=;
        b=QnaCrZhx98F/WTTCOuGxKY8ZVq8ARNxLzwS5DzQkU6FMk1YIboB8+tCps7pC8sVCi7
         p78AV0uX+xpW+1P2jn7JR1XVXmL4GYVOnSwwKUnXQRRwooPbRwGeCV8R3eqDuY2TqDVP
         mp8+MFTkS91cYnl3r8xu6zBtrsS7nBAp+llPWNJJ1XI47z2PPlOS1GxBtpdK5Z3BggN1
         gMOthZaDU1LNjQM9reS1y1pBEVvznysZISk4UytKr+dJzgKVPNU3of5F6ulrDhreX+cq
         pTyxjUr3QwvuP2f1YhxrZc115YQCE11KxYGsYLSG40lExrs0Q8EAAuZA/UJNMuvcIzeY
         rW8w==
X-Forwarded-Encrypted: i=1; AJvYcCVRHcQofdJCEjzXLiFJQi2uNtkLgUOMt8MHjm7U3tPbsvjX73KADw2q/3G3dzTIGNL9mCigsQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyMYeP5dZSwcU5kl3aJyJK1oZKjYMoGooBV/wO5fSJo55B5tDnQ
	HMqFi2wzBIkI0KdbSr6NmRgULGjL2N9uqRiWs/taaxsiup89gFaanTUV
X-Gm-Gg: ASbGncu0uwXffuvb8Reifj8ieOh9XnOfjDw6bXgUAafmRNFZUxcDBo3IVPoP7UgaFoe
	trVRSOh/S3orr6WtzWcOBCxvBynRqSlFzJ7j71cfWYXel14TFbxdddb9UMhWmvbs1pwmVVpEsTd
	aVNtNi/3gentUJYATjRUDtsxwWegUsY8hoaXcdHfedb2pdr41YzUOuT/JljKua11O9bCr0k7sln
	HSpdFAEq7+MAVwZIJUio9VD1uu7adX6+SWy2LXQHs5csLUrgL90bg0Jhpz+MfGCSSPUqC7LKAb7
	TjhfRdeUKpvANO7ed4StCfg1Rsgw7ASNKQiILzfX0Ji8QocpSbO1oRdQMtK4e/P8P+Z9C4t9e2i
	1K4Llwc56xtzJH7zG4fifj9PebjmF7cR1Mh3mTHuQBA==
X-Google-Smtp-Source: AGHT+IH95WTGRRRbYSM3eANeCmtZ2VHq9H+Gqu+Oe69MisxATfVjb4gZFLwTTDelilI2Y6db8u7V6w==
X-Received: by 2002:a17:906:6a10:b0:b12:162:8347 with SMTP id a640c23a62f3a-b120162f945mr406905666b.16.1757956027662;
        Mon, 15 Sep 2025 10:07:07 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b316e2d4sm982398366b.45.2025.09.15.10.07.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 10:07:07 -0700 (PDT)
Message-ID: <5b4dd6f2-7f22-43c6-ae66-7052f7c379b5@gmail.com>
Date: Mon, 15 Sep 2025 19:07:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] do_package error after building meta-tensorflow and
 libcamera-apps does not detect tensorflow-lite
To: ashish.shrikhande@gmail.com, yocto@lists.yoctoproject.org
References: <0990cea5-1a65-4c61-a627-cd1b7f9875b9@gmail.com>
 <11853.1757954326050371090@lists.yoctoproject.org>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <11853.1757954326050371090@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Sep 2025 17:07:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65839

Have you applied all the mentioned changes? The first 2 should be fixed
by the tflite patch[1] (which packages these missing headers).
For the 3rd point there is an extra patch in the github PR[2], which
addresses it. I haven't seen the last error, but the first three at
least should be gone...

[1]: https://patchwork.yoctoproject.org/project/yocto/patch/20250913173840.3216545-1-skandigraun@gmail.com/
[2]:
https://github.com/agherzan/meta-raspberrypi/pull/1522/files#diff-c47f7714624569c0978292d85655edf001a084d2c2b830147b52647eccba602b

On 9/15/25 18:38, ashish shrikhande6 via Lists.Yoctoproject.Org wrote:
> After Integrating tflite with libcamera I am getting some compilation
> errors:
> 1. 
> | In file included from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.cpp:7:
> |
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:16:10:
> fatal error: tensorflow/lite/builtin_op_data.h: No such file or directory
> |    16 | #include "tensorflow/lite/builtin_op_data.h"
> |       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
>  
> 2. 
>  
> | In file included from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/schema/schema_generated.h:18,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/api/op_resolver.h:29,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/subgraph.h:36,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/async/async_subgraph.h:27,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/async/async_signature_runner.h:24,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/interpreter.h:48,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/interpreter.h:21,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:18,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/object_classify_tf_stage.cpp:8:
> |
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/compiler/mlir/lite/schema/schema_generated.h:21:10:
> fatal error: flatbuffers/flatbuffers.h: No such file or directory
> |    21 | #include "flatbuffers/flatbuffers.h"
> |       |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> | compilation terminated.
>  
> 3.
>  
> | In file included from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/segmentation_tf_stage.cpp:8:
> |
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/segmentation.hpp:15:82:
> error: 'uint8_t' was not declared in this scope
> |    15 |         Segmentation(int w, int h, std::vector<std::string>
> l, const std::vector<uint8_t> &s)
> |       |                                                            
>                      ^~~~~~~
> |
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/segmentation.hpp:12:1:
> note: 'uint8_t' is defined in header '<cstdint>'; this is probably
> fixable by adding '#include <cstdint>'
>  
> 4.
>  
> | In file included from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/c/builtin_op_data.h:24,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/builtin_op_data.h:20,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tf_stage.hpp:16,
> |                  from
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/object_detect_tf_stage.cpp:9:
> |
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/c/common.h:125:7:
> error: ISO C++ forbids flexible array member 'data' [-Werror=pedantic]
> |   125 |   int data[];
> |       |       ^~~~
> |
> ../sources/libcamera-apps-1.9.0+git/post_processing_stages/tensorflow/lite/core/c/common.h:169:9:
> error: ISO C++ forbids flexible array member 'data' [-Werror=pedantic]
> |   169 |   float data[];
> |       |         ^~~~
> | cc1plus: all warnings being treated as errors
>  


