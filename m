Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46B68E00A9C; Wed,  6 Sep 2017 08:32:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E23E0091D
	for <yocto@yoctoproject.org>; Wed,  6 Sep 2017 08:31:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga105.jf.intel.com with ESMTP; 06 Sep 2017 08:31:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,484,1498546800"; d="scan'208";a="1192194303"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.130])
	by fmsmga001.fm.intel.com with ESMTP; 06 Sep 2017 08:31:58 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Sep 2017 10:31:55 -0500
Message-Id: <1504711915-10280-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] parsemail: keep branch name in subject for series
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
X-List-Received-Date: Wed, 06 Sep 2017 15:32:00 -0000

patches with different branch names included in their name are
wrongly appended as succesive revisions of the same patch in a
series. This is due to the patches being assigned to the same
series after their prefixes got removed during series naming/search.

This change looks for an updated release name list from the Yocto
wiki and keeps the release name in the series naming/search,
effectively creating individual series for patches targeted to
diferent releases.

[YOCTO #10716]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 28 ++++++++++++++++++++++++++++
 patchwork/models.py        |  5 ++++-
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index 1d27f24..ed081b5 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -678,6 +678,34 @@ prefixes_re = re.compile(r'^\[[^\]]*\]\s*')
 
 
 def strip_prefixes(subject):
+    # get last releases names from Yocto wiki page to keep them
+    # as part of the series name if present, since such patches
+    # are branch-specific
+    try:
+        from lxml import html
+        import requests
+
+        page = requests.get(
+            'https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance')
+        tree = html.fromstring(page.content)
+        branches = tree.xpath('//table[@class="wikitable"]//td[count(\
+//th[contains(., "Branch name")]/preceding-sibling::th)+1]//text()')
+        # uncomment the following line to keep only last two branch names
+        # branches=branches[0:2]
+        branches[:] = [branch.replace('\n', '') for branch in branches]
+        subject = re.sub((r',?\d+/\d+\]'), ']', subject)
+        for branch in branches:
+            if "[" + branch + "]" in subject:
+                prefixes_re = re.compile(r'^\s*\[[^\]]*\]\s*')
+                branch_re = r"(?<=\[" + branch + "\])\s*(.*)"
+                branch_search = re.search(branch_re, subject)
+                if branch_search:
+                    return "[" + branch + "] " + prefixes_re.sub(
+                        '', branch_search.group(0))
+    except ImportError:
+        pass
+
+    prefixes_re = re.compile(r'^\[[^\]]*\]\s*')
     return prefixes_re.sub('', subject)
 
 
diff --git a/patchwork/models.py b/patchwork/models.py
index 7dd8120..d08e189 100644
--- a/patchwork/models.py
+++ b/patchwork/models.py
@@ -1047,13 +1047,16 @@ def _on_revision_complete(sender, revision, **kwargs):
     if series.name == SERIES_DEFAULT_NAME:
         name = series.latest_revision().ordered_patches()[0].name
         n = re.compile(r'((\[.*\]\s?)*\[.*\w+.*'
-                       '(?P<comb_pref>\W+\d+\/\d+)+\s*\]\s?)'
+                       '(?P<comb_pref>(\[|,)+\d+\/\d+\s*)\]\s?)'
                        '|(?P<ind_pref>\[\d+\/\d+\]\s?)')
         if n.match(name):
             name = re.sub(
                 n.match(name).group("comb_pref") or
                 re.escape(n.match(name).group("ind_pref")),
                 '', name)
+        re.sub(r'\[\]', '', name)
+        re.sub(r'\[\[+', '\[', name)
+        re.sub(r'\]\]+', '\]', name)
         c = len(series.latest_revision().ordered_patches())
         # For one-patch series (1/1) without cover letter
         if c == 1:
-- 
2.7.4


