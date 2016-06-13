Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A40FE006D3; Mon, 13 Jun 2016 16:31:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDC11E0059B
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 16:31:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jun 2016 16:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,468,1459839600"; d="scan'208";a="1001247060"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.51])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jun 2016 16:31:22 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 18:32:09 -0500
Message-Id: <1465860736-26581-2-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
References: <1465860736-26581-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: belen.barros.pena@linux.intel.com
Subject: [[PATCH][error-report-web] 1/8] requirements.txt: Update requeriments for use 1.8 LTS Django version.
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
X-List-Received-Date: Mon, 13 Jun 2016 23:31:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #9733]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 requirements.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/requirements.txt b/requirements.txt
index 9521321..909d054 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -1,2 +1,2 @@
-Django==1.7.3
+Django<1.9
 python-Levenshtein==0.12.0
-- 
2.1.4


