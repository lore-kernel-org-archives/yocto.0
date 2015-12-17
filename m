Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9019AE00AD2; Thu, 17 Dec 2015 16:15:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RDNS_NONE,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 2187 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Dec 2015 16:15:08 PST
Received: from anavi.org (unknown [91.215.217.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A84EE00349
	for <yocto@yoctoproject.org>; Thu, 17 Dec 2015 16:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org;
	s=default; h=Message-Id:Date:Subject:Cc:To:From;
	bh=fCNSR+o+oHQuUdmxwQO9jqYtPw6EgbpXrbOQF1kG+OY=; 
	b=kye3H4JUUzPNZqP46xwTJX8TpAUX7U+K3ME1czs3XqR77L92/x9p55GwZoC2HuW3ZWLoAM8jgA18jMUV9sgGFuK2OeuMb6D3ZQV+H2x47Bef28J9iZZLoebjRHvsPThzi2qxAb20ojqL6Gz4vj/uJLmhrvhnSEeR3lEtJsFrUhs=;
Received: from [5.53.209.92] (port=43156 helo=localhost.localdomain)
	by voyager.icnhost.net with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.85) (envelope-from <leon@anavi.org>)
	id 1a9i86-0002Om-35; Fri, 18 Dec 2015 01:38:38 +0200
From: Leon Anavi <leon@anavi.org>
To: yocto@yoctoproject.org
Date: Fri, 18 Dec 2015 01:37:58 +0200
Message-Id: <1450395478-4272-1-git-send-email-leon@anavi.org>
X-Mailer: git-send-email 2.5.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - voyager.icnhost.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - anavi.org
X-Get-Message-Sender-Via: voyager.icnhost.net: authenticated_id: leon@anavi.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: [meta-raspberrypi][PATCH] Add Python modules to support Raspberry Pi Sense Hat
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
X-List-Received-Date: Fri, 18 Dec 2015 00:15:12 -0000

Python modules python-sense-hat and python-rtimu have been
added to support the add-on board Sense Hat for Raspberry Pi.

Python module python-rtimu uses the source code from the
GitHub repository of RPi-Distro.

Signed-off-by: Leon Anavi <leon@anavi.org>
---
 recipes-devtools/python/python-rtimu_git.bb       | 12 +++++++++
 recipes-devtools/python/python-sense-hat_2.1.0.bb | 31 +++++++++++++++++++++++
 2 files changed, 43 insertions(+)
 create mode 100644 recipes-devtools/python/python-rtimu_git.bb
 create mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb

diff --git a/recipes-devtools/python/python-rtimu_git.bb b/recipes-devtools/python/python-rtimu_git.bb
new file mode 100644
index 0000000..9d2f249
--- /dev/null
+++ b/recipes-devtools/python/python-rtimu_git.bb
@@ -0,0 +1,12 @@
+DESCRIPTION = "RTIMULib is a C++ and Python library that makes it easy to use 9-dof and 10-dof IMUs with embedded Linux systems"
+HOMEPAGE = "https://github.com/RPi-Distro/RTIMULib/"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://../../LICENSE;md5=96cdecb41125f498958e09b72faf318e"
+
+SRC_URI = "git://github.com/RPi-Distro/RTIMULib.git;protocol=http;branch=master "
+SRCREV = "b949681af69b45f0f7f4bb53b6770037b5b02178"
+
+S = "${WORKDIR}/git/Linux/python/"
+
+inherit setuptools
diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb b/recipes-devtools/python/python-sense-hat_2.1.0.bb
new file mode 100644
index 0000000..0665536
--- /dev/null
+++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb
@@ -0,0 +1,31 @@
+SUMMARY = "Python module to control the Raspberry Pi Sense HAT used in the Astro Pi mission"
+HOMEPAGE = "https://github.com/RPi-Distro/python-sense-hat"
+SECTION = "devel/python"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=d80fe312e1ff5fbd97369b093bf21cda"
+
+SRCNAME = "sense-hat"
+
+SRC_URI = "https://pypi.python.org/packages/source/s/${SRCNAME}/${SRCNAME}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "71217f15ea963040f06e2f50722186ca"
+SRC_URI[sha256sum] = "c6c76707c0ea514e4b0f1f96f1b5b79755875891aae037df7434b6aad7b9dbca"
+
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+inherit setuptools
+
+DEPENDS_${PN} += " \
+		jpeg \
+		jpeg-dev \
+		zlib \
+		zlib-dev \
+		freetype \
+		freetype-dev \
+		"
+
+RDEPENDS_${PN} += " \
+		python-numpy \
+		python-rtimu \
+		python-imaging \
+		"
-- 
2.5.0


