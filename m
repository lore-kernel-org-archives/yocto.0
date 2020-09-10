Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.20809.1599740760865148036
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=L3wynWLl;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id a17so6484764wrn.6
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MEHodVq2brVTjskaR0puJeewoBYyZ411x07+nShVROw=;
        b=L3wynWLlfZ3mhWWOTYXdphSvs4Nq9xAYXeM9fRTCftcWXh6/+NIjCL8lsMSANYEdOT
         zkSHF2rySfqWPehX5EjqguLNgLrSJsZQ8HcaJfug8dFoxMat4q5cbPNGoVI92fDjrUoi
         auQv5/uUjn2MjGaq9a4r0+YbGa848oKJZb9b0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MEHodVq2brVTjskaR0puJeewoBYyZ411x07+nShVROw=;
        b=LWBmX1eIaIAlbU4COTd8lGZ8k+JqQn345Ry1E9AjPbltwuIQ1s/Aurs6pbt/Q1qEWx
         Q+y+a9AtoYa+hlIraORCL8o/IXvNu5dzATSjlErluO1oZInyAfdML6QlHAX9hpsV1fAJ
         Ybs9M5PwJgvwb8iQyPphbeKU00xiyMwBMM+5KpXvRHgISye2hyKkWRHNjD6PRt48Wot8
         ddD/5J/bNSiwxlEreMK6win0R7RMkW5cksFIDfvIirnngV32XKPoedJnpGy8m5M8K0V0
         by6889DD4TP8Wgym4pdoxOx0rTyaBbiJMJ/QWhsNAtfSTDtuibQ58lbXNRdmSL7VJ6R/
         RLHw==
X-Gm-Message-State: AOAM533NjLdLpzrX4C8qMi+/sG80lylJOtv+LK4WDwktflHV/A4a5OEM
	Ku3RqSEsrl7dW1kIkhroNUMIc9dcudWmxg==
X-Google-Smtp-Source: ABdhPJzDBi3LCfCWti+yCGeuREEN2d/+utEF7EmbgnJDAOKMk+EebkCNfj7fN1vx5yANic7TIUeBWA==
X-Received: by 2002:a5d:4f09:: with SMTP id c9mr8311826wru.427.1599740758492;
        Thu, 10 Sep 2020 05:25:58 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:57 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Thomas Goodwin <btgoodwin@geontech.com>
Subject: [PATCH][autobuilder-helper][warrior 05/41] layer-config, shared-repo-unpack: Sub-repos in NEEDREPOS
Date: Thu, 10 Sep 2020 13:25:17 +0100
Message-Id: <20200910122553.2040430-5-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Goodwin <btgoodwin@geontech.com>

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
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
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
index a281897..92f0ccf 100755
--- a/scripts/shared-repo-unpack
+++ b/scripts/shared-repo-unpack
@@ -46,9 +46,9 @@ with open(args.repojson) as f:
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
2.25.1

