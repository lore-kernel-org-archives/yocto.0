Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85138E00B6C; Sun, 23 Jun 2019 11:15:22 -0700 (PDT)
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
	*      [209.85.215.193 listed in list.dnswl.org]
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACCDBE00798
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:20 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id p10so5861338pgn.1
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 11:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=bf5pt03scorHa8oC54Ybgfm8kt+r0Iwx9fAHlWhcdzY=;
	b=QbZgXu3g+OwEY75gxFWHzh6fYB6BtLWb7bQnVoFR08IcHbPGQll57DWrITGYTzciLg
	9vd9qDlraNeYBvHcqE75EIJzZnRX89elPlmoJSShfYtg7SmRCx3hnGcUiW+C0uIEVfJQ
	SnDWCaTbRCMd51stRh/21Efnf07k6gK/DC8j8zu5Y1C7jagjno/vshrel7sWKoJyRUCd
	SKMtxiTgy3JTLZsqGGa4YNhzKee7c5BEjvbsblT8zoLTvg7dJuGY4cBWi8NAc4I3TVzw
	t0GKc9R3srsi6JRgEtGjrzI+0z8SVE7xTMzs4zY4TYeoadOZ/roAnv4r6SwTuUQb4sSA
	BK7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=bf5pt03scorHa8oC54Ybgfm8kt+r0Iwx9fAHlWhcdzY=;
	b=QI+cyl77TB6kqOyJNcsHQUPNlZWg2PASJQ/92L9uFtwUrxhierR2EVp93XP4TpZIh+
	I8DIn/hRn9R2ijGUwbEAuWj3wkbEOCxGCin/0qObByl3JNFnMltJIUkiuh7cJ796pJT1
	B18YFK0B9a2Ojf7WVe9dBe81FAyqhyDqQZN+3oNmomjaSRZ9PQZaqEIhPeQw4/re1BBE
	P5epO0kuAyFxhwVGvz0zLDj+HVlrKktxBpTRCGuCd913jOwYEgAWLlWv4SNOFX+6TwXP
	B0Dq4ndtmV84pCd9xpLsaIhHkjyY7N3G1JLwB/NY32/6+uTOiXPROwKZ5xgeVB8U6UHl
	izEg==
X-Gm-Message-State: APjAAAX1XGWuKVt3xf+iPtokWGNmphfy/9yBTXMdSwKxaPVJbuoMyLQg
	TdlM9w5CqQEKZpRBk8dP2SiRfa5cGYQ=
X-Google-Smtp-Source: APXvYqwHTU1XyAC+WrTn2CjJIIlIfa5xJayzAzfa2gAjUpGWCWoKAUtQQ9qtibaIziU8GNEfKL0u8g==
X-Received: by 2002:a63:80c7:: with SMTP id
	j190mr11481453pgd.410.1561313720005; 
	Sun, 23 Jun 2019 11:15:20 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136])
	by smtp.gmail.com with ESMTPSA id u1sm7855359pgr.94.2019.06.23.11.15.19
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 23 Jun 2019 11:15:19 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 23 Jun 2019 11:15:10 -0700
Message-Id: <20190623181518.19564-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][meta-tpm][PATCH 1/9] runtime: tpm2 fix names in packagecheck
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
X-List-Received-Date: Sun, 23 Jun 2019 18:15:22 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/lib/oeqa/runtime/cases/tpm2.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
index 240a9b3..c6f9d92 100644
--- a/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
+++ b/meta-tpm/lib/oeqa/runtime/cases/tpm2.py
@@ -16,9 +16,9 @@ class Tpm2Test(OERuntimeTestCase):
         if expected_endlines:
             self.fail('Missing expected line endings:\n  %s' % '\n  '.join(expected_endlines))
 
-    @OEHasPackage(['tpm2.0-tss'])
+    @OEHasPackage(['tpm2-tss'])
     @OEHasPackage(['tpm2-abrmd'])
-    @OEHasPackage(['tpm2.0-tools'])
+    @OEHasPackage(['tpm2-tools'])
     @OEHasPackage(['ibmswtpm2'])
     @OETestDepends(['ssh.SSHTest.test_ssh'])
     def test_tpm2_sim(self):
-- 
2.17.1


