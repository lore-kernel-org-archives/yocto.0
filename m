Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76857E00CB6; Sun,  1 Oct 2017 09:43:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28163E00CA6
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:45 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id o1so2254596pga.4
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=KTKFC4BpywdX/O/GBcCenG0NxUQTdWRrmjryjR7irAM=;
	b=SyJ9V98we8kNXdsxB9L5mcIETg+LUZUDLDYhoB6ShjOhyfcYibPF3bwOlZCZkqVKqB
	Rw/tlt/4pwte9iTnchQ54LDS31XXc+E0Wk+ohoPeFwS2YCjjkoNZ5T0oN+RowEeRDUar
	Yg9sv8ge0wh3bjIaXq1uZpl+hXB2W0SvSY9g+xbCKbA1xH9OxBeCawAeLLWlfVsTmTd8
	lZnbWAQ3Z8opBdVWZ1l0Wgv1REf179t5+hMgLHxl2jvaHjktrNBFeaSVF/ltL45TXUxp
	D587iQYXGhFhTamT1ZUxHhmXBWMM3V6vF1Uy0n0AwE8jxXMUgy3/bNH6au/dQtZHnsdr
	VhLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=KTKFC4BpywdX/O/GBcCenG0NxUQTdWRrmjryjR7irAM=;
	b=AzWD0pQ7Nza+hER/v9+9e3pIf55M3Kh5kj5D4fn4JfU/8FthtDwQTpgr5auDXrHH+I
	3UyCQW8eTYMUQnChLPCxjayC0wTczCKlNTTacqFhSlrc6dScFOU+RfnBRhmqSYJ7jXkt
	nBhRMY9+DNLI/PbGtPO2LUvmelmkl9Mx8okM8m/otsRIOLTaoEQA0HIgcod2Xz9mc2VP
	WoR04VYvHsqGk+XFeRUujOYOXjVauDjY2TG+rZVkLbXkEONmDoSqw+hMf3J7VvhnP48o
	JsAVGiRnuTGbtjeBSe2ytZVaO0VoVzzm5wkjyJb7Cs6ff3JeA5xznfKcJSLGNyNGG4AN
	AiIw==
X-Gm-Message-State: AHPjjUjFpa0240fow59tYUOIyPT0lZ9C40RSmwGmnWri0QPut5dXiUAs
	mBODQod8YbYrW/a4RqivofXMbA==
X-Google-Smtp-Source: AOwi7QB512V3QZcWd566ftHCxtY7hldnYIYjG8a1gb727ByQh07TnahZLUEqp6Rc3rAUkeWoXy+Blw==
X-Received: by 10.159.198.7 with SMTP id f7mr12573259plo.38.1506876225447;
	Sun, 01 Oct 2017 09:43:45 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:35 -0700
Message-Id: <1506876220-22710-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 05/10] redhat-security: remove PR and fix style
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/redhat-security/redhat-security_1.0.bb | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/recipes-security/redhat-security/redhat-security_1.0.bb
index bd79636..56f734c 100644
--- a/recipes-security/redhat-security/redhat-security_1.0.bb
+++ b/recipes-security/redhat-security/redhat-security_1.0.bb
@@ -3,9 +3,6 @@ DESCRIPTION = "Tools used by redhat linux distribution for security checks"
 SECTION = "security"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-PR = "r0"
-
-RDEPENDS_${PN} = "file libcap-ng procps findutils"
 
 SRC_URI = "file://find-chroot-py.sh \
            file://find-chroot.sh \
@@ -39,3 +36,5 @@ do_install() {
 	install -m 0755 ${WORKDIR}/selinux-check-devices.sh    ${D}${bindir}
 	install -m 0755 ${WORKDIR}/selinux-ls-unconfined.sh    ${D}${bindir}
 }
+
+RDEPENDS_${PN} = "file libcap-ng procps findutils"
-- 
2.7.4


