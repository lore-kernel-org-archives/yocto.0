Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A976E00876; Sat,  8 Nov 2014 09:18:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URIBL_RHS_DOB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.5 URIBL_RHS_DOB Contains an URI of a new domain (Day
	Old Bread) *      [URIs: windriver.com]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A15A7E00830
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 09:17:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sA8HHwf6013640
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sat, 8 Nov 2014 09:17:58 -0800 (PST)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.174.1;
	Sat, 8 Nov 2014 09:17:57 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Sat, 8 Nov 2014 11:17:55 -0600
Message-ID: <1415467075-233424-2-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1415467075-233424-1-git-send-email-mark.hatle@windriver.com>
References: <1415467075-233424-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [PATCH] [meta-mingw] *-mingw32.conf: Add whitelist of WINDRES and RC to hash
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
X-List-Received-Date: Sat, 08 Nov 2014 17:18:01 -0000
Content-Type: text/plain

WINDRES and RC values are exported when building for a mingw32 target.  These
values, due to being exported, end up in the signature hash for everything in
the system.  By adding these to the whitelist we prevent contamination and
allow the system to properly reuse existing -native and other sstate-cache.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 conf/machine-sdk/i686-mingw32.conf   | 2 ++
 conf/machine-sdk/x86_64-mingw32.conf | 4 +++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/conf/machine-sdk/i686-mingw32.conf b/conf/machine-sdk/i686-mingw32.conf
index eec3ced..0bdedaa 100644
--- a/conf/machine-sdk/i686-mingw32.conf
+++ b/conf/machine-sdk/i686-mingw32.conf
@@ -27,3 +27,5 @@ MACHINEOVERRIDES .= ":sdkmingw32"
 
 export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
 export RC = "${WINDRES}"
+
+BB_HASHBASE_WHITELIST_append = " WINDRES RC"
diff --git a/conf/machine-sdk/x86_64-mingw32.conf b/conf/machine-sdk/x86_64-mingw32.conf
index be9a8c4..5e80dfa 100644
--- a/conf/machine-sdk/x86_64-mingw32.conf
+++ b/conf/machine-sdk/x86_64-mingw32.conf
@@ -26,4 +26,6 @@ SDKPKGSUFFIX = "nativesdk-mingw32"
 MACHINEOVERRIDES .= ":sdkmingw32"
 
 export WINDRES = "${HOST_PREFIX}windres --include-dir=${STAGING_INCDIR}"
-export RC = "${WINDRES}"
\ No newline at end of file
+export RC = "${WINDRES}"
+
+BB_HASHBASE_WHITELIST_append = " WINDRES RC"
-- 
2.0.1


