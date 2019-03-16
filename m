Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AEDBE00D30; Sat, 16 Mar 2019 04:16:07 -0700 (PDT)
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
	*      [209.85.210.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9D3E00CD5
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 04:16:06 -0700 (PDT)
Received: by mail-pf1-f194.google.com with SMTP id i20so8107513pfo.6
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2019 04:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=X2C4CUslyoAd0HZjYUNMV+WhcRR/2m4cJwY8pd5R42A=;
	b=EhOvkWlezCwPMg7WoQr6tqCuUhwga+D6XdyIzF0EHh5h5rySRgcGcVyQn5rDWAIL6H
	PkOkQkUXM4YhISml6nxZ9ZVsJ3pMOQGy5/fs3wU/WRhmjIy+MME3MmzBMZqX3CPcKoJn
	i1qWeUrw5fr9+1t86r3TV2o82pksCVrxffTz4VKJGgvyZS2nflVNoWJsRebb3oDHa+zt
	e/gY0C0VIY2QtKlBXAm6CDzMbmmcTHgyREgv9g/x5zNDSYdivxbM1t2AbEOh2hmGDzQd
	lDexwmoyP4k0fyYhocpsbTGirPkgcoBW9un4DgVJAShz3fMhi0xzh8jmYMk8IevexRd7
	E5yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=X2C4CUslyoAd0HZjYUNMV+WhcRR/2m4cJwY8pd5R42A=;
	b=kQZ0Zj6b9pO6+sUxvBaY2gUECQl53NL7pxKeJoYKZsp1k7az/gAPi5q0kJU1ZuMx/0
	lZ1+WbhonKkwH4lbcAff/6k25IMt79HH3+DkFh+NYtbVEhOoIoJF1QLS9bWNapvXtZA1
	JLjYtUzlPuAMDTMJd6pkUrSYPgLTHxULk335PEoHb+1Rmj4Xm4ZjselWQFLNshxO+DOW
	rKa8RvbsEjZKfsN4P5EiATDR/KST8Km2bmjASNTKSLMrVlTwy7QkOWlm9u7IPL0VHuhJ
	qguO8UKnc4VjSI16nubJtMZlTzjLaPbU3gCznNgQOnAecdYFntKMSA2h8ffGevtunV7A
	JJ5A==
X-Gm-Message-State: APjAAAUokdQ2BPAeOBUNVqX3jlK53vr795piWh8NeUz3imNn0ST2RmEG
	iNwFeM6XHw7/sOCwLzGN28c7nZ+W
X-Google-Smtp-Source: APXvYqysMFdLq0e9FxZCIqwI57cOH/Z/q3YS54ZgdlROBVHfDzl50i+qIclr7CFEcZC2ntVPT0N9NQ==
X-Received: by 2002:a63:af06:: with SMTP id w6mr45552pge.338.1552734966195;
	Sat, 16 Mar 2019 04:16:06 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u11sm5653639pfh.23.2019.03.16.04.16.05 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 16 Mar 2019 04:16:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 16 Mar 2019 04:16:04 -0700
Message-Id: <20190316111604.22951-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] maintainers: add inc file to work with current schema
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
X-List-Received-Date: Sat, 16 Mar 2019 11:16:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/distro/include/maintainers.inc | 59 +++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 conf/distro/include/maintainers.inc

diff --git a/conf/distro/include/maintainers.inc b/conf/distro/include/maintainers.inc
new file mode 100644
index 0000000..94b45f2
--- /dev/null
+++ b/conf/distro/include/maintainers.inc
@@ -0,0 +1,59 @@
+# meta-securiyt Maintainers File
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
+RECIPE_MAINTAINER_pn-apparmor = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-bastille = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-buck-security = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-ccs-tools = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-checksec = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-checksecurity = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-clamav = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-ding-libs = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-ecryptfs-utils = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-fscryptctl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-google-authenticator-libpam = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-hash-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-isic = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-keyutils = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libaes-siv = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libenv-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libgssglue = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libhtp = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libmhash = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libmspack = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-lib-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libseccomp = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-libwhisker2-perl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-ncrack = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-nikto = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-paxctl = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-python3-fail2ban = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-python3-scapy = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-python-fail2ban = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-python-scapy = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-redhat-security = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-samhain = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-smack = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-sssd = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-suricata = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-tripwire = "Armin Kuster <akuster808@gmail.com>"
+RECIPE_MAINTAINER_pn-xmlsec1 = "Armin Kuster <akuster808@gmail.com>"
-- 
2.17.1


