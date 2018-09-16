Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EF63E00C52; Sun, 16 Sep 2018 08:57:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A385E00B18
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:49 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id s13-v6so6407402pfi.7
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 08:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=EyEjX9M9+voSqct4paI03Xg+4Mi/u1jK5h2fSGBTc8k=;
	b=MHxeHZauD91CFZM8uqQDZFGhmfIIBbjxDKOJKF5p4q/pMYiWwWBXo2ieZn7ygHEAgT
	/MOfeYYjIwQVXZCB3KDTZLcnXX/rT8XB+OcCpu0fmwPTVkL/jt52aZXYIebH1Ca09sXN
	2AbcEX2IFkxTCqWdENUTJ9ZYmicBH+CK9ly3MidFJZk/3oc/N3gCLQTGmyBZkJ1xft02
	vT6mKDWW9CrPdWBfdCOApI+2nMJ4c0huOgCpKo2DYPwE+RLknogTdLMwwBNw43gG/CZb
	mNvprhvJrPXmD/2NrOuID/Zaz13zwaT9ngk2jUBKmWf2nN1q9/ZANhF9UPUBWEGAj6xa
	WRSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=EyEjX9M9+voSqct4paI03Xg+4Mi/u1jK5h2fSGBTc8k=;
	b=thH7SKMs4ogyyE0V97II6eCHpOQP8srkkXX6rHiUGE892fSbDqs6os+xGFwjQGzMby
	f/uL9DB7IR5KUsaSzGgZN3Khfs/6NNo3pUzYHhDa8tCt/l4ynEjHzz7yF5TvooudDXzj
	MBVxh8x7PQICGEJTwFyhwS3kcf+1jrlcrldhwJ7/GeyVVE2UXGTR3+VqVz5xHAa/rhK9
	899QcJ7hdfmz9Sw9P/XMahrCInJ3589sk9CjRM5aZ6X12LPA2ncr9nmkTbkVMush+Wgk
	K+aPtcEnTbz14EFs3yYkkHT/dcVZPL0QLewdR/HA0hDKFy0ixp+5kUKrBZbqzmAYM8RB
	SANA==
X-Gm-Message-State: APzg51DFjP1LhaIp1DNDjGjSV1kcPZEmx7kCvASCV/kVa3c9XDkAZ8qB
	7zaHRiObcAep27tc2ND32Cv9bKiA
X-Google-Smtp-Source: ANB0VdZUQD9CvY1H7O+tHnx9mGgdroccfgxRa50x0wPV9lw1e9JJCFy9KxMBy5uufBJjwV03oCojFA==
X-Received: by 2002:a62:384a:: with SMTP id
	f71-v6mr22119879pfa.48.1537113468778; 
	Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	f13-v6sm14192326pgs.92.2018.09.16.08.57.47
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Sep 2018 08:57:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 08:57:16 -0700
Message-Id: <20180916155719.9911-22-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20180916155719.9911-1-akuster808@gmail.com>
References: <20180916155719.9911-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 22/25] swtpm: update to tip for openssl 1.1 support
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
X-List-Received-Date: Sun, 16 Sep 2018 15:57:54 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
index 7476020..e0c5ffe 100644
--- a/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -8,9 +8,8 @@ DEPENDS = "libtasn1 expect socat glib-2.0 libtpm libtpm-native"
 # configure checks for the tools already during compilation and
 # then swtpm_setup needs them at runtime
 DEPENDS += "tpm-tools-native expect-native socat-native"
-RDEPENDS_${PN} += "tpm-tools"
 
-SRCREV = "4f4f2f0a7e3195f6df8d235d58630a08e69403d8"
+SRCREV = "66b42f52ef363998cb57f039889d59381d20bdf1"
 SRC_URI = "git://github.com/stefanberger/swtpm.git \
            file://fix_lib_search_path.patch \
            file://fix_fcntl_h.patch \
@@ -59,3 +58,5 @@ python() {
         'filesystems-layer' not in d.getVar('BBFILE_COLLECTIONS').split():
         raise bb.parse.SkipRecipe('Cuse enabled which requires meta-filesystems to be present.')
 }
+
+RDEPENDS_${PN} += "tpm-tools"
-- 
2.17.1


