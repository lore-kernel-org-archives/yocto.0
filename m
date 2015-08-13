Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AAFDE00A3B; Thu, 13 Aug 2015 06:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F561E009CC
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 06:12:25 -0700 (PDT)
X-Halon-ID: efe2689b-41bc-11e5-b1f7-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 15:12:23 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 15:12:23 +0200
Message-Id: <e7f3dcf363ba2a7f76ac871b93d843e3266d3948.1439471046.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
In-Reply-To: <cover.1439471046.git.petter@technux.se>
References: <cover.1439471046.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][fido][PATCH 3/4] userland: Fix POSIX compliance expectation
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
X-List-Received-Date: Thu, 13 Aug 2015 13:12:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Khem Raj <raj.khem@gmail.com>

We have errors like below with glibc 2.22+

net_sockets_common.c:139:20: error: storage size of 'hints' isn't known
    struct addrinfo hints, *info, *p;
                        ^

newer glibc has now fixed the definitions of getaddrinfo and ilk to be
enabled with correct posix version.

Signed-off-by: Khem Raj <raj.khem@gmail.com>

(cherry picked from commit f188f3d756f59fb4dc64cc1a64263c2251f76ae5)
Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 .../userland/0001-Use-newer-POSIX-macro.patch      | 35 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch

diff --git a/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch b/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
new file mode 100644
index 0000000..2a092c2
--- /dev/null
+++ b/recipes-graphics/userland/userland/0001-Use-newer-POSIX-macro.patch
@@ -0,0 +1,35 @@
+From 12f7718bb0e08e2c06825c7ab7541b3c5bfe74c1 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sun, 9 Aug 2015 08:55:05 -0700
+Subject: [PATCH] Use newer POSIX macro
+
+Define _POSIX_C_SOURCE such that it demands correct
+posix interfaces, netdb.h declares interfaces such as
+getaddrinfo if __USE_POSIX, i.e. POSIX.1:1990 or later.
+However, these interfaces were new in the 2001 edition of POSIX
+therefore ask for Extension from POSIX.1:2001 since we use addrinfo
+structure here.
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ containers/CMakeLists.txt | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/containers/CMakeLists.txt b/containers/CMakeLists.txt
+index a29a885..5570038 100644
+--- a/containers/CMakeLists.txt
++++ b/containers/CMakeLists.txt
+@@ -13,7 +13,7 @@ add_definitions(-DDL_PATH_PREFIX="${VMCS_PLUGIN_DIR}/")
+ 
+ SET( GCC_COMPILER_FLAGS -Wall -g -O2 -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wcast-qual -Wwrite-strings -Wundef )
+ SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wextra )#-Wno-missing-field-initializers )
+-SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=199309L )
++SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -std=c99 -D_POSIX_C_SOURCE=200112L )
+ SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-missing-field-initializers )
+ SET( GCC_COMPILER_FLAGS ${GCC_COMPILER_FLAGS} -Wno-unused-value )
+ 
+-- 
+2.1.4
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 729c42a..861029d 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,6 +16,7 @@ SRCFORK = "raspberrypi"
 SRCREV = "3b81b91c18ff19f97033e146a9f3262ca631f0e9"
 
 SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
+           file://0001-Use-newer-POSIX-macro.patch \
           "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


