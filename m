Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2B62E00E0D; Mon, 28 Oct 2019 14:27:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E011E00D98
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 14:27:05 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Oct 2019 14:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="210962225"
Received: from mng-mobl.gar.corp.intel.com (HELO shodan.fritz.box)
	([10.249.76.230])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2019 14:27:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Oct 2019 10:26:51 +1300
Message-Id: <50fc6780e022a95b452fdb6f57b4e1c6b37084f2.1572297910.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1572297910.git.paul.eggleton@linux.intel.com>
References: <cover.1572297910.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 2/2] requirements.txt: bump a couple more versions
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
X-List-Received-Date: Mon, 28 Oct 2019 21:27:08 -0000
Content-Transfer-Encoding: 8bit

Update pytz and beautifulsoup4.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 requirements.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/requirements.txt b/requirements.txt
index 84f2ea54..07d8495e 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,5 +1,5 @@
 amqp==2.5.2
-beautifulsoup4==4.8.0
+beautifulsoup4==4.8.1
 billiard==3.6.1.0
 celery==4.3.0
 confusable-homoglyphs==3.2.0
@@ -20,7 +20,7 @@ GitPython==2.1.13
 kombu==4.6.3
 mysqlclient==1.4.4
 Pillow==6.2.1
-pytz==2019.2
+pytz==2019.3
 six==1.12.0
 smmap2==2.0.5
 soupsieve==1.9.4
-- 
2.20.1


