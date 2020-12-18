Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web08.1081.1608309391088656562
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Dec 2020 08:36:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gEvjwZ0Y;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id e2so1648559pgi.5
        for <yocto@lists.yoctoproject.org>; Fri, 18 Dec 2020 08:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=KLfElcmwM9IRap5OJT61vtfLW+wrqTBuzXWMXPjYoTw=;
        b=gEvjwZ0Yq9xH2DuTCg5vAR0xzrZBDejPG/e750UKuXyNoyPtrBgSI/jgk41laX38ZL
         BDehn4dVW5SBJWLEKWOaEuIxN5bybqPy2QA589xgdxfZfsGnz7WUPh+eP9ZD0GrWZ8mc
         ZCJdqoDBEV+oltUqypsMgP8wtE62+7Pgd3WBBBR3wYFIzGbKBWhbRtf4rIBrozpqsWLn
         hrpsL1leAQ0zUtiKStDXaHES0v2zH/cC8uH716bvJl0jMMuoH/GafDlLcCTxYHZ5GnCi
         qOQMpg8yeixT6xgAALQhnFmbHP64SEsLaXU6GjAShzBys3Z/WFzTJmVeeE65+gc5H56O
         tYKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=KLfElcmwM9IRap5OJT61vtfLW+wrqTBuzXWMXPjYoTw=;
        b=GDZXaFQ4LYi42m6RijuqPov0hkSCqi3Xb79hxsUOxChcxa9hp5wYfZ1EMfwezT2V1l
         LM92Hy9vPrVQ9jGDCpkUYVbNSr0WSDRJfxLpqSNPGKY7hgY810QEr5kSnHNlS5ZyKZ8A
         v2JnT7tu6aSo5X7JDnrdLDGkDUtGjsp9Y6vDp69/zzB2IFCCpQL4BUYGhfvVGKaFW1NT
         oAZtl3xVekD9T6KnZIpcVefccVM/HXw+rgZNvz1ntiZuU4kx+QkINpp9rmzEmtzJAwe9
         RucyCbI/7UIquEXtn7wd0fdkolLGBsBJZk8QmJfXeRDjXjXSxck1OZyVCTTooFX9k4lD
         DnQw==
X-Gm-Message-State: AOAM531T3XYnhApFR8SSohSSAZwvhg79Ug10YLiWfwoXbLGctWtZEzr9
	vOOqxYEQ3qU/4VB66e/ghEebwt6KO/JtMA==
X-Google-Smtp-Source: ABdhPJxRVP4JVb0UO3uYObmb1MUaNnxLXpiL6VVggTRqCG+YeLg9OiCZ4hI3euzdHwrj6Y/Q9u4q0Q==
X-Received: by 2002:a62:84ca:0:b029:19e:6f95:11b1 with SMTP id k193-20020a6284ca0000b029019e6f9511b1mr4659200pfd.68.1608309390025;
        Fri, 18 Dec 2020 08:36:30 -0800 (PST)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::9ac9? ([2601:646:9200:4e0::9ac9])
        by smtp.gmail.com with ESMTPSA id cq15sm7849211pjb.27.2020.12.18.08.36.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 08:36:29 -0800 (PST)
