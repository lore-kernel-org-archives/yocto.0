Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35126C46CD2
	for <webhook@archiver.kernel.org>; Sat, 30 Dec 2023 05:06:53 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.179090.1703912805630791552
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Dec 2023 21:06:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fpBKwq3k;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: ticotimo@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3bb9d54575cso4363561b6e.2
        for <yocto@lists.yoctoproject.org>; Fri, 29 Dec 2023 21:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703912804; x=1704517604; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8GMUfkHv/jHlSRlKb0PxsER6Pemf6fEvvd2a6KhA3aQ=;
        b=fpBKwq3kssPoWUOR37uK/XcAmtVzNOaerWrQobGZ1xRFeANrxzjHkAvsilsmC3AEgy
         neZdNb/i9WDmkjE/Ykz+YS95XjQjFhbEs9eZR6wPOeoSXrh57WTVGS+JWc7JsqoMEQ2Z
         8F8PyS2+zsCwSSCF1N7MXE2uO4dv5DXmxupU+QxSrJdvJNe7VueveVErcsqx46h+8QXs
         7/XLaKwZTtPcg4GfPYWdnZC6XS2AgVGD7pa0j2JNcZQPSMN1/rbzvuPtvQ+7n00SlG+O
         ZJ5P2Izs1Wg8j5g+5HsUHBd5XZ2BJyv6FzodIaqFOIqj2ZEZAS7Lf0csjXsifBCuEazB
         N76w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703912804; x=1704517604;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8GMUfkHv/jHlSRlKb0PxsER6Pemf6fEvvd2a6KhA3aQ=;
        b=ln+D46A2JF10ZeURN3Ex3uI+zMY0A+PCaWwgm14ePT8OnDBJrE9LRJaAoY4fTsaYqu
         thQfn/t3o9JfU8h7THQ4A2NbPY8fppWb/c8GZDqsKjalnc59F5e054ceAxBhwZBSKDrw
         cZc9ABYRDJBTT3+eyLL7ahFNCdVy6AW9RzBUC7mt1WRraZrAl3ZKIokfHo0Z6wpnoCgh
         olfPkDwKtxsRUkzcN00R71TPfvSKGgbo/g/WyYgT7M1oJoiuknkp6Ai14FwDowXkmiak
         uJ+4oppKe/a+6Ju4fwE/xf5ZL430aZd6ACSGBrJw/WID8BtYw8zEfBkcVNnLnE7Ck1gG
         cXUQ==
X-Gm-Message-State: AOJu0Yy8AK9XugOU+twXu7NsF7xLO2asnxNPN37rDqrV+z3T/JSed2Ed
	vpSBNxrDaikoqWN0DaqVKMdj/F6t7zQ=
X-Google-Smtp-Source: AGHT+IFpnnZ6P9K6+3+ShFnkyG/8SVe309hqW+I36qRVvBCqfPFVnUtYrEuEU0RF4SF14uuhShvppQ==
X-Received: by 2002:a05:6358:e98:b0:172:cf9c:882a with SMTP id 24-20020a0563580e9800b00172cf9c882amr10025726rwg.32.1703912804469;
        Fri, 29 Dec 2023 21:06:44 -0800 (PST)
Received: from chiron.hsd1.or.comcast.net ([2601:1c0:ca00:cea0:56fb:3e3a:cb3d:4a01])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b006d9a9727a8esm12124536pfm.178.2023.12.29.21.06.43
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Dec 2023 21:06:44 -0800 (PST)
From: Tim Orling <ticotimo@gmail.com>
X-Google-Original-From: Tim Orling <tim.orling@konsulko.com>
To: yocto@lists.yoctoproject.org
Subject: [layerindex-web][PATCH 7/7] layerindex: improve updates for actual_branch
Date: Fri, 29 Dec 2023 20:57:21 -0800
Message-Id: <e25ae78da6a62b674bd095752c363a12f090e101.1703911977.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1703911977.git.tim.orling@konsulko.com>
References: <cover.1703911977.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Dec 2023 05:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62058

