Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 742AFC4332F
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 16:48:48 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web11.19702.1670518127112961453
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Dec 2022 08:48:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=epgcfovk;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: jpewhacker@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1433ef3b61fso2447990fac.10
        for <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 08:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4bg6yjeJj4CNDc3nU81BOB0uPAJluMM9dJ8jC4Szzd8=;
        b=epgcfovkhsinj09VDj5H6htk3JZdZZTAlbbDoKAmEOmcv/0pNdoCGeBGzufv1ruXVo
         C1uOkT0auAI61rzxriqrkf3eN6nUnmVnGQ9TDpPH2lmW4xfYPKkV0jcARGEi0uMzQBrV
         glQ631Fm17yjLmhDvpAEoYWyPVqnV8KkhpglcbF5LZ6GDVTiAWKyNDEe9tckssp0G1fh
         cGft5dA8R276m8Zuplzq26963YT5ifzfh4+AsPcWFSpnm/06qPjUYSZLQ1hXOtTJwQHp
         d0MFb4j2k53Ot/672zvlell5UdHRfTdXRdBA0TA/a7qwyOB9p9R88+oS3lh97esry233
         NhQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4bg6yjeJj4CNDc3nU81BOB0uPAJluMM9dJ8jC4Szzd8=;
        b=kHmib0TBeXq5/B1uB9pXmWLYJVC2s8qavH1/l8B5RX/8YSAqdQQub1CZ7EXY5TC3M5
         JcKXlMCwlLvcfqEL41YrgvmFFlRXNvmgt64oHHdDw+1x6ZNFr2c8+Dgc04LRmLSvaXXi
         1HWHHL0tI5FH8lji/gGeS2IJH/pWLmTYhllJ71nrbpT75hrVi1fdixLYTgcbVRGDQzPG
         onkHgSB7rY9ysCzkd9HQmkq4dYp8co6Mb3DYXEGV0m1Nv5uEtTtd9mf1mVml4wTBOp/i
         fk3MvUIl4F0Jh7H2H78Bkk4BMJZYEm3YNr6P5r9tx9wLBQOM4CxnIuMxIbo+CqV3trPm
         1Uig==
X-Gm-Message-State: ANoB5pl7glrukdZ8sQo/spmiFxQleftHE0T7Im4jt8cTm5xUyeNkoMLA
	QSqlpE/TulBKff8yTBO6T/DwBAtV1zk=
X-Google-Smtp-Source: AA0mqf6LJfO5cgWr9V3+2tkMF39gkv9GRzxqKCZSxQAMn4z7CfBXUxNZW2OO6Q9OgvAmTsTOM9kipA==
X-Received: by 2002:a05:6870:805:b0:13b:f163:2732 with SMTP id fw5-20020a056870080500b0013bf1632732mr41812700oab.192.1670518125824;
        Thu, 08 Dec 2022 08:48:45 -0800 (PST)
Received: from localhost.localdomain ([2605:a601:ac3d:c100:e3e8:d9:3a56:e27d])
        by smtp.gmail.com with ESMTPSA id cd12-20020a056830620c00b0066ec4e2b396sm5765024otb.53.2022.12.08.08.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Dec 2022 08:48:45 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joshua Watt <JPEWhacker@gmail.com>
Subject: [yocto][meta-mingw][PATCH] tests: Map WORKDIR to W: to shorten paths
Date: Thu,  8 Dec 2022 10:48:39 -0600
Message-Id: <20221208164839.1801875-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 16:48:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58763

