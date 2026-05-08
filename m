Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F476CD343F
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:03 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4111.1778203560110902411
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Z5qowl5e;
 spf=pass (domain: konsulko.com, ip: 209.85.214.179, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2ba6485d219so9720635ad.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203559; x=1778808359; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SBIw3hIjvJrIbgvIBjSdTntx3ahE30r50oyPmZupKrM=;
        b=Z5qowl5eSNILVYacClHy6MyRhc1t2O0doyGaklh4oBLJgXJT/EjxN5sjMrpSj3MDlc
         A3QifPtRcarDpxqCPcVBVgVKU34DGaMyqQr8kNrFqoU3jgRN1KDI2RGkxJmgpvo7glZZ
         rBNS2l2VqY86wlGaA7yFmhOSSpXx2M1iP9Ehc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203559; x=1778808359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SBIw3hIjvJrIbgvIBjSdTntx3ahE30r50oyPmZupKrM=;
        b=YJMWMMo5gKPdTAZDLUzHyfBdKZtorrQF21I1BoHVsl3UI79AUWc/Uhg18TZks5RH0n
         gDzxkIH3TkaPeOiSPs2VFh5dBsBOxWa7EaKVbBul+Xcd/IgOSA6nVBfLcpKBRUCTpw4W
         K3HyawzYtSz6ktVh0G1dnl2hotu6rNZhGhbPfcLx7JINoLrbb46e0rm+Gm7Y/84hjFPQ
         bV8gskX+GKLWel5PcmyC+EnLdEl/UCDl8L0J5e3cErEcJckmmZoNvMvpT24xU7VwUCMT
         sKHS+75hyN39veZt9UkrJ/ORIhBo1xZwqGEahDpN/m1ZBoLTibHsgOV72p26wVOyAnAE
         ZqYA==
X-Forwarded-Encrypted: i=1; AFNElJ8F5hIR8wH4bIOpeBKPjCPGdsp+YofnVqZLKt9yHtgsH11ox6SdYvBH3Y3hOcnxfLV3IoRwLw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxoLyMmEuHAC8VOcv8umP++A5FADgT1t4VFMI3LrJnQpZ/RE6g7
	d65E3X+CpS3bXRIYuzEStSSL6bXYyoudPeJ0KMiKVhuS+XlYwjH8w2OrfiyqO3nqxJybvdQm6gz
	FpYuT
X-Gm-Gg: Acq92OHNbjS2rWIbiOs0207wBaEqlzVAYh4H/1ZN9QClOLnB7l8bH941THRZsOVs6bD
	RcjmZwWxHowWhGEGyYe2Q+k3/+gOi5hEV3HeDwf+Sh8JyeJ8luOhGojyVAc8O+PNyHRiTZopDRA
	KWXbmfy3wFH4S5LlXRggmssQ3u1r7vdpH59H4J6XwNzCOeaRlalS44W44adrY2sjfSgc6uMeK5C
	kCHQ3QVOP4h/1qzFzBZlKyhunoF82MTB8GbO6iXToaehcx4RGtpB8Gv7pW4ZTUX5OkpRhMow0ay
	NpetOupa2yXLoMKU5sYnYkMYHs8yrJtBNUg4uO2irG29gBmars3zAYAsCU/vaHvbvYQkNNyXEQI
	5shkkCftNBne7zXbKUVsWGl8eSDrwglAcz01kcLq/v7ET0+vaGXNWpwy1S0hF01/IRqOipIiNf3
	0PTDzxq9PKTFvNCH7WqrrVT5qmtsiNRHdsQc45MYOGp9O7q+QMhbqXS49CWBleCTU30+Jb7jZHk
	JLYJ/CHjjG0
X-Received: by 2002:a17:903:46c6:b0:2ba:9e1c:7c93 with SMTP id d9443c01a7336-2ba9e1c7ddamr78991705ad.40.1778203559442;
        Thu, 07 May 2026 18:25:59 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e35ebesm1023255ad.43.2026.05.07.18.25.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:25:59 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 01/11] scripts/utils: fix stale extraction dir when tarball is updated
Date: Thu,  7 May 2026 18:25:30 -0700
Message-ID: <eeb8fe30fcf71f316f01475a62b5fdbc71eb3282.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66502

From: Tim Orling <tim.orling@konsulko.com>

