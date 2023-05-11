Return-Path: <tomasz.dziendzielski@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD61BC7EE22
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 08:53:34 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web10.54543.1683795206350643471
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 01:53:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=kazrm+1l;
 spf=pass (domain: gmail.com, ip: 209.85.167.41, mailfrom: tomasz.dziendzielski@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-4f24cfb8539so5823346e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 01:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683795204; x=1686387204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/ugQhPprB/E7+KR3MBshVEXBD3sYpamjG81/KPPYA4k=;
        b=kazrm+1lkRMkD7fgylhf6x4H+djnMr+J4q6SJa242Y25yF1qCIbEPuqib3HJyZjiQU
         sJ1L+oIJ0GS1ANeWGDOwT9quzh7ajUUkpMvstUQWuxhhHvGN5hN0OT8lOzrzd12T8PIe
         Trn6L1/+DycxUzrkQOz2fm9QGDLBmco134CAObomcmYVi7NaQcbdZAjNdbY96l1cfKF4
         9HWbNf3eNNOKSWnK84kb7cmtJZh0Mwhukni/b3SlJEDV+ZnriEhyCaExBSz3o5DZRYdX
         zkrHuWOY4ET7eSPtjoh4O1jXeSU3PtLFLB/ZiMv4bJ3JPBsTgYaJ3tchOFF9SkfU19AD
         a+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683795204; x=1686387204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/ugQhPprB/E7+KR3MBshVEXBD3sYpamjG81/KPPYA4k=;
        b=apn4cNJSt2/R4K/URfy4Rz9A+4LZx4fGrtxFP8IZrE9AQABzHXI+Hqjww4MbW0ogkI
         qMn+Ny/ym/IIud3HObMqnipU94PEm5LjDvzp5r+6wKJJw6F+X8o0lR4E/LpPHd734xEV
         idF2ZvZg4HFUPquDSKYPySrBtVLRw3zH7f8CgoD77gbNOuHhUAMqs/FM1m+htMsw5dDt
         m+3Hxg0oP4IxanOU3Wnbnd0ZGbbd7rpxMShIOwpwhDqwY7Y8hJmDUqePONO2PSdgnFzA
         gBcyGWlcglb4LbWqHotkWglk89XNVydnnKS30qJbYKk1SImqe3dwT3LyCEn3fBqGnQ/s
         MbJg==
X-Gm-Message-State: AC+VfDzMZVN6FWcIXXDZ0npJKmt6QK+UmAv6k5qKEhtjtT7vs+VUUixe
	/3uBHfuVU8tQpxekLEWQy2Ws7vFBwrTbmZb5
X-Google-Smtp-Source: ACHHUZ5rY7T07PylesjW1oqI/LyC+h/ZqngpeoLyJOK0uX9geXLyF1Mvz6vQA4LPJ48YjcnFKK4iGw==
X-Received: by 2002:ac2:4e4e:0:b0:4f2:5393:b7c with SMTP id f14-20020ac24e4e000000b004f253930b7cmr2191069lfr.67.1683795203795;
        Thu, 11 May 2023 01:53:23 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a319:a043:be80:9b4c:87c9:910e:7787])
        by smtp.gmail.com with ESMTPSA id q22-20020ac24a76000000b004f13bc97b00sm1039695lfp.119.2023.05.11.01.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 01:53:23 -0700 (PDT)
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Subject: [meta-tensorflow][PATCH] bazel-native: Allow build from sstate-cache
Date: Thu, 11 May 2023 10:53:19 +0200
Message-Id: <20230511085319.4147-1-tomasz.dziendzielski@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 08:53:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59981

Using TOPDIR variable breaks the sstate-cache every time build directory
changes totally breaking build from sstate-cache among different workspaces.

Changing that to TMPDIR that is included in BB_HASHEXCLUDE_COMMON.

Another thing is disabling the UNINATIVE_LOADER, causing sstate-cache
artifacts not working in different workspaces. On
populate_sysroot_setscene patchelf-uninative --set-interpreter with
empty argument is ran which does not change the interpreter path and
then bazel binary ends up with path to the interpreter that might not
exist, since the bazel was taken from sstate-cache.

Removing the UNINATIVE_LOADER = "" so that uninative.bbclass can
correctly replace the interpreter path and make bazel binary usable.
One could think that it will reintroduce the original issue behind
disabling uninative, which was some java file corrupted (see commit
dd7642b), but I think we don't have this problem anymore and also I
don't think it was the correct solution - since the loader is anyway
included in the binary, so it wasn't really disabling it, just disabling
the yocto functionality around uninative. If the error re-occurs I think
different solution should be found.

Signed-off-by: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
---
 recipes-devtools/bazel/bazel-native_5.3.2.bb | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/recipes-devtools/bazel/bazel-native_5.3.2.bb b/recipes-devtools/bazel/bazel-native_5.3.2.bb
index da13a53..c9e4343 100644
--- a/recipes-devtools/bazel/bazel-native_5.3.2.bb
+++ b/recipes-devtools/bazel/bazel-native_5.3.2.bb
@@ -38,7 +38,7 @@ EXTRA_BAZEL_ARGS = " \
 
 do_compile[network] = "1"
 do_compile () {
-    TMPDIR="${TOPDIR}/bazel" \
+    TMPDIR="${TMPDIR}/../bazel" \
     VERBOSE=yes \
     EXTRA_BAZEL_ARGS="${EXTRA_BAZEL_ARGS}" \
     ./compile.sh
@@ -49,7 +49,4 @@ do_install () {
     install -m 0755 ${S}/output/bazel ${D}${bindir}
 }
 
-# Explicitly disable uninative
-UNINATIVE_LOADER = ""
-
 inherit native
-- 
2.40.1


