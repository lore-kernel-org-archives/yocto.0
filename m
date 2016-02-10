Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E006E00DB8; Tue,  9 Feb 2016 18:40:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4523FE00D9E
	for <yocto@yoctoproject.org>; Tue,  9 Feb 2016 18:40:09 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u1A2e8dR028771
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 9 Feb 2016 18:40:08 -0800 (PST)
Received: from msp-dhcp15.wrs.com (172.25.34.15) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 9 Feb 2016 18:40:07 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 9 Feb 2016 20:39:56 -0600
Message-ID: <1455072000-156056-6-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
References: <1455072000-156056-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 5/9][master][jethro] binutils-cross-canadian: Fix LTO failure
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
X-List-Received-Date: Wed, 10 Feb 2016 02:40:11 -0000
Content-Type: text/plain

GCC was failing with a message similar to:

e:/windri~1/lx8.sdk/qemux8~1.800/sysroots/i686-w~1/usr/bin/i586-w~3/../../libexec/i586-wrs-linux/gcc/i586-wrs-linux/5.2.0/real-ld.exe: unrecognized option '-plugin'

The issue was that by default plugin support was disabled in binutils.  By
enabling the plugin support, the LTO support should also now work properly.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
index 026c932..5845fe0 100644
--- a/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
+++ b/recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
@@ -1,4 +1,4 @@
-EXTRA_OECONF_append_sdkmingw32 = " --disable-plugins --disable-nls"
+EXTRA_OECONF_append_sdkmingw32 = " --disable-nls"
 LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 
 DEPENDS_remove_sdkmingw32 = "nativesdk-gettext"
-- 
2.5.0


