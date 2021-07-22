Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web12.7377.1626959193489900723
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 06:06:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VFdrX1dd;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: koansoftware@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id gb6so8295180ejc.5
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jul 2021 06:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GjyIrPF9VhLo0hA7XxnJ0twp/ESFOEUFXrrsrw6UTYU=;
        b=VFdrX1dd9I4dWBoqaYXfg1s1VfAMtQu3fcaCrl6StR8vaXe3c4TKkW3VmcD6K7TcN+
         HUanL00dWuSsAnbER4qeCIcZOLr+pF6nNjG8pOpVS9FKrm+sacP9bYWEHypxxdcPLP7/
         k0vMFPRpYPKz1o2aCxD/rJOmXlqsAIjLi4fFNg2V8HqQLQwQjB3qyqHdhAuqNP3FIV/D
         hCWaMkDyw6w3+bTR1Nz4QifJ5H2Abmn85ZzbDqNLY+tTBzkjxBuTk+Mwq9TvMSpcH5x8
         fDPF0/GVbXpEg//7yiDwH49kHm5FAd0m8iFr3HxRYVs5lgFxAXjkP0vlHcwBZU14Edge
         55NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GjyIrPF9VhLo0hA7XxnJ0twp/ESFOEUFXrrsrw6UTYU=;
        b=OZQ7116eL6DnVLVJqDZMgDcTvfijO3o16w8kx1nOSAcPvuop2k2lft57NGfyLkOIXY
         A4PE0sNFAy+yB25Nt3mFS7Ia9b6CIKndgFztrLc8O0ZSmoExtr5hkIkYbydHlIH3g8bv
         MAeW3bvfkqPQhciH6zqbiZBsHpECcYT/Px4svYFoel2PojXSvLUByQFeJvesqQyElrir
         r6v6vyFRGf7ghiU4CM9m5d1MHJL0lg/OhPTLcx7Wok17KyE4DSbAzRYbrsyPnMINkQB1
         /Jt8lW/tteX3K2rB6TcVPz2M4TxG7JbVAs593epsdQXFGJ37vv2jnoZnmJ8mx021t6rl
         7ILA==
X-Gm-Message-State: AOAM5303kLxgQx/InNjBJDaNUSCdIH4D2Cj20uMihqu8B5iF9oA2jVqh
	4TKqIQ9aZKmethCwE+qHpShNDPqtAMQUfA==
X-Google-Smtp-Source: ABdhPJztQbYRHF1Ko3f7FiD7XSGhWkUpIhcYEhPoLbJh4v4Y8zVBT2LaDxliylUTZGT/NHkU/2rhlQ==
X-Received: by 2002:a17:906:4ad9:: with SMTP id u25mr42797981ejt.174.1626959191695;
        Thu, 22 Jul 2021 06:06:31 -0700 (PDT)
Return-Path: <koansoftware@gmail.com>
Received: from amonra.localdomain (host-79-3-92-72.business.telecomitalia.it. [79.3.92.72])
        by smtp.gmail.com with ESMTPSA id o21sm6927771ejc.98.2021.07.22.06.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 06:06:31 -0700 (PDT)
From: "Marco Cavallini" <koansoftware@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Marco Cavallini <m.cavallini@koansoftware.com>,
	Marco Cavallini <koansoftware@gmail.com>
Subject: [meta-spdxscanner][PATCH] fossology-rest.bbclass: Moved check if spdx already exists out of the task
Date: Thu, 22 Jul 2021 15:06:23 +0200
Message-Id: <20210722130623.30388-1-koansoftware@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Marco Cavallini <m.cavallini@koansoftware.com>

 With the previous code was impossible to run the do_get_report
 task  whenever a correspondent .spdx file was already present
 in tmp/deploy/spdx.
 Now the check if spdx already exists is at a higher level
 therefore is possible to run : bitbake -c get_report

Signed-off-by: Marco Cavallini <koansoftware@gmail.com>
---
 classes/fossology-rest.bbclass | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/classes/fossology-rest.bbclass b/classes/fossology-rest.bbclass
index 3694440..e55e859 100644
--- a/classes/fossology-rest.bbclass
+++ b/classes/fossology-rest.bbclass
@@ -84,6 +84,15 @@ python () {
         create_manifest(info,sstatefile)
         return
 
+    # if spdx already exists
+    if os.path.exists(info['outfile']):
+        bb.note(info['pn'] + "spdx file has been exist, do nothing")
+        return
+    if os.path.exists( sstatefile ):
+        bb.note(info['pn'] + "spdx file has been exist, do nothing")
+        create_manifest(info,sstatefile)
+        return
+
     d.appendVarFlag('do_spdx', 'depends', ' %s:do_get_report' % pn)
     bb.build.addtask('do_get_report', 'do_configure', 'do_patch' , d)
     bb.build.addtask('do_spdx', 'do_configure', 'do_get_report', d)
@@ -157,15 +166,6 @@ python do_get_report () {
     info['outfile'] = os.path.join(manifest_dir, info['pn'] + "-" + info['pv'] + ".spdx" )
     sstatefile = os.path.join(spdx_outdir, info['pn'] + "-" + info['pv'] + ".spdx" )
     
-    # if spdx has been exist
-    if os.path.exists(info['outfile']):
-        bb.note(info['pn'] + "spdx file has been exist, do nothing")
-        return
-    if os.path.exists( sstatefile ):
-        bb.note(info['pn'] + "spdx file has been exist, do nothing")
-        create_manifest(info,sstatefile)
-        return
-
     spdx_get_src(d)
 
     bb.note('SPDX: Archiving the patched source...')
-- 
2.17.1

