Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7578E009CA; Wed, 25 Apr 2018 10:19:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E22E005A9
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:19:10 -0700 (PDT)
Received: by mail-ot0-f196.google.com with SMTP id j27-v6so26035390ota.5
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 10:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ovFNLQLUi/vzQ37W9zYx30IiDrWjYy8ovLwANxj3Uns=;
	b=ZbHfzhoyopEjNRiVY9sFmzhg3wEGYR3Kdwj9bVftiBQTuAjGL7idNBFLeUe5yxi07K
	HADg5Tsj86iZlccMCH2qbs4TpeRclWrFv1UJx8Syz2DWDRErZgeue4CBpKPTOVzmcL1M
	p7WEx73l2XLZaZqB1LB/d57BWmGALpNgDPAxQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=ovFNLQLUi/vzQ37W9zYx30IiDrWjYy8ovLwANxj3Uns=;
	b=D1smsxWFusNVXF46HMGJChEqZwsEYhmil/gcvDfg54k2E9vUmo66YpTQsvnyLY7j2q
	x5XMFhq2cAdOgHrxJv9Af72BMLJ96ekRsp913GhTO6ClpXyU+eBjwRc0/TrnJt/lJZEC
	oHq7Df5RoOvFI2nrltrWEAVggY3jaq9sJNM6Fhx42XQ/4c4pNvILs5f31XrjElWLBzJ+
	f6oX7kGiJDq6b0RVhC2BJ12y28BsJhPuz7gk2Y2CzNedrl32TefZxj3XiAiDx0W+vP/E
	/cBjjA+kvRacJHsgkZS1ADHQ7+RvQz/pMLYG+ejoHWOB7/F75/Z5kpjCjuR69HCjEZWM
	KNTg==
X-Gm-Message-State: ALQs6tBbr69PjXYolLyLOUep+74t18FHyJYOhLA0eNkCYBSdBUCCzulX
	nVFu3e5bdt8WKc6e1TrNG/A5H7OzFzE=
X-Google-Smtp-Source: AIpwx4+d9GbyLkcAeazJEcqMk3s2X4aK5DLPQUMg7Rl0GpOdHWN+4nRu0P6N55j7yIaGp0FskHT2Vw==
X-Received: by 2002:a9d:2013:: with SMTP id
	n19-v6mr10992222ota.258.1524676749532; 
	Wed, 25 Apr 2018 10:19:09 -0700 (PDT)
Received: from blackbox.Home (187-177-61-29.dynamic.axtel.net. [187.177.61.29])
	by smtp.gmail.com with ESMTPSA id
	q75-v6sm8301748ota.69.2018.04.25.10.19.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Apr 2018 10:19:09 -0700 (PDT)
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linaro.org>
To: yocto@yoctoproject.org
Date: Wed, 25 Apr 2018 12:19:04 -0500
Message-Id: <20180425171905.6408-1-anibal.limon@linaro.org>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [PATCH][ptest-runner 1/2] main.c: Use realpath to get the actual directory of ptests
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
X-List-Received-Date: Wed, 25 Apr 2018 17:19:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fix usage of relative paths in -d argument.

$ ./ptest-runner -d ./tests/data

Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>
---
 main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/main.c b/main.c
index 505829c..593aff1 100644
--- a/main.c
+++ b/main.c
@@ -19,6 +19,7 @@
  * 	Aníbal Limón <anibal.limon@intel.com>
  */
 
+#include <limits.h>
 #include <unistd.h>
 #include <string.h>
 #include <stdlib.h>
@@ -70,7 +71,7 @@ main(int argc, char *argv[])
 		switch (opt) {
 			case 'd':
 				free(opts.directory);
-				opts.directory = strdup(optarg);
+				opts.directory = realpath(optarg, NULL);
 				CHECK_ALLOCATION(opts.directory, 1, 1);
 			break;
 			case 'l':
-- 
2.11.0


