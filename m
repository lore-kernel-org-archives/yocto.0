Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A531E00F89; Thu, 28 Jul 2016 07:31:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF91E00ED5
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 07:31:23 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id w143so4637907oiw.2
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 07:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=ffBPIqEO9y53TuU/FDjKZojQP/cWS64uvg0oQ6cu1iY=;
	b=JBWRoXJzwat3nNHYGc9O2fxUV/d1WsmWJyV3Y2vltNH48iNshbX5QXLTBvRM6YL5LD
	9SBCSWpkdIVDPXNkpJ+ywvS3rxGXzcI8CrIzj/f5xVz9omoenZ/c1jyyrXWCF7C7pVvH
	gU5Rs0S+cZYr7+N8NAktc6gNfZ3VdsyEHMl2QOSlad4xxEGGD+Hb35N0x7eD0eE1pmQl
	gBkvQh/HFrvTGaylI9xj0UUGd12BMdjWiFljGHk8DQAUNpmTb02u4qEvoPhzKqQmN0iy
	Z3SabsL5i19cZTuFI1NbgfGdPsG2y3O1yOy2kIGjI2vXuw7i4jEUF+2kRRsm5tJpuJgv
	swvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ffBPIqEO9y53TuU/FDjKZojQP/cWS64uvg0oQ6cu1iY=;
	b=AU6YOFWJR0SK0fXyuFaJd3iwiNgZuCAzre3hNJzG7DajmXoWK31sFvefVP2cQyGHwy
	W4uT4p97/r8iVS+vFySsJDYvc/IPzE5XexJA06qRp4YQqtf3zwW/lL1cztuXLWVXhjdT
	Ak/PlG7TmQ8+pNNUVbosvPR3qzHd4UbYr6/cnjAexGarUEcQU9DF4cljTqdKUzhC+Znw
	0pgpDJA2gcNiFBELCrlkvJjJDRdXoVLvQ2qwokailVUohTuLEtfqENfAqroO6/lptvFD
	TqBcWzc7w/n5GWfRZBQoxG6fRcKnsSfmeeWPxYBwwHUlbXtysrYm18GlEhsIk/29g0ya
	ThAQ==
X-Gm-Message-State: AEkoouudDgpinOtu2/0ab/xxNE0nGmc1Aa4CS4ymn8YIzlzTB/7oH6/q9u9SrYsUy+z8+Q==
X-Received: by 10.157.11.163 with SMTP id 32mr21916540oth.119.1469716283120;
	Thu, 28 Jul 2016 07:31:23 -0700 (PDT)
Received: from brrussell-Latitude-E6530.lpdev.prtdev.lexmark.com
	([172.56.20.95]) by smtp.gmail.com with ESMTPSA id
	101sm4710134otg.22.2016.07.28.07.31.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 07:31:20 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 28 Jul 2016 10:31:08 -0400
Message-Id: <1469716268-9734-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Kyle Russell <bkylerussell@gmail.com>
Subject: [meta][PATCH] python-native: Compute prefix based on staging area
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
X-List-Received-Date: Thu, 28 Jul 2016 14:31:28 -0000

python-native should not assume that prefix points to the native
sysroot, and instead use STAGING_LIBDIR to determine prefix, since
python-native may be used to compile non-native python modules for the
target sysroot.

Computing an incorrect prefix causes unintended build behavior,
especially on setuptools packages.  A setuptools package may declare
setup_requires dependencies in its setup.py.  setuptools makes sure
these setup_requires dependencies are available during do_compile.
The bitbake recipes for these setuptools packages also express these
setup_requires dependencies as DEPENDS.

Since python's sysconfig computes the prefix from where python-native
was compiled, setuptools only searches the native sysroot for packages
that satisfy its setup_requires dependencies, while bitbake satisfies
its DEPENDS for the packages by populating the target sysroot.  Since
setuptools was being mislead by prefix on where to look for its
dependencies, it would try to download pypi packages into the compiling
package's workdir when it didn't find them in the native sysroot.
Instead, prefix should instruct setuptools to look in the target sysroot
to satisfy its setup_requires dependencies so setuptools can take
advantage of the DEPENDS satisfied by bitbake.

Note that a similar approach has already been patched for the
distutils.sysconfig module in python-native, but sysconfig was moved out
of distutils in Python 2.7 and >= 3.2, which appears to be why the previous
patch does not impact setuptools.

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 ...g.py-prefix-should-be-inside-staging-area.patch | 32 ++++++++++++++++++++++
 .../recipes-devtools/python/python-native_2.7.9.bb |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 meta/recipes-devtools/python/python-native/0001-sysconfig.py-prefix-should-be-inside-staging-area.patch

diff --git a/meta/recipes-devtools/python/python-native/0001-sysconfig.py-prefix-should-be-inside-staging-area.patch b/meta/recipes-devtools/python/python-native/0001-sysconfig.py-prefix-should-be-inside-staging-area.patch
new file mode 100644
index 0000000..27f191f
--- /dev/null
+++ b/meta/recipes-devtools/python/python-native/0001-sysconfig.py-prefix-should-be-inside-staging-area.patch
@@ -0,0 +1,32 @@
+From 47e1df99c073ba50213f5b5f78ea36828668001f Mon Sep 17 00:00:00 2001
+From: Kyle Russell <bkylerussell@gmail.com>
+Date: Thu, 28 Jul 2016 09:15:45 -0400
+Subject: [PATCH] sysconfig.py: prefix should be inside staging area
+
+Similar to the distutils fix for correct prefix handling for the sysroot
+layout, but applies to the sysconfig API moved out of distutils in
+Python 2.7 and >=3.2.
+
+Upstream-Status: Inappropriate [embedded specific]
+---
+ Lib/sysconfig.py | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Lib/sysconfig.py b/Lib/sysconfig.py
+index ffc55ba..1cb4107 100644
+--- a/Lib/sysconfig.py
++++ b/Lib/sysconfig.py
+@@ -89,8 +89,8 @@ _SCHEME_KEYS = ('stdlib', 'platstdlib', 'purelib', 'platlib', 'include',
+ _PY_VERSION = sys.version.split()[0]
+ _PY_VERSION_SHORT = sys.version[:3]
+ _PY_VERSION_SHORT_NO_DOT = _PY_VERSION[0] + _PY_VERSION[2]
+-_PREFIX = os.path.normpath(sys.prefix)
+-_EXEC_PREFIX = os.path.normpath(sys.exec_prefix)
++_PREFIX = '/'.join(os.environ['STAGING_LIBDIR'].split('/')[:-1])
++_EXEC_PREFIX = '/'.join(os.environ['STAGING_LIBDIR'].split('/')[:-1])
+ _CONFIG_VARS = None
+ _USER_BASE = None
+ _PYTHONBUILDDIR = os.environ.get("PYTHONBUILDDIR", None)
+-- 
+1.9.3
+
diff --git a/meta/recipes-devtools/python/python-native_2.7.9.bb b/meta/recipes-devtools/python/python-native_2.7.9.bb
index 34f5c29..6c668e7 100644
--- a/meta/recipes-devtools/python/python-native_2.7.9.bb
+++ b/meta/recipes-devtools/python/python-native_2.7.9.bb
@@ -18,6 +18,7 @@ SRC_URI += "\
             file://parallel-makeinst-create-bindir.patch \
             file://revert_use_of_sysconfigdata.patch \
             file://avoid_parallel_make_races_on_pgen.patch \
+            file://0001-sysconfig.py-prefix-should-be-inside-staging-area.patch \
            "
 S = "${WORKDIR}/Python-${PV}"
 
-- 
1.9.1


