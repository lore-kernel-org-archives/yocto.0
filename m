Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76BFEE00B7D; Wed, 13 Jan 2016 15:11:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F39E4E00B6F
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 15:11:31 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id yy13so273122468pab.3
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 15:11:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=O/rIvQ0C5XTGqGsyCxlNpN+zJXgYhPgdQ349lDWxRIw=;
	b=deq6juIYKTX0oORbWYeyJzIvBHjfjOa7xYJSYThrzeflCOi8YDbG17mr8EgslTCXT6
	KEqTnidgIsd19jFM4fjQ7hy17IFPB94/RJU1d4Y6FAUDtwipAQUn5o+gPWuO8K3SkJnh
	h1zbE/i8wODMj+RIzL1U+fj2X/oPgXk2IraWhIKt5qOC841EXO9eGoNS7QKH1eKURUt/
	rsZNg/1JACB6uTGwZGZB/uTnjD/O1VIrw2N0zcdZv/TRHRcEkXTAi93GV1z+PibOMX7i
	PdQcSYydQjPh+jYUeP0QZMpEgEzFS2jZK4W0+ppadWtL3PTVLMgvSRpHE3QhnZW8OUGZ
	MqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=O/rIvQ0C5XTGqGsyCxlNpN+zJXgYhPgdQ349lDWxRIw=;
	b=VzyBZcOoV/9rNxvjha6LBfiaqgtXyfz49IMxua+3tO5LvB+4lHL47d3VXkz2tdBOtY
	V16yXCLuomGQywwcLuPxwNuLd6c59fsuGR0UggSZmTB9TnDmrBzCcd0yJutsY2e0UXzT
	trdZPZ5gTHLwS/0WyUgHyoz2OLtqLcgrMibNmBNmC8fUOl2Cz85GgpX0R1G/F1NZOVgr
	foDEKI2PYvfXPjirr+LlfHOccYJl7Ai0hksExHXwRtwupwDC5Jnk4cQ/QAGP9MkpphHp
	LBAbdWj7jDMosuz+prnIxJnvVOwVP4cgUE9QPBZkRidSLi7D6b5FAy4Ck6f6C3KGfa/s
	EbjQ==
X-Gm-Message-State: ALoCoQkwiJKVtQMleiTHjZwmgTLseeBE9oCtWEf7Wt+qm6mH1Jwyc67OiIE0lARoefIus2eeRHdGdN/MFT/CdbMLb3umrB7y9Q==
X-Received: by 10.67.5.98 with SMTP id cl2mr1040524pad.157.1452726691201;
	Wed, 13 Jan 2016 15:11:31 -0800 (PST)
Received: from haswell.localdomain (c-73-252-206-77.hsd1.ca.comcast.net.
	[73.252.206.77]) by smtp.gmail.com with ESMTPSA id
	h87sm4927564pfd.33.2016.01.13.15.11.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 13 Jan 2016 15:11:30 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jan 2016 15:11:24 -0800
Message-Id: <1452726684-30945-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.0
Cc: rburton@intel.com
Subject: [matchbox-keyboard][PATCH] config-parser: Use matching printf format
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
X-List-Received-Date: Wed, 13 Jan 2016 23:11:36 -0000

XML_GetCurrentLineNumber() returns unsigned long as clang is telling us
here

src/config-parser.c:603:6: warning: format specifies type 'int' but the
argument has type 'XML_Size' (aka 'unsigned long') [-Wformat]
            XML_GetCurrentLineNumber(p),
            ^~~~~~~~~~~~~~~~~~~~~~~~~~~

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 src/config-parser.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/config-parser.c b/src/config-parser.c
index b006f19..15a973e 100644
--- a/src/config-parser.c
+++ b/src/config-parser.c
@@ -598,7 +598,7 @@ mb_kbd_config_load(MBKeyboard *kbd, char *variant)
 
   if (! XML_Parse(p, data, strlen(data), 1)) {
     fprintf(stderr, 
-	    "matchbox-keyboard:%s:%d: XML Parse error:%s\n",
+	    "matchbox-keyboard:%s:%lu: XML Parse error:%s\n",
 	    kbd->config_file,
 	    XML_GetCurrentLineNumber(p),
 	    XML_ErrorString(XML_GetErrorCode(p)));
-- 
2.7.0


