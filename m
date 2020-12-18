Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web10.5546.1608267830153820423
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Dec 2020 21:03:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kNiY3D2Y;
 spf=pass (domain: gmail.com, ip: 209.85.166.182, mailfrom: twoerner@gmail.com)
Received: by mail-il1-f182.google.com with SMTP id p5so1036985iln.8
        for <yocto@lists.yoctoproject.org>; Thu, 17 Dec 2020 21:03:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IpczQCbGHufm0r5RUCIKgmy2BiKSOcHyES4X4xeL6fc=;
        b=kNiY3D2Y6CyWXGWikBSeuF7j/5yuVx9Yuz824QgXhJ5oeGkZZc71inHji5UXIRRvKv
         r8ai1tTIwFG5bHSMzfS735xHq8ZWEo2gYa3PR8bw53IQaV53nuNhIglvmJzqSFocumXh
         gn0TKeZNawnzql6te0edkO2iROXmhh+V9+ec68p0jc4WBGKYALByz/T6V1CH7oBvrNaF
         ML+IGbMlBTUyGyxAxbzcy1tFUYKxmQu7AbEUMYe950LRuTPagmn/Zh4LM7gymAItjSMh
         00T3ZYKi6quHyJvfMJKVuzP/oJPcUd1rXTuiFtId0rIFslYFkSOFOen0zzRCbrKxvfvE
         Pbbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IpczQCbGHufm0r5RUCIKgmy2BiKSOcHyES4X4xeL6fc=;
        b=IA+qtYNefnOWYq4fr4ho1WoMiaxWAEggw9KAxlyUe7cUWEVTfbg2zbESTvo+HQavEc
         UKKg5CglCAbD2JHFfaxT6C6vKxvOsmjoXn4z1VNX+HVymOynIri44xAMoexmWTSamuO/
         4o7f0fQ96EzEvsyvs2/GNteLCmQJq0r1BplAABzqZt0hZDCWR8qR34xlLUR4LmK0fxbM
         DNefxLQj91lAhy0wkowQgXvOS6LC1gJkEAJEMy9fl2VNMZiST79y6FeV3hr7Ma2BSsFd
         TUxrS5gZni827/G01+Zc47Y7UJldnyj7N+gIfCTlsotqlxIufgn5xmxIKxxtyt1oe3yZ
         CRwg==
X-Gm-Message-State: AOAM533id8mMmN7o7uIZYGwSR4JYtp4gOW70GH5IUjFyn0mHpXaG5dlj
	q1MKM7/YScmMC3kaJWQjLPavF34DITuJFg==
X-Google-Smtp-Source: ABdhPJyJahlSpDPMhSN0pUYwIcdRgDG3GVx9HoncIuG0jMSz70WLxbR3nk2XZ25nBWMTyu5FTOaPsg==
X-Received: by 2002:a92:b011:: with SMTP id x17mr2116175ilh.179.1608267828985;
        Thu, 17 Dec 2020 21:03:48 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost.localdomain ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id i6sm4658891ilm.70.2020.12.17.21.03.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Dec 2020 21:03:47 -0800 (PST)
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] glmark2: fix bugs on panfrost
Date: Fri, 18 Dec 2020 00:03:28 -0500
Message-Id: <20201218050328.24876-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Alyssa submitted this set of patches for glmark2 to fix/clarify glmark2's
handling of fp16 overflows in a shader (which succeed if the driver doesn't
handle fp16 and uses fp32 instead).

See: https://github.com/glmark2/glmark2/pull/132

This is added as a dynamic layer since meta-openembedded/meta-oe isn't a
requirement for this layer.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/layer.conf                               |   6 +
 .../files/fix-precision-handling-bugs.patch   | 138 ++++++++++++++++++
 .../glmark2/glmark2_%.bbappend                |   5 +
 3 files changed, 149 insertions(+)
 create mode 100644 dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch
 create mode 100644 dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend

diff --git a/conf/layer.conf b/conf/layer.conf
index 8eecdc5..e4b3055 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -16,3 +16,9 @@ BBFILE_PRIORITY_rockchip = "1"
 LAYERVERSION_rockchip = "1"
 LAYERSERIES_COMPAT_rockchip = "gatesgarth"
 LAYERDEPENDS_rockchip = "core meta-arm"
