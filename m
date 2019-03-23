Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A19CAE00D31; Sat, 23 Mar 2019 08:19:14 -0700 (PDT)
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
	*      [209.85.215.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
	[209.85.215.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20CF1E00CE4
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 08:19:14 -0700 (PDT)
Received: by mail-pg1-f194.google.com with SMTP id a22so3468604pgg.13
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 08:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=xVNEyIRMvlV2OTmXXmHVtCcHzzmFpKUhOeZSZycbwMU=;
	b=NJRZQ76aUjdKrAT7eApv9n3p0EqYJyXDfwHmRTdNQPVxgpAUfrvNM2DucsqjON4aIl
	XsAvtjCy/GmRaD3xkiKDIFMRHGw9QYo6mv0NEoYDNm9RY3JaRzAPebKQySOWyOYv0RRc
	UDbTvFa1HqyiSib2CX/pPsfmFUPnVAwyr6V51IFD7KV7N/oQS59ZZNclRKogYWjJNe34
	Y+iHTmKXvzU4YabRNvqB0LL/kOasHeTSAE3edCMPOEEr9h5E8nAxNodabrWlPyTP3sSb
	JieU4XYCB2YBEUH44QI0JgXL95pRz9dvnQ89Q0l5b9mne/hbe3u/yE6ZkLMmMNgacS+r
	e67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=xVNEyIRMvlV2OTmXXmHVtCcHzzmFpKUhOeZSZycbwMU=;
	b=fcEn2kp7tY/3D3htOuOnlUbHcdtcNMkN2OOpavQ2IUnNyGD5l0G5nt/slY7CmJHYUs
	vKNS3mitYxlYly9pF34knSLFNbkfcV3hnQVlIlK6LWdZD7wrIaRb2Nntc60yPo8lyHKa
	eqw2BokyfMmx7k8mPSFxJHlcBIDUsOe62j+1mhqlB6Az31Y9nNAcoMwGt+LfUqPVhxLE
	LwnND1b3gJh+CSue5VPNAPxjWb10hgNuXLoMvXpgYFYO9cARUUFt2KVcWo8TpnAlrerg
	ZkEeX/nmttWPR4jJzHe9OcffB664w9QEq9g2BeeaerswbrpX7BgJK8outlGLCMJmyi48
	vW0w==
X-Gm-Message-State: APjAAAUubcKx8S0Jj7Ybp46TXCOz+oUd64O6XYd0Y7JZLL2sHdGxw+nh
	mRBFLxwRdpD8NZJNO5IhhY6cfFDV
X-Google-Smtp-Source: APXvYqxBnFpMkGzrTvmt1m+G6D2rtFGQa9B10Zn7suMcQvmv84rSV5PLaTOfVes3Mve0X2cDbSOsMg==
X-Received: by 2002:a63:e402:: with SMTP id a2mr5334745pgi.268.1553354353655; 
	Sat, 23 Mar 2019 08:19:13 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	v19sm10699215pfa.138.2019.03.23.08.19.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Mar 2019 08:19:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Mar 2019 08:19:10 -0700
Message-Id: <20190323151910.14912-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190323151910.14912-1-akuster808@gmail.com>
References: <20190323151910.14912-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] meta-tpm: add maintainers file
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
X-List-Received-Date: Sat, 23 Mar 2019 15:19:14 -0000

This simples checking package updates

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/conf/distro/include/maintainers.inc | 39 ++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 meta-tpm/conf/distro/include/maintainers.inc

diff --git a/meta-tpm/conf/distro/include/maintainers.inc b/meta-tpm/conf/distro/include/maintainers.inc
new file mode 100644
index 0000000..74c1a18
--- /dev/null
+++ b/meta-tpm/conf/distro/include/maintainers.inc
@@ -0,0 +1,39 @@
+# meta-tpm Maintainers File
+#
+# This file contains a list of recipe maintainers.
+#
+# Please submit any patches against recipes in meta to the 
+# Yocto mail list (yocto@yoctoproject.org)
+#
+# If you have problems with or questions about a particular recipe, feel
+# free to contact the maintainer directly (cc:ing the appropriate mailing list
+# puts it in the archive and helps other people who might have the same
+# questions in the future), but please try to do the following first:
+#
+#  - look in the Yocto Project Bugzilla
+#    (http://bugzilla.yoctoproject.org/) to see if a problem has
+#    already been reported
+#
+# The format is as a bitbake variable override for each recipe
+#
+#	RECIPE_MAINTAINER_pn-<recipe name> = "Full Name <address@domain>"
+#
+# Please keep this list in alphabetical order.
+RECIPE_MAINTAINER_pn-aircrack-ng = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-pcr-extend = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm-quote-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libtpm = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-trousers = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-swtpm = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-openssl-tpm-engine = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-abrmd = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-totp = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-tcti-uefi = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-tss-engine = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-pkcs11 = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-tss = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-cryptsetup-tpm-incubator = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tpm2-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-ibmswtpm2 = "Armin Kuster <akuster808@gmail.com>"
+
-- 
2.17.1


