Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76887E00B97; Sun, 11 Jun 2017 21:08:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (changhyeok.bae[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1995FE00B57
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 21:08:04 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id f127so13151202pgc.2
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 21:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=2dSrq3u0Zv/9BmgGndWXPXUK4oSW9BHmkfZztw8dqaA=;
	b=JUVj070+l6IFv5e+iAOMZLZ0eL7rdryh3kI2bQ+P6iz5coOcIQxFHRetTEsy2bmpUk
	60/+qxfYfcZrevmEO4FQ9zKPxX3R0c7r2knZ6oGyE+V3rYdTuEx5p+p8kjBNyDGmlR3p
	o5lbAyHbSIASMErHg5bUPeAR3X3o0CI5Fm1tih6Elf7jIho+vg7y3E1BNuqs5nPdI0WV
	e9VEQtAFCU5BSl1EJQ5PqzGTXrIIq4wB5Xq2Ecv034rUZLpquG5/jQ3s5foghLOtU+o9
	N9YPtULkPIpj8VBSUTA9m9jSLaxSX5QVMsq9tc4ROTyOysZxAuyUJiidC3YqADz2qJHU
	Zmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2dSrq3u0Zv/9BmgGndWXPXUK4oSW9BHmkfZztw8dqaA=;
	b=RWC7GriJpcoRdnlC2B2nKIFw1oHp2dMm6peZtHMrCyt3uuV+a1fbscaHRWlAJ4TysQ
	QAPMlLpFMwZBWJs+TUIYfGeFoCZnnKeudyvb9hkr2m5qcyKPLd8d2+qPSH9L4i1qbruv
	4SJYKuXy85EljWbKt99MGnypJ6yAcve7Dvcxc2SC1V0kMq9xFqehWi1DsKF6APAjPZf5
	OujgdTgXjJl01XxfcFcXYlOG/uNgF6nVSubyUugxVxoYfCAmLfVMF3ENf+ThXvANEwki
	VRcwi2ocNKxLLiBc3d6DqqLgXSLeP3TXMDpzbbwJApXM1IelLl5y7Jc61yrRi9cR2cMl
	AgxQ==
X-Gm-Message-State: AODbwcCoY1SIz++fbBHokS4sQpWAIIl/Gisr3aKdRMyuj2/PWJJqRqcK
	AnB8Ms/7woFzDYAX
X-Received: by 10.84.225.146 with SMTP id u18mr54407565plj.264.1497240483787; 
	Sun, 11 Jun 2017 21:08:03 -0700 (PDT)
Received: from ip-172-31-15-204.ap-northeast-2.compute.internal
	(ec2-13-124-88-129.ap-northeast-2.compute.amazonaws.com.
	[13.124.88.129]) by smtp.gmail.com with ESMTPSA id
	l85sm14997737pfj.130.2017.06.11.21.08.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 11 Jun 2017 21:08:03 -0700 (PDT)
From: Changhyeok Bae <changhyeok.bae@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Jun 2017 04:07:55 +0000
Message-Id: <1497240475-2957-1-git-send-email-changhyeok.bae@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: srifenbark@gmail.com
Subject: [yocto-docs][PATCH v2] ref-manual: Replace uclibc to musl
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
X-List-Received-Date: Mon, 12 Jun 2017 04:08:19 -0000

uClibc Replaced by musl from Yocto 2.2

Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
---
 documentation/ref-manual/ref-variables.xml | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index bd9e517..0967e40 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -5131,9 +5131,9 @@
                     is normally the same as the
                     <link linkend='var-TARGET_OS'><filename>TARGET_OS</filename></link>.
                     The variable can be set to "linux" for <filename>glibc</filename>-based systems and
-                    to "linux-uclibc" for <filename>uclibc</filename>.
+                    to "linux-musl" for <filename>musl</filename>.
                     For ARM/EABI targets, there are also "linux-gnueabi" and
-                    "linux-uclibc-gnueabi" values possible.
+                    "linux-musleabi" values possible.
                 </para>
             </glossdef>
         </glossentry>
@@ -14152,9 +14152,9 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
 <!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
                     Specifies the target's operating system.
                     The variable can be set to "linux" for <filename>glibc</filename>-based systems and
-                    to "linux-uclibc" for <filename>uclibc</filename>.
+                    to "linux-musl" for <filename>musl</filename>.
                     For ARM/EABI targets, there are also "linux-gnueabi" and
-                    "linux-uclibc-gnueabi" values possible.
+                    "linux-musleabi" values possible.
                 </para>
             </glossdef>
         </glossentry>
@@ -14283,7 +14283,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
 
         <glossentry id='var-TCLIBC'><glossterm>TCLIBC</glossterm>
             <info>
-                TCLIBC[doc] = "Specifies GNU standard C library (libc) variant to use during the build process. You can select 'glibc' or 'uclibc'."
+                TCLIBC[doc] = "Specifies GNU standard C library (libc) variant to use during the build process. You can select 'glibc' or 'musl'."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
@@ -14295,7 +14295,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 </para>
 
                 <para>
-                    You can select "glibc" or "uclibc".
+                    You can select "glibc" or "musl".
                 </para>
             </glossdef>
         </glossentry>
@@ -14334,7 +14334,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     <link linkend='var-TCLIBC'><filename>TCLIBC</filename></link>,
                     which controls the variant of the GNU standard C library
                     (<filename>libc</filename>) used during the build process:
-                    <filename>glibc</filename> or <filename>uclibc</filename>.
+                    <filename>glibc</filename> or <filename>musl</filename>.
                 </para>
 
                 <para>
-- 
2.7.4


