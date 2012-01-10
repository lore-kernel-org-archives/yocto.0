Return-Path: <martin.donnelly@ge.com>
Received: from exprod5og109.obsmtp.com (exprod5og109.obsmtp.com [64.18.0.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D0DE006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 05:32:35 -0800 (PST)
Received: from alpmlip12.e2k.ad.ge.com ([165.156.5.1]) (using TLSv1) by
	exprod5ob109.postini.com ([64.18.4.12]) with SMTP
	ID DSNKTww982SKNnV5lzeFR3Gs4WeEkpbD/7yy@postini.com;
	Tue, 10 Jan 2012 05:32:35 PST
Received: from unknown (HELO cinmlip01.e2k.ad.ge.com) ([3.159.213.48])
	by alpmlip12.e2k.ad.ge.com with ESMTP; 10 Jan 2012 08:32:34 -0500
Received: from doyen.ramix-uk.cho.ge.com ([3.26.68.43])
	by cinmlip01.e2k.ad.ge.com with ESMTP; 10 Jan 2012 08:32:33 -0500
Received: from fyvie.edi.geip.ge.com (fyvie.edi.geip.ge.com [3.26.68.199])
	by doyen.ramix-uk.cho.ge.com (Postfix) with ESMTP id E9D6EC8154;
	Tue, 10 Jan 2012 13:32:32 +0000 (GMT)
From: Martin Donnelly <martin.donnelly@ge.com>
To: yocto@yoctoproject.org
Date: Tue, 10 Jan 2012 13:32:04 +0000
Message-Id: <1326202324-21839-1-git-send-email-martin.donnelly@ge.com>
X-Mailer: git-send-email 1.7.6.5
Subject: [PATCH] augeas: Add libxml2 dependency
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Jan 2012 13:32:36 -0000

This patch fixes the following Augeas configure error.

| checking for LIBXML... no
| configure: error: Package requirements (libxml-2.0) were not met:
|
| No package 'libxml-2.0' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables LIBXML_CFLAGS
| and LIBXML_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| ERROR: oe_runconf failed

Signed-off-by: Martin Donnelly <martin.donnelly@ge.com>
---
 meta/recipes-extended/augeas/augeas.inc |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-extended/augeas/augeas.inc b/meta/recipes-extended/augeas/augeas.inc
index 0c6d534..f9263cf 100644
--- a/meta/recipes-extended/augeas/augeas.inc
+++ b/meta/recipes-extended/augeas/augeas.inc
@@ -7,7 +7,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bbb461211a33b134d42ed5ee802b37ff"
 
 SRC_URI = "http://augeas.net/download/${BP}.tar.gz"
 
-DEPENDS = "readline"
+DEPENDS = "readline libxml2"
 
 inherit autotools
 
-- 
1.7.6.5


