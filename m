Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9FD3E00944; Fri, 21 Jul 2017 02:40:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35DC8E0083A
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 02:40:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jul 2017 02:40:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,389,1496127600"; d="scan'208";a="1175034274"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.39.4])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2017 02:40:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Jul 2017 11:40:23 +0200
Message-Id: <20170721094023.21649-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.4
Subject: [layerindex-web][PATCH] views: add ability to force https URL in layer review emails
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
X-List-Received-Date: Fri, 21 Jul 2017 09:40:53 -0000

At the moment the URL that is presented in the review email will have
http:// or https:// prefix depending on what the user who submitted the
layer was using, but that's irrelevant - we actually want https:// if
the server is capable of it since the reviewer may be redirected to log
in (and Django's login_required decorator will always redirect to the
login page if http is being used as far as I observed, which is a bit
annoying if you are already logged in.) Add a setting which if enabled
will substitute https:// as the prefix.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/views.py | 5 ++++-
 settings.py         | 4 ++++
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/layerindex/views.py b/layerindex/views.py
index 2f7d45e..eaeb5c3 100644
--- a/layerindex/views.py
+++ b/layerindex/views.py
@@ -169,10 +169,13 @@ def edit_layer_view(request, template_name, branch='master', slug=None):
                             user_name = user.first_name
                         else:
                             user_name = user.username
+                        layer_url = request.build_absolute_uri(reverse('layer_review', args=(layeritem.name,)))
+                        if getattr(settings, 'FORCE_REVIEW_HTTPS', False) and layer_url.startswith('http:'):
+                            layer_url = 'https:' + layer_url.split(':', 1)[1]
                         d = Context({
                             'user_name': user_name,
                             'layer_name': layeritem.name,
-                            'layer_url': request.build_absolute_uri(reverse('layer_review', args=(layeritem.name,))),
+                            'layer_url': layer_url,
                         })
                         subject = '%s - %s' % (settings.SUBMIT_EMAIL_SUBJECT, layeritem.name)
                         from_email = settings.SUBMIT_EMAIL_FROM
diff --git a/settings.py b/settings.py
index 3318af1..92146f8 100644
--- a/settings.py
+++ b/settings.py
@@ -217,6 +217,10 @@ UPDATE_PURGE_DAYS = 30
 # Remove layer dependencies that are not specified in conf/layer.conf
 REMOVE_LAYER_DEPENDENCIES = False
 
+# Always use https:// for review URLs in emails (since it may be redirected to
+# the login page)
+FORCE_REVIEW_HTTPS = False
+
 # Settings for layer submission feature
 SUBMIT_EMAIL_FROM = 'noreply@example.com'
 SUBMIT_EMAIL_SUBJECT = 'OE Layerindex layer submission'
-- 
2.9.4