Previously the entire download/cache-validation block in
setup_tools_tarball() was guarded by `if not os.path.exists(btdir)`.
Once the extraction directory existed from a prior build, every
subsequent call was a no-op: the cached tarball was never re-validated,
so a freshly-published SDK (e.g. vcontainer-tarball-latest) was silently
ignored and the stale btdir kept being used.

Fix by moving the lock/download block outside the btdir existence guard
so cache validation always runs. Track tarball_updated to know when the
cached download was actually replaced, then remove the stale btdir when
True so the fresh tarball is re-extracted.

Also add an mtime-based staleness check for local-path (cp) sources so
that a newer source file automatically invalidates the cached copy.

AI-Generated: Claude Cowork Sonnet 4.6
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 scripts/utils.py | 64 +++++++++++++++++++++++++++++++-----------------
 1 file changed, 41 insertions(+), 23 deletions(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index 88842f0..87acad6 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -481,31 +481,49 @@ def setup_tools_tarball(ourconfig, btdir, bttarball, name="buildtools"):
         if ";" in bttarball:
             bttarball, sha256 = bttarball.split(";")
         btdir = os.path.abspath(btdir)
+        btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/cluster-downloads-cache/" + os.path.basename(bttarball)
+        btlock = btdlpath + ".lock"
+        if not os.path.exists(os.path.dirname(btdlpath)):
+            os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
+        # Always run the cache-validation / download step so that a freshly
+        # published tarball is detected even when btdir already exists from a
+        # previous build.  tarball_updated is set to True whenever the cached
+        # download is replaced, which triggers removal of the stale btdir.
+        tarball_updated = False
+        while True:
+            try:
+                with open(btlock, 'a+') as lf:
+                    fileno = lf.fileno()
+                    fcntl.flock(fileno, fcntl.LOCK_EX)
+                    if sha256 and os.path.exists(btdlpath):
+                        dl_sha256 = sha256_file(btdlpath)
+                        if dl_sha256 != sha256:
+                            os.unlink(btdlpath)
+                    elif bttarball.startswith("/") and os.path.exists(btdlpath):
+                        # For local-path sources (e.g. vcontainer-tarball-latest)
+                        # invalidate the cached copy when the source is newer so
+                        # that a freshly-published tarball is always picked up.
+                        if os.path.getmtime(bttarball) > os.path.getmtime(btdlpath):
+                            os.unlink(btdlpath)
+                        os.unlink(btdlpath)
+                    if not os.path.exists(btdlpath):
+                        if bttarball.startswith("/"):
+                            subprocess.check_call(["cp", bttarball, btdlpath])
+                        else:
+                            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+                        os.chmod(btdlpath, 0o775)
+                        tarball_updated = True
+                break
+            except OSError:
+                # We raced with someone else, try again
+                pass
+        # If the underlying tarball changed, remove any stale extraction
+        # directory so it is re-extracted below.
+        if tarball_updated and os.path.exists(btdir):
+            print("Removing stale %s extraction at %s" % (name, btdir))
+            subprocess.check_call(["rm", "-rf", btdir])
         if not os.path.exists(btdir):
-            btdlpath = getconfig("BASE_SHAREDDIR", ourconfig) + "/cluster-downloads-cache/" + os.path.basename(bttarball)
             print("Extracting %s %s" % (name, bttarball))
-            btlock = btdlpath + ".lock"
-            if not os.path.exists(os.path.dirname(btdlpath)):
-                os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
-            while True:
-                try:
-                    with open(btlock, 'a+') as lf:
-                        fileno = lf.fileno()
-                        fcntl.flock(fileno, fcntl.LOCK_EX)
-                        if sha256 and os.path.exists(btdlpath):
-                            dl_sha256 = sha256_file(btdlpath)
-                            if dl_sha256 != sha256:
-                                os.unlink(btdlpath)
-                        if not os.path.exists(btdlpath):
-                            if bttarball.startswith("/"):
-                                subprocess.check_call(["cp", bttarball, btdlpath])
-                            else:
-                                subprocess.check_call(["wget", "-O", btdlpath, bttarball])
-                            os.chmod(btdlpath, 0o775)
-                    break
-                except OSError:
-                    # We raced with someone else, try again
-                    pass
             subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
         enable_tools_tarball(btdir, name)
 
-- 
2.43.0


