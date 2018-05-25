Return-Path: <jed.openxt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A42AE009CA; Fri, 25 May 2018 14:37:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jed.openxt[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA80E009B9
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 14:37:38 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id c198-v6so5150480qkg.12
	for <yocto@yoctoproject.org>; Fri, 25 May 2018 14:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=ta2bigJ1CD/0LkeeHi/ShXtzs1R3qigFLuDNVG8QbTk=;
	b=AH+vHu17Otakq7JAU7K461NzkQKZwOeaysv0V4qqPdLZRX1rLIq+UD7b3ybBjjCGxk
	03g6JGyx/iblHI9quis7qRr2oPpH2B/dRDBhp1ABgPNS+IvfIbgUi9d6C4ErlzpE0+U3
	c/nylfc8NSnBEy964m2zZl5ii14eLRXA29m7qjn3HWNlIzSr+aBHpCy4f1f/Qj2OHJmE
	HOqyfsHHKb+P3DycAS4PA5giCfklJqbnuQR0bISi1qd1ICs/ekd1eKuyCps2LDoOLJ0e
	n3+CClkgtZitR4W135GRQQWLJbhhz46sCiBmDXzjQASeJNO8SQnIzroC+QoHYSfWbNyS
	bZPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=ta2bigJ1CD/0LkeeHi/ShXtzs1R3qigFLuDNVG8QbTk=;
	b=Y9ffahWL3Q18cHBXoSswybs8a3udrMv+olBIMtPM0z+lx4N3plTUuQH7NDIEG/8b9L
	tQepNWYo7q+Nb9Kqf5wuYbIlpoAGD90P50DFFTZuLXQMicvngVIq5EU6km3S1FU0w8H0
	SQTm2XapDI1vQmmTJBhF+DEBKiofZpZJrhFNCMcv/a1pnt248uoxr7pAU2FDirNOJ6jb
	+oGyTkIw3W/Zrx5sEXOyNEwjbkQDSGaSLzjMpE2FYGl/Ip28WYBleK5D27sQ1zw7DHlJ
	rhG9acfDHrWXBZQ6Liqv2e4TrbQLuO7sStZ6kDnKOCqDscCBK5yCfeSlV4Ap5aLJd2fe
	xPKw==
X-Gm-Message-State: ALKqPwes3Gy5dfdjusCriWwOfzKzoAZ6buxPJdCjocFHM2gquxZ6SWkZ
	EKnTTAcs0oR3dzvimRhjJlTW1CGy
X-Google-Smtp-Source: ADUXVKIsKnNg/DwHgrTB+FF5BFRxop3j9PejuVheCO+MWmPa0L+zrKEE3YThoYSqGSFHGXVGvClWtg==
X-Received: by 2002:a37:52d7:: with SMTP id
	g206-v6mr3730463qkb.205.1527284258295; 
	Fri, 25 May 2018 14:37:38 -0700 (PDT)
Received: from [192.168.1.1] (50-205-235-218-static.hfc.comcastbusiness.net.
	[50.205.235.218]) by smtp.gmail.com with ESMTPSA id
	c10-v6sm5467310qth.97.2018.05.25.14.37.37
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 May 2018 14:37:37 -0700 (PDT)
To: yocto@yoctoproject.org
From: Jed <jed.openxt@gmail.com>
Message-ID: <6fe5c164-6d57-72f2-57e0-adf8a42a4517@gmail.com>
Date: Fri, 25 May 2018 17:37:37 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] libsemanage: lift dependency on python for the main package
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
X-List-Received-Date: Fri, 25 May 2018 21:37:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Just moving the python script to the -python package.
This allows using libsemanage without requiring python.

Signed-off-by: Jed <jed.openxt@gmail.com>
---
 recipes-security/selinux/libsemanage.inc | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 9b238c8..ee31e4b 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -11,11 +11,9 @@ inherit lib_package python-dir
 DEPENDS += "libsepol libselinux bzip2 python bison-native flex-native swig-native"
 DEPENDS_append_class-target += "audit"
 
-# For /usr/libexec/selinux/semanage_migrate_store
-RDEPENDS_${PN} += "python"
-
-PACKAGES += "${PN}-python"
-FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/*"
+PACKAGES =+ "${PN}-python"
+FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}/site-packages/* \
+                      ${libexecdir}/selinux/semanage_migrate_store"
 FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/site-packages/.debug/*"
 
 EXTRA_OEMAKE_class-native += "DISABLE_AUDIT=y"
-- 
2.11.0

