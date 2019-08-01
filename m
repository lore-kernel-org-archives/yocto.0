Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43BA9E00DFE; Thu,  1 Aug 2019 11:38:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F088E00DFA
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:38:29 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id x22so66366652qtp.12
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 11:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=iYlG7zrWrgd1sPYqnIzX+vm/dxTTLaDvMW4/bYDKEFo=;
	b=x7XiDWhq57m7Pew5QOYXINXwDRRILJnV5nV2tD92Sp6ZpqM6O2Xx1p00IPzBj8PsGM
	y31xY25Q2Eyowim/mek2ubtrIwEWvte6IoSVSB05BDARTiJuepn8XtOTd4Tl4oozYXFM
	XWYyz3ZtTiezt+FE/cUeZuX9qs6vnbXScyUOFfQtHAPRpEEH/w7y8CNUOz0iiTTwarp5
	HYLUHt/GAKFhGQAyDL1CZX4N1ZoYSDu4+Pj0m9b63GJ64lxdyqVMwH+EnnqH2cwRa7i1
	eOhWLASU5iXvGp/gT1XueoTizDCQgS8SOcrb/IgSLAJdoaKUFripYWIQFfBWb44sNv4u
	6bjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=iYlG7zrWrgd1sPYqnIzX+vm/dxTTLaDvMW4/bYDKEFo=;
	b=avrLW5UX1NvE37eOzZER/uNozQfIIqNuj1zgCbKqfj7nTQsiWmrIVir96RXa59Aqlv
	/Zop7RQixkX6FkdVcqj/+5EJOzSGsBoPVMZu+G6BaHpqmHwAxlPK1LplXb0R+HrbyTNH
	1BPymWn8eeIdi8p+66NCQqsPRjvDSp+gMf6F0UeEMu1rkhlTrBfnvDou+tx3heMp8Qc4
	KnE1OlscCAuct0we0SJQ0v6/CLrdIexk328erbUkITIPq9QrHU+0HbykfXqoPT62x1t/
	3WGMSHn+1XEktjeAzYR3A0lnc7ZjLwWWpq4lr+GZSTE1twTnRP8052uyVMOKoyKgLszg
	pBaQ==
X-Gm-Message-State: APjAAAU0oT+QVJCPMTAuPFMy/G6RMZg3Pg0XdELPNu77D/mdMM6oDJ9x
	XOnMFY5J0knlIpAozoPWAXKZ9MaiP/Q=
X-Google-Smtp-Source: APXvYqyQArvIxwWOsh0JnD2uHYVEj4/FP2ZWefQ3kEsXmBo7B6VOr1MpSGp4SjNqw7hKk67CWKDOmw==
X-Received: by 2002:a0c:f410:: with SMTP id h16mr13254051qvl.95.1564684708268; 
	Thu, 01 Aug 2019 11:38:28 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	v28sm29195708qkj.11.2019.08.01.11.38.27
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 11:38:27 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Aug 2019 14:37:34 -0400
Message-Id: <20190801183734.9597-4-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190801183734.9597-1-btgoodwin@geontech.com>
References: <20190801183734.9597-1-btgoodwin@geontech.com>
Subject: [yocto-autobuilder-helper][PATCH 4/4] layer-config, shared-repo-unpack: Sub-repos in NEEDREPOS
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
X-List-Received-Date: Thu, 01 Aug 2019 18:38:30 -0000

The previous fixes requires the user to set "no-layer-add"
for a repo and then use ADDLAYER to insert the sub-repos
(e.g., meta-openmbedded/meta-oe) as a two-part process.
This means that you would also have to specify that flag
if a repo that is a layer with dependencies is in the
list so that it can be inserted in the correct order later
via ADDLAYER to avoid parsing problems.  This fix allows
for specifying a NEEDREPOS with the subdirectory of the
target layer (e.g., meta-openembedded/meta-oe) so that
there is no need for the "no-layer-add" followed by
ADDLAYER combination.  The entire meta-openembedded
repo would be moved into place, and the sublayer added
to bblayers.conf.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 scripts/layer-config       | 24 +++++++++++++++---------
 scripts/shared-repo-unpack |  4 ++--
 2 files changed, 17 insertions(+), 11 deletions(-)

diff --git a/scripts/layer-config b/scripts/layer-config
index 286451a..bb1b681 100755
--- a/scripts/layer-config
+++ b/scripts/layer-config
@@ -33,21 +33,27 @@ callinit = False
 repos = utils.getconfig("repo-defaults", ourconfig)
 
 for repo in needrepos:
-    checkdir = repo
-    if repo in repos:
-        if "call-init" in repos[repo] and repos[repo]["call-init"]:
+    repo_basename = repo.split('/')[0]
+    checkdir = repo_basename
+    if repo_basename in repos:
+        if "call-init" in repos[repo_basename] and repos[repo_basename]["call-init"]:
             callinit = True
-        if "checkout-dirname" in repos[repo]:
-            checkdir = repos[repo]["checkout-dirname"]
-    utils.mkdir(args.abworkdir + "/" + checkdir)
-    for f in os.listdir(args.abworkdir + "/repos/" + repo):
-        subprocess.check_call(['mv', args.abworkdir + "/repos/" + repo + "/" + f, args.abworkdir + "/" + checkdir + "/"])
+        if "checkout-dirname" in repos[repo_basename]:
+            checkdir = repos[repo_basename]["checkout-dirname"]
+
+    source = args.abworkdir + "/repos/" + repo_basename
+    destination = args.abworkdir + "/" + checkdir
+    if not os.path.isdir(destination) or callinit:
+        utils.mkdir(destination)
+        for f in os.listdir(source):
+            subprocess.check_call(['mv', source + "/" + f, destination + "/"])
 
 if callinit:
     subprocess.check_call(". ./oe-init-build-env", shell=True, cwd=args.abworkdir)
 
 for repo in needrepos:
-    if repo in repos and "no-layer-add" in repos[repo] and repos[repo]["no-layer-add"]:
+    repo_basename = repo.split('/')[0]
+    if repo_basename in repos and "no-layer-add" in repos[repo_basename] and repos[repo_basename]["no-layer-add"]:
         continue
     try:
         bitbakecmd(args.abworkdir, "bitbake-layers add-layer %s" % (args.abworkdir + "/" + repo))
diff --git a/scripts/shared-repo-unpack b/scripts/shared-repo-unpack
index 65ac7cb..e52b53b 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -43,9 +43,9 @@ with open(args.repojson) as f:
     repos = json.load(f)
 
 targetsubdir = args.abworkdir + "/repos"
-
+needrepos_baseddirs = [r.split('/')[0] for r in needrepos]
 for repo in sorted(repos.keys()):
-    if repo not in needrepos:
+    if repo not in needrepos_baseddirs:
         continue
     targetrepodir = "%s/%s" % (targetsubdir, repo)
     if args.cache_dir:
-- 
2.17.1


