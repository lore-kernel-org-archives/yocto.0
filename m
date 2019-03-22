Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01F02E00D1E; Fri, 22 Mar 2019 07:12:44 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 316A1E00CED
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 07:12:42 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id b12so1639518pgk.0
	for <yocto@yoctoproject.org>; Fri, 22 Mar 2019 07:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=EUPfINkseA09TPXWVwZKZpbqsm5NAayCl++zHvFPtUA=;
	b=culfWjAyJhEfKplVR5wyDUd2/onm0BEc2xApe6tZK1n1YxGluVQ8B0keLGMdKjJKh9
	C/FXpMatMniV+6pcuRonWl+HFzpD4bkSF6i73qMJjcKFUGtp55LS5v3RwR30+/bxgt23
	VHHOsTY3UMhQVjh5LLs0meli28S23wDL1f1QElnC2sG/byu/knLQ2686JUi6Du7u1bki
	1Z5YHv0BipYfVmP/qd9q99O6L0835RoHOFAxcWFdD7Wt/BwrLDSCVUklA40M8yfPl1S+
	4YK4ZcxpLJNR7J+d7Da8oRPiiapdB0VBNVW2Z5w3Dk+q7omqXBnsLP2r7IHlGZ8bupkj
	36vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=EUPfINkseA09TPXWVwZKZpbqsm5NAayCl++zHvFPtUA=;
	b=BJR80rwhOnY9V8fQgL91jFxwAsWYEA1cygt0RhlHmV5x9G75PpkNA3+QbliiW/H8lz
	ysYX/KchlVIX4jZG18vewCiEzTQxSoc8Sa4zivTTRfcvDSnn4lxupW9zABRsL0f2SNY1
	TLEOszxmb96JufMcWOd+EJFbXSG24Ixzkqg1Rqq7EghhlCXgtt+ylrlwcCka7wHReyZT
	bFZ7NHXomXAZWIIQHUBXiWCkXy5Fjmewrzf8CrIC27nhiCO6qvSkkAmCMyaEVlsaBYZk
	4wFIAj1PwooaDYyZCPjf+ZbrJ+ukHzs+ZI6K2DzxFE4pcvXJ/yU4UrPaKLAQ5PsGEfA4
	TScw==
X-Gm-Message-State: APjAAAXPUkz0u4BuTwEW54yoKO8aed9AlxTUT+e7HSdnmPmZLGFt77+c
	R+3pOsuiRa2bldVjJfuioKLQILa+
X-Google-Smtp-Source: APXvYqxe2TIebYz92lxB6swUy8Lu9/HezmiBFpZyq4OrH7OGxHA09ZVqztmZoRK30hIjBQciZn12rQ==
X-Received: by 2002:a63:234c:: with SMTP id u12mr9333541pgm.282.1553263961147; 
	Fri, 22 Mar 2019 07:12:41 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id f14sm9965215pfn.3.2019.03.22.07.12.39
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Mar 2019 07:12:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 22 Mar 2019 07:12:38 -0700
Message-Id: <20190322141238.29336-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] tpm2simulator: replaced by ibmswtpm2
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
X-List-Received-Date: Fri, 22 Mar 2019 14:12:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2simulator/tpm2simulator_138.bb        | 22 -------------------
 1 file changed, 22 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2simulator/tpm2simulator_138.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2simulator/tpm2simulator_138.bb b/meta-tpm/recipes-tpm2/tpm2simulator/tpm2simulator_138.bb
deleted file mode 100644
index 866791c..0000000
--- a/meta-tpm/recipes-tpm2/tpm2simulator/tpm2simulator_138.bb
+++ /dev/null
@@ -1,22 +0,0 @@
-SUMMARY = "TPM 2.0 Simulator Extraction Script"
-LICENSE = "BSD-2-Clause"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=1415f7be284540b81d9d28c67c1a6b8b"
-
-DEPENDS = "python"
-
-SRCREV = "e45324eba268723d39856111e7933c5c76238481"
-SRC_URI = "git://github.com/stwagnr/tpm2simulator.git"
-
-S = "${WORKDIR}/git"
-OECMAKE_SOURCEPATH = "${S}/cmake"
-
-inherit native lib_package cmake
-
-EXTRA_OECMAKE = " \
-	-DCMAKE_BUILD_TYPE=Debug \
-	-DSPEC_VERSION=138 \
-"
-
-do_configure_prepend () {
-	sed -i 's/^SET = False/SET = True/' ${S}/scripts/settings.py 
-}
-- 
2.17.1


