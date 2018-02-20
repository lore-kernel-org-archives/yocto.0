Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17693E00F6F; Mon, 19 Feb 2018 19:46:51 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCAB1E00F45
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 19:46:50 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 19:46:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208";a="28405927"
Received: from ngorski-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.197])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2018 19:46:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Feb 2018 16:45:57 +1300
Message-Id: <20180220034558.14341-5-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
References: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 5/6] requirements.txt: update some dependency versions
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
X-List-Received-Date: Tue, 20 Feb 2018 03:46:51 -0000

Use latest tested versions (though we pin djangorestframework at 3.6.4
since that is the last version that supports Django 1.8), and add new
resulting dependencies.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 requirements.txt | 34 +++++++++++++++++++---------------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index af6ab5a..58100a9 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,25 +1,29 @@
-amqp==1.4.9
+amqp==2.2.2
 anyjson==0.3.3
-billiard==3.3.0.23
-celery==3.1.25
-Django==1.8.17
+billiard==3.5.0.3
+celery==4.1.0
+confusable-homoglyphs==2.0.2
+Django==1.8.18
 django-cors-headers==1.1.0
 django-nvd3==0.9.7
-django-registration==2.1
+django-ranged-response==0.2.0
+django-registration==2.4.1
 django-reversion==1.9.3
 django-reversion-compare==0.5.6
-django-simple-captcha==0.4.6
-djangorestframework==3.2.5
+django-simple-captcha==0.5.6
+djangorestframework==3.6.4
 gitdb==0.6.4
-GitPython==2.0.5
-Jinja2==2.8
-kombu==3.0.37
-MarkupSafe==0.23
-mysqlclient==1.3.7
-Pillow==3.3.0
+GitPython==2.1.8
+Jinja2==2.10
+kombu==4.1.0
+MarkupSafe==1.0
+mysqlclient==1.3.12
+Pillow==5.0.0
 python-nvd3==0.14.2
-python-slugify==1.1.4
+python-slugify==1.2.4
 pytz==2018.3
-six==1.10.0
+six==1.11.0
 smmap==0.9.0
+smmap2==2.0.3
 Unidecode==0.4.19
+vine==1.1.4
-- 
2.14.3


