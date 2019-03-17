Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3360BE00CBC; Sun, 17 Mar 2019 09:43:50 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com
	[209.85.215.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1902CE00C4D
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2019 09:43:48 -0700 (PDT)
Received: by mail-pg1-f170.google.com with SMTP id v12so9734398pgq.1
	for <yocto@yoctoproject.org>; Sun, 17 Mar 2019 09:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=agczw2XvAJAlBKvL/dKUSu1JY5dor3V06Qsd9t+9MWM=;
	b=Lb9Kyj+qfN2vNvL9HAaV4azf+pA0N82UWoU7Alo/YbTwRNw3v5qVT4n7P9FAAevk4Y
	3PxTPbgFbb39h9w7MSuQrcPpfEXUYWuxkXwthwbGM890cV1ET2htWroiEaFj5Wgsmyzw
	IQ31sCm9CSEGIINqgSBav7nYGStORm08XPxmcpVqL6BxIkE9cjaG6oyB3bBLv04/R2Hx
	IiuFaRrIcOzvCl1L4Jr6MCgt+ayNwI1/eNVkMvMincm7yt4UiemYop1zwdKifZh5I+2g
	RQz6ykWrlvZi6TO8ISXPGKnU1Rm2XA3tgZ/yHcCHPjlyJ6n0GpfNlsmjgs4Nt13q1U4Z
	y8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=agczw2XvAJAlBKvL/dKUSu1JY5dor3V06Qsd9t+9MWM=;
	b=p89cHaNByK7C3qjOrl+DzmdFA5PpHxcKkPBcHaZUk2aNn0vhcvoT2in8vYksYMW7pJ
	ZSZgZIOuMS482PrGOU3/VSY2p4N1jRFos1cWP1pNboIymxgO10fT21GuBKmEtyZq4x3G
	Cy4F9wuNfYpCCZ/6zpf7o+zRPZEN4ALkkyNKoaI7ayN18Kdeiht96OG6I1f5NZbj8+As
	FxbLA9lFHdL0H7ssGVuH1rOoF9vhGO+rsl5e5pFFdSvTt2Xy/SDNPSIQFLz2jcsBYyf2
	CN6WuHvvv03gCm+0Hc/NGMMTUXjaxZH2pClXyAqsUA680/pAqq7ujQoUE7gf81jmQ7rT
	0GAA==
X-Gm-Message-State: APjAAAWRdqp4ZevzvyOZN8NJjOGOIKvu2WYXZAmDy2rJNIuYR5UA+Pi7
	JrpNq2ApAuCjQjxceNtjqlGrdnGI
X-Google-Smtp-Source: APXvYqyNyxtVuLkvx2ZpB6A5HRSspMbRRWXTfb+zJc86w3RrTgBfbkPgMFIygcEAPUXA2qAeizY/6A==
X-Received: by 2002:a62:564d:: with SMTP id k74mr14699928pfb.19.1552841028429; 
	Sun, 17 Mar 2019 09:43:48 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	q62sm10103310pga.32.2019.03.17.09.43.47 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 Mar 2019 09:43:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 17 Mar 2019 09:43:46 -0700
Message-Id: <20190317164346.13686-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] packagegroup-security-tpm2: add new packages
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
X-List-Received-Date: Sun, 17 Mar 2019 16:43:50 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb  | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index c4c8fb2..6bd03d3 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -15,4 +15,9 @@ RDEPENDS_packagegroup-security-tpm2 = " \
     libtss2-tcti-device \
     libtss2-tcti-mssim \
     tpm2-abrmd \
+    tpm2-pkcs11 \
+    cryptsetup-tpm-incubator \
     "
+
+RDEPENDS_packagegroup-security-tpm2_append_x86 = " tpm2-tcti-uefi"
+RDEPENDS_packagegroup-security-tpm2_append_x86-64 = " tpm2-tcti-uefi"
-- 
2.17.1


