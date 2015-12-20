Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FA55E00C57; Sun, 20 Dec 2015 12:53:49 -0800 (PST)
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
Received: from anavi.org (unknown [91.215.217.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE73E0078A
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 12:53:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org;
	s=default; h=Message-Id:Date:Subject:Cc:To:From;
	bh=xkNl78rkz4RzBsyqy/Kr7eCcx3hc9c8Bvv+4xOtN0Zk=; 
	b=IhYu+ZtaDZMnuGEreUkbO0eO+ZeZrvL4HTvsHHH1dd6+/WQ0v6Z7YY/adfuVW6igw84ZKrUuDdiUapUKe3ZrYa3KlUZ/HBy1WJlXULob64xDvosjz4Scn5z06QvEU/9NByEynoqtAI3I8vCp+ewmjR5dNPCb+MWm8oOTxgM0KqE=;
Received: from [5.53.209.92] (port=33980 helo=localhost.localdomain)
	by voyager.icnhost.net with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.85) (envelope-from <leon@anavi.org>)
	id 1aAkz7-0002Bf-Gn; Sun, 20 Dec 2015 22:53:41 +0200
From: Leon Anavi <leon@anavi.org>
To: yocto@yoctoproject.org
Date: Sun, 20 Dec 2015 22:53:16 +0200
Message-Id: <1450644797-13141-1-git-send-email-leon@anavi.org>
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
Subject: [meta-raspberrypi][PATCH 1/2] python-rtimu: Add recipe to support RTIMULib
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
X-List-Received-Date: Sun, 20 Dec 2015 20:53:49 -0000

RTIMULib is a C++ and Python library that makes it easy to use
9-dof and 10-dof IMUs with embedded Linux systems. Python
module for Raspberry Pi Sense HAT depends on it.

Python module python-rtimu uses the source code from the
GitHub repository of RPi-Distro.

Signed-off-by: Leon Anavi <leon@anavi.org>
---
 recipes-devtools/python/python-rtimu_git.bb | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-devtools/python/python-rtimu_git.bb

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
-- 
2.5.0


