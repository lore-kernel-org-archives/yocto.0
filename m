Return-Path: <matthias@kaehlcke.net>
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D36E0030C
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2011 05:52:27 -0800 (PST)
X-Originating-IP: 217.70.178.144
Received: from mfilter16-d.gandi.net (mfilter16-d.gandi.net [217.70.178.144])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id 28CC3A8222
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2011 14:52:26 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter16-d.gandi.net
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
	by mfilter16-d.gandi.net (mfilter16-d.gandi.net [10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id v9--JE2C-eQF for <yocto@yoctoproject.org>;
	Sat, 26 Nov 2011 14:52:24 +0100 (CET)
X-Originating-IP: 83.160.107.163
Received: from d4rwin.no-ip.org (a83-160-107-163.adsl.xs4all.nl
	[83.160.107.163]) (Authenticated sender: matthias@kaehlcke.net)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8C2C9A8495
	for <yocto@yoctoproject.org>; Sat, 26 Nov 2011 14:52:24 +0100 (CET)
Received: by d4rwin.no-ip.org (Postfix, from userid 1000)
	id B79C41415FA; Sat, 26 Nov 2011 14:51:00 +0100 (CET)
Date: Sat, 26 Nov 2011 14:51:00 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
To: yocto@yoctoproject.org
Message-ID: <20111126135100.GE29616@darwin>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [PATCH] recipes-kernel: add powerdebug_0.6.1 recipe
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
X-List-Received-Date: Sat, 26 Nov 2011 13:52:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Add recipe for v0.6.1 of PowerDebug tool from Linaro

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 meta/recipes-kernel/powerdebug/powerdebug_0.6.1.bb |   25 ++++++++++++++++++++
 1 files changed, 25 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-kernel/powerdebug/powerdebug_0.6.1.bb

diff --git a/meta/recipes-kernel/powerdebug/powerdebug_0.6.1.bb b/meta/recipes-kernel/powerdebug/powerdebug_0.6.1.bb
new file mode 100644
index 0000000..ef88f5a
--- /dev/null
+++ b/meta/recipes-kernel/powerdebug/powerdebug_0.6.1.bb
@@ -0,0 +1,25 @@
+SUMMARY = "A tool to display regulator and sensor information"
+DESCRIPTION = "PowerDebug, is a tool that provides users extra information \
+about how the power is being managed in the system"
+HOMEPAGE = "https://wiki.linaro.org/WorkingGroups/PowerManagement/Doc/PowerDebug"
+BUGTRACKER = "https://bugs.launchpad.net/linaro-powerdebug"
+
+LICENSE = "EPL-1"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=cdd7b8fa70e88be67e325baae3b8ee95"
+
+DEPENDS = "ncurses"
+
+SRCREV = "8df301c8986c694393c246fd274f96cc5cb61cdd"
+
+PR = "r0"
+
+SRC_URI = "git://git.linaro.org/tools/powerdebug.git;protocol=git"
+
+S = "${WORKDIR}/git"
+
+CFLAGS += "${LDFLAGS}"
+
+do_install () {
+    oe_runmake install DESTDIR=${D}
+}
+
-- 
1.7.7.1