+
+# dynamic layers
+BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
+BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' % layer \
+               for layer in BBFILE_COLLECTIONS.split())}"
diff --git a/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch
new file mode 100644
index 0000000..af88f6c
--- /dev/null
+++ b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/files/fix-precision-handling-bugs.patch
@@ -0,0 +1,138 @@
+From 90e837ffd1ff5c9add1074d69de23e58a3a4810e Mon Sep 17 00:00:00 2001
+From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
+Date: Wed, 11 Nov 2020 09:26:03 -0500
+Subject: [PATCH 1/3] terrain: Fix precision bug in light rendering
+
+Resulting in overly bright rendering when mediump is implemented as
+fp16.
+
+Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
+---
+ data/shaders/terrain.frag | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/data/shaders/terrain.frag b/data/shaders/terrain.frag
+index 84d085c..58f17ea 100644
+--- a/data/shaders/terrain.frag
++++ b/data/shaders/terrain.frag
+@@ -67,7 +67,12 @@ void main() {
+     vec3 pointSpecular = vec3( 0.0 );
+     for ( int i = 0; i < MAX_POINT_LIGHTS; i ++ ) {
+         vec4 lPosition = viewMatrix * vec4( pointLightPosition[ i ], 1.0 );
++#ifdef GL_FRAGMENT_PRECISION_HIGH
++        // should be highp for correct behaviour if mediump is implemented as fp16
++        highp vec3 lVector = lPosition.xyz + vViewPosition.xyz;
++#else
+         vec3 lVector = lPosition.xyz + vViewPosition.xyz;
++#endif
+         float lDistance = 1.0;
+         if ( pointLightDistance[ i ] > 0.0 )
+             lDistance = 1.0 - min( ( length( lVector ) / pointLightDistance[ i ] ), 1.0 );
+
+From 1edd76fda77edabd49d713912aee49b8360c86c3 Mon Sep 17 00:00:00 2001
+From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
+Date: Wed, 11 Nov 2020 09:49:52 -0500
+Subject: [PATCH 2/3] terrain: Fix precision handling in noise shader
+
+Another overflow resulting in infinity in mediump. Note this bug is
+masked if the driver clamps infinity to MAX_FLOAT, but it's still our
+bug.
+
+Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
+---
+ data/shaders/terrain-noise.frag | 6 ++++++
+ 1 file changed, 6 insertions(+)
+
+diff --git a/data/shaders/terrain-noise.frag b/data/shaders/terrain-noise.frag
+index 7fea5c0..9535e58 100644
+--- a/data/shaders/terrain-noise.frag
++++ b/data/shaders/terrain-noise.frag
+@@ -17,7 +17,13 @@ uniform float time;
+ uniform MEDIUMP vec2 uvScale;
+ varying vec2 vUv;
+ 
++#ifdef GL_FRAGMENT_PRECISION_HIGH
++// x should be passed as highp since the intermediate multiplications can
++// overflow with mediump
++vec4 permute(highp vec4 x)
++#else
+ vec4 permute(vec4 x)
++#endif
+ {
+     return mod(((x * 34.0) + 1.0) * x, 289.0);
+ }
+
+From e866cc633ffc450e5358b2742f32ca360e4f3f12 Mon Sep 17 00:00:00 2001
+From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
+Date: Wed, 11 Nov 2020 09:35:21 -0500
+Subject: [PATCH 3/3] loop,function,conditionals: Fix mediump overflow
+
+The multiplication can produce infinity.
+
+Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
+---
+ data/shaders/conditionals.frag | 9 ++++++++-
+ data/shaders/function.frag     | 9 ++++++++-
+ data/shaders/loop.frag         | 9 ++++++++-
+ 3 files changed, 24 insertions(+), 3 deletions(-)
+
+diff --git a/data/shaders/conditionals.frag b/data/shaders/conditionals.frag
+index 3bd2507..e902263 100644
+--- a/data/shaders/conditionals.frag
++++ b/data/shaders/conditionals.frag
+@@ -2,7 +2,14 @@ varying vec4 dummy;
+ 
+ void main(void)
+ {
+-    float d = fract(gl_FragCoord.x * gl_FragCoord.y * 0.0001);
++#ifdef GL_FRAGMENT_PRECISION_HIGH
++    // should be declared highp since the multiplication can overflow in
++    // mediump, particularly if mediump is implemented as fp16
++    highp vec2 FragCoord = gl_FragCoord.xy;
++#else
++    vec2 FragCoord = gl_FragCoord.xy;
++#endif
++    float d = fract(FragCoord.x * FragCoord.y * 0.0001);
+ 
+ $MAIN$
+ 
+diff --git a/data/shaders/function.frag b/data/shaders/function.frag
+index 3e3c74f..9d0230e 100644
+--- a/data/shaders/function.frag
++++ b/data/shaders/function.frag
+@@ -8,7 +8,14 @@ $PROCESS$
+ 
+ void main(void)
+ {
+-    float d = fract(gl_FragCoord.x * gl_FragCoord.y * 0.0001);
++#ifdef GL_FRAGMENT_PRECISION_HIGH
++    // should be declared highp since the multiplication can overflow in
++    // mediump, particularly if mediump is implemented as fp16
++    highp vec2 FragCoord = gl_FragCoord.xy;
++#else
++    vec2 FragCoord = gl_FragCoord.xy;
++#endif
++    float d = fract(FragCoord.x * FragCoord.y * 0.0001);
+ 
+ $MAIN$
+ 
+diff --git a/data/shaders/loop.frag b/data/shaders/loop.frag
+index 31ae23e..9a6afd2 100644
+--- a/data/shaders/loop.frag
++++ b/data/shaders/loop.frag
+@@ -3,7 +3,14 @@ uniform int FragmentLoops;
+ 
+ void main(void)
+ {
+-    float d = fract(gl_FragCoord.x * gl_FragCoord.y * 0.0001);
++#ifdef GL_FRAGMENT_PRECISION_HIGH
++    // should be declared highp since the multiplication can overflow in
++    // mediump, particularly if mediump is implemented as fp16
++    highp vec2 FragCoord = gl_FragCoord.xy;
++#else
++    vec2 FragCoord = gl_FragCoord.xy;
++#endif
++    float d = fract(FragCoord.x * FragCoord.y * 0.0001);
+ 
+ $MAIN$
+ 
diff --git a/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend
new file mode 100644
index 0000000..e7a7173
--- /dev/null
+++ b/dynamic-layers/openembedded-layer/recipes-benchmark/glmark2/glmark2_%.bbappend
@@ -0,0 +1,5 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI_append_rock-pi-4 = " \
+	file://fix-precision-handling-bugs.patch \
+	"
-- 
2.30.0.rc0

