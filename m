Return-Path: <Mingli.Yu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 005F9E00D6F; Sun, 30 Jun 2019 19:09:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54F38E00D60
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 19:09:19 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6128gea020675
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 30 Jun 2019 19:08:53 -0700
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.439.0; Sun, 30 Jun 2019 19:08:32 -0700
From: <mingli.yu@windriver.com>
To: <yocto@yoctoproject.org>, <bruce.ashfield@gmail.com>
Date: Mon, 1 Jul 2019 10:08:22 +0800
Message-ID: <1561946902-247680-2-git-send-email-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561946902-247680-1-git-send-email-mingli.yu@windriver.com>
References: <1561946902-247680-1-git-send-email-mingli.yu@windriver.com>
MIME-Version: 1.0
Subject: [meta-cloud-services][PATCH 2/2] nss-pam-ldapd: add required distro feature check for pam
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
X-List-Received-Date: Mon, 01 Jul 2019 02:09:25 -0000
Content-Type: text/plain

From: Mingli Yu <Mingli.Yu@windriver.com>

As nss-pam-ldapd depends on libpam, it should do
required distro feature check for pam.

Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
---
 recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb b/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb
index 404aeca..dfa562f 100644
--- a/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb
+++ b/recipes-support/nss-pam-ldapd/nss-pam-ldapd_0.9.8.bb
@@ -20,7 +20,8 @@ SRC_URI = "\
 	file://nslcd.service \
 	"
 
-inherit autotools
+inherit autotools distro_features_check
+REQUIRED_DISTRO_FEATURES = "pam"
 
 SRC_URI[md5sum] = "8c99fdc54f4bf9aca8c5f53fdb1403ff"
 SRC_URI[sha256sum] = "ef7362e7f2003da8c7beb7bcc03c30494acf712625aaac8badc6e7eb16f3453f"
-- 
2.7.4


