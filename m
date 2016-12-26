Return-Path: <cordlandwehr@kde.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E8FE0080A; Mon, 26 Dec 2016 05:49:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.4.96.248 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 466 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Dec 2016 05:49:38 PST
Received: from postbox.kde.org (postbox.kde.org [46.4.96.248])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA449E0070F
	for <yocto@yoctoproject.org>; Mon, 26 Dec 2016 05:49:38 -0800 (PST)
Received: from weatherwax.localnet (p4FCD0DED.dip0.t-ipconnect.de
	[79.205.13.237]) (Authenticated sender: cordlandwehr)
	by postbox.kde.org (Postfix) with ESMTPSA id 9B578BF1CA
	for <yocto@yoctoproject.org>; Mon, 26 Dec 2016 13:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=kde.org; s=default;
	t=1482759710; bh=zqQZjt0AyQooNuJrkx2iqJYDYJHdu7ttYljQt5CPYT4=;
	h=From:To:Subject:Date:From;
	b=qbfkyVwxefwvRf30kIQxNRBmYtqTg7RomU6jvhoZnBXSbDKBvmO9JO5tvsu4ykqct
	Y+qigZs+WBFI6oQG8a9rRMdJ9pvei8pgl6gXXHdplZKv8gC3VebidcfuTWoCnxbU8N
	wjT7F4KxfP4VsmuJ4T9VkrlLiYnc/x1v1mESeGrg=
From: Andreas Cord-Landwehr <cordlandwehr@kde.org>
To: yocto@yoctoproject.org
Date: Mon, 26 Dec 2016 14:41:49 +0100
Message-ID: <9212079.t3pUQfekqL@weatherwax>
User-Agent: KMail/5.3.3 (Linux/4.8.0-2-amd64; KDE/5.29.0; x86_64; git-925145c;
	2016-10-28)
MIME-Version: 1.0
Subject: [PATCH] Provide additional OECORE_EXTRA_SYSROOT variable for CMake Toolchain
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
X-List-Received-Date: Mon, 26 Dec 2016 13:49:42 -0000
X-Groupsio-MsgNum: 33588
Content-Type: multipart/mixed; boundary="nextPart2222092.GWti2vGBeQ"
Content-Transfer-Encoding: 7Bit

--nextPart2222092.GWti2vGBeQ
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hey, I would like to propose the appended patch for Poky's CMake toolchain to 
allow its usage inside a Yocto SDK for building libraries and applications 
using an external (meaning as in "different to the native SDK dir") install 
directory.

I hope that I use the correct mailing list and patch format. (It's my first 
patch to Yocto) Please tell me if this mail is better suited for a different 
mailing list.

Cheers,
Andreas

--nextPart2222092.GWti2vGBeQ
Content-Disposition: attachment; filename="0001-Provide-additional-OECORE_EXTRA_SYSROOT-variable.patch"
Content-Transfer-Encoding: 7Bit
Content-Type: text/x-patch; charset="UTF-8"; name="0001-Provide-additional-OECORE_EXTRA_SYSROOT-variable.patch"

From b09bc09c13d1ec9334bdc8a2c148436f1f363b71 Mon Sep 17 00:00:00 2001
From: Andreas Cord-Landwehr <cordlandwehr@kde.org>
Date: Mon, 26 Dec 2016 13:43:02 +0100
Subject: [PATCH] Provide additional OECORE_EXTRA_SYSROOT variable

When compiling against a Yocto generated SDK and using an install folder
outside of the SDK's folder, CMake must be configure by using the
respective CMAKE_FIND_ROOT_PATH. This CMake cache variable is set
in the toolchain file and hence can only be configured via environment
variables; unless one wants to modify a project's CMake files.

This patch adds an additional environment variable OECORE_EXTRA_SYSROOT
to specify such an additional sysroot location that can optionally
be used when building against a Yocto SDK using this toolchain file.

Signed-off-by: Andreas Cord-Landwehr <cordlandwehr@kde.org>
---
 meta/recipes-devtools/cmake/cmake/OEToolchainConfig.cmake | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/cmake/cmake/OEToolchainConfig.cmake b/meta/recipes-devtools/cmake/cmake/OEToolchainConfig.cmake
index 6518408c70..1927e0bdb4 100644
--- a/meta/recipes-devtools/cmake/cmake/OEToolchainConfig.cmake
+++ b/meta/recipes-devtools/cmake/cmake/OEToolchainConfig.cmake
@@ -4,7 +4,10 @@ set( CMAKE_CXX_FLAGS $ENV{CXXFLAGS}  CACHE STRING "" FORCE )
 set( CMAKE ASM_FLAGS ${CMAKE_C_FLAGS} CACHE STRING "" FORCE )
 set( CMAKE_LDFLAGS_FLAGS ${CMAKE_CXX_FLAGS} CACHE STRING "" FORCE )
 
-set( CMAKE_FIND_ROOT_PATH $ENV{OECORE_TARGET_SYSROOT} $ENV{OECORE_NATIVE_SYSROOT} )
+# Re-root CMake search tree to sysroot locations given by environment variables OECORE_TARGET_SYSROOT and
+# OECORE_NATIVE_SYSROOT. For additional locations, e.g. a cross-building install directory, use
+# the OECORE_EXTRA_SYSROOT variable.
+set( CMAKE_FIND_ROOT_PATH $ENV{OECORE_TARGET_SYSROOT} $ENV{OECORE_NATIVE_SYSROOT} $ENV{OECORE_EXTRA_SYSROOT} )
 set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
 set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
 set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )
-- 
2.11.0


--nextPart2222092.GWti2vGBeQ--