Subject: Re: [yocto] [meta-rockchip][PATCH] glmark2: fix bugs on panfrost
To: yocto@lists.yoctoproject.org
References: <20201218050328.24876-1-twoerner@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <f3c3c7b7-ed32-c35d-c614-15f22464740b@gmail.com>
Date: Fri, 18 Dec 2020 08:36:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201218050328.24876-1-twoerner@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/17/20 9:03 PM, Trevor Woerner wrote:
> Alyssa submitted this set of patches for glmark2 to fix/clarify glmark2's
> handling of fp16 overflows in a shader (which succeed if the driver doesn't
> handle fp16 and uses fp32 instead).
> 
> See: https://github.com/glmark2/glmark2/pull/132
> 
> This is added as a dynamic layer since meta-openembedded/meta-oe isn't a
> requirement for this layer.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   conf/layer.conf                               |   6 +
>   .../files/fix-precision-handling-bugs.patch   | 138 ++++++++++++++++++
>   .../glmark2/glmark2_%.bbappend                |   5 +
>   3 files changed, 149 insertions(+)
>   create mode 100644 dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch
>   create mode 100644 dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 8eecdc5..e4b3055 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -16,3 +16,9 @@ BBFILE_PRIORITY_rockchip = "1"
>   LAYERVERSION_rockchip = "1"
>   LAYERSERIES_COMPAT_rockchip = "gatesgarth"
>   LAYERDEPENDS_rockchip = "core meta-arm"
> +
> +# dynamic layers
> +BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
> +               for layer in BBFILE_COLLECTIONS.split())}"
> +BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' % layer \
> +               for layer in BBFILE_COLLECTIONS.split())}"
> diff --git a/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch
> new file mode 100644
> index 0000000..af88f6c
> --- /dev/null
> +++ b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch
> @@ -0,0 +1,138 @@
> +From 90e837ffd1ff5c9add1074d69de23e58a3a4810e Mon Sep 17 00:00:00 2001
> +From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> +Date: Wed, 11 Nov 2020 09:26:03 -0500
> +Subject: [PATCH 1/3] terrain: Fix precision bug in light rendering
> +
> +Resulting in overly bright rendering when mediump is implemented as
> +fp16.
> +
> +Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> +---
> + data/shaders/terrain.frag | 5 +++++
> + 1 file changed, 5 insertions(+)
> +
> +diff --git a/data/shaders/terrain.frag b/data/shaders/terrain.frag
> +index 84d085c..58f17ea 100644
> +--- a/data/shaders/terrain.frag
> ++++ b/data/shaders/terrain.frag
> +@@ -67,7 +67,12 @@ void main() {
> +     vec3 pointSpecular = vec3( 0.0 );
> +     for ( int i = 0; i < MAX_POINT_LIGHTS; i ++ ) {
> +         vec4 lPosition = viewMatrix * vec4( pointLightPosition[ i ], 1.0 );
> ++#ifdef GL_FRAGMENT_PRECISION_HIGH
> ++        // should be highp for correct behaviour if mediump is implemented as fp16
> ++        highp vec3 lVector = lPosition.xyz + vViewPosition.xyz;
> ++#else
> +         vec3 lVector = lPosition.xyz + vViewPosition.xyz;
> ++#endif
> +         float lDistance = 1.0;
> +         if ( pointLightDistance[ i ] > 0.0 )
> +             lDistance = 1.0 - min( ( length( lVector ) / pointLightDistance[ i ] ), 1.0 );
> +
> +From 1edd76fda77edabd49d713912aee49b8360c86c3 Mon Sep 17 00:00:00 2001
> +From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> +Date: Wed, 11 Nov 2020 09:49:52 -0500
> +Subject: [PATCH 2/3] terrain: Fix precision handling in noise shader
> +
> +Another overflow resulting in infinity in mediump. Note this bug is
> +masked if the driver clamps infinity to MAX_FLOAT, but it's still our
> +bug.
> +
> +Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> +---
> + data/shaders/terrain-noise.frag | 6 ++++++
> + 1 file changed, 6 insertions(+)
> +
> +diff --git a/data/shaders/terrain-noise.frag b/data/shaders/terrain-noise.frag
> +index 7fea5c0..9535e58 100644
> +--- a/data/shaders/terrain-noise.frag
> ++++ b/data/shaders/terrain-noise.frag
> +@@ -17,7 +17,13 @@ uniform float time;
> + uniform MEDIUMP vec2 uvScale;
> + varying vec2 vUv;
> +
> ++#ifdef GL_FRAGMENT_PRECISION_HIGH
> ++// x should be passed as highp since the intermediate multiplications can
> ++// overflow with mediump
> ++vec4 permute(highp vec4 x)
> ++#else
> + vec4 permute(vec4 x)
> ++#endif
> + {
> +     return mod(((x * 34.0) + 1.0) * x, 289.0);
> + }
> +
> +From e866cc633ffc450e5358b2742f32ca360e4f3f12 Mon Sep 17 00:00:00 2001
> +From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> +Date: Wed, 11 Nov 2020 09:35:21 -0500
> +Subject: [PATCH 3/3] loop,function,conditionals: Fix mediump overflow
> +
> +The multiplication can produce infinity.
> +
> +Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> +---
> + data/shaders/conditionals.frag | 9 ++++++++-
> + data/shaders/function.frag     | 9 ++++++++-
> + data/shaders/loop.frag         | 9 ++++++++-
> + 3 files changed, 24 insertions(+), 3 deletions(-)
> +
> +diff --git a/data/shaders/conditionals.frag b/data/shaders/conditionals.frag
> +index 3bd2507..e902263 100644
> +--- a/data/shaders/conditionals.frag
> ++++ b/data/shaders/conditionals.frag
> +@@ -2,7 +2,14 @@ varying vec4 dummy;
> +
> + void main(void)
> + {
> +-    float d = fract(gl_FragCoord.x * gl_FragCoord.y * 0.0001);
> ++#ifdef GL_FRAGMENT_PRECISION_HIGH
> ++    // should be declared highp since the multiplication can overflow in
> ++    // mediump, particularly if mediump is implemented as fp16
> ++    highp vec2 FragCoord = gl_FragCoord.xy;
> ++#else
> ++    vec2 FragCoord = gl_FragCoord.xy;
> ++#endif
> ++    float d = fract(FragCoord.x * FragCoord.y * 0.0001);
> +
> + $MAIN$
> +
> +diff --git a/data/shaders/function.frag b/data/shaders/function.frag
> +index 3e3c74f..9d0230e 100644
> +--- a/data/shaders/function.frag
> ++++ b/data/shaders/function.frag
> +@@ -8,7 +8,14 @@ $PROCESS$
> +
> + void main(void)
> + {
> +-    float d = fract(gl_FragCoord.x * gl_FragCoord.y * 0.0001);
> ++#ifdef GL_FRAGMENT_PRECISION_HIGH
> ++    // should be declared highp since the multiplication can overflow in
> ++    // mediump, particularly if mediump is implemented as fp16
> ++    highp vec2 FragCoord = gl_FragCoord.xy;
> ++#else
> ++    vec2 FragCoord = gl_FragCoord.xy;
> ++#endif
> ++    float d = fract(FragCoord.x * FragCoord.y * 0.0001);
> +
> + $MAIN$
> +
> +diff --git a/data/shaders/loop.frag b/data/shaders/loop.frag
> +index 31ae23e..9a6afd2 100644
> +--- a/data/shaders/loop.frag
> ++++ b/data/shaders/loop.frag
> +@@ -3,7 +3,14 @@ uniform int FragmentLoops;
> +
> + void main(void)
> + {
> +-    float d = fract(gl_FragCoord.x * gl_FragCoord.y * 0.0001);
> ++#ifdef GL_FRAGMENT_PRECISION_HIGH
> ++    // should be declared highp since the multiplication can overflow in
> ++    // mediump, particularly if mediump is implemented as fp16
> ++    highp vec2 FragCoord = gl_FragCoord.xy;
> ++#else
> ++    vec2 FragCoord = gl_FragCoord.xy;
> ++#endif
> ++    float d = fract(FragCoord.x * FragCoord.y * 0.0001);
> +
> + $MAIN$
> +
> diff --git a/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend
> new file mode 100644
> index 0000000..e7a7173
> --- /dev/null
> +++ b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend
> @@ -0,0 +1,5 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +SRC_URI_append_rock-pi-4 = " \
> +	file://fix-precision-handling-bugs.patch \
> +	"
> 

this patch is generic, perhaps should live with main recipe.
> 
> 
> 
> 
