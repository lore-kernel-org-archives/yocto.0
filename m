Return-Path: <sgw@bigsur.com>
Received: from mail-da0-f52.google.com (mail-da0-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 542D5E006C2
	for <yocto@yoctoproject.org>; Sat, 22 Dec 2012 00:23:26 -0800 (PST)
Received: by mail-da0-f52.google.com with SMTP id f10so2434963dak.11
	for <yocto@yoctoproject.org>; Sat, 22 Dec 2012 00:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bigsur.com; s=bigsur.com;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer;
	bh=emZ/8gN6ZYXSCU5nEuvsC0db0JGYXuUVrEuOJubeEMM=;
	b=d/PY1+XPOU/oPZ1JcORqpElwk2KT4k2Uw1RRxTJ9luc7Neji/Hf+TCfdAeTXq0DJxp
	LFPYq6OxgXHG77PfO45Ws0SloBN/QJrMduClMxEhwsHLUE/1i+FGdQYe4cQ5MgtEACun
	IvOqgVeHB9fUAXteHiqD1Q85xH+JFFDJMYD6U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:sender:from:to:cc:subject:date:message-id:x-mailer
	:x-gm-message-state;
	bh=emZ/8gN6ZYXSCU5nEuvsC0db0JGYXuUVrEuOJubeEMM=;
	b=WHU0Bnu0Jr1VRA6XmD0XnGZz152cvErSWfWwQbzAmEe/JATbXlslkmxcyuVGR3YqpJ
	3ZYjjBZ22VWdbuFhFlswl4E+07xM9tA+nYo/pxkOjo7RT3Y0hJRIsZhgBINASwc7rlOv
	/+h8yk+TdCSDuiYSp+iZhRocHjiCDiohQcepmcw2OXE72t0onhC1JYeZKbE/hGYVx5WC
	wfw7IYKZIXgl72/RqHKF4w8M0HtMAhGNlOY11Xkwwd9+ptpLz8AzqSgvICDXT2/mBfvM
	BMSXjAa1uVG1nG+zdW6kEqO/XpSs/qcw1J8V/hpHM4f97Z1rxVquh/Ozt6OztJcuh1NV
	HVNA==
X-Received: by 10.68.131.73 with SMTP id ok9mr47571753pbb.83.1356164605592;
	Sat, 22 Dec 2012 00:23:25 -0800 (PST)
Received: from localhost (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id d8sm8893424pax.23.2012.12.22.00.23.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 22 Dec 2012 00:23:24 -0800 (PST)
Sender: Saul Wold <sgw@bigsur.com>
From: Saul Wold <sgw@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sat, 22 Dec 2012 00:22:52 -0800
Message-Id: <1356164572-25770-1-git-send-email-sgw@linux.intel.com>
X-Mailer: git-send-email 1.7.9.5
X-Gm-Message-State: ALoCoQmmiDDSI7To0z+yq+ZdURnqt5DMXetSHqieSv9koc430duyJ093A08l5LHONIVBalyhV9Ui
Cc: openembedded-core@lists.openembedded.org
Subject: [PATCH] qt-x11-free-native: Use private libpng
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
X-List-Received-Date: Sat, 22 Dec 2012 08:23:26 -0000

Ensure the 3rdparty version of libpng headers are found first, otherwise
the sysroot libpng15 header are found which causes a mis-match issue.

Signed-off-by: Saul Wold <sgw@linux.intel.com>
---
 recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
index 2d87d26..b18ea0d 100644
--- a/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
+++ b/recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb
@@ -40,6 +40,7 @@ inherit native
 do_configure() {
 	echo "yes" | ./configure -prefix ${prefix} ${QT_CONFIG_FLAGS} -fast -L ${STAGING_LIBDIR} \
                 -I ${STAGING_INCDIR_NATIVE} 
+	sed -i -e '\:obj/release-shared-mt/qpngio.o\ kerne:s:$(CXXFLAGS):-I3rdparty/libpng $(CXXFLAGS):' src/Makefile
 }
 
 do_compile() {
-- 
1.7.9.5


