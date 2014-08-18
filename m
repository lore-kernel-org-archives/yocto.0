Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3CAEE00801; Sun, 17 Aug 2014 19:42:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FF8DE007EE
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:30 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id p10so6613058pdj.36
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 19:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=r1UXa68njLsTf3nf0ISXoXZsqdz/D0x3vFgCkOzQdro=;
	b=sBb0yaBpwt5ztUVHnXFzbJei0G23Iz23cShBT2Aq/4bW7ExljL5HWirsvgCGgg8rtL
	lSQs97Xr1QqPoHM8gkReLOQswQ7O5fJW9nyX1iZ3OSe49zbp1l/qAHBZfM8nYGwulGNN
	0m+uJw8/lBxQNWAogZutpbLidhSSYDp00PFxe5DvseHatoJtrS3TpQ2a9oh3jbG/WPDd
	zcUHSGauaRNIvbTJvacrX9ymIQkP4PiF0VhJ6sZZ5i4QjymRg0Q5+4d2XoOi3cnaF/Go
	h4lI9KIpsnEB1s8MhL883NHn1tigA3es68O4xvWeEx85EcFkOf71kTjfrpU3UcObQknT
	TYzQ==
X-Received: by 10.69.19.193 with SMTP id gw1mr31088128pbd.106.1408329749680;
	Sun, 17 Aug 2014 19:42:29 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	qp12sm22517640pdb.80.2014.08.17.19.42.27 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 17 Aug 2014 19:42:28 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Aug 2014 19:42:19 -0700
Message-Id: <1408329739-14758-4-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
References: <1408329739-14758-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] samhain: server package
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
X-List-Received-Date: Mon, 18 Aug 2014 02:42:32 -0000

This is the server portion.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain-server_3.1.1.bb | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 recipes-security/samhain/samhain-server_3.1.1.bb

diff --git a/recipes-security/samhain/samhain-server_3.1.1.bb b/recipes-security/samhain/samhain-server_3.1.1.bb
new file mode 100644
index 0000000..03ff643
--- /dev/null
+++ b/recipes-security/samhain/samhain-server_3.1.1.bb
@@ -0,0 +1,50 @@
+SAMHAIN_MODE="server"
+INITSCRIPT_PARAMS = "defaults 14 86"
+
+require samhain.inc
+
+DEPENDS = "gmp"
+
+EXTRA_OECONF += "--enable-network=${SAMHAIN_MODE} "
+
+# supports mysql|postgresql|oracle|odbc but postgresql is the only one available
+
+PACKAGECONFG ??= "postgresql"
+PACKAGECONFIG[postgres]  = "--with-database=postgresql --enable-xml-log, "", postgresql"
+PACKAGECONFIG[suidcheck]  = "--enable-suidcheck","" , "
+PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
+PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
+PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
+PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
+
+SRC_URI += "file://samhain-server-volatiles"
+
+EXTRA_OECONF += " \
+    --with-config-file=REQ_FROM_SERVER/etc/samhainrc \
+    --with-data-file=REQ_FROM_SERVER/var/lib/samhain/samhain_file \
+    "
+
+do_install_append() {
+    cd ${S}
+    install -d ${D}${sysconfdir}/default/volatiles
+    install -m 0644 ${WORKDIR}/samhain-server-volatiles \
+        ${D}${sysconfdir}/default/volatiles/samhain-server
+
+    install -m 700 samhain-install.sh init/samhain.startLinux \
+        init/samhain.startLSB ${D}/var/lib/samhain
+}
+
+INSANE_SKIP_${PN} = "already-stripped"
+
+PACKAGES = "${PN} ${PN}-doc ${PN}-dbg"
+
+FILES_${PN} += " \
+    ${sbindir}/* \
+    /run \
+    "
+
+FILES_${PN}-dbg += " \
+    ${sbindir}/.debug/* \
+    "
+   
+DEPENDS_${PN} += "gmp"
-- 
1.9.1


