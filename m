Return-Path: <vaduvajanalexandru@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99E93E00AAA; Wed,  2 Sep 2015 16:22:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vaduvajanalexandru[at]yahoo.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [98.136.218.253 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm14-vm2.bullet.mail.gq1.yahoo.com
	(nm14-vm2.bullet.mail.gq1.yahoo.com [98.136.218.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7905AE00A5B
	for <yocto@yoctoproject.org>; Wed,  2 Sep 2015 16:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1441236173; bh=HEOHlGhOQOZPUkYbXCV+JehMzvh9aw6DETBEflzREhM=;
	h=From:To:Cc:Subject:Date:From:Subject;
	b=T2L+IODKX+HNcEsNYQK82+BeEtjY26evDo0KWsOtDHMr1jgHXqdkhNi0m/WZMrNToewbNUKZkSIsJ6T0pNSO/x/EimRxEAg+lE6QCthGa2tMiJ0of22d4KxptnSQ22e2gs1Uv9z0RsI2ZZDJvjtI/R6QEsG6GNhSgiIruinc40v1Lilnk1jyVihxCcMyujfzJwAYr1DI1gSxoaTpCmP8X2KIB/ZQYLdjxy33UtBtWBOVsfRN890+9lOACf2LsD9HII/6gY5rCTp/Qx7GImU1EBKD3JpCtVwU4KFd19zVczOTqgrgM5p+UyF2QWKIcrh/XDTYRjmnIOdfeyXlAK7b1Q==
Received: from [98.137.12.190] by nm14.bullet.mail.gq1.yahoo.com with NNFMP;
	02 Sep 2015 23:22:53 -0000
Received: from [98.136.164.71] by tm11.bullet.mail.gq1.yahoo.com with NNFMP;
	02 Sep 2015 23:22:53 -0000
Received: from [127.0.0.1] by smtp233.mail.gq1.yahoo.com with NNFMP;
	02 Sep 2015 23:22:53 -0000
X-Yahoo-Newman-Id: 493368.64965.bm@smtp233.mail.gq1.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: 3kQHbWoVM1nEpNnytVL9fa.2GpP2mPkeyYIhCC3XSrNO_GB
	d0LbuM5hBm5PMv4YWOE_1OMn1YRe7pgEIy5VcHk5WYTk0dHfYJozuc5uZ.Xr
	.lPy8Jp_2YJOwYqdPA1UzGzkvnRiveTM3ioyfVGTG9tJvRSPGpFkfh5V3siz
	wtb.4zY.3YyD1EmZ52y0X9S2SHn.RPotCvG_WY5xsKBcXOJ5IDqLqlOp9qwv
	_O_RzMUisvGMIA6I61_hTiq0rsh6bUvHgkiLC.LdDPzJBDPMaHB7E.gYiMgy
	cJcfaMutA6y.rNtDaWu1I11MKSh5xXG23__DYvuFHIAJVLwntkDYq.F4TAfL
	o9grEFBgZRjPYOiBIIQq4fB4c6WLgcBrDHLvu7hlwOTC5Y06FkpdZZ5p2KMJ
	_iDw98rOcfsSyy1vvXW8P5kkMInmshm8CXpUmRKYAGMPWRwSls24BpkYshbb
	rcOOyGKWiBLxYfI2ByI3dl8osmaKOP_L7zM0XsGpCDVbQ9JGrpy9kd1WWXqW
	pZF1YiCFlqTamuDIg101Eln1AW0Hq0.cIxgnXBhm9k2DcYUKOXEDiWOwBb.J
	Em85yuf1RCS7MV5o-
X-Yahoo-SMTP: nOggmNuswBA1X.L67jJQBEggMWwFMkOGtH3lM4PRRQ--
From: vaduvajanalexandru@yahoo.com
To: yocto@yoctoproject.org
Date: Thu,  3 Sep 2015 02:22:48 +0300
Message-Id: <1441236168-22599-1-git-send-email-alexandru.vaduva@linux.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-cgl][PATCH] sysvinit: move the bbappend into the according layer location
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
X-List-Received-Date: Wed, 02 Sep 2015 23:22:56 -0000

Signed-off-by: Alexandru.Vaduva <alexandru.vaduva@linux.com>
---
 .../recipes-core}/sysvinit/sysvinit_2.88dsf.bbappend                      | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-core => meta-cgl-common/recipes-core}/sysvinit/sysvinit_2.88dsf.bbappend (100%)

diff --git a/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend b/meta-cgl-common/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
similarity index 100%
rename from recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
rename to meta-cgl-common/recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
-- 
1.9.1


