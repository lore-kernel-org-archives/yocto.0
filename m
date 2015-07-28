Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D78C4E00A73; Tue, 28 Jul 2015 07:27:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90A31E00A64
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 07:27:37 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP; 28 Jul 2015 07:27:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,563,1432623600"; d="scan'208";a="531671576"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.56.19])
	by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2015 07:27:36 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 28 Jul 2015 09:27:18 -0500
Message-Id: <1438093638-7722-4-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
References: <1438093638-7722-1-git-send-email-mariano.lopez@linux.intel.com>
Subject: [rrs][PATCH 3/3] recipes.html: Format change for last updated column
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
X-List-Received-Date: Tue, 28 Jul 2015 14:27:37 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

This changes the format of the last updated column.
Now the column text is set to the default text color.

[YOCTO #8018]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 templates/rrs/recipes.html | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/templates/rrs/recipes.html b/templates/rrs/recipes.html
index a69ff0f..5d2ee5f 100644
--- a/templates/rrs/recipes.html
+++ b/templates/rrs/recipes.html
@@ -99,14 +99,7 @@
     {% endif %}
         {{ r.upstream_status }}
     </td>
-    {% if r.outdated == "Up-to-date" %}
-    <td class="text-success">
-    {% elif r.outdated == "Unknown" %}
-    <td class="text-warning">
-    {% else %}
-    <td class="text-error">
-    {% endif %}
-        {{r.outdated}}</td>
+    <td class="last_updated_column">{{r.outdated}}</td>
     <td class="maintainer_column">{{ r.maintainer_name }}</td>
     <td class="summary_column">{{ r.summary }}</td>
     <td class="no_update_reason_column" style="display:none">{{ r.no_update_reason }}</td>
-- 
1.9.1


