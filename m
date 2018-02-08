Return-Path: <jkrishnanjanappa@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05592E00E43; Thu,  8 Feb 2018 04:19:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [111.93.218.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7903E0085E
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 04:19:00 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id z79so1661932pff.13
	for <yocto@yoctoproject.org>; Thu, 08 Feb 2018 04:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=czJffS5CHQ/Y3OTxiiKOaCWb7aGKTNCh6vDlfTtmY50=;
	b=hZge0n6BjLqtqWGZOJGjYJEEYu5X3Ys/1jDTdoxunDIpLk+cMQeTvabZYIAhRhYAjO
	d3X6vDFnaM6HzCTORrbKQ9zNRJvT4ge2RrYLs9yGA5ugBs++Mtb+VNf61shc95d+2eZq
	nhe0qEUP4h9KsF6WNvpkmRFHRpC7f1dmAF26zhg+wO172L5zg+O8v0a7KQh26M3S2kon
	0mrg6o0oLLCwQirlDUWTsxux9T2RkO79bRzUH88I7hv6EpVDet0iefmxnDtqAtKZTiCT
	AFrK8NzREv8sgpQrf5L7qesOWHZZNMswFH0I6h+skUzPjPH9Alni6Ie7Mr0ZpqbFaphf
	dG/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=czJffS5CHQ/Y3OTxiiKOaCWb7aGKTNCh6vDlfTtmY50=;
	b=S5acS8rPG9Wf2PpuC1TQY9PagdPHmV2LHQ0drc4IUvUDz2grMUBuJLawrKjqyQ4WnZ
	NMYhVgCaQVowLZ2J8h0MCo828S8tq5P8h0PkFtZ4l6GMZLHDjWbLPU5rTcdgFt42DdMU
	tK0ofFHV147VETcoQweSWMeTshxcyQlSCOGJpdQYxC9DLKD7aqjcETzzf13Jx7KgZ5pT
	gs4t1rOZO60a2N6n0VoTIwmGPaGOr18gh9Fzwsql4DBNvzVxU1YJvYdUvhS3O8dz3PH4
	ENa4EAQoccENOYK9nWHfdCEXiASVUYfG5bDO4vCfmwR3PNcJH6xkWDWWUiMPdeo6nuxT
	wdFw==
X-Gm-Message-State: APf1xPA1yirFNX1xaqTxq18EqVQgBnnlcS6+umC0YAfoN4xQj4PkzVJH
	b0hZUxOlpwdAUqjfDAivUGZ0u4Fb
X-Google-Smtp-Source: AH8x227XuIPxI47CY8f3LlVdXuW9+detspe5A0tlZA7Uj63K3Oyho3X8SinKnSH09TG7M+OXWJKMLg==
X-Received: by 10.98.36.198 with SMTP id k67mr525650pfk.35.1518092338910;
	Thu, 08 Feb 2018 04:18:58 -0800 (PST)
Received: from jkrishnanjanappa-desktop.mvista.com ([111.93.218.67])
	by smtp.gmail.com with ESMTPSA id
	p68sm8741890pfp.30.2018.02.08.04.18.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 Feb 2018 04:18:58 -0800 (PST)
From: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
To: yocto@yoctoproject.org
Date: Thu,  8 Feb 2018 17:48:51 +0530
Message-Id: <20180208121851.30831-1-jkrishnanjanappa@mvista.com>
X-Mailer: git-send-email 2.11.1
Subject: [PATCH] trousers: fix to ship leftover files into packages
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
X-List-Received-Date: Thu, 08 Feb 2018 12:19:02 -0000

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


