Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B670E00DFA; Thu,  1 Aug 2019 11:38:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.160.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
	[209.85.160.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E7BE00DE2
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 11:38:22 -0700 (PDT)
Received: by mail-qt1-f195.google.com with SMTP id l9so71244027qtu.6
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 11:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=/9AVY4OCj1BLymVQQ6r+nJuMhwca9l03EIF6sZa16X0=;
	b=NNkjM88hTthwfpJ1t7I5FPeRyV+EOlh6u08F+ppGYurkfKyN3v/qazVgD8EvnwSuAa
	gZ5tY/KrKtlqta3IRPB9u59IH4GWLpZlkWeYPeVteSEIDHUJSjoMLewnS4dg6r3sTBIn
	IfGtSzvTmk5L26LezYEbjYU4fd6pAlEgyON0IQXLACs6Gs5sFr9wWwL+lVaUy5xccfvu
	kJmhw6Y/TIQQHsyfdh6MG565lga/Ad/CYAU+tb2FTT0RmkxUqn1uxcT+kw8964Pvr2aU
	h+/l/186756rLcwNB+sCmvzHFB9lNtyFf+2hiI0bs/tpZs5DzgWOj7C1/QXiwl14mxa5
	bA2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=/9AVY4OCj1BLymVQQ6r+nJuMhwca9l03EIF6sZa16X0=;
	b=Ij1GtY8TUjSjfpjua+oBABu4FPMWvA40h4/Eb540uGzEzrx78T+osT3kAFJkIcS9tc
	Uv99g2vPMz83+ANQ6HVsSngeZr65OsAzN8SyL1WzMAtCHDbmo3R6xDcGLrPlj6Bsn86o
	60iuu4Sf8rGlKASND06cANFB4EYuZwnFwbwaDWBXXjSKfs9wM06XWDZtD4Y2R7YGpqr2
	+ZIMi/uR4Y9ootelKNFs6WEAb7PtqcxFyRLA94c7YGWXwaXGxa7iGnMDMRkMRM/LSr64
	JXQqSyXYVIOmatP7ac8znO6cK8u3TLlZkZIATtKzYTD11Bug7pXQSsD7twCunaDRB5p+
	0FaQ==
X-Gm-Message-State: APjAAAU9EAI7WtFfxb7B/Mq4+QEyukh/y/nFm2Trs6BScUYjTczvVGT4
	orPPJHDO7padxDZMN2gdqW/6NzbYALw=
X-Google-Smtp-Source: APXvYqyb5/mcb1eH4XyTmJA9vFRjGI6H68oiQ6pO7WN9/PeEMYHOq+bwSQwBIsDL6T3mul950At4iQ==
X-Received: by 2002:ac8:1a3c:: with SMTP id v57mr90793864qtj.339.1564684701613;
	Thu, 01 Aug 2019 11:38:21 -0700 (PDT)
Received: from intrepid.geontech.local
	(static-108-40-78-74.bltmmd.fios.verizon.net. [108.40.78.74])
	by smtp.gmail.com with ESMTPSA id
	v28sm29195708qkj.11.2019.08.01.11.38.21
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 01 Aug 2019 11:38:21 -0700 (PDT)
From: Thomas Goodwin <btgoodwin@geontech.com>
To: yocto@yoctoproject.org
Date: Thu,  1 Aug 2019 14:37:32 -0400
Message-Id: <20190801183734.9597-2-btgoodwin@geontech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190801183734.9597-1-btgoodwin@geontech.com>
References: <20190801183734.9597-1-btgoodwin@geontech.com>
Subject: [yocto-autobuilder-helper][PATCH 2/4] layer-config: fixing silent failures from always exiting '0'
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
X-List-Received-Date: Thu, 01 Aug 2019 18:38:23 -0000

The return value from bitbakecmd was not being returned when
errors occurred which allowed shared-repo-unpack to succeed
despite the failure.  This fix changes to check_call and a
try-catch when attempting to add repos that fail for whatever
reason during add-layer, like a missing conf/layer.conf at
the top level or a previously-added layer breaks parsing
because of missing dependencies.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
---
 scripts/layer-config | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/scripts/layer-config b/scripts/layer-config
index bfc62da..286451a 100755
--- a/scripts/layer-config
+++ b/scripts/layer-config
@@ -24,9 +24,7 @@ args = parser.parse_args()
 ourconfig = utils.loadconfig()
 
 def bitbakecmd(targetdir, cmd):
-    ret = subprocess.call(". ./oe-init-build-env; %s" % cmd, shell=True, cwd=targetdir)
-    if ret:
-        utils.printheader("ERROR: Command %s failed with exit code %d, see errors above." % (cmd, ret))
+    subprocess.check_call(". ./oe-init-build-env; %s" % cmd, shell=True, cwd=targetdir)
 
 needrepos = utils.getconfigvar("NEEDREPOS", ourconfig, args.target, None)
 
@@ -51,5 +49,8 @@ if callinit:
 for repo in needrepos:
     if repo in repos and "no-layer-add" in repos[repo] and repos[repo]["no-layer-add"]:
         continue
-    bitbakecmd(args.abworkdir, "bitbake-layers add-layer %s" % (args.abworkdir + "/" + repo))
-
+    try:
+        bitbakecmd(args.abworkdir, "bitbake-layers add-layer %s" % (args.abworkdir + "/" + repo))
+    except subprocess.CalledProcessError as e:
+        utils.printheader("ERROR: Command %s failed with exit code %d, see errors above." % (e.cmd, e.returncode))
+        sys.exit(e.returncode)
-- 
2.17.1


