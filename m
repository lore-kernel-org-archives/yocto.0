Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16517.1598459797727467480
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 09:36:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NP9gYCCo;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: alex.kiernan@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00F8BE020A8; Wed, 26 Aug 2020 09:36:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CFF9E020A6
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 09:36:35 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id o21so2428803wmc.0
        for <yocto@yoctoproject.org>; Wed, 26 Aug 2020 09:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=78iP+Q3uAq51iUXRZKo288nklcL2fsGAbuju+skIt8s=;
        b=NP9gYCCoiQbdEtHIb6IgEhqXED0Xgd9KHWm39IOy3pl9+vb8JvqQy/ggJYVily2kpX
         EaQOiLuIvo6H3IgHjq7WNyxTo/fc5KIdcg7dIF1cEMC9XAfdSF2E3ztK/vF80TK6zojB
         EqM9C0GdVsy1WrlF9kBupA4Mya+ClBcXG04yW/gCgyvQ/yOgv3k6sKf4MaeZaQltUKYt
         7RDCaE8mlmC6a5tjDV9MCgGVBzN8T6hWT+NNEtpRQF/HfMtJjJMZ+6pmJ3tCw0Ab7jY3
         vAGvjXu4O12zTH6aMuqMQaEU4ccovaYhADK7jUtBIMbj1vxmjcBnzH7YtAfiiGecbO3R
         mYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=78iP+Q3uAq51iUXRZKo288nklcL2fsGAbuju+skIt8s=;
        b=XIZyUYIAbR3/UXzyr16tiT0U73nG9f75Gu18xAX3n8BYdm9ppSZNXNaAWOUY4Q0kec
         Zi7a0T8qtn5ftjLUaIHc7O49m74LHU7fldXtCOeuQAmIn38rH/2usLZiKtzFbJZ7zqiG
         EME2cakC774jGtENBpn1SMRtVhpsGgHAimkZLL+zAT32fSMGZIZLPPTPvA3XKUVfPYh2
         5jub0xwLY+54cFQe9C/wkQl37O57TR/UTS9DtFujdxbMYKOI+xONIIJkCEXv6fH4EpxO
         VP+BPF4FIL88uHPr52Nq0vK0klEVdDSA1z1xgtGg0H6httblf02ISytWwGiB3oVhYu/r
         zkNQ==
X-Gm-Message-State: AOAM530T532+zZh1KEUz3QeVNrhAmnbq7AYaHQk7jO5PBZQdqNYxTUDi
	mryHzyY5+xPHUj+GZdVPL+cHtyeIMdY=
X-Google-Smtp-Source: ABdhPJwBVGoKSojEXFMsIx8ICAzgwUCtr1LaQWjcT+V1aTo5HTYtvFwnYGC1bpvgUDsAWGec1tBRlQ==
X-Received: by 2002:a7b:c84f:: with SMTP id c15mr8433488wml.133.1598459794828;
        Wed, 26 Aug 2020 09:36:34 -0700 (PDT)
Received: from localhost.localdomain (cust246-dsl91-135-6.idnet.net. [91.135.6.246])
        by smtp.gmail.com with ESMTPSA id q8sm2519484wrx.79.2020.08.26.09.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 09:36:34 -0700 (PDT)
From: "Alex Kiernan" <alex.kiernan@gmail.com>
To: yocto@yoctoproject.org
Cc: Alex Kiernan <alex.kiernan@gmail.com>
Subject: [meta-selinux][PATCH] audit: Backport gcc10 fix for common default
Date: Wed, 26 Aug 2020 17:35:26 +0100
Message-Id: <20200826163526.32264-1-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---

 ...ns-need-to-be-external-when-building.patch | 28 +++++++++++++++++++
 recipes-security/audit/audit_2.8.5.bb         |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch

diff --git a/recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch b/recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch
new file mode 100644
index 000000000000..65ea4783a801
--- /dev/null
+++ b/recipes-security/audit/audit/0001-Header-definitions-need-to-be-external-when-building.patch
@@ -0,0 +1,28 @@
+From 017e6c6ab95df55f34e339d2139def83e5dada1f Mon Sep 17 00:00:00 2001
+From: Steve Grubb <sgrubb@redhat.com>
+Date: Fri, 10 Jan 2020 21:13:50 -0500
+Subject: [PATCH] Header definitions need to be external when building with
+ -fno-common (which is default in GCC 10) - Tony Jones
+
+Upstream-Status: Backport
+Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
+---
+ src/ausearch-common.h | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/ausearch-common.h b/src/ausearch-common.h
+index 6669203664ec..3040547afe95 100644
+--- a/src/ausearch-common.h
++++ b/src/ausearch-common.h
+@@ -50,7 +50,7 @@ extern pid_t event_pid;
+ extern int event_exact_match;
+ extern uid_t event_uid, event_euid, event_loginuid;
+ extern const char *event_tuid, *event_teuid, *event_tauid;
+-slist *event_node_list;
++extern slist *event_node_list;
+ extern const char *event_comm;
+ extern const char *event_filename;
+ extern const char *event_hostname;
+-- 
+2.17.1
+
diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/audit/audit_2.8.5.bb
index af36ed5e2528..e3e5ddd541fc 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -11,6 +11,7 @@ SRC_URI = "git://github.com/linux-audit/${BPN}-userspace.git;branch=2.8_maintena
            file://Add-substitue-functions-for-strndupa-rawmemchr.patch \
            file://Fixed-swig-host-contamination-issue.patch \
            file://0001-lib-i386_table.h-add-new-syscall.patch \
+           file://0001-Header-definitions-need-to-be-external-when-building.patch \
            file://auditd \
            file://auditd.service \
            file://audit-volatile.conf \
-- 
2.17.1

