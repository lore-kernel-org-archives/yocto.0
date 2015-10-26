Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A90FE007C9; Mon, 26 Oct 2015 08:34:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6E33E0059B
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 08:34:41 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9QFYdN4018914
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Oct 2015 08:34:39 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 26 Oct 2015 08:34:39 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 26 Oct 2015 10:34:37 -0500
Message-ID: <1445873677-108865-2-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1445873677-108865-1-git-send-email-mark.hatle@windriver.com>
References: <1445873677-108865-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [jethro/master][PATCH 1/1] local.conf.sample: Disable image-prelink by default
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
X-List-Received-Date: Mon, 26 Oct 2015 15:34:46 -0000
Content-Type: text/plain

Due to problems with the prelinker itself, we need to disable the
image-prelink by default.  This will hopefully be re-enabled in the near
future.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta-yocto/conf/local.conf.sample | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 371349d..bf6dd90 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -151,7 +151,9 @@ EXTRA_IMAGE_FEATURES = "debug-tweaks"
 #   - 'image-swab' to perform host system intrusion detection
 # NOTE: if listing mklibs & prelink both, then make sure mklibs is before prelink
 # NOTE: mklibs also needs to be explicitly enabled for a given image, see local.conf.extended
-USER_CLASSES ?= "buildstats image-mklibs image-prelink"
+# NOTE: image-prelink is currently broken due to problems with the prelinker.  It is advised
+# that you do NOT run the prelinker at this time. 
+USER_CLASSES ?= "buildstats image-mklibs"
 
 #
 # Runtime testing of images
-- 
1.9.3


