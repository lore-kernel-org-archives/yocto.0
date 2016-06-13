Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2FA6E006D8; Mon, 13 Jun 2016 16:31:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 032B8E005A9
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247072"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:23 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:10 -0500
Message-Id: <1465860736-26581-3-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 2/8] urls.py: RedirectView, fix warnings about change of default value in django 1.9
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
X-List-Received-Date: Mon, 13 Jun 2016 23:31:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

RemovedInDjango19Warning: Default value of 'RedirectView.permanent' will
change from True to False in Django 1.9. Set an explicit value to
silence this warning.
  url(r'^$', RedirectView.as_view(pattern_name="main")),

RemovedInDjango19Warning: Default value of 'RedirectView.permanent' will
change from True to False in Django 1.9. Set an explicit value to
silence this warning.
  url(r'^Errors/Search/Args/$',
RedirectView.as_view(pattern_name="Post.views.search",query_string=True),
{'mode':results_mode.SEARCH }),

[YOCTO #9733]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 project/urls.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/project/urls.py b/project/urls.py
index 7b6f643..0e8f39c 100644
--- a/project/urls.py
+++ b/project/urls.py
@@ -37,7 +37,7 @@ urlpatterns = patterns('',
     url(r'^(?i)ClientPost/JSON/$', 'Post.views.addData', { 'return_json' : True }),
     url(r'^(?i)Errors/$', 'Post.views.default', name="main"),
     url(r'^(?i)Statistics/$', TemplateView.as_view(template_name="home.html"), name = "statistics"),
-    url(r'^$', RedirectView.as_view(pattern_name="main")),
+    url(r'^$', RedirectView.as_view(pattern_name="main", permanent=True)),
     # Url for backwards compatibility with old search links
-    url(r'^Errors/Search/Args/$', RedirectView.as_view(pattern_name="Post.views.search",query_string=True), {'mode':results_mode.SEARCH }),
+    url(r'^Errors/Search/Args/$', RedirectView.as_view(pattern_name="Post.views.search",query_string=True,permanent=True), {'mode':results_mode.SEARCH }),
 )
-- 
2.1.4


