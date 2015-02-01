Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F102E00717; Sun,  1 Feb 2015 13:46:40 -0800 (PST)
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
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 455F3E00596
	for <yocto@yoctoproject.org>; Sun,  1 Feb 2015 13:46:32 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id ey11so74162734pad.7
	for <yocto@yoctoproject.org>; Sun, 01 Feb 2015 13:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=x/WM05vq5eojuSSDCk3Vhxs16yrivrE7WW5lmEJugvU=;
	b=aiQ8pvT1ScgewLCF5TYkBwkZFzyRRy4Gw2rYJQcekZpcvASnJbEGibDyd2w2pqrFTL
	VSkVCs/KxtEjqgaAcNg8gPQ4UGJatK19OP/SwLcAgisU3pc+25EnjTwGIswYlI2nMa8C
	+2VbtBbNYn5xB/zrWUPVcOevUasULlVzgjoogY5SAUjjP8O/7woq4zVQ01UIMQXglZmT
	9SN1+9MpZNMPYlvgDh6wMaqtIDM3jLeKoMS1AS99ncFcjjoUz5HtUkDKEBIRIs9LGPPX
	8woBeO6FApwmvjdaNith7w1H84cPOHZ1xMjxTk3wRUexaK6BTYrFK/r1hocxrGqBqshI
	XImw==
X-Received: by 10.70.132.129 with SMTP id ou1mr24772209pdb.11.1422827192163;
	Sun, 01 Feb 2015 13:46:32 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id p2sm4459534pdm.57.2015.02.01.13.46.30
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Feb 2015 13:46:31 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  1 Feb 2015 13:46:24 -0800
Message-Id: <1422827185-28563-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/2] libseccomp: add COMPATIBLE_HOST
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
X-List-Received-Date: Sun, 01 Feb 2015 21:46:40 -0000

don't build for ppc, ppc64, mips or aarch64

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_2.1.1.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
index f15c6b0..2d93479 100644
--- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
@@ -27,6 +27,9 @@ do_install() {
     oe_runmake  DESTDIR=${D} install-tests
 }
 
+# MIPS, aarch64, and PowerPC are not supported in this version.
+COMPATIBLE_HOST = '(x86_64|i.86|arm).*-linux'
+
 PACKAGES += "${PN}-tests "
 FILES_${PN}-tests = "${libdir}/${BPN}/tests/*"
 FILES_${PN}-dbg += "${libdir}/${BPN}/tests/.debug/*"
-- 
1.9.1


