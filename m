Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web11.3054.1602957841340909862
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:04:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=n9ZjhUhe;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id y14so3386554pgf.12
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=WX83CpP3rKdvutCakiCeVpbOBgTk+QH2Qi3SCFSGZic=;
        b=n9ZjhUherRwxJs0iuEfh4trEeYQbKwANjYPyyldP1I36Lgn1emjhPHK8wBhK6yMPtK
         U5DUR12ikxW5VreycJXXf/5lb1x56vDV/gwtsgyl2O7NXB+UM+UZ4qfmxAce2BEHHbuf
         He0RuXy1w/RPQeJrxBghO0dYEqYQcFDvdE45w2hczDsoIpIyhJcEQazEbSFhtV0Gup6u
         UXomnafoT273QYSGLbobB7uAGjmQ9GvUc9jJuookEiV1fj472S9JG+Bd9/eGWzIlGDCp
         Mk2kVRwWeewz6f2W39/xoMf/yz3jukhP3mo9bC2buTUZW2qATKOpwyIe2ncjLUnN0RMf
         Nf8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=WX83CpP3rKdvutCakiCeVpbOBgTk+QH2Qi3SCFSGZic=;
        b=qI0J710dU6JGXDDhD/N1DZz1r43j66HOZ0IS0t+tANPtwFzez+amMpsOXpTdWGSNYu
         4+Oxb2exr9yk83jiG1eUsu+On86hQpX47p9YrvprzHLk0N3V5uTdNkMqUgBCBvsKCrR7
         Ue//RmOO5x5T9xiEhriGijSLPDzQZRgGfRyPcacU9oFC3fXVVNveiDmvWXn22YYDDfiH
         hUrga0dENPEwWBmHSNm4+MSSLO/Ld14MJIOTiCzrhJF0Aw37yscbzuNwSn0RJiVSKBhJ
         LUVrr9xAveqS4nolb7Op+HWnziBfBJFBb8gw/mpDlnsRwEzOgUwQAH2LlvwIdh7fMC21
         vWmg==
X-Gm-Message-State: AOAM532lyPwwtfdI5ZNT3xVZm23ADE0yhQEemuWHxxBg+9i88vsfyr5B
	1lXMUlPgjYmWUkpeoeyLD4ObTbogkpc=
X-Google-Smtp-Source: ABdhPJzI/OF2vMQWwAgEOUHwYdfs0tDNrWkPYOMLjEpIf+XNVNV8iEj/wDbvD/B/CEwVLHCM3/zpsw==
X-Received: by 2002:aa7:979b:0:b029:152:4223:1b47 with SMTP id o27-20020aa7979b0000b029015242231b47mr9372448pfp.44.1602957840751;
        Sat, 17 Oct 2020 11:04:00 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:04:00 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 24/32] linux-%/5.x: Add dm-verity fragment as needed
Date: Sat, 17 Oct 2020 11:03:21 -0700
Message-Id: <29fd9f98b33c5c54dc5fd889785c72eba105a06c.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: Naveen Saini <naveen.kumar.saini@intel.com>

Add checks that include dm-verity specific kernel config fragment
when dm-verity-img.bbclass is used.

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit d9feafe991cdf4084746c41438526dbf0b5dc2c8)
---
 recipes-kernel/linux/linux-%_5.%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux/linux-%_5.%.bbappend b/recipes-kernel/linux/linux-%_5.%.bbappend
index 76b5df5..6bc40cd 100644
--- a/recipes-kernel/linux/linux-%_5.%.bbappend
+++ b/recipes-kernel/linux/linux-%_5.%.bbappend
@@ -1,4 +1,4 @@
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
 KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "yama", " features/yama/yama.scc", "" ,d)}"
-
+KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.17.1

