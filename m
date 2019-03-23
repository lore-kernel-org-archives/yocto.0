Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D1D4E00D30; Sat, 23 Mar 2019 08:40:39 -0700 (PDT)
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
	*      [209.85.215.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB8CE00CC1
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 08:40:38 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id q206so3520365pgq.4
	for <yocto@yoctoproject.org>; Sat, 23 Mar 2019 08:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=CFnwYjf/SzF/g0nYZR70UeYJya/+BPYO7MfzBaMEv2s=;
	b=Z1z5kCuNG+OV5B5NEUpNQRtb6P19a1pBcsQGDDJEHsuEft0pT2obwSLbXoaAM2ozgM
	GbwuVabFXDJceotV6EchBfD1F6WA20sJlcQHAa/8xxOIUlkPS+lyhmAbECgCD9a6CSOF
	0PCCt88LLGLlu8dRgJmIvqvSoVXkdKfsrkQaeKZpZ2KNQFv75pyw4lplcdYIeLWPEsct
	aO9TWu+sW6o10pURKc7WzMNmdYBOCFWVKqc0vs2eZfeVVVf8z6ZlBQe7cwZwxuY7Awq+
	iwlaP3G30VdBZMOV1s3LOOeuMgMmh5DwI7IvIuIl+98sXJkhZvL2v+3dIlLPuC9aaNTd
	yM5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=CFnwYjf/SzF/g0nYZR70UeYJya/+BPYO7MfzBaMEv2s=;
	b=bDAd3ZKg2t9LrIILzxbJifTlSSlbPL5J3gnsnXrbX1ToMh5E3QOJWeQX+GyFulQymO
	Pi/IIhsfGXuTg5DPjOcrkgwam7bowVhPnBzOATqCJ2p43XE7q8SVGq1hzSel0nRXvgcO
	wmZ3874VWF86iQU6pHegPKOPm0kb2470nm2678rtDB5/Q5dv3DYGZB+B67EP+2FKcSI8
	VNfVyQlHfFB6wNQbJ1cw2+gOF+FmhIAYO4PrrHQ+4nXt8aHX8IzuFsssav3pA74BatvC
	qQ/arneuq2WlASEoFQzsQj/7B2md+fYwPS9RPbVUt2UBIpY88WM/E5/P7jx97G0vLa5O
	d2YQ==
X-Gm-Message-State: APjAAAXiZnA1SnJTiFOTDO7xOhCtkEhVPAJEwq59chgxKnr7NLCOdjku
	LjVfNWf1jjFW9bo8y1mMCYyQuQA0
X-Google-Smtp-Source: APXvYqzjI5H62/Mg7PqcY72B8bP4QehkUxrLfailTBCy9dvQ9jSAWpq9HOQuQKRtUCFlKWLlvcUs0A==
X-Received: by 2002:a63:5541:: with SMTP id f1mr14719023pgm.38.1553355637518; 
	Sat, 23 Mar 2019 08:40:37 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	b15sm16462171pgd.44.2019.03.23.08.40.36 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 23 Mar 2019 08:40:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 23 Mar 2019 08:40:35 -0700
Message-Id: <20190323154035.15163-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH] packagegroup-security-tpm2: update to name change
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
X-List-Received-Date: Sat, 23 Mar 2019 15:40:39 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index 6bd03d3..5ded3a2 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -9,7 +9,7 @@ PACKAGES = "packagegroup-security-tpm2"
 
 SUMMARY_packagegroup-security-tpm2 = "Security TPM 2.0 support"
 RDEPENDS_packagegroup-security-tpm2 = " \
-    tpm2.0-tools \
+    tpm2-tools \
     trousers \
     libtss2 \
     libtss2-tcti-device \
-- 
2.17.1


