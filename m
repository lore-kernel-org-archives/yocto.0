Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B6E5E00A5C; Thu, 16 Feb 2017 06:58:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A993E00A25
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:39 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id v77so3542388wmv.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 06:58:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=SIeuG2+1rxm+7scNW6jMJDa5itQloP907Er2PHCwKNc=;
	b=hn6eIL5pTkTl5rOND2yiNL8dOaaUso9//gyQ9Bew8zg9mTF/ORzXgjWnSJv48pwzVE
	yG92WoMKM+vE1zYKBrSnlZNkdjNLZPJhU40XdmUpu54+WnS6ZwTBXZDbD0tnQrbNCACG
	BjjGw3fkR6evSUuUz0ZcIYZ+CyCo4TbowoJbH0PkcO8J5QOCl5RLqnM6SLHsQFM6l18P
	99iph78BDDj508x0DnNL4UZL0ZH3v4Sn8TTBXo0l6cLr2ISVtD6F0tjE8ho1EUQU/pki
	GN5Ujogz+DAuwb2eHxtqd00SwDxxMpXCsY3l6xRg1sb30NgBPG1Bo25i85zdvaUXpQaV
	UIDQ==
X-Gm-Message-State: AMke39nScFBGoFQmesUzTPkmiOql1MEa5NUBPrgL++YGS3LB5v2RkQXcEnSHUDFV/NYHMA==
X-Received: by 10.28.109.200 with SMTP id b69mr13147222wmi.94.1487257118560;
	Thu, 16 Feb 2017 06:58:38 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 8sm700233wmg.1.2017.02.16.06.58.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 06:58:37 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 14:58:30 +0000
Message-Id: <20170216145830.21766-4-git@andred.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170216145830.21766-1-git@andred.net>
References: <20170216145830.21766-1-git@andred.net>
MIME-Version: 1.0
Subject: [meta-swupd][PATCH 3/3] bundles.py: fix copying of full image to full bundle when no SWUPD_BUNDLES
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
X-List-Received-Date: Thu, 16 Feb 2017 14:58:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When SWUPD_BUNDLES is not set, exceptions are thrown, stopping the
build - there are two issues in here:
- the debug statement references a non-existent variable, 'bundle' was
  renamed to fulltar
- copyxattrfiles() needs a list of files as 2nd argument, not a filename
  of a file which contains this list

This got broken in commit 6c097131ad39
("meta-swupd: support rm_work.bbclass") while support for rm_work
was being added.

Signed-off-by: André Draszik <git@andred.net>
---
 lib/swupd/bundles.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
index 24947a8..b4c6f49 100644
--- a/lib/swupd/bundles.py
+++ b/lib/swupd/bundles.py
@@ -72,8 +72,9 @@ def copy_core_contents(d):
     if not havebundles:
         rootfs = d.getVar('IMAGE_ROOTFS', True)
         workdir = d.getVar('WORKDIR', True)
-        bb.debug(1, "Copying from image rootfs (%s) to full bundle (%s)" % (rootfs, bundle))
-        swupd.path.copyxattrfiles(d, source + contentsuffix, rootfs, fulltar, True)
+        bb.debug(1, "Copying from image rootfs (%s) to full bundle (%s)" % (rootfs, fulltar))
+        swupd.path.copyxattrfiles(d, swupd.utils.manifest_to_file_list(source + contentsuffix),
+                                  rootfs, fulltar, True)
     else:
         mega_archive = d.getVar('MEGA_IMAGE_ARCHIVE', True)
         if os.path.exists(fulltar):
-- 
2.11.0


