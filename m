Return-Path: <gschmottlach@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B593E00823; Sat, 20 Dec 2014 07:22:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gschmottlach[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D9FE003E3
	for <yocto@yoctoproject.org>; Sat, 20 Dec 2014 07:22:37 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id f51so1849660qge.35
	for <yocto@yoctoproject.org>; Sat, 20 Dec 2014 07:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=sRKSj1OjTjwUz5YpEdO/dB/lquzJYOHDNgE+lm0TwEk=;
	b=KGcsYtreRO9jV3evZ5fo1t918uZKgoyI5g14hbXtTozsLjbmOCU5qK6gjLt3W2AHVW
	lgvAwPorx60ok+/QtR9zZwQ6QK6OXni6ddXG2uWo+yQBs2S2ZX6SAxGLI6RgOhlmhi2T
	TjriYnbvDDxUIivsbfocwibrjPuk6UcSoNaTZ5tVV7xBTJ1DP7yYBxlYVF8t0kHFzRT0
	517wayvWKaaOJJme6K9Udm7/UZPX2pcep6b/yrnNF+4AiM57Jk6mRNkp0czNc6xjutlb
	rdnKCpnQ2Xw4LRE76V7WHCJ6GOfy2vjs+zSTC3fDllYPs5xGsmIEHRnHhN6Rj3aBudXf
	bbgA==
MIME-Version: 1.0
X-Received: by 10.140.40.51 with SMTP id w48mr22184391qgw.34.1419088956989;
	Sat, 20 Dec 2014 07:22:36 -0800 (PST)
Received: by 10.140.97.134 with HTTP; Sat, 20 Dec 2014 07:22:36 -0800 (PST)
Date: Sat, 20 Dec 2014 10:22:36 -0500
Message-ID: <CAMS2kBHXx=2FYQPjrMK9226aDc5FJQ9GDc9JtYJMmD29ADedig@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [PATCH] Fix gitsm.py bug that prevents fetching submodules within submodules.
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
X-List-Received-Date: Sat, 20 Dec 2014 15:22:39 -0000
Content-Type: text/plain; charset=UTF-8

Previous versions of the gitsm.py fetcher did not anticipate
submodules themselves having additional submodules. This fix
adds a recursive option so all nested submodules are fetched as
well.
---
 bitbake/lib/bb/fetch2/gitsm.py | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/bitbake/lib/bb/fetch2/gitsm.py b/bitbake/lib/bb/fetch2/gitsm.py
index c125cff..f89839d 100644
--- a/bitbake/lib/bb/fetch2/gitsm.py
+++ b/bitbake/lib/bb/fetch2/gitsm.py
@@ -109,8 +109,7 @@ class GitSM(Git):
         runfetchcmd("sed " + gitdir + "/config -i -e
's/bare.*=.*true/bare = false/'", d)
         os.chdir(tmpclonedir)
         runfetchcmd(ud.basecmd + " reset --hard", d)
-        runfetchcmd(ud.basecmd + " submodule init", d)
-        runfetchcmd(ud.basecmd + " submodule update", d)
+        runfetchcmd(ud.basecmd + " submodule update --init --recursive", d)
         self._set_relative_paths(tmpclonedir)
         runfetchcmd("sed " + gitdir + "/config -i -e
's/bare.*=.*false/bare = true/'", d)
         os.rename(gitdir, ud.clonedir,)
@@ -131,6 +130,5 @@ class GitSM(Git):
         submodules = self.uses_submodules(ud, d)
         if submodules:
             runfetchcmd("cp -r " + ud.clonedir + "/modules " +
ud.destdir + "/.git/", d)
-            runfetchcmd(ud.basecmd + " submodule init", d)
-            runfetchcmd(ud.basecmd + " submodule update", d)
+            runfetchcmd(ud.basecmd + " submodule update --init --recursive", d)

-- 
1.9.1

