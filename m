Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0C40E00563; Tue, 19 Aug 2014 11:21:33 -0700 (PDT)
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
	*      [209.85.220.41 listed in list.dnswl.org]
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4468E004F5
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 11:21:24 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id rd3so10487328pab.28
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 11:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=iCKZk6Lqm3fMDbxlToAw6tHYCuNJBn8Wr7JkRfsbgWc=;
	b=N7QyJj7U9kCg80PuMPRKvhqWum6YUcTQocGF9ckd7CBXmeSpBjkmqaXlWoPpbxzeNf
	qCiCOHzS4P1XD1XC2uT6gK0u3ufbyJpZ1gusPV0jJL14IJ1q6F2X+MNxjrSGFWcNv8Jp
	CuFvHUSm4MzBgNmG/VJcmeyA3ftyisL8HOIV9O/L8s4B1N4TTTHc6MzGymY6Phn5H1Tp
	n/QuW2iLQNCTUs2eNNOdXw6u7dToygnI7pTfUtzob3mROxHNFOXZDVX4HiX7AW++WcMT
	Ggk4CCYvLU5TuKMfbVLa6FJnSeGNtFApniGg7hHRQx1clfAnmEZfH3GW3qrnFcRsc6MI
	UgQg==
X-Received: by 10.68.68.162 with SMTP id x2mr43262809pbt.84.1408472480893;
	Tue, 19 Aug 2014 11:21:20 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	wc3sm71649911pac.18.2014.08.19.11.21.18 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 19 Aug 2014 11:21:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 19 Aug 2014 11:21:16 -0700
Message-Id: <1408472476-24502-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] samhain: arm build failure
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
X-List-Received-Date: Tue, 19 Aug 2014 18:21:34 -0000

| x_sh_error.c: In function 'sh_error_string':
| x_sh_error.c:1580:31: error: incompatible type for argument 1 of 'memmove'
|  #define VA_COPY(ap1, ap2)     memmove ((ap1), (ap2), sizeof (va_list))
|                                ^
| x_sh_error.c:1720:14: note: in expansion of macro 'VA_COPY'
|        /*@i@*/VA_COPY(vl2, vl);
|               ^

this patch fixes the arm build failure.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain.inc | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
index d6f9f82..772aa7b 100644
--- a/recipes-security/samhain/samhain.inc
+++ b/recipes-security/samhain/samhain.inc
@@ -37,6 +37,10 @@ do_unpack_extra () {
 }
 addtask unpack_extra after do_unpack before do_patch
 
+do_configure_prepend_arm() {
+    export sh_cv___va_copy=yes
+}
+
 # If we use oe_runconf in do_configure() it will by default
 # use the prefix --oldincludedir=/usr/include which is not
 # recognized by Samhain's configure script and would invariably
-- 
1.9.1