In some cases Wine (and Windows proper) struggle with very long paths;
in particular the way that gcc invokes the 'cc1' subprogram is limited
in how deep the path to the subprogram can be. This can cause issues
when testing the SDK under wine, as the paths can easily get quite long
and exceed this limit. In order to work around this, setup the Wine test
context so that the W: drive maps to the SDK image ${WORKDIR}, which
allows wine to effectively use paths relative to this directory making
them significantly shorter.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 lib/oeqa/sdkmingw/case.py    |  4 ++--
 lib/oeqa/sdkmingw/context.py | 11 ++++++++++-
 lib/oeqa/sdkmingw/testsdk.py |  5 ++++-
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/lib/oeqa/sdkmingw/case.py b/lib/oeqa/sdkmingw/case.py
index 169c143..dee7d3d 100644
--- a/lib/oeqa/sdkmingw/case.py
+++ b/lib/oeqa/sdkmingw/case.py
@@ -56,7 +56,7 @@ class OESDKMinGWTestCase(OESDKTestCase):
                 return s[1:-1]
             return s
 
-        command = ['wine', 'cmd', '/c', self.tc.wine_sdk_env, '>', 'NUL', '&&', 'cd', self.wine_test_dir, '&&']
+        command = ['wine', 'cmd', '/c', self.tc.wine_sdk_env, '>', 'NUL', '&&']
 
         # Perform some massaging so that commands can be written naturally in
         # test cases. shlex.split() in Non-posix mode gets us most of the way
@@ -65,7 +65,7 @@ class OESDKMinGWTestCase(OESDKTestCase):
         command.extend(strip_quotes(s) for s in shlex.split(cmd, posix=False))
 
         return subprocess.check_output(command, env=self.tc.get_wine_env(),
-                stderr=subprocess.STDOUT, universal_newlines=True)
+                stderr=subprocess.STDOUT, universal_newlines=True, cwd=self.test_dir)
 
     def assertIsTargetElf(self, path):
         import oe.qa
diff --git a/lib/oeqa/sdkmingw/context.py b/lib/oeqa/sdkmingw/context.py
index edabcbd..5319223 100644
--- a/lib/oeqa/sdkmingw/context.py
+++ b/lib/oeqa/sdkmingw/context.py
@@ -12,10 +12,19 @@ class OESDKMinGWTestContext(OESDKTestContext):
     sdk_files_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), "files")
 
     def __init__(self, td=None, logger=None, sdk_dir=None, sdk_env=None, wine_prefix=None,
-            wine_arch=None, target_pkg_manifest=None, host_pkg_manifest=None):
+            wine_arch=None, wine_devices={}, target_pkg_manifest=None, host_pkg_manifest=None):
         super(OESDKMinGWTestContext, self).__init__(td, logger, sdk_dir, sdk_env, target_pkg_manifest, host_pkg_manifest)
         self.wine_prefix = wine_prefix
         self.wine_arch = wine_arch
+        # Create the wine environment
+        subprocess.check_output(["wine", "cmd", "/c", "echo 1"], env=self.get_wine_env())
+
+        device_dir  = "%s/dosdevices" % wine_prefix
+        bb.utils.mkdirhier(device_dir)
+        for device, path in wine_devices.items():
+            device_path = "%s/%s" % (device_dir, device)
+            os.symlink(os.path.relpath(path, device_dir), device_path)
+
         self.wine_sdk_dir = self.wine_path(sdk_dir)
         self.wine_sdk_env = self.wine_path(sdk_env)
 
diff --git a/lib/oeqa/sdkmingw/testsdk.py b/lib/oeqa/sdkmingw/testsdk.py
index 173cfd9..5c80bb4 100644
--- a/lib/oeqa/sdkmingw/testsdk.py
+++ b/lib/oeqa/sdkmingw/testsdk.py
@@ -44,6 +44,9 @@ class TestSDKMinGW(TestSDK):
 
         return {
             'wine_prefix': wine_prefix,
-            'wine_arch': d.getVar('TESTSDK_WINEARCH') or 'win64'
+            'wine_arch': d.getVar('TESTSDK_WINEARCH') or 'win64',
+            'wine_devices': {
+                'w:': d.getVar("WORKDIR"),
             }
+        }
 
-- 
2.33.0


