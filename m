Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 854B4E00C41; Sun, 28 Oct 2018 11:50:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45610E00C15
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:38 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id 32-v6so2802441pgu.2
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 11:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=GBospG562buS+rEa2JR629DldbqL9JDQ1ESdykRq6dg=;
	b=JGfJPsH59saucbOflqV6Gtq01Z9RBm9i82DHevyy+F/BC9sj1AZQ/KAAqNtEiDGcd+
	76vYR1pfAxz/GNkn5R8FJpMXVAdLMfnpva7z4UHvVlV6blLDFZ6aqGc+AFPoddBMqSRm
	GEpZo+pFQ25YQo/JV2AEt/z6C5Ok2UYUF5SHIBd/VxPwFVU3Sa3QhePpN8vp0tltLweq
	Bi/QjjtpDhNxFYzthDdXq8TuOAUw9K/luiUUpYWjdLe8zW94tc+vl21Nam6xPEN0XGk+
	BSHRxs8Yap8LdArqvtL/9nyr0Uo4j0RRsxBW4m8w59bTpOhH13zpnkYBvbUrxiusNV1e
	0ITQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=GBospG562buS+rEa2JR629DldbqL9JDQ1ESdykRq6dg=;
	b=Iz3Pe4EZrdQWN0+G1JJTYq120Ezr7dUB6EieID5TjovG98eJnXMZtGTQ+iBuMokxk9
	WZBTY4Ix37susZg897mGbU77LQyJGNWDSBPfvASdAvPxfhsOotulbmqc7gcyVN4KqH9y
	+Uuxau71l+Soj9MbGZEIoM7dFe04DOtZovtIjsuay22WLtIZJ+1pNwOXO8gPFMZINzEd
	04MjiRLqsK6bKJh2sjLK/IIPVqpKVAW90VpZw6dyZOUUnLBNZ7vkI16xNZVBfUnI7fvL
	pWxOExhpi42d1RTktJdBzXxHmSMdfhYcL8SoX3edkcsV0qt5RzwnWtx4SClXFI5NmeBM
	OtSg==
X-Gm-Message-State: AGRZ1gLk/fO4oviJAb495j4ac0p7TulMQmpWEtEhDk1eRHo/oHCfzgZN
	nCI/5grv3o0IZkznFro01arrqe2C
X-Google-Smtp-Source: AJdET5d+zku/gEarnBHoOMJlPZAMhAjwPV2+172sgjBy0XDZTW53wO+V7EoAPpoGiaTJa7YxO6jXtQ==
X-Received: by 2002:a63:1157:: with SMTP id 23mr11096119pgr.245.1540752637563; 
	Sun, 28 Oct 2018 11:50:37 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:dd9d:5398:e0dd:9d0f])
	by smtp.gmail.com with ESMTPSA id
	y144-v6sm25394451pfb.81.2018.10.28.11.50.36
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 Oct 2018 11:50:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Oct 2018 18:50:24 +0000
Message-Id: <1540752628-10832-9-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
References: <1540752628-10832-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 09/13] tripwire: add ptest
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
X-List-Received-Date: Sun, 28 Oct 2018 18:50:41 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/tripwire/files/run-ptest     | 3 +++
 recipes-security/tripwire/tripwire_2.4.3.6.bb | 9 ++++++++-
 2 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/tripwire/files/run-ptest

diff --git a/recipes-security/tripwire/files/run-ptest b/recipes-security/tripwire/files/run-ptest
new file mode 100644
index 0000000..aedfddc
--- /dev/null
+++ b/recipes-security/tripwire/files/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+./twtest.pl
diff --git a/recipes-security/tripwire/tripwire_2.4.3.6.bb b/recipes-security/tripwire/tripwire_2.4.3.6.bb
index 465960f..59d1f35 100644
--- a/recipes-security/tripwire/tripwire_2.4.3.6.bb
+++ b/recipes-security/tripwire/tripwire_2.4.3.6.bb
@@ -16,11 +16,12 @@ SRC_URI = "\
 	file://twcfg.txt \
 	file://twinstall.sh \
 	file://twpol-yocto.txt \
+	file://run-ptest \
        "
 
 S = "${WORKDIR}/git"
 
-inherit autotools-brokensep update-rc.d
+inherit autotools-brokensep update-rc.d ptest
 
 INITSCRIPT_NAME = "tripwire"
 INITSCRIPT_PARAMS = "start 40 S ."
@@ -58,9 +59,15 @@ do_install () {
     install -m 0644 ${WORKDIR}/tripwire.txt ${D}${docdir}/${BPN}
 }
 
+do_install_ptest_append () {
+	install -d ${D}${PTEST_PATH}/tests
+	cp -a ${S}/src/test-harness/* ${D}${PTEST_PATH}
+}
 
 FILES_${PN} += "${libdir} ${docdir}/${PN}/*"
 FILES_${PN}-dbg += "${sysconfdir}/${PN}/.debug"
 FILES_${PN}-staticdev += "${localstatedir}/lib/${PN}/lib*.a"
+FILES_${PN}-ptest += "${PTEST_PATH}/tests "
 
 RDEPENDS_${PN} += " perl nano msmtp cronie"
+RDEPENDS_${PN}-ptest = " perl lib-perl"
-- 
2.7.4


