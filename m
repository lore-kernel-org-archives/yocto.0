Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 383D5E00EBD; Fri, 16 Feb 2018 13:41:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD965E00CE8
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 13:41:41 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id l4so1258865pgp.11
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 13:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=WgfxGDKy3Q9D4QB9VjsodmxaScQSspyULWQfFLemEsc=;
	b=BtVWsG/wU7TiTS4l1XlU4uPTlaJSYj3uZ6vBNxEPQ+szgocZE16jx3kgJX0TMGSS9D
	6Bp9DaQq5JXI0VLMVqPMp4G/dh/eqDNpagrTFzpfhdMBzxcvJW9tJjESG0w0Vcd6cYB9
	4JaHtM/Xt9yuXdQdL3a5O9M3rF01Ux+AlcL1W6gLNjYuQXlNpiM3gz6urgxV0KbV7Ht2
	8/IrV1kGCZ6493s//hw6O8GuHAohTTVvWrgRKJFsgnyLtGobLHiKmxBh97AxTQU2i6Kv
	NGpM3CUgPk69W5jOQau6FL6j2LNaj8WXHqfdn7vU3WomiCSeQT92/Qs9g9MmWMWck9GK
	FuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=WgfxGDKy3Q9D4QB9VjsodmxaScQSspyULWQfFLemEsc=;
	b=S3FQw56bE8xSmlhkZfrkTELN3Ke5ZZBQaXmr8hgj4dWIJAmMgMlngDXsp8tA9um5x1
	/bQ70poIsp/GFp2YbW2e/PUGhnk86ciDbyV6r9Uha7H13a4Hq2T4VjkgpTMtE4VNyGAA
	6o6T6TSdHrMbou54qAWaBzew2JmE7SVRCtKN5ex5vMMrzQ/a1znHnenOwNsqq+d1kNxD
	foV0noO/fjgho4OFBUsdy8UEJJfk8+4O9UOjoObH/yNemOyASrWGBevfcAcSZkUfQTG7
	BJFIA0XAIvn6v7JVdpy09zrrS7AuLn0GQwx5hyHH8uvkPD8Sk6eFIBRE/pq/nbpywxWE
	RlJg==
X-Gm-Message-State: APf1xPDtOrjW0qoqSf7TfjWRIj1alPGUGTuBhVJoBCpVqAgmc3Fx+dYn
	h0sgHEZPRdwb6rfkv3ETXUNZMQ==
X-Google-Smtp-Source: AH8x224hu1uaD4JDgXq8Nm7NCavGdeGVc/bLQR83JK8J2g1qpG5eMC/qZYtPrgRwOvy9fTW1rB/lhw==
X-Received: by 10.99.167.75 with SMTP id w11mr6293985pgo.246.1518817300667;
	Fri, 16 Feb 2018 13:41:40 -0800 (PST)
Received: from brrussell-Latitude-E6530.dhcp.lexmark.com ([192.146.101.90])
	by smtp.gmail.com with ESMTPSA id
	y90sm45319153pfi.34.2018.02.16.13.41.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 16 Feb 2018 13:41:40 -0800 (PST)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Feb 2018 16:41:23 -0500
Message-Id: <1518817283-31382-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: Kyle Russell <bkylerussell@gmail.com>
Subject: [meta][PATCH] ptest.bbclass: fix path for multilib
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
X-List-Received-Date: Fri, 16 Feb 2018 21:41:42 -0000

ptest-runner always looks at /usr/lib, so make this arch independent.

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 meta/classes/ptest.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/ptest.bbclass b/meta/classes/ptest.bbclass
index c19f65b..62b3621 100644
--- a/meta/classes/ptest.bbclass
+++ b/meta/classes/ptest.bbclass
@@ -2,7 +2,7 @@ SUMMARY_${PN}-ptest ?= "${SUMMARY} - Package test files"
 DESCRIPTION_${PN}-ptest ?= "${DESCRIPTION}  \
 This package contains a test directory ${PTEST_PATH} for package test purposes."
 
-PTEST_PATH ?= "${libdir}/${BPN}/ptest"
+PTEST_PATH ?= "${nonarch_libdir}/${BPN}/ptest"
 FILES_${PN}-ptest = "${PTEST_PATH}"
 SECTION_${PN}-ptest = "devel"
 ALLOW_EMPTY_${PN}-ptest = "1"
-- 
2.7.4


