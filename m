Return-Path: <leon@anavi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAD53E00B02; Sun, 20 Dec 2015 13:58:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BE8E0083E
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 13:58:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=anavi.org;
	s=default; h=Message-Id:Date:Subject:Cc:To:From;
	bh=nGL172hbNxpgz0px6Jfg7Q1OFuuBd8No35zRz3p+Lc8=; 
	b=eHwP2h4m0k2xIlQqaBEYU/wT1ahFdY0dl4sB7E8E1pjeBg8X7yYMDMYMFf+DegwLMka3w8nVt1LHFLuuS7HAXAKl/4R4wqwIi3u398DHAsqLwVGKC3uRMpHbJAWD7QUGxknltWwktVlClCvZUeYkrle5RiRXcUR7wVF/894nfOY=;
Received: from [5.53.209.92] (port=33984 helo=localhost.localdomain)
	by voyager.icnhost.net with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.85) (envelope-from <leon@anavi.org>)
	id 1aAlzw-0006D5-CQ; Sun, 20 Dec 2015 23:58:36 +0200
From: Leon Anavi <leon@anavi.org>
To: yocto@yoctoproject.org
Date: Sun, 20 Dec 2015 23:58:30 +0200
Message-Id: <1450648710-24526-1-git-send-email-leon@anavi.org>
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
Subject: [meta-raspberrypi][PATCH 2/2] python-sense-hat: Add recipe to support Raspberry Pi Sense HAT
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
X-List-Received-Date: Sun, 20 Dec 2015 21:58:43 -0000

Python module to control the Raspberry Pi Sense HAT used in
the Astro Pi mission. This recipe provides the officially
supported library for the Sense HAT with access to all of the
on-board sensors and the LED matrix.

Signed-off-by: Leon Anavi <leon@anavi.org>
---
 recipes-devtools/python/python-sense-hat_2.1.0.bb | 28 +++++++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 recipes-devtools/python/python-sense-hat_2.1.0.bb

diff --git a/recipes-devtools/python/python-sense-hat_2.1.0.bb b/recipes-devtools/python/python-sense-hat_2.1.0.bb
new file mode 100644
index 0000000..4bf9c92
--- /dev/null
+++ b/recipes-devtools/python/python-sense-hat_2.1.0.bb
@@ -0,0 +1,28 @@
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
+DEPENDS += " \
+		jpeg \
+		zlib \
+		freetype \
+		"
+
+RDEPENDS_${PN} += " \
+		python-numpy \
+		python-rtimu \
+		python-imaging \
+		"
-- 
2.5.0


