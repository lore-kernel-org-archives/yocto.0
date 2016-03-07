Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3038E00C18; Sun,  6 Mar 2016 19:51:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Sun, 06 Mar 2016 19:51:08 PST
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06F6CE00BE8
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2016 19:51:07 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.22,518,1449504000"; 
   d="scan'208";a="4287406"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 07 Mar 2016 11:49:58 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (unknown [10.167.33.83])
	by cn.fujitsu.com (Postfix) with ESMTP id 6DB5F41890FE
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 11:49:58 +0800 (CST)
Received: from localhost.localdomain (10.167.226.72) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 7 Mar 2016 11:49:57 +0800
From: Li Xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 7 Mar 2016 06:49:50 +0300
Message-ID: <1457322590-1882-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.72]
X-yoursite-MailScanner-ID: 6DB5F41890FE.A17FB
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: lixin.fnst@cn.fujitsu.com
Subject: [meta-security][PATCH] samhain-client: Erorr Fix
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
X-List-Received-Date: Mon, 07 Mar 2016 03:51:11 -0000
Content-Type: text/plain

The Error is as following:
 # /usr/sbin/samhain -t init -p info
 ......
 Segmentation fault
 # echo $?
 139

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
---
 recipes-security/samhain/samhain.inc | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 9525229..23bc8f5 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -50,7 +50,12 @@ do_configure_prepend_aarch64() {
 # recognized by Samhain's configure script and would invariably
 # throw back the error "unrecognized option: --oldincludedir=/usr/include"
 do_configure () {
-    cd ${S}
+    cat << EOF > ./config-site.${BP}
+ssp_cv_lib=no
+sh_cv_va_copy=yes
+EOF
+
+    export CONFIG_SITE=./config-site.${BP}
 	./configure \
 	    --build=${BUILD_SYS} \
 	    --host=${HOST_SYS} \
-- 
1.8.4.2




