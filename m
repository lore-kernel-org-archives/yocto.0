Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97F97E00E7D; Thu,  8 Feb 2018 04:19:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [111.93.218.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8309EE00E43
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 04:19:48 -0800 (PST)
Received: by mail-pl0-f66.google.com with SMTP id t4-v6so1996720plo.0
	for <yocto@yoctoproject.org>; Thu, 08 Feb 2018 04:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=czJffS5CHQ/Y3OTxiiKOaCWb7aGKTNCh6vDlfTtmY50=;
	b=dKOG4ucwvU1qhW8TOjOOtdeewsHqVp/aGm/RZXmYX4v/zac5AhY/voMKt8TD4ZVhJc
	C1qgdSO62sYhsV+NhW8U6PellI/EAnF2N7NMwU0CE//a1N3a4RhpKhncmzuJt0iQa/zE
	hzKYaGf1/6DShwxVB+RcCaOgt92QK5EPd2TmmZqt/2wo89xPyGWuZ8pHULmDz/Q2O2ye
	Pn5ievz9q8CmKMbxfVMZ5bGpmejqPKRdS/BTlC6uRJ9tdPeKXmQ14lMiNJ8yoIy+dAoy
	zQuv7WDEbkicZJxfq5NYqn+l9CWYmz9BwHHgtLWaUKCE5k1wNitqgdSBDjhq5gWec1Og
	bN3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=czJffS5CHQ/Y3OTxiiKOaCWb7aGKTNCh6vDlfTtmY50=;
	b=FS09U5SkBby99Za8dvL6VfgRLXvejvWV4SXotjJmlEC7zGKJ29abFzvW3AvFIRPOAI
	2FYon0uS3Ar7RW9pWYo/MTtbdcwOw1UoGX0EubUVXobt2VamKOKkTTtqAtMeAJRw+l04
	RjL35gYG1GvP0Qg/dmQFvs3GzQwmVJgNpXwxf249rO7O2oz4FqPRtEI5bxx7KQZgjxEL
	7gOgttgnM5w4qMApkWuYFw0Us6ZbZM0LHMk3Z33snvEtj46JOH72KA/Chatalp9S/ZKu
	HBlBTWdpOQ1YzQlUxo8O1KCTXTD5vasV9QkEIULNOsyyc68pDNu6C/dkycQKhKgXlbWq
	LjZA==
X-Gm-Message-State: APf1xPB81ZzBaMrCjXeOlhhUn5OTbi6J7Tm0cAb19r6QGtDWkLsYTM7j
	Ds7Ns1w7ji7ePr0rsPcnCSpbjQ78
X-Google-Smtp-Source: AH8x225nPiPdbSQI5DisKwQaJgd+Q5DXCyhe/jCIUwNzZwG81S9pvtJlKdqW4ba+ezMOLymbD9uoiQ==
X-Received: by 2002:a17:902:7e43:: with SMTP id
	a3-v6mr507576pln.138.1518092387893; 
	Thu, 08 Feb 2018 04:19:47 -0800 (PST)
Received: from jkrishnanjanappa-desktop.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id
	o62sm10530470pfk.177.2018.02.08.04.19.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 Feb 2018 04:19:47 -0800 (PST)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Feb 2018 17:49:42 +0530
Message-Id: <20180208121942.31111-1-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.11.1
Subject: [meta-security][rocko][master][PATCH] trousers: fix to ship leftover files into packages
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
X-List-Received-Date: Thu, 08 Feb 2018 12:19:49 -0000

While building <mlib>-trousers recipe, the below files are
not shipped but has been installed. The patch packages them
accordingly.

-- snip --
WARNING: lib32-trousers-0.3.14+gitAUTOINC+4b9a70d578-r0 do_package: QA Issue: lib32-trousers: Files/directories were installed but not shipped in any package:
  /usr/src
  /usr/src/debug
  /usr/src/debug/lib32-trousers
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src/tcs
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src/trspi
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src/tcsd
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src/tspi
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src/include
  /usr/src/debug/lib32-trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/git/src/tddl
-- snip --

Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
---
 meta-tpm/recipes-tpm/trousers/trousers_git.bb | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index e9f838e..fe8f557 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -67,10 +67,10 @@ FILES_libtspi = " \
 	"
 FILES_libtspi-dbg = " \
 	${libdir}/.debug \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tspi \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/trspi \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/include/*.h \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/include/tss \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tspi \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/trspi \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/include/*.h \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/include/tss \
 	"
 FILES_libtspi-dev = " \
 	${includedir} \
@@ -93,11 +93,11 @@ FILES_${PN}-dev += "${libdir}/trousers"
 
 FILES_${PN}-dbg = " \
 	${sbindir}/.debug \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tcs \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tcsd \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/tddl \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/trousers \
-	${prefix}/src/debug/${BPN}/${PV}-${PR}/git/src/include/trousers \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tcs \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tcsd \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/tddl \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/trousers \
+	${prefix}/src/debug/${PN}/${PV}-${PR}/git/src/include/trousers \
 	"
 FILES_${PN}-doc = " \
 	${mandir}/man5 \
-- 
2.11.1


