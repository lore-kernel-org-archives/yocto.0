Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA8FEE00C19; Fri,  7 Oct 2016 09:23:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD24E0080A
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 09:23:06 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i85so3083595pfa.0
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 09:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=yH3abLbJeHOrniBOJUrBO80ljyhLOj1QRQFzb1TGeXU=;
	b=ogJcfGnQKZh3Wj6ezRruLLRBwDjbHSlDkAcHX3ojYcH3tNfLdO5kM7wOKpjfumQvGX
	fLRi+15ByM6+wln1R00F00JgYFvMZI9hjvlKXPVgC7vBHEXI5AII0cj9VyfRvGXTt08H
	lie6ZKiPUPuNVS4RsmxaLpEGn8hNpjadAy+qNNqAEwXVKv122xLO6tCyRYfX2THcEKs+
	0OFUI4VrJN6Kl9X56+T2wd1UcqBAFW3E+fsRj3QPpdh6coiFoO4L5cQ7z1hK9AGEaLJe
	Aa6ZdR+6PjiQssK2oS535nJ9nYvJ99u/EL2p+RfqTt4qkVA4qV2Dsp7bPmppDoqrEdMe
	5Snw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=yH3abLbJeHOrniBOJUrBO80ljyhLOj1QRQFzb1TGeXU=;
	b=W3fKNrh7TQGjblwjf/Vxn0ZPYuL2Ynh0F9hvO/CBYg3r4u3+nywXy1u2R1YzgDoTLk
	lBnLaUzB4xHulxt7rO8OMj2oyw/3+9fMG+RYbhMggsqnMo1jimHmGAz0TWQmotvuZgd+
	e1wdjK/gEF4XPtQAO5jz/c8KjE+pXsRnv2pXRk8PF1jbDKejYh7IOvfjwsrS5dZnekrh
	UnxMiTeucaCxebYUQFOOyU44004r/6WJD2xPhy/VD6NzkBgctn7zN+HxJO8rWpqGi2ln
	fQge3IBcEHcFdeO1A6qvnKsxX/odpvi+wREQwKFg1c7hz8ccJUXZkEdEEHdndnZPiOg/
	GZUQ==
X-Gm-Message-State: AA6/9RnmE6Qh7dYHEM39rXX1rloKYZgOpWcO9PQrMJE/oe5Yg17VlGRSoK8lo14YuAwO3A==
X-Received: by 10.98.105.130 with SMTP id e124mr17511833pfc.27.1475857386081; 
	Fri, 07 Oct 2016 09:23:06 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e83c:6ab5:5501:7010])
	by smtp.gmail.com with ESMTPSA id
	i8sm32190074paw.25.2016.10.07.09.23.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 07 Oct 2016 09:23:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Oct 2016 09:23:03 -0700
Message-Id: <1475857383-3308-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
Subject: [meta-security][PATCH] sleuthkit: fix No GNU_HASH in the elf binary
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
X-List-Received-Date: Fri, 07 Oct 2016 16:23:09 -0000

From: Armin Kuster <akuster@mvista.com>

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-forensic/sleuth/sleuthkit_4.1.3.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
index 4b82616..4d40586 100644
--- a/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
+++ b/recipes-forensic/sleuth/sleuthkit_4.1.3.bb
@@ -26,3 +26,5 @@ EXTRA_OECONF += "--enable-static=no --disable-java LIBS='-L${STAGING_LIBDIR}' LD
 FILES_${PN} += " ${datadir}/tsk"
 
 RDEPENDS_${PN} += " perl"
+
+INSANE_SKIP_${PN} = "ldflags"
-- 
2.3.5


