Return-Path: <changhyeok.bae@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F71DE00ACE; Sun, 11 Jun 2017 18:03:19 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB67DE00A9B
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 18:03:17 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id d5so2544777pfe.1
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 18:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=uxZUswIkm/XOZSTx+ZAUPIL+33RnoTzSsj6Bnqx08ew=;
	b=nK0Oi6eQUO91xeS8hmThWFovtVV/COKU/8ekw5EBM7qfr18oey5QQjBWAM44QxyOrv
	5XVtmbKXLcsRpu+1OnOwllxLt8oeMsuWB8wzf/NBJoe3T51216vm8ftxJzoAjmBTpLFI
	epmpsFmOF9IOSvxoaYtzQ9ATntNn/Hl+C+xPEOp/YC6cerV7ndjq46YlpDvqJPlAPiZV
	A95g3oEhew2G0tVu3B+JR0k72vIp8d2R8S9+jEPem1hwzTxJHYjFHgyDq/6/UGwgjIpl
	Zml0EddL/o8BSQMOgbCG2PqTSRDLS9+hSU6lPJTmvg3Udb04FJFaQIIUVQY7z4VvcuaV
	ENqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=uxZUswIkm/XOZSTx+ZAUPIL+33RnoTzSsj6Bnqx08ew=;
	b=BVDDelYl+2ccVNql1DBRI2lI1/zzyLRe6LITFDGu6prrldzGloDBXnrVOIaY+VbLvO
	fJ5/Ol7s/MPlj0z1jSmtHRRUvpVrR8aFDRFOfrtuV4H368zVnLD5GbruZM8UhAaIgY0m
	wfpplFJZHbsJuNW4WtEcZFwjAyHmSJ7xPIrcxNg0kQXf7seDS09Xkq+aw0euRHoZZSuR
	YI+eLQusk61yGjFvkloV3AechWK7Pc/kWJRfa6fx/SH1Xc5jjPxNRaqDFIlNYgo51gTG
	c1b85gln+LR6fHVvNIz1u3S3IiWsdHOHxY/oG1Cd9CjC4gEYCgAh3DWqQI333Nts9HGf
	SN7Q==
X-Gm-Message-State: AODbwcDyHccVoM9gI+BmEwFPgzQyOrCJZuQkBozJFFAJ6m5COitf4BKP
	gS/1WJiuvRoi+fiG
X-Received: by 10.84.196.131 with SMTP id l3mr21368534pld.207.1497229396925;
	Sun, 11 Jun 2017 18:03:16 -0700 (PDT)
Received: from ip-172-31-15-204.ap-northeast-2.compute.internal
	(ec2-13-124-88-129.ap-northeast-2.compute.amazonaws.com.
	[13.124.88.129]) by smtp.gmail.com with ESMTPSA id
	z71sm2943453pfd.45.2017.06.11.18.03.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 11 Jun 2017 18:03:16 -0700 (PDT)
From: Changhyeok Bae <changhyeok.bae@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Jun 2017 01:03:06 +0000
Message-Id: <1497229386-28541-1-git-send-email-changhyeok.bae@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: srifenbark@gmail.com
Subject: [yocto-docs][PATCH] ref-manual: Replace uclibc to musl
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
X-List-Received-Date: Mon, 12 Jun 2017 01:03:19 -0000

uClibc Replaced by musl from Yocto 2.2

Signed-off-by: Changhyeok Bae <changhyeok.bae@gmail.com>
---
 documentation/ref-manual/ref-variables.xml | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index bd9e517..f284e6e 100644
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
+                    "linux-musl-gnueabi" values possible.
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
+                    "linux-musl-gnueabi" values possible.
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


