Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CBA7E00CC5; Tue,  9 Feb 2016 18:40:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 150C6E00CC5
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u1A2e40E018560
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 9 Feb 2016 18:40:04 -0800
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:03 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:52 -0600
Message-ID: <1455072000-156056-2-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 1/9][master][jethro] nativesdk-gcc: Add mingw32 named libraries to files list
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:09 -0000
Content-Type: text/plain

Also we skip the staticdev sanity check, as the '.a' file should be packaged
as listed.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/gcc/gcc_%.bbappend | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 recipes-devtools/gcc/gcc_%.bbappend

diff --git a/recipes-devtools/gcc/gcc_%.bbappend b/recipes-devtools/gcc/gcc_%.bbappend
new file mode 100644
index 0000000..a779bb9
--- /dev/null
+++ b/recipes-devtools/gcc/gcc_%.bbappend
@@ -0,0 +1,6 @@
+FILES_${PN}_append_mingw32 = "\
+   ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/liblto_plugin-0.dll \
+   ${libexecdir}/gcc/${TARGET_SYS}/${BINV}/liblto_plugin.dll.a \
+"
+
+INSANE_SKIP_append_mingw32 = " staticdev"
-- 
2.5.0


