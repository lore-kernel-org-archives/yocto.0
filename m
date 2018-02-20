Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A70FE00F78; Mon, 19 Feb 2018 19:46:54 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEB31E00F6C
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 19:46:53 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 19:46:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,537,1511856000"; d="scan'208";a="28405933"
Received: from ngorski-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.160.197])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Feb 2018 19:46:51 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 Feb 2018 16:45:58 +1300
Message-Id: <20180220034558.14341-6-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
References: <20180220034558.14341-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 6/6] README: update dependency versions
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
X-List-Received-Date: Tue, 20 Feb 2018 03:46:54 -0000

Update the minor version of Django, and replace the list of dependencies
with a pointer to requirements.txt since there's not much point
maintaining that in two places (and the README wasn't complete anyway).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/README b/README
index c7f7409..970c267 100644
--- a/README
+++ b/README
@@ -12,7 +12,7 @@ Setup
 In order to make use of this application you will need:
 
 * Python 3.4+
-* Django 1.8.x - tested with 1.8.17; newer versions may work, but
+* Django 1.8.x - tested with 1.8.18; newer versions may work, but
   the application has not been tested with 1.9 or newer.
 * RabbitMQ 3.6.x - tested with 3.6.10.
 * For production usage, a web server set up to host Django applications
@@ -20,14 +20,9 @@ In order to make use of this application you will need:
 * A database supported by Django (SQLite, MySQL, etc.). Django takes
   care of creating the database itself, you just need to ensure that the
   database server (if not using SQLite) is configured and running.
-* The following third-party Django modules (tested versions listed):
-  * django-registration (2.1)
-  * django-reversion (1.9.3)
-  * django-reversion-compare (0.5.6)
-  * django-simple-captcha (0.4.6)
-  * django-nvd3 (0.14.2)
-  * djangorestframework (3.2.5)
-  * django-cors-headers (1.1.0)
+* Third-party Django/python modules as detailed by requirements.txt.
+  If you're using pip, you can install these by running:
+    pip install -r requirements.txt
 * On the machine that will run the backend update script (which does not
   have to be the same machine as the web server, however it does still
   have to have Django installed, have the same or similar configuration
-- 
2.14.3


