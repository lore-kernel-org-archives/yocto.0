Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58C35E00D42; Fri, 27 Oct 2017 05:34:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.194 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34961E00D40
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 05:34:28 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id j15so6041167wre.8
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 05:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=U8PsIKaKsPRtyigeMX5srEHkWvrMrTEisRnEr7rUp1k=;
	b=h/hlupTMZrIn18XTrloGxwjJVpxWmU5E0WjlFJnQ3rKjDVIXQMDK7m9Fx1AFuk6I5T
	oEBaSgIWPf6x6F4fa3liPxG49eQ3rYqm/DXDIsBZOkAFyJM4oy41QrDJ3/4sI+NPzVbw
	RmDMDwe9zby9+vRZ5VbazfxlIqXzzD6eF/zNcOskDm9tDU/0XbIpDRlVdKfXu9O5/k8J
	rSCFDLAVwU1wYyzxzwDiVG5/GxvsZtYL5L4EwMEQkeafAXZ4pZAvfK97EIOc3gkAr2iN
	AiBdndgtA+ZFjVlWAokHwy/3JlxTZM0D+XZu7i1HIZp+Kjz5jofY2A5MsZF45dzxIZ9f
	w36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=U8PsIKaKsPRtyigeMX5srEHkWvrMrTEisRnEr7rUp1k=;
	b=bJPb0SofP8gyG/vGhwJ5B1Kz7I8CzXt2wVHtztispH05LIWAyrbQtYgmNVfT5er7B5
	csmlndjCeDkg+yNOLg48pxzXCfQeXYC/Jl3yeaIK/MUSH4OXIrru8ZRW0VoZw1k0/tbH
	Pa60V7Sv+YPbDaKDSL/DUPgY9z+coAmROuMfxlNeKYOsQ6Mga8SGv8d3VJ4vvwBLDSLy
	wrYEYhmeBigruR+OH5k5H/PMmKXrro/fho7Xtl8quZTANqQDhXsOFzFrnLJWaP8RgYkK
	za1avMQXaA6/+xfx4N0vduYpKcjqhwsuHBaHDG7QX/Nw5OYGC+cjxn/XckgzzEFxJXSx
	y2lQ==
X-Gm-Message-State: AMCzsaWWLJkHn5lpfbHBiHD/4l2ZJXbjZ1/wddhlewPMgWcFpKUtcrt1
	MGU+UJ4fEPcGgE5I/tOZ4KKk+w==
X-Google-Smtp-Source: ABhQp+TwuBJqFlbvKtCNZ4beUugo3vaOHBMLjCRoQ3iIp3AlbItPC9/NejdfdgzoC0XUnytjSvfvsQ==
X-Received: by 10.223.163.143 with SMTP id l15mr310661wrb.65.1509107666977;
	Fri, 27 Oct 2017 05:34:26 -0700 (PDT)
Received: from VPR-VM.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id
	l127sm1608729wmd.18.2017.10.27.05.34.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 27 Oct 2017 05:34:26 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org,
	maxin.john@intel.com
Date: Fri, 27 Oct 2017 14:18:12 +0200
Message-Id: <1509106693-16052-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-oracle-java][PATCH 1/2] Fix do_populate_sysroot: sstate found an absolute path symlink
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
X-List-Received-Date: Fri, 27 Oct 2017 12:34:30 -0000

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-jdk.inc | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
index a7210d9..11fe17b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
@@ -12,16 +12,16 @@ JDK_JRE = "jdk"
 require oracle-jse.inc
 
 do_install_class-native() {
-	install -d				${D}${libdir_jvm}
-	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
+	install -d ${D}${libdir_jvm}
+	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${JDK_HOME}
 
-	install -d				${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
-	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
+	install -d ${D}${bindir}
+	ln -sf ${D}${JDK_HOME}/bin/java ${D}${bindir}
+	ln -sf ${D}${JDK_HOME}/bin/javac ${D}${bindir}
 
-	install -d				${D}${JDK_HOME}/bin
-	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
-	ln -sf jar				${D}${JDK_HOME}/bin/fastjar
+	install -d ${D}${JDK_HOME}/bin
+	ln -sf javah ${D}${JDK_HOME}/bin/gjavah
+	ln -sf jar ${D}${JDK_HOME}/bin/fastjar
 }
 
 BBCLASSEXTEND = "native"
-- 
2.7.4


