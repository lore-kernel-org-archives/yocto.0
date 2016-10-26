Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A3B1E00CD8; Tue, 25 Oct 2016 19:42:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB9B6E00CE0
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 19:42:31 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP; 25 Oct 2016 19:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,548,1473145200"; d="scan'208";a="777729539"
Received: from sloi-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.176])
	by FMSMGA003.fm.intel.com with ESMTP; 25 Oct 2016 19:42:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Oct 2016 15:41:55 +1300
Message-Id: <1477449716-24619-2-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1477449716-24619-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1477449716-24619-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/3] about: update contributors list
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
X-List-Received-Date: Wed, 26 Oct 2016 02:42:35 -0000

Ensure recent contributions from Mark and Liam are reflected in the
authors list.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 templates/layerindex/about.html | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/templates/layerindex/about.html b/templates/layerindex/about.html
index 3e98825..a290344 100644
--- a/templates/layerindex/about.html
+++ b/templates/layerindex/about.html
@@ -43,6 +43,8 @@
 <li>Belen Barros Pena</li>
 <li>Alexandru Damian</li>
 <li>Michael Halstead</li>
+<li>Liam R. Howlett</li>
+<li>Mark Hatle</li>
 </ul>
 
 <p>The code is Open Source and can be found on <a href="http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/">git.yoctoproject.org</a>. Patches welcome!</p>
-- 
2.5.5


