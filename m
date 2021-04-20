Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
 by mx.groups.io with SMTP id smtpd.web09.10033.1618921856672536891
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Apr 2021 05:30:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=SwNCxytT;
 spf=pass (domain: gmail.com, ip: 209.85.222.173, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f173.google.com with SMTP id z2so2056369qkb.9
        for <yocto@lists.yoctoproject.org>; Tue, 20 Apr 2021 05:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V1INWpMJkxLK1bi0HPxkI+HSlFZEzlDvSfc04NLS2Jc=;
        b=SwNCxytTDMZNXR6Yk8Tmn8QN7jXjm/dWmIW3bTl96t6oRs4ArP8OsY+KOkff7vtjxS
         HrlYoqZoI6zouC6Hiws/P/pYiEcalcPdk72yZorhwwCTpLcNukkXUuBBU97MYnQ8Qsqy
         M1iKHydIKdBUK5Y9ApDpEiv2DVLboMTv1aRjmPBUPUoDB7sfY/jvtq0eWE0DswXEyIHB
         JgWPlqEg+X3EjReBsdFWFsKPEA+mqYULlJt+TNM8WrxVvWfudDQuFZ5QjN1uVcMrZ5Sw
         ML/17/7ORuFnPra1I12AghcVyrMhkLRVVMez9hwl/oMJDETP25ljAvY/uxSlKp0PiRgq
         pGhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V1INWpMJkxLK1bi0HPxkI+HSlFZEzlDvSfc04NLS2Jc=;
        b=C/ZFFip+MYbYKsQzkv2f/6ekglFF+y3nFidNaKCbP0cuL5inbB1oEQxMCRLTXQub0S
         /GjhegasUzWf9S3nRpWw4MNrqsNi2SH9XELrpZp20d6uZ1Dtge7InjubGf8TffNp53sb
         Ogal5uc7/PvtcVHiT6r5a9+7vsuttJ4hAq3emc0D0glWgldNHVPRXXEFybpJ6vVx3PIu
         pV8Q9/K2ViIRWKJXFoYwSCWNSDr/UiG25G3IZeUmgrkHBPCYe4m+44ZDqVYKpDDPfR7T
         ZCsMU1nuq96NFPdhQ4xjy1LoPCnKe8n25BDynE6ezFjxDVIAPGPW4dt92Mp4BatpadeO
         4EIg==
X-Gm-Message-State: AOAM531u35FFwmPp6THA3QbtHBSlIXRYFMpe9sMbxIs0a0rm+3BmBIEm
	BFqdZ5lFBvhoGvnP1q/RDO8=
X-Google-Smtp-Source: ABdhPJxv/NKjUg9QkUBRgpAhGi8dxIQyFb/3RANz5w6dQUdHwRqqlO/Oua5JH8neqJ4E7IPunqaMvw==
X-Received: by 2002:a05:620a:559:: with SMTP id o25mr10401514qko.75.1618921855749;
        Tue, 20 Apr 2021 05:30:55 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id a8sm11204735qtx.9.2021.04.20.05.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 05:30:55 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] linux-yocto/5.4: fix arm defconfig warnings
Date: Tue, 20 Apr 2021 08:30:53 -0400
Message-Id: <20210420123053.63283-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

A recent fix to the kern-tools promoted some previously unseen
issues to warnings. This commit fixes them by tagging some BT
options as non-hardware so they won't generate warnings if they
don't appear in the final .config. These are sub BT options and
shouldn't warn when/if their controlling option is disabled by
a fragment.

    d7fd0213b75 base: exclude some BT options as non-hardware

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb   | 2 +-
 meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb | 2 +-
 meta/recipes-kernel/linux/linux-yocto_5.4.bb      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb b/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb
index e52c9ebe0e..a802a570a1 100644
--- a/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-rt_5.4.bb
@@ -12,7 +12,7 @@ python () {
 }
 
 SRCREV_machine ?= "324e77d816cf6434507ab29140beb24044009efa"
-SRCREV_meta ?= "5017570a130f142365dfdcd043d84143fdd6e255"
+SRCREV_meta ?= "d7fd0213b75ce9b6206f63dbdd435ab326598642"
 
 SRC_URI = "git://git.yoctoproject.org/linux-yocto.git;branch=${KBRANCH};name=machine \
            git://git.yoctoproject.org/yocto-kernel-cache;type=kmeta;name=meta;branch=yocto-5.4;destsuffix=${KMETA}"
diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb
index f07375c761..1edc632de7 100644
--- a/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb
+++ b/meta/recipes-kernel/linux/linux-yocto-tiny_5.4.bb
@@ -17,7 +17,7 @@ KCONF_BSP_AUDIT_LEVEL = "2"
 
 SRCREV_machine_qemuarm ?= "8463db325b93f0669446f68c19334cfe11ffb9c2"
 SRCREV_machine ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
-SRCREV_meta ?= "5017570a130f142365dfdcd043d84143fdd6e255"
+SRCREV_meta ?= "d7fd0213b75ce9b6206f63dbdd435ab326598642"
 
 PV = "${LINUX_VERSION}+git${SRCPV}"
 
diff --git a/meta/recipes-kernel/linux/linux-yocto_5.4.bb b/meta/recipes-kernel/linux/linux-yocto_5.4.bb
index 4f056d6d82..3a9463af6a 100644
--- a/meta/recipes-kernel/linux/linux-yocto_5.4.bb
+++ b/meta/recipes-kernel/linux/linux-yocto_5.4.bb
@@ -23,7 +23,7 @@ SRCREV_machine_qemux86 ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
 SRCREV_machine_qemux86-64 ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
 SRCREV_machine_qemumips64 ?= "996fe040c8d8d01a9af6be42dae3844d127471bf"
 SRCREV_machine ?= "5f54b437b6502d3febee553100b2cb2a9e0c5f8a"
-SRCREV_meta ?= "5017570a130f142365dfdcd043d84143fdd6e255"
+SRCREV_meta ?= "d7fd0213b75ce9b6206f63dbdd435ab326598642"
 
 # remap qemuarm to qemuarma15 for the 5.4 kernel
 # KMACHINE_qemuarm ?= "qemuarma15"
-- 
2.19.1

