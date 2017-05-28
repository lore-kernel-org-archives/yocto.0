Return-Path: <wallinux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D819E008F5; Sun, 28 May 2017 02:47:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wallinux[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.68 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 874E4E00724
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 02:47:06 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id q24so3963111lfb.1
	for <yocto@yoctoproject.org>; Sun, 28 May 2017 02:47:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=W9h5HKgFBqjzCVB7KR/vZBExabJsZVt0P1rlQUeJzl8=;
	b=iWMbgqFpo53lLeKlKtXyIx3AKFizv2ndtUYDJMM1rrQrwLopUTD1lzTSy7cDzBZ65c
	c2Fp9PEcghCIvnmoRMgz7hxTsW2RJN8ja73yPP2pOOBXH3kEGtJx2Bff5JOqJqjOHvqQ
	BnhRkKQYcwfbrTOicrzZcJPItCEIoIEjieceddmTo+c4TjPXieRdbF7y0skld9vlBF5i
	hECz8r5Gu2nZrydRr1e8OgW4dLzPcc/L275CtRsgvUvR5gpzCPRpxP0U1YijuQ7m47bT
	ij7l8Cn2Odm5MzqIsiyzJyA9SRLB89iy54adXO6n1e5/MhS3QuMpR0BWv7KU4PpD3okx
	vErA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=W9h5HKgFBqjzCVB7KR/vZBExabJsZVt0P1rlQUeJzl8=;
	b=tQxvjypJS/snCL0BrMcDZ5+PMTAScJmw5yXcXbHfUnKHrjW+zxMzmVBCkPTen9G8Yq
	wM7Y5PFv6VVg7Ib5cs1NP7xjGf0Q9ai6P+erJ1Pu9pfyOEpDnV2hYyO8ua0nw7cBonwD
	Tz7gjh9tBQW072nh6lynQYho7r44Lz+wTU7bSoRPUMIy88n7W+2WJp3PCUs2J4L+tpTu
	DJ/wt0BAlrqVuBuHdeVQs8LoLZtpVEQ5DuAKthVX55hQp1/PiKb3BVZJ2pWuQRNDuSVf
	hpfuHeDlg2qwHl38R1FWJkjtDpgfjwcW6GzTQ3jBBDiuh1qUGIrT9SFu/8SjQ9/ZF3Gc
	GI8Q==
X-Gm-Message-State: AODbwcB6oDh4s9y4evez9rhzOCCVUQqPXUYftwX/ThmFXQ4lQ6H6RqtM
	Vgotzq3SKQPGyj0KTl8=
X-Received: by 10.25.145.5 with SMTP id t5mr3037366lfd.83.1495964824971;
	Sun, 28 May 2017 02:47:04 -0700 (PDT)
Received: from localhost.localdomain
	(host-95-199-13-91.mobileonline.telia.com. [95.199.13.91])
	by smtp.gmail.com with ESMTPSA id
	c17sm1302356ljd.45.2017.05.28.02.47.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 28 May 2017 02:47:04 -0700 (PDT)
From: Anders Wallin <wallinux@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 May 2017 11:47:00 +0200
Message-Id: <b62b9ddae6fdd02a759346f6d9779554bb487c48.1495964122.git.wallinux@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [ptest-runner] timeout option missing the argument option ":" to getopt
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
X-List-Received-Date: Sun, 28 May 2017 09:47:07 -0000

ptest-runner -t xx gives segfault

Signed-off-by: Anders Wallin <wallinux@gmail.com>
---
 main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/main.c b/main.c
index d7a546f..505829c 100644
--- a/main.c
+++ b/main.c
@@ -66,7 +66,7 @@ main(int argc, char *argv[])
 	opts.ptests = NULL;
 	opts.xml_filename = NULL;
 
-	while ((opt = getopt(argc, argv, "d:ltx:h")) != -1) {
+	while ((opt = getopt(argc, argv, "d:lt:x:h")) != -1) {
 		switch (opt) {
 			case 'd':
 				free(opts.directory);
-- 
2.11.0


