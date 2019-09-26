Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02EA1E00DEF; Wed, 25 Sep 2019 19:35:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C5EBE009D8
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 19:35:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8Q2ZB5G014320
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 19:35:11 -0700 (PDT)
Received: from pek-lpg-core1-vm2.wrs.com (128.224.156.107) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.468.0; Wed, 25 Sep 2019 19:35:11 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <mark.hatle@kernel.crashing.org>, <jason.wessel@windriver.com>,
	<yocto@yoctoproject.org>
Date: Thu, 26 Sep 2019 10:35:09 +0800
Message-ID: <1569465309-13406-1-git-send-email-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569396253-36865-5-git-send-email-hongxu.jia@windriver.com>
References: <1569396253-36865-5-git-send-email-hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [meta-openssl102-fips][PATCH V3 4/16] classes/image-enable-fips.bbclass: enable user space fips mode in image
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
X-List-Received-Date: Thu, 26 Sep 2019 02:35:14 -0000
Content-Type: text/plain

Refer Fedora/RedHat's way
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/6.5_technical_notes/dracut

To enable user space fips mode in the image recipe as part of an
'IMAGE_CLASSES'. Basically if FIPS-140-2 is enabled, then we can
touch the file as a post image generation activity.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/image-enable-fips.bbclass | 5 +++++
 conf/layer.conf                   | 2 ++
 2 files changed, 7 insertions(+)
 create mode 100644 classes/image-enable-fips.bbclass

diff --git a/classes/image-enable-fips.bbclass b/classes/image-enable-fips.bbclass
new file mode 100644
index 0000000..6c5b370
--- /dev/null
+++ b/classes/image-enable-fips.bbclass
@@ -0,0 +1,5 @@
+ROOTFS_POSTPROCESS_COMMAND_append = "enable_system_fips;"
+enable_system_fips() {
+    install -d ${IMAGE_ROOTFS}${sysconfdir}
+    touch ${IMAGE_ROOTFS}${sysconfdir}/system-fips
+}
diff --git a/conf/layer.conf b/conf/layer.conf
index 27a872e..185f422 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,3 +18,5 @@ LAYERDEPENDS_meta-openssl-one-zero-two-fips = " \
         meta-openssl-one-zero-two \
         wr-template \
 "
+
+IMAGE_CLASSES_append = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else ' image-enable-fips'}"
-- 
2.7.4


