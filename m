Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 051B4E00D9E; Mon, 28 Oct 2019 14:27:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01827E00D85
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2019 14:27:02 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Oct 2019 14:27:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,241,1569308400"; d="scan'208";a="210962219"
Received: from mng-mobl.gar.corp.intel.com (HELO shodan.fritz.box)
	([10.249.76.230])
	by fmsmga001.fm.intel.com with ESMTP; 28 Oct 2019 14:27:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Oct 2019 10:26:50 +1300
Message-Id: <69578c31e4b319e9c085391ece4a217a9edcbc4c.1572297910.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1572297910.git.paul.eggleton@linux.intel.com>
References: <cover.1572297910.git.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 1/2] requirements.txt: update to fix CVE-2019-16865
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
X-List-Received-Date: Mon, 28 Oct 2019 21:27:04 -0000
Content-Transfer-Encoding: 8bit

Update Pillow version to incorporate a fix for a denial-of-service
vulnerability (which should not affect this application however, as it
does not use Pillow to process external images):

  https://nvd.nist.gov/vuln/detail/CVE-2019-16865

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 855b7344..84f2ea54 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -19,7 +19,7 @@ gitdb2==2.0.6
 GitPython==2.1.13
 kombu==4.6.3
 mysqlclient==1.4.4
-Pillow==6.1.0
+Pillow==6.2.1
 pytz==2019.2
 six==1.12.0
 smmap2==2.0.5
-- 
2.20.1


