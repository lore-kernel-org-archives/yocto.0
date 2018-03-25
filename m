Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 906E0E00D0E; Sun, 25 Mar 2018 12:32:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE351E00CC9
	for <yocto@yoctoproject.org>; Sun, 25 Mar 2018 12:31:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Mar 2018 12:31:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,361,1517904000"; d="scan'208";a="28315607"
Received: from prabhakp-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.164.175])
	by orsmga008.jf.intel.com with ESMTP; 25 Mar 2018 12:31:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Mar 2018 08:31:01 +1300
Message-Id: <20180325193101.13451-2-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180325193101.13451-1-paul.eggleton@linux.intel.com>
References: <20180325193101.13451-1-paul.eggleton@linux.intel.com>
Subject: [layerindex-web][PATCH 2/2] requirements.txt: use the most recent Django 1.8 version
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
X-List-Received-Date: Sun, 25 Mar 2018 19:32:01 -0000

Use <1.9 to always get the most recent 1.8 point release.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 58100a9..30573a6 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -3,7 +3,7 @@ anyjson==0.3.3
 billiard==3.5.0.3
 celery==4.1.0
 confusable-homoglyphs==2.0.2
-Django==1.8.18
+Django<1.9
 django-cors-headers==1.1.0
 django-nvd3==0.9.7
 django-ranged-response==0.2.0
-- 
2.14.3


