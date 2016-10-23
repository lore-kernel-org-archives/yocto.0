Return-Path: <max.oss.09@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2430E00BCE; Sun, 23 Oct 2016 06:08:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (max.oss.09[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7196EE009BB
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 06:08:03 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d199so5787552wmd.1
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 06:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=i9h8n734KSrwPRW0bxnxqW21UFjNTezceiRWAbUBtXQ=;
	b=R4kY8xPM1BaPx+kaY/Qcf9EhBoCdpDYLyG4lOfRCglB6qHM6s7WU501IBLRXj3KxEg
	PVjMhYhIUSi3jGtckyYJUDM9g7JCmOIcfAbhUBm9QP0pc6peVMmIDUBwuLT/rjEP7KxC
	APKpo6kg6aJcPnp9b6RLwkzixfu0Bi0KOydfNfO/jsXTSEtHYwnfR4UL/kb8tHk+z54P
	WLrwJzAL0ssEHdgs4XEgERViuzbwI4925rRJ2G/OrY9ktpz50spyDBOZSd3CUga3/x8j
	qc+tVo62zFZqXGAO9CGrjRQkjhXSa4dYOBUI6TIjhAvnPvqz7+FuA8Ka2U8Ot24EG31D
	PL1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=i9h8n734KSrwPRW0bxnxqW21UFjNTezceiRWAbUBtXQ=;
	b=YN5nzkCnZLO2NkGIQpO820H6IlDMNlDUbn4IMoDv6JdRgwJyzc3/4dD1mGxKSYgBEY
	MT5FnV9wuOhelrefnDUsvk2RuXyeKgUnR9Kkl55Y1DziK5XBKdtENK351l+92iKaNnTr
	wdKMILZjEdB2g3Wf9ZRM90u5iewYmxy0ZwdteB0kk2TwCFg1bDMTAQoxjX0d1im7SCL9
	6MTy/9R+RcNb17Pj0P2VZONHp/EwE4r/yyJGjzh5SOK713t8MzsW3fB91SJZkGuKbedu
	MwWjrzuYtnqlyFOlTSfT1chGMADplNTfrMCOXlNbB9+gd0kKHf7oV7utq83n1odJEJ4X
	MGFg==
X-Gm-Message-State: AA6/9RnE+wdBji4ySLUNllgGqxu/Av79JxSf5d1Eo14rE6O0IyHnbeXwdzaIG5kbbYYj7g==
X-Received: by 10.28.15.17 with SMTP id 17mr18615435wmp.55.1477228082872;
	Sun, 23 Oct 2016 06:08:02 -0700 (PDT)
Received: from linuxdev.toradex.int ([46.140.72.82])
	by smtp.gmail.com with ESMTPSA id
	pe5sm13780680wjb.15.2016.10.23.06.08.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Oct 2016 06:08:02 -0700 (PDT)
From: Max Krummenacher <max.oss.09@gmail.com>
X-Google-Original-From: Max Krummenacher <max.krummenacher@toradex.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Oct 2016 15:07:08 +0200
Message-Id: <1477228028-13816-1-git-send-email-max.krummenacher@toradex.com>
X-Mailer: git-send-email 2.5.5
Cc: Max Krummenacher <max.krummenacher@toradex.com>
Subject: [meta-qt4][PATCH] packagegroup-core-qt4e.bb: mv tslib from rdepends to rrecommends
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
X-List-Received-Date: Sun, 23 Oct 2016 13:08:11 -0000

Commit c4671873af5ab6c7d15ca397538f154c11c3486e made the build of tslib a
PACKAGECONFIG. By default tslib components are not built.

Thus a build for a machine with  "MACHINE_FEATURES" "touchscreen"
fails for missing tslib components.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>
---
Alternatively or additionally one could change the default PACKAGECONFIG
in qt4-embedded.inc conditionally on MACHINE_FEATURES. If that is prefered
I could create a patch.

Max

 recipes-qt4/packagegroups/packagegroup-core-qt4e.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb b/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb
index 588e99b..86646e9 100644
--- a/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb
+++ b/recipes-qt4/packagegroups/packagegroup-core-qt4e.bb
@@ -37,7 +37,6 @@ RDEPENDS_${PN} = " \
 	qt4-embedded-plugin-imageformat-tiff \
 	qt4-embedded-plugin-script-dbus \
 	qt4-embedded-plugin-sqldriver-sqlite \
-	${TOUCH} \
         qt4-embedded-demos \
         qt4-embedded-examples \
         qt-demo-init \
@@ -47,5 +46,6 @@ RDEPENDS_${PN} = " \
 RRECOMMENDS_${PN} = " \
 	libqt-embeddedxmlpatterns4 \
 	qt4-embedded-plugin-phonon-backend-gstreamer \
+	${TOUCH} \
 "
 
-- 
2.5.5


