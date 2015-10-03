Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50030E00CFB; Sat,  3 Oct 2015 14:59:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA78CE00B7F
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 14:59:36 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so138435437pad.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 14:59:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Ra/Pm2RiTUEcylIind+yw+V33PUySGD0RHfpqBiaZBg=;
	b=SKUrS9vSHoGSICveOJnk3DyzT0oLqI2bG/eDScrGVNMOlKBiNel7a5d/QbSMT2FKVW
	tij3FWB3TGUoih9qITXtS4edR/WtpArLLN8tqfFhf+FMfoybQ9wzrOjVOr+wiHHZypms
	D9drFJ04oW3+Ukh5/5swkf79q77c+uO7Npjljv9LaXEnWB9QIJKLLerP/OtOWqNo67rl
	h+UZjLcjgXCuObmpFpjCoXCv/BYb4aXmpshIFkKhWsF6fum1AhG7YhGSdByJTeBvCziz
	IT7fDGIdve+TBjGREitZUd5GzJ15c20FFZz2/Yp+bHnWs4Loc/d8WQVIigg/wGebJf16
	Kfaw==
X-Received: by 10.68.69.35 with SMTP id b3mr29935155pbu.22.1443909576477;
	Sat, 03 Oct 2015 14:59:36 -0700 (PDT)
Received: from Pahoa2.mvista.com ([216.9.110.13])
	by smtp.gmail.com with ESMTPSA id
	zn9sm19300346pac.48.2015.10.03.14.59.34 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 03 Oct 2015 14:59:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  3 Oct 2015 14:59:29 -0700
Message-Id: <1443909569-836-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1443909569-836-1-git-send-email-akuster808@gmail.com>
References: <1443909569-836-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] suricata: update to version 2.0.9
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
X-List-Received-Date: Sat, 03 Oct 2015 21:59:37 -0000

Changes

Bug #1558: stream: retransmission not detected (2.0.x)
Bug #1550: Segmentation Fault at detect-engine-content-inspection.c:438
Bug #1564: defrag: evasion issue
Bug #1431: stream: last_ack update issue leading to stream gaps (2.0.x)
Bug #1483: 2.0.x backport: Leading whitespace in flowbits variable names
Bug #1490: http_host payload validation erroring on uppercase PCRE
metacharacters
Bug #1501: 2.0.x backport: Add HUP coverage to output json-log
Bug #1510: 2.0.x: address var parsing issue
Bug #1513: stream_size <= and >= modifiers function as < and > (equality
is not functional) (2.0.x)

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/suricata/{suricata_2.0.8.bb => suricata_2.0.9.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/suricata/{suricata_2.0.8.bb => suricata_2.0.9.bb} (100%)

diff --git a/recipes-security/suricata/suricata_2.0.8.bb b/recipes-security/suricata/suricata_2.0.9.bb
similarity index 100%
rename from recipes-security/suricata/suricata_2.0.8.bb
rename to recipes-security/suricata/suricata_2.0.9.bb
-- 
2.3.5


