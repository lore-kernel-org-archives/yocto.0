Return-Path: <prvs=2587fa4da=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB4F4E0053E; Mon,  7 Jul 2014 06:21:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E6D8E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 06:21:19 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqEEANydulOsEApK/2dsb2JhbABag2BaxjkBgSt1hAQBBTpPGBQlD0gGE4hHyXEXjj5rFoQtAQSadYc5kBmBbEI
X-IPAS-Result: AqEEANydulOsEApK/2dsb2JhbABag2BaxjkBgSt1hAQBBTpPGBQlD0gGE4hHyXEXjj5rFoQtAQSadYc5kBmBbEI
Date: Mon, 7 Jul 2014 15:21:16 +0200
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Message-ID: <20140707152116.3db6a7d2@lxbuild.skidata.net>
In-Reply-To: <20140707151855.1f43b39a@lxbuild.skidata.net>
References: <20140707151855.1f43b39a@lxbuild.skidata.net>
Organization: SKIDATA AG
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
Subject: [PATCH] bitbake: fetch/git: fix head refs in git ls-remote call
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
X-List-Received-Date: Mon, 07 Jul 2014 13:21:21 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Use the branch in refs/head instead of the tag.
This allows a given tag name to differ from the branch name.

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 bitbake/lib/bb/fetch2/git.py |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 9ca2442..d30f109 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -339,7 +339,7 @@ class Git(FetchMethod):
         """
         Compute the HEAD revision for the url
         """
-        search = "refs/heads/%s refs/tags/%s^{}" % (ud.unresolvedrev[name], ud.unresolvedrev[name])
+        search = "refs/heads/%s refs/tags/%s^{}" % (ud.branches[name], ud.unresolvedrev[name])
         output = self._lsremote(ud, d, search)
         return output.split()[0]
 
-- 
1.7.10.4


