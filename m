Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 146ADE00A38; Fri, 15 Sep 2017 00:45:37 -0700 (PDT)
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
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2209AE00851
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:45:34 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id r136so2017638wmf.3
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 00:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=JaWwSKFX4TeFfVfKxPeyWPjlsKlRjloDZjZvGmnsd+s=;
	b=Z4GHMe9cjzKnadIQvwzz6tTrVGPb01gLHu0zUeHQlq/7hMDlNHAUX+cpgIV5M5km8F
	IE/qnHqS4EMXFIl7CsYwKEedRLkU3POpNiVQeeOXNx/kTcynKP03/Zq/wQIXpESg/TEZ
	RsMLIwwN4/kyien+VMIE0MlBzwhxAEdb7LRBjYNRlq6uiOH83hMeexDAFQ4t4wg44xVB
	s97zqyqXZfkTSeAy9voHweBwA9co70WIfIOmk4yoriwbhp0XDvUxTXXFIkhiNbYG3GX2
	MkZNsC8FwDLGFSL87/q+JyHdGH6hV3LaK8+QTRNqjHfVP73DjxThh9YEAWM7s1dWDBeB
	OnRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JaWwSKFX4TeFfVfKxPeyWPjlsKlRjloDZjZvGmnsd+s=;
	b=MTkKHpfIokyv9WMr3zgh5rXBpPrUM6UWH4eXzVhx1lj9cdpYzR2NzU+4ed5kviWoX+
	gWvITuiC26gjnD0kGV4BxXySWzDlh/Bj1x0qXteBFB/pOK4fQ+i7peAFPY6sOqWlCfj0
	w3BjMW5PfCRk4/1pr13G++3xXoaWse9wwdkWR8HseuktXohVMfwEK7PAiI66T/+8WPgn
	JY+24/xdinSlJW0ZIXhRc2ikg9RIQfxlG05JZGyZ26Ab3I0xAi8uWyS2A2rZebYI1T0e
	WyQKxVcQB5pEnVPipLyDUOkNPzZtH6rrEv9oc5jdMLKBxS0tBz4WBMP6EnOTZeQrJ5b+
	xuPA==
X-Gm-Message-State: AHPjjUhX2vg49AYJkTBrOVNqLM3myaBiPyRYfpmC3MXl5i+QXP62GJCp
	Zqm7a1OyngYwF3yrBD0Cm2AcTw==
X-Google-Smtp-Source: AOwi7QBnIAXrLHaSbY21rC1/hcuwAT4lKrdUEKhqEa/B7spg+HbN8l310wH6ibr0yhEH4a0Zgq706A==
X-Received: by 10.28.209.14 with SMTP id i14mr1818506wmg.156.1505461533702;
	Fri, 15 Sep 2017 00:45:33 -0700 (PDT)
Received: from hager-VirtualBox.fra.hager.corp ([212.51.167.132])
	by smtp.gmail.com with ESMTPSA id f84sm424223wme.44.2017.09.15.00.45.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 15 Sep 2017 00:45:33 -0700 (PDT)
From: Vincent Prince <vincent.prince.fr@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Sep 2017 09:38:25 +0200
Message-Id: <1505461105-8584-1-git-send-email-vincent.prince.fr@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-oracle-java][PATCH] Move RDEPENDS from general include to JRE specific as Embedded JRE is headless and runtime does not depend on graphical libs.
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
X-List-Received-Date: Fri, 15 Sep 2017 07:45:37 -0000

Signed-off-by: Vincent Prince <vincent.prince.fr@gmail.com>
---
 recipes-devtools/oracle-java/oracle-jse-jre.inc | 2 ++
 recipes-devtools/oracle-java/oracle-jse.inc     | 1 -
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-jre.inc b/recipes-devtools/oracle-java/oracle-jse-jre.inc
index e8faba2..80a442a 100644
--- a/recipes-devtools/oracle-java/oracle-jse-jre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-jre.inc
@@ -12,3 +12,5 @@ JDK_JRE = "jre"
 require oracle-jse.inc
 
 BBCLASSEXTEND = "native"
+
+RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
index ce8280c..4346f23 100644
--- a/recipes-devtools/oracle-java/oracle-jse.inc
+++ b/recipes-devtools/oracle-java/oracle-jse.inc
@@ -9,7 +9,6 @@ LIC_FILES_CHKSUM = "\
 
 FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
 
-RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
 # get the java update version in the resulting package
 PR =. "u${PV_UPDATE}"
 S = "${WORKDIR}"
-- 
2.7.4


