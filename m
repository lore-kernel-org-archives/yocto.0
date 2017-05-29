Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03446E00953; Mon, 29 May 2017 14:22:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8818DE0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:22:32 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id u26so13455328pfd.2
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ePZuHFGOFBFAV/qVYr/wYq9aT51XZdQY6Fo9IoKBgAE=;
	b=m4I+7AaLdyyF5jkmAkvUqDrDIq2yxXBM16ZlMsog8tTD5ct6byxnIMDIvmYJ/cEqb3
	bj4lTwdAoeuwtfc9UN098N3KWK+iV57c+rz/0x53yyUNJv3r1TRK1DjFFJoXO+vCuxSD
	ym7ZjfJveGhLAgsf0Xtb7+z7/xTHZoHl1iUR6X0c85Q7Fj3GW9Dz1r5P3wQBW+OfPBSu
	f7V7lPJEQq79lsWkUjH5Gfv2uxX3fT3dcmRmT1ZQzrj6zfPzwH1MZRqGazVpDmUcmKOH
	yz6Gv9GPz5KhewLAhGwiLeMa9ClkgbwMewJTz/BLO7+niasnx+t/gNlmdlG9qb+ZXiDU
	9tpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ePZuHFGOFBFAV/qVYr/wYq9aT51XZdQY6Fo9IoKBgAE=;
	b=iZB9qeMZWIR7LT37+7zKJwRW1tfgvV9Gje1mmQKVs9FbqPST2X7LS4LzSX5MhYD0jG
	uA7/lKf2gWNjaG8C6ZKcTg4exREJg19T2dOy61eABlDmI7YK2rFgE0Wc3H1Fmd3tGL+Q
	gh4VicAdc6osbw0VgpbC2OBn6t3i+p1RhawHVTOcdEVS4troSVrD4e1U3Kwnvh5OIHrB
	+Auq8QOW28vjNNq3RG3hjWiAuOIS5vsXhsubk3gPMxqakr2xsSMMpePwI+tnID8fjv6v
	Y3LZON+s/2E7e4yNBHiRoyZjXRkJ4kmTKkzIgCDBh1AVDfDyheXRdY+PTE4oo35yg4tj
	KQXA==
X-Gm-Message-State: AODbwcDZRkY8+EczWnOrFmu/1oxnmjH0stx9JsyzT45bqmLaU9i032BY
	MnEDWf02MWvjFQ9l
X-Received: by 10.84.224.200 with SMTP id k8mr79244537pln.49.1496092951737;
	Mon, 29 May 2017 14:22:31 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c940:bb39:2b1d:3b23])
	by smtp.gmail.com with ESMTPSA id
	n24sm21261917pgd.57.2017.05.29.14.22.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 May 2017 14:22:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 29 May 2017 14:22:29 -0700
Message-Id: <1496092949-5916-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1496092949-5916-1-git-send-email-akuster808@gmail.com>
References: <1496092949-5916-1-git-send-email-akuster808@gmail.com>
Subject: [meta-cgl][PATCH 2/2] pacemaker: add missing header file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 29 May 2017 21:22:33 -0000

From: Armin Kuster <akuster@mvista.com>

 mainloop.c:406:8: error: unknown type name 'qb_array_t'
|  static qb_array_t *gio_map = NULL;

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../pacemaker/pacemaker/fix_missing_qb_array.patch  | 21 +++++++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.1.15.bb       |  1 +
 2 files changed, 22 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch
new file mode 100644
index 0000000..9f29ffa
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/fix_missing_qb_array.patch
@@ -0,0 +1,21 @@
+fix missing header file
+
+ mainloop.c:406:8: error: unknown type name 'qb_array_t'
+|  static qb_array_t *gio_map = NULL;
+
+Upstream-status: Pending
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: pacemaker-Pacemaker-1.1.15/lib/common/mainloop.c
+===================================================================
+--- pacemaker-Pacemaker-1.1.15.orig/lib/common/mainloop.c
++++ pacemaker-Pacemaker-1.1.15/lib/common/mainloop.c
+@@ -32,6 +32,7 @@
+ #include <crm/common/xml.h>
+ #include <crm/common/mainloop.h>
+ #include <crm/common/ipcs.h>
++#include <qb/qbarray.h>
+ 
+ struct mainloop_child_s {
+     pid_t pid;
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
index 17c9fe4..3e610ec 100755
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.15.bb
@@ -20,6 +20,7 @@ SRC_URI = "https://github.com/ClusterLabs/${PN}/archive/Pacemaker-${PV}.zip \
            file://0003-pacemaker-fix-header-defs-lookup.patch \
            file://0004-pacemaker-do-not-build-help.patch \
            file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch \
+           file://fix_missing_qb_array.patch \
            file://volatiles \
            file://tmpfiles \
           "
-- 
2.7.4