Some layers now have one branch with many supported
LAYERSERIES_COMPAT. If this branch name does not match
one of the stable releases, LayerBranches might not
have been created. When actual_branch is set, it is
only set in a LayerBranch object. We previously
could not update (create) a stable branch with actual_branch
except manually in the admin interface.

Add --force-create option to be used in conjunction with
--actual-branch (which already requires --branch) in the
update.py script. This tells the script to ignore the
fact that no layerbranch exists already.

Add --actual-branch to update_layer.py so that we can create
(and more importantly checkout) an actual_branch for the
given stable --branch.

Update utils.py to allow checking out of actual_branch when
a LayerBranch does not yet exist.

While we are at it, ensure that any Branch that is marked
as no update will be skipped even with --force-create. The
main reason that a Branch has updates disabled is because the
bitbake or python syntax has changed enough to cause exceptions.

This script can now be run with:

./layerindex/update.py \
  --layer meta-weird-one \
  --branch kirkstone \
  --actual-branch=nonstandard \
  --force-create

Which will attempt to create a meta-weird-one:kirkstone layerbranch
checked out at the 'nonstandard' branch from that layer's git repo.

This allows layerindex admins to at least populate the database
without tedious creation of layerbranches in the admin interface.

Helps make the "branch mapping" actually work and be useful:
[YOCTO #8008]

Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 layerindex/update.py       | 39 ++++++++++++++++++++++++++++----------
 layerindex/update_layer.py |  8 ++++++++
 layerindex/utils.py        |  7 +++++--
 3 files changed, 42 insertions(+), 12 deletions(-)

diff --git a/layerindex/update.py b/layerindex/update.py
index f9a216d..c1886bd 100755
--- a/layerindex/update.py
+++ b/layerindex/update.py
@@ -43,6 +43,8 @@ def prepare_update_layer_command(options, branch, layer, initial=False):
     else:
         cmdprefix = 'python3'
     cmd = '%s update_layer.py -l %s -b %s' % (cmdprefix, layer.name, branch.name)
+    if options.actual_branch and options.force_create:
+        cmd += ' --actual-branch=%s' % options.actual_branch
     if options.reload:
         cmd += ' --reload'
     if options.fullreload:
@@ -86,15 +88,18 @@ def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake,
             logger.info("Skipping update actual_branch for %s - branch %s doesn't exist" % (layer.name, actual_branch))
             continue
         layerbranch = layer.get_layerbranch(branch)
-        if not layerbranch:
-            logger.info("Skipping update actual_branch for %s - layerbranch %s doesn't exist" % (layer.name, branch))
-            continue
-        if actual_branch != layerbranch.actual_branch:
-            logger.info("%s: %s.actual_branch: %s -> %s" % (layer.name, branch, layerbranch.actual_branch, actual_branch))
-            layerbranch.actual_branch = actual_branch
-            to_save.add(layerbranch)
+        if not options.force_create:
+            if not layerbranch:
+                logger.info("Skipping update actual_branch for %s - layerbranch %s doesn't exist" % (layer.name, branch))
+                continue
+            if actual_branch != layerbranch.actual_branch:
+                logger.info("%s: %s.actual_branch: %s -> %s" % (layer.name, branch, layerbranch.actual_branch, actual_branch))
+                layerbranch.actual_branch = actual_branch
+                to_save.add(layerbranch)
+            else:
+                logger.info("%s: %s.actual_branch is already %s, so no change" % (layer.name, branch, actual_branch))
         else:
-            logger.info("%s: %s.actual_branch is already %s, so no change" % (layer.name, branch, actual_branch))
+            logger.info("%s: Allowing branch %s with actual_branch %s to attempt to be created" % (layer.name, branch, actual_branch))
 
     # At last, do the save
     if not options.dryrun:
@@ -169,6 +174,9 @@ def main():
     parser.add_option("-a", "--actual-branch",
             help = "Update actual branch for layer and bitbake",
             action="store", dest="actual_branch", default='')
+    parser.add_option("", "--force-create",
+            help = "Create layer branch if it does not already exist",
+            action="store_true", dest="force_create", default=False)
     parser.add_option("-d", "--debug",
             help = "Enable debug output",
             action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
@@ -197,6 +205,10 @@ def main():
             if not utils.get_branch(branch):
                 logger.error("Specified branch %s is not valid" % branch)
                 sys.exit(1)
+            branchquery = Branch.objects.filter(updates_enabled=True).filter(name=branch)
+            if not branchquery.count() > 0:
+                logger.warning("Updates are disabled for specified branch %s" % branch)
+                sys.exit(1)
     else:
         branchquery = Branch.objects.filter(updates_enabled=True)
         branches = [branch.name for branch in branchquery]
@@ -315,7 +327,7 @@ def main():
                     logger.error("No repositories could be fetched, exiting")
                     sys.exit(1)
 
-            if options.actual_branch:
+            if options.actual_branch and not options.force_create:
                 update_actual_branch(layerquery, fetchdir, branches[0], options, update_bitbake, bitbakepath)
                 return
 
@@ -389,6 +401,10 @@ def main():
                         logger.error('Repository %s is bare, not supported' % repodir)
                         continue
                     try:
+                        # Allow stable branches to be created if actual_branch exists
+                        if options.actual_branch:
+                            branchname = options.actual_branch
+                            branchdesc = "%s (%s)" % (branch, branchname)
                         # Always get origin/branchname, so it raises error when branch doesn't exist when nocheckout
                         topcommit = repo.commit('origin/%s' % branchname)
                         if options.nocheckout:
@@ -419,7 +435,10 @@ def main():
                     else:
                         # Check out appropriate branch
                         if not options.nocheckout:
-                            utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
+                            if not options.actual_branch:
+                                utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
+                            else:
+                                utils.checkout_layer_branch(layerbranch, repodir, actual_branch=options.actual_branch, logger=logger)
                         layerdir = os.path.join(repodir, layerbranch.vcs_subdir)
                         if layerbranch.vcs_subdir and not os.path.exists(layerdir):
                             print_subdir_error(newbranch, layer.name, layerbranch.vcs_subdir, branchdesc)
diff --git a/layerindex/update_layer.py b/layerindex/update_layer.py
index 6d73fad..4a67a50 100644
--- a/layerindex/update_layer.py
+++ b/layerindex/update_layer.py
@@ -272,6 +272,9 @@ def main():
     parser.add_option("-i", "--initial",
             help = "Print initial values parsed from layer.conf only",
             action="store_true")
+    parser.add_option("-a", "--actual-branch",
+            help = "Specify actual_branch for git checkout",
+            action="store", dest="actual_branch", default=None)
     parser.add_option("-d", "--debug",
             help = "Enable debug output",
             action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
@@ -326,6 +329,9 @@ def main():
         if layerbranch.actual_branch:
             branchname = layerbranch.actual_branch
             branchdesc = "%s (%s)" % (options.branch, branchname)
+    elif options.actual_branch:
+        branchname = options.actual_branch
+        branchdesc = "%s (%s)" % (options.branch, branchname)
 
     # Collect repo info
     repo = git.Repo(repodir)
@@ -347,6 +353,8 @@ def main():
                 layerbranch = LayerBranch()
                 layerbranch.layer = layer
                 layerbranch.branch = branch
+                if options.actual_branch:
+                    layerbranch.actual_branch = options.actual_branch
                 layerbranch_source = layer.get_layerbranch(branch)
                 if not layerbranch_source:
                     layerbranch_source = layer.get_layerbranch(None)
diff --git a/layerindex/utils.py b/layerindex/utils.py
index 0ea8e48..8bbd621 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -297,8 +297,11 @@ def checkout_repo(repodir, commit, logger, force=False):
         # Now check out the revision
         runcmd(['git', 'checkout', commit], repodir, logger=logger)
 
-def checkout_layer_branch(layerbranch, repodir, logger=None):
-    branchname = layerbranch.get_checkout_branch()
+def checkout_layer_branch(layerbranch, repodir, actual_branch=None, logger=None):
+    if actual_branch:
+        branchname = actual_branch
+    else:
+        branchname = layerbranch.get_checkout_branch()
     checkout_repo(repodir, 'origin/%s' % branchname, logger)
 
 def is_layer_valid(layerdir):
-- 
2.34.1


