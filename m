Return-Path: <belen.barros.pena@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5086E00799; Fri, 12 Sep 2014 08:39:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84C84E006DB
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 08:39:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2014 08:39:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,513,1406617200"; 
	d="scan'208,217";a="590484323"
Received: from bbarrosp-mac03.isw.intel.com ([10.237.224.33])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2014 08:39:46 -0700
From: Belen Barros Pena <belen.barros.pena@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 12 Sep 2014 16:39:27 +0100
Message-Id: <1410536367-7562-1-git-send-email-belen.barros.pena@linux.intel.com>
X-Mailer: git-send-email 1.8.5.2 (Apple Git-48)
Subject: [error-report-web][PATCH] Centering pagination when table rows are less than 10
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
X-List-Received-Date: Fri, 12 Sep 2014 15:39:50 -0000

When the number of errors returned by a search is less than 10,
the show rows menu disappears. This caused the pagination controls
at the bottom of the table to be right-aligned. This patch makes
sure the pagination controls remain center-aligned even when the
show rows menu does not display.

Signed-off-by: Belen Barros Pena <belen.barros.pena@linux.intel.com>
---
 templates/search-details.html | 88 +++++++++++++++++++++----------------------
 1 file changed, 43 insertions(+), 45 deletions(-)

diff --git a/templates/search-details.html b/templates/search-details.html
index fbba5a9..b297cfe 100644
--- a/templates/search-details.html
+++ b/templates/search-details.html
@@ -318,50 +318,6 @@
 					</tbody>
 					</table>
 						<div class="pagination pagination-centered">
-							<form class="form-inline pull-right">
-							{% if no > 10 %}
-							<label>Show rows:</label>
-								<form>
-									<select class="paginationLimit input-mini" onchange="javascript:reload_params({'page': '1', 'items' : +this.value })">
-										{% ifequal items "10" %}
-											<option selected="selected" value = "10">10</option>
-											<option value = "25">25</option>
-											<option value = "50">50</option>
-											<option value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "25"%}
-											<option value = "10">10</option>
-											<option selected="selected" value = "25">25</option>
-											<option value = "50">50</option>
-											<option value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "50"%}
-											<option value = "10">10</option>
-											<option value = "25">25</option>
-											<option selected="selected" value = "50">50</option>
-											<option value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "100"%}
-											<option value = "10">10</option>
-											<option value = "25">25</option>
-											<option value = "50">50</option>
-											<option selected="selected" value = "100">100</option>
-											<option value = "150">150</option>
-										{%endifequal%}
-										{% ifequal items "150"%}
-											<option value = "10">10</option>
-											<option value = "25">25</option>
-											<option value = "50">50</option>
-											<option value = "100">100</option>
-											<option selected="selected" value = "150">150</option>
-										{%endifequal%}
-									</select>
-								</form>
-							</form>
-							{% endif %}
 							 <ul>
 								{% if details.has_previous %}
 								<li><a href="javascript:reload_params({'page' : '{{ details.previous_page_number }}'})">Previous</a></li>
@@ -382,7 +338,49 @@
 								{% else %}
 									<li class="disabled"><span>Next</span></li>
 								{% endif %}
-							</ul>
+							</ul>	
+							{% if no > 10 %}												
+							<form class="form-inline pull-right">
+							<label>Show rows:</label>
+								<select class="paginationLimit input-mini" onchange="javascript:reload_params({'page': '1', 'items' : +this.value })">
+									{% ifequal items "10" %}
+										<option selected="selected" value = "10">10</option>
+										<option value = "25">25</option>
+										<option value = "50">50</option>
+										<option value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "25"%}
+										<option value = "10">10</option>
+										<option selected="selected" value = "25">25</option>
+										<option value = "50">50</option>
+										<option value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "50"%}
+										<option value = "10">10</option>
+										<option value = "25">25</option>
+										<option selected="selected" value = "50">50</option>
+										<option value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "100"%}
+										<option value = "10">10</option>
+										<option value = "25">25</option>
+										<option value = "50">50</option>
+										<option selected="selected" value = "100">100</option>
+										<option value = "150">150</option>
+									{%endifequal%}
+									{% ifequal items "150"%}
+										<option value = "10">10</option>
+										<option value = "25">25</option>
+										<option value = "50">50</option>
+										<option value = "100">100</option>
+										<option selected="selected" value = "150">150</option>
+									{%endifequal%}
+								</select>
+							</form>
+							{% endif %}
 						</div>
 				{% endif %}
 				{% if result %}
-- 
1.8.5.2 (Apple Git-48)


