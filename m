Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8727BE00BBF; Sat,  3 Oct 2015 14:59:36 -0700 (PDT)
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
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 693F2E006D5
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 14:59:32 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so141215556pac.2
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 14:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=4lcQyFpvoGckPTvN3vgI0PnbZzvbFUBksgURf7YQ6sg=;
	b=xbpxm5ptkK1JrdXfYRKFjqIsebEx36GaGX9wZqUpWn1ZGHV2cyFqwicH1AX5BvqCrb
	YQKhcG7vBlhf4EIzYWzrmUMdCJQgMBpf8/QmbmKloRqVhpz98N/GzPvDBDw8XTx8XJvp
	WPXDvWlQTdpsHJ9SmvlVf79rWzWVeR9nKWT0sh0VDvB8ZuSAKjp6+sWaauqhdU9qDCno
	HM4hlrvOC7szWAzzI7YVLv+V1RuyqNTarOwkUSwYYhKFHXzcqOFb1g79HjqufcU0rss4
	BZCylMhMO1DOe8kbcfU5T9IABJPQpIyWFsurOIy/bRQOA69LYSilhGkcfZoDKY8Cv2Vg
	vHog==
X-Received: by 10.69.17.1 with SMTP id ga1mr28881098pbd.163.1443909572333;
	Sat, 03 Oct 2015 14:59:32 -0700 (PDT)
Received: from Pahoa2.mvista.com ([216.9.110.13])
	by smtp.gmail.com with ESMTPSA id
	zn9sm19300346pac.48.2015.10.03.14.59.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 03 Oct 2015 14:59:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  3 Oct 2015 14:59:27 -0700
Message-Id: <1443909569-836-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH 1/3] samhain: update to 4.1.0
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
X-List-Received-Date: Sat, 03 Oct 2015 21:59:36 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../samhain/{samhain-client_4.0.0.bb => samhain-client_4.1.0.bb}      | 0
 .../samhain/{samhain-server_4.0.0.bb => samhain-server_4.1.0.bb}      | 0
 recipes-security/samhain/samhain.inc                                  | 4 ++--
 3 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/samhain/{samhain-client_4.0.0.bb => samhain-client_4.1.0.bb} (100%)
 rename recipes-security/samhain/{samhain-server_4.0.0.bb => samhain-server_4.1.0.bb} (100%)

diff --git a/recipes-security/samhain/samhain-client_4.0.0.bb b/recipes-security/samhain/samhain-client_4.1.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-client_4.0.0.bb
rename to recipes-security/samhain/samhain-client_4.1.0.bb
diff --git a/recipes-security/samhain/samhain-server_4.0.0.bb b/recipes-security/samhain/samhain-server_4.1.0.bb
similarity index 100%
rename from recipes-security/samhain/samhain-server_4.0.0.bb
rename to recipes-security/samhain/samhain-server_4.1.0.bb
diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index e33182f..b73a3a2 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -9,8 +9,8 @@ SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
 	   file://${INITSCRIPT_NAME}.default \
 	  "
 
-SRC_URI[md5sum] = "2144383cc5452b9b80c7e4e4c991ad4a"
-SRC_URI[sha256sum] = "5a841708f78c6d9b4731970fa39151dff366885de08ecddc382e8c45a2c1b4e2"
+SRC_URI[md5sum] = "fcb59c6c8a1d30cc6ffc21557a0046d3"
+SRC_URI[sha256sum] = "a8e10454782a7f3bb5f709dd05cee695ffbd052afc709668a3e7c4b629771189"
 
 S = "${WORKDIR}/samhain-${PV}"
 
-- 
2.3.5


