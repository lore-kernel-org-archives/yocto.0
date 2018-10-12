Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 730B6E00B77; Fri, 12 Oct 2018 08:37:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9475E00B6C
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 08:37:23 -0700 (PDT)
Received: by mail-it1-f194.google.com with SMTP id i191-v6so18775772iti.5
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 08:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=nznHHp7ldEWrXTJ81qwMY9F2+wvVah+Y2Fx4zgaAjrc=;
	b=ZPS6J5dSWTZ6VkyPSr/76E2g90UEJilgeI+IBTrzthFZCtfY/h5+3oEtUoCos0Za9f
	HrDHBYX2xpbiAbP3EkwfUhSPx/pgjuVh9Cv6S5rAMIPi/h9dnSWdUj7a6aDOKC18ORhb
	yhFEvYcIESjxrDkgTrlK9tATr/qTfnVjpUDC4smVDOo1YdQPUdYQkANLvxUeRg2hGqzm
	Y054Dx+qRQsLq5VmlEwMr4wZhoOxqYHb0gY3ydQtjBrxApU7YNfrG6RjP4Y+xSYFHV0X
	ey5t/HQSKAQSPU+lCQND2TsTlyNZ35fdNQl5ttgaUx+p1oBg4Esk9+dRIQsaqbWUTxm3
	pPaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=nznHHp7ldEWrXTJ81qwMY9F2+wvVah+Y2Fx4zgaAjrc=;
	b=Nitjdy8z32KYPks+R9SB/P2HM8aOs1oRMFAi8Y5PvBby0y71FWGq0Sj5h7m52/xVCy
	Ppf8kO8J+jL02UxloGAn8/yp2/DQC/50ITMuFXmvVW11Dthu6xJkaIGIxCComyfhH8iE
	6aJOt7f/DVVqYSNSAuQqn8DN8lh4vqI1S9eQRRhhgNZ7WilEkatvkk6j7jYb7kKaDXpe
	JNaABs2Y7IPsv0GRMZYJDd5tLWNZ5bhSltYvHEXcBjfeD6tKZ2EuJ2f2Ch/wVSI/bylt
	yBLmJcrUjoHOnTjI/YN6A5oFcCyoHmsMBK0zDpHyyYTHarE109gIXWZqPC74hB6WPLHs
	h6+g==
X-Gm-Message-State: ABuFfoi42AwT8co2aFXVphth1QtN/hzx6FUzC4rfH5b7hlkMeIkaE8Se
	4Jh8vRDW97pi5hjK7kBGGiY=
X-Google-Smtp-Source: ACcGV60aZOaptklyFdwxTQbKmBip0RrACm4kIWwp3pRsfxi81SR9xci2N0h/7goPs6Tzc6yzxxYWFQ==
X-Received: by 2002:a02:c7cc:: with SMTP id
	s12-v6mr5503012jao.10.1539358642835; 
	Fri, 12 Oct 2018 08:37:22 -0700 (PDT)
Received: from brrussell-Latitude-E6530.dhcp.lexmark.com ([192.146.101.90])
	by smtp.gmail.com with ESMTPSA id
	j19-v6sm735761itb.25.2018.10.12.08.37.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 12 Oct 2018 08:37:22 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: mark.hatle@windriver.com
Date: Fri, 12 Oct 2018 11:37:15 -0400
Message-Id: <20181012153715.27876-1-bkylerussell@gmail.com>
X-Mailer: git-send-email 2.17.1
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][PATCH] Add option to return an error if all binaries cannot be prelinked
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
X-List-Received-Date: Fri, 12 Oct 2018 15:37:24 -0000

Otherwise, there's no way to validate whether or not the operation
was actually successful without rescanning.

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 src/doit.c    | 16 +++++++++++-----
 src/main.c    |  8 +++++++-
 src/prelink.h |  2 +-
 3 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/src/doit.c b/src/doit.c
index 1e32ad5..3784866 100644
--- a/src/doit.c
+++ b/src/doit.c
@@ -237,11 +237,11 @@ error_out:
   return;
 }
 
-void
+int
 prelink_all (void)
 {
   struct collect_ents l;
-  int i;
+  int i, fails = 0;
 
   l.ents =
     (struct prelink_entry **) alloca (prelink_entry_count
@@ -250,7 +250,13 @@ prelink_all (void)
   htab_traverse (prelink_filename_htab, find_ents, &l);
 
   for (i = 0; i < l.nents; ++i)
-    if (l.ents[i]->done == 1
-	|| (l.ents[i]->done == 0 && l.ents[i]->type == ET_EXEC))
-      prelink_ent (l.ents[i]);
+    {
+      if (l.ents[i]->done == 1
+         || (l.ents[i]->done == 0 && l.ents[i]->type == ET_EXEC))
+	prelink_ent (l.ents[i]);
+      if (l.ents[i]->type == ET_UNPRELINKABLE)
+	fails++;
+    }
+
+  return fails;
 }
diff --git a/src/main.c b/src/main.c
index 0cea86d..6ba89d5 100644
--- a/src/main.c
+++ b/src/main.c
@@ -47,6 +47,7 @@ int one_file_system;
 int enable_cxx_optimizations = 1;
 int exec_shield;
 int undo, verify;
+int errors;
 enum verify_method_t verify_method;
 int quick;
 int compute_checksum;
@@ -90,6 +91,7 @@ static struct argp_option options[] = {
   {"black-list",	'b', "PATH", 0, "Blacklist path" },
   {"cache-file",	'C', "CACHE", 0, "Use CACHE as cache file" },
   {"config-file",	'c', "CONF", 0, "Use CONF as configuration file" },
+  {"errors",            'e', 0, 0,  "Returns an error if all binaries are not prelinkable" },
   {"force",		'f', 0, 0,  "Force prelinking" },
   {"dereference",	'h', 0, 0,  "Follow symlinks when processing directory trees from command line" },
   {"one-file-system",	'l', 0, 0,  "Stay in local file system when processing directories from command line" },
@@ -139,6 +141,9 @@ parse_opt (int key, char *arg, struct argp_state *state)
       if (add_to_blacklist (arg, dereference, one_file_system))
 	exit (EXIT_FAILURE);
       break;
+    case 'e':
+      errors = 1;
+      break;
     case 'f':
       force = 1;
       break;
@@ -524,7 +529,8 @@ main (int argc, char *argv[])
     prelink_load_cache ();
 
   layout_libs ();
-  prelink_all ();
+  if(prelink_all () && errors)
+    return EXIT_FAILURE;
 
   if (! no_update && ! dry_run)
     prelink_save_cache (all);
diff --git a/src/prelink.h b/src/prelink.h
index 93dbf7a..c7b57e2 100644
--- a/src/prelink.h
+++ b/src/prelink.h
@@ -574,7 +574,7 @@ int get_relocated_mem (struct prelink_info *info, DSO *dso, GElf_Addr addr,
 
 int layout_libs (void);
 
-void prelink_all (void);
+int prelink_all (void);
 
 int undo_all (void);
 
-- 
2.17.1


