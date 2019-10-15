Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CAF8E00C9B; Mon, 14 Oct 2019 17:01:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1556E00924
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 17:01:39 -0700 (PDT)
Received: by mail-pl1-f196.google.com with SMTP id u20so8692628plq.4
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 17:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=/PgxYiJppLXPCk/9fPyr5bFfpU0+SfzSpts4lKRYtoU=;
	b=d7T2lIVE8qfZIHIHCPTjLsz08b+KSaprLlH3nvhx6fUsEV/K+WVlp3nE0mcRs0T6O0
	UAVXBv1DRVgFhXJLhHXxEzDk/TZKqAsCaoEh9eUpGRZAoyzqCUAjSdVWNUz/Kjht1Jgq
	Vx9lX4IRLy3cgLHpSMrCm40YwMhNEPJgiCDjhrWFd2Ve7TP7ORqZsvzTcCesTXaHICmm
	mT/BYrsLx2QBRiL7t6Lc3bI8mdND2s/BYJgKdpFBBDSxSx4tl5+DIoSwHrGT/VXzA65j
	C0Utt7Kt8XCU5dij85w9qj+gkQJH0nMXBg4dvSyii3+nJXKVSh/0b+72X52NgXGdZ04b
	dVag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=/PgxYiJppLXPCk/9fPyr5bFfpU0+SfzSpts4lKRYtoU=;
	b=HWWRuD86lwXDp794CB1N10l5qH0DO4EHgotUNXCbhYosOtrPXJUbySbrZLLZdzws5m
	/V1pnFTViToFIw7cPQkXZHCt5EzPXlERMvmwNiNCiLjLqt5sWhaaV2pzVrDYQxtxK7lo
	6Pf8b18RHOi3KbAo0o4g2wdyrB8BmWLK5c7Il9ZQuSHM/a/eZyxeV1C1hIlEQpFoFp4Q
	ajFWHaetJeOWTWroNl5aDHuQxiy6MIXuBKxPv058sriiPDSFTV2osYCSjL6A7w955FO6
	keIiD7k2sdMTmF3XWuBcU507ib6ei5RSGhqoHAMPXONPZAlICpG0fD96B2BEDXxyQf34
	nZXA==
X-Gm-Message-State: APjAAAXsROunzDlsqxfxtyFfKqKOcmKTqHD6JRw/1SQvUJFoFoeKskpz
	S2pGANx7TkVb7uY0IKXj/TZqycwz
X-Google-Smtp-Source: APXvYqw3c8xvi+mTBQeMpXgXjHtAdNXdpv94GQDproNhXYB4/gSuHMpyo/Uc7msynfvtJByE+FH8bA==
X-Received: by 2002:a17:902:8c92:: with SMTP id
	t18mr31150351plo.76.1571097698822; 
	Mon, 14 Oct 2019 17:01:38 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	r18sm25836200pfc.3.2019.10.14.17.01.37 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 14 Oct 2019 17:01:37 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Oct 2019 17:01:35 -0700
Message-Id: <20191015000135.32514-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] suricata: fix compile issue
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
X-List-Received-Date: Tue, 15 Oct 2019 00:01:40 -0000

 cp: cannot stat '/...../tmp-glibc/work/core2-32-oe-linux/suricata/4.1.5-r0/rules': No such file or directory
| WARNING: exit code 1 from a shell command.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_4.1.5.bb | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/recipes-ids/suricata/suricata_4.1.5.bb b/recipes-ids/suricata/suricata_4.1.5.bb
index cda1c87..e15a9a3 100644
--- a/recipes-ids/suricata/suricata_4.1.5.bb
+++ b/recipes-ids/suricata/suricata_4.1.5.bb
@@ -52,9 +52,6 @@ do_install_append () {
 
     oe_runmake install-conf DESTDIR=${D}
 
-    # mimic move of downloaded rules to e_sysconfrulesdir
-    cp -rf  ${WORKDIR}/rules ${D}${sysconfdir}/suricata
-
     oe_runmake install-rules DESTDIR=${D}
 
     install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
-- 
2.17.1


