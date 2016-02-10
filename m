Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0F7FE00DB9; Tue,  9 Feb 2016 18:40:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5641CE00DBC
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:13 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u1A2eCn8019896
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Feb 2016 18:40:12 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:12 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:40:00 -0600
Message-ID: <1455072000-156056-10-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 9/9][master] gdb-cross-canadian: Disable readline support on mingw
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:14 -0000
Content-Type: text/plain

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
index bf4bd75..b9610cb 100644
--- a/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
+++ b/recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
@@ -3,3 +3,4 @@ EXEEXT_sdkmingw32 = ".exe"
 DEPENDS_remove_sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
 RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
 EXTRA_OECONF_append_sdkmingw32 = "--without-curses --without-system-readline --with-python=no"
+PACKAGECONFIG_remove_sdkmingw32 = "readline"
-- 
2.5.0


