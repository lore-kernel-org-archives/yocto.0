Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CF86E00CCB; Thu,  7 Sep 2017 09:56:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13156E00CC6
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 09:56:56 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Sep 2017 09:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,359,1500966000"; d="scan'208";a="1012075469"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.130])
	by orsmga003.jf.intel.com with ESMTP; 07 Sep 2017 09:56:55 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 11:56:50 -0500
Message-Id: <1504803410-11072-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [patchwork][PATCH] patchwork/templates/patchwork/series.html: Add link column
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
X-List-Received-Date: Thu, 07 Sep 2017 16:56:57 -0000

Clicking on a patch name in Series view displays the patch at
the botton section in same page, but there is no easy way to
get a direct link to the patch, for example: to share the link.

This change includes the column "Link" where a direct link to the
patch is displayed and labeled with the patch id, that can be copied
or clicked to displayed the patch detail on a new tab.

[YOCTO #11888]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/templates/patchwork/series.html | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/patchwork/templates/patchwork/series.html b/patchwork/templates/patchwork/series.html
index 6c374f7..6c4608b 100644
--- a/patchwork/templates/patchwork/series.html
+++ b/patchwork/templates/patchwork/series.html
@@ -110,6 +110,7 @@ function toggle_headers(link_id, headers_id)
                 </th>
               {% endif %}
               <th>Name</th>
+              <th>Link</th>
               <th>Submitter</th>
               <th>State</th>
             </tr>
@@ -126,6 +127,9 @@ function toggle_headers(link_id, headers_id)
                 <td><a href="#" class="patch-link" data-toggle="tooltip" title="Click to view the patch at bottom section"
                      data-url="{% url 'patchwork.views.patch.patch' patch_id=patch.id %}"
                      >{{ patch.name|default:"[no subject]"|truncatechars:100 }}</a></td>
+                <td><a href="{% url 'patchwork.views.patch.patch' patch_id=patch.id %}"
+                     data-toggle="tooltip" title="Click to view the patch in a new tab"
+                     target="_blank">{{ patch.id }}</a></td>
                 <td>{{ patch.submitter|personify:project }}</td>
                 <td>{{ patch.state }}</td>
               <tr>
-- 
2.7.4


