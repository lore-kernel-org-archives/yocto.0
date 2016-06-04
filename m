Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EAD2E00C5D; Sat,  4 Jun 2016 16:15:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD0FCE00C37
	for <yocto@yoctoproject.org>; Sat,  4 Jun 2016 16:15:32 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id 62so14692919pfd.3
	for <yocto@yoctoproject.org>; Sat, 04 Jun 2016 16:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=COf+a5mXZ4ycfViJg9ZJ56MXKx7r9gyyyihjV1U4eBw=;
	b=z14dbGnTbI8Oja9IEFDawHMiIFLrMcC24LDTHpBN1oR5rIEXrgPlr7kFxJ7YUpR1Ow
	qhXLrdDk4fUFattjE4ImAiJCnTuB3aESjidj5bTZoxOQkDGChhLRPBwLxIHrcnHy8jtL
	oW0io+mUKzrm/W+cZENCXUvTqc3qHh3y9ctni4F+AbKFQphwuNBhEhsORkMiNcWoCabD
	bkdC4NRQPT7FkR/9MD/K3djZ8/QTZpn45CnKWvOIXBfwyWUtutOLsoJu4JV+h1H9U7fP
	OCToUOBFJQrhwuNlUQIQoN8sqwlkgMwZg7GTVHpF+hewOZ+ewVqFGdlnEVpi+EGIsDL/
	ophw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=COf+a5mXZ4ycfViJg9ZJ56MXKx7r9gyyyihjV1U4eBw=;
	b=ECFZu6f8Gk87iNDyux0zfqwfWDubVeO5gQ+XCuoljblscMBRtqskQTD9V8Y7PIMSNv
	LBueRgel8+AYObDyL1QR+l9TkcSk7mYbc96GNlAgth8ZMirPTX27bM6+5XyThSAAZ3ed
	sxs2VFI+L3dC6aB9pNUVGtkVpIJ9omynSG0p8TBG+uT50+jRpYI7UWUpt5FKUpJ/mF4k
	ngUz+14201UEmJ3mWiv5w+SpEDp7YepD20z34vrid1GNA09CqAh1QzW9QKz+AcwPI5vH
	eXT8iTE2Y3SilDNnrxQkC/ajJ7HGWCeAzMiLcK7+VOrypNuhkp+fmmI4rWrLyYTZNfOA
	uqug==
X-Gm-Message-State: ALyK8tIxLN3M4OTE1A1m+fvPz61pi01htPOC/CfgcOj7xuINMJx/wxs1AauolDfyDHJ6dQ==
X-Received: by 10.98.43.209 with SMTP id r200mr15368166pfr.24.1465082131990;
	Sat, 04 Jun 2016 16:15:31 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	dr4sm15084273pac.11.2016.06.04.16.15.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 04 Jun 2016 16:15:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  4 Jun 2016 16:15:24 -0700
Message-Id: <1465082124-28161-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1465082124-28161-1-git-send-email-akuster808@gmail.com>
References: <1465082124-28161-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] samhain: update to 4.1.4
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
X-List-Received-Date: Sat, 04 Jun 2016 23:15:34 -0000

4.1.4:
  - Fix for issues with re-evaluation of paths with wildcard patterns:
        - no re-evaluation if no match at process startup
        - if same pattern used for a file=.. and dir=.. directive, only
          one (the first in config file) is re-evaluated

  - Fix for issues with new directories created when inotify is used:
        - recursion depth is not properly set for new directory
        - directory gets watched even if recursion depth should be below zero

4.1.3:
  - Fix for a regression in DNS resolving if samhain is compiled
    with '--enable-static'

  - On Cygwin/Windows, the default for the 'AvoidBlock' option is now 'off'
    because of problems reported for this platform.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-client_4.1.2.bb => samhain-client_4.1.4.bb}      | 0
 .../samhain/{samhain-server_4.1.2.bb => samhain-server_4.1.4.bb}      | 0
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.1.2.bb => samhain-client_4.1.4.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.1.2.bb => samhain-server_4.1.4.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.1.2.bb b/recipes-security/samhain/samhain-client_4.1.4.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.1.2.bb
rename to recipes-security/samhain/samhain-client_4.1.4.bb
diff --git a/recipes-security/samhain/samhain-server_4.1.2.bb b/recipes-security/samhain/samhain-server_4.1.4.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.1.2.bb
rename to recipes-security/samhain/samhain-server_4.1.4.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index 5c0142b..907f431 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "9112612fe569a0c92c7479ed2ef3b6f0"
-SRC_URI[sha256sum] = "bb32321b3dc8450351d99e90d25182a029bef1e46b9a0439ade1ca0a744eadb8"
+SRC_URI[md5sum] = "1ab697b7000d0a272d9ade05bb1bc6e0"
+SRC_URI[sha256sum] = "32ee7477af11d9f2f64f30b9cb316c351897c1c994c7b98b0ef17fc0ca5e1d1a"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
1.9.1


