Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3E28E008D9; Tue, 18 Nov 2014 19:08:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A7E3E008C3
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 19:08:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAJ388mX006685
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 18 Nov 2014 19:08:08 -0800 (PST)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 18 Nov 2014 19:08:08 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 18 Nov 2014 21:08:07 -0600
Message-ID: <1416366487-226579-1-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] libselinux: workaround gcc errors with '-O2'
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
X-List-Received-Date: Wed, 19 Nov 2014 03:08:14 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

While building libselinux with oe-core toolchain and DEBUG_OPTIMIZATION
enabled, the '-O' option may cause errors:

    {standard input}: Assembler messages:
    {standard input}:1910: Error: invalid operands \
    (.text and *UND* sections) for `-'

Similar issue [YOCTO #5512]

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-security/selinux/libselinux.inc | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/selinux/libselinux.inc
index d571a7c..d2d01df 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -23,6 +23,11 @@ EXTRA_OEMAKE += "${@get_policyconfigarch(d)}"
 
 EXTRA_OEMAKE += "LDFLAGS='${LDFLAGS} -lpcre'"
 
+# workaround gcc errors about:
+# {standard input}: Assembler messages:
+# {standard input}:1910: Error: invalid operands (.text and *UND* sections) for `-'
+CFLAGS += "-O2"
+
 do_compile_append() {
     oe_runmake pywrap -j1 \
             INCLUDEDIR='${STAGING_INCDIR}' \
-- 
1.9.3


