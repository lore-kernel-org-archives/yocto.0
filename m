Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE573E01342; Thu, 19 Jul 2018 06:17:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1159E01320
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 06:17:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Jul 2018 06:17:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,374,1526367600"; d="scan'208";a="73712032"
Received: from wulili-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.201])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2018 06:17:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jul 2018 15:17:34 +0200
Message-Id: <be52a5a7b16f8d3557b24cd15fab4508af509568.1532006209.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1532006209.git.paul.eggleton@linux.intel.com>
References: <cover.1532006209.git.paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 3/3] README: add an example virtualenv-based setup
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
X-List-Received-Date: Thu, 19 Jul 2018 13:17:58 -0000

A while ago I was trying to help someone new get started with a
development setup for the layer index and it occurred to me that the
virtualenv-based environment I am using for development isn't actually
covered in the documentation, so I wrote something quick for them but
didn't do anything further with it until now. Here it is in more fleshed
out form for the README.

Also clarify the python requirements for the update script a little bit.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README | 37 +++++++++++++++++++++++++++++++++++--
 1 file changed, 35 insertions(+), 2 deletions(-)

diff --git a/README b/README
index 72dce71d..d1b1f9bd 100644
--- a/README
+++ b/README
@@ -29,8 +29,41 @@ In order to make use of this application you will need:
   in settings.py and have access to the database used by the web
   application):
   * Python 2.7.6+ / Python 3.4+ to match with the version of BitBake
-    for the OpenEmbedded branch being parsed
-  * GitPython (python-git) version 2.0 or later
+    for the OpenEmbedded branch being parsed (for modern versions it's
+    Python 3.)
+  * Python dependencies as per requirements.txt (we still need Django
+    etc. here since we interact with the database through Django's ORM.)
+
+Example virtualenv-based setup for the above:
+
+Python's virtualenv provides an easy way to isolate the python dependencies
+of applications such as the layer index. Here's an example of setting up a
+virtualenv for the layer index that's particularly useful for development.
+(This assumes a Debian-based distribution, adjust accordingly for other
+distros).
+
+1. Install required host distro packages (some of these are required by
+   pip to build the dependencies; it's also assumed you want MariaDB as
+   the database backend):
+
+   sudo apt-get install virtualenv libmariadb-client-lgpl-dev build-essential python3-dev libjpeg-dev libz-dev libfreetype6-dev mariadb-server rabbitmq-server
+
+2. Work around path issues (you may not need this):
+
+   sudo ln -s /usr/bin/mariadb_config /usr/bin/mysql_config
+
+3. Create a Python 3 virtualenv (path can be anywhere you like):
+
+   virtualenv -p python3 /path/to/desired/venv
+
+4. Activate the virtualenv:
+
+   . /path/to/desired/venv/bin/activate
+
+5. Install requirements:
+
+   pip install -r requirements.txt
+
 
 Setup instructions:
 
-- 
2.17.1


