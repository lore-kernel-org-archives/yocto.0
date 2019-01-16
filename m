Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 029BAE00C29; Wed, 16 Jan 2019 03:27:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EEF7E0053F
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 03:27:39 -0800 (PST)
Received: by mail-wr1-f65.google.com with SMTP id t27so6500075wra.6
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 03:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=rB6HNdqKgMWB9pb7qpnC+Wdo1bWy7Mivg31YMHIddSs=;
	b=RST/d+ePj0mG8h0klL/qyldLeM5QxLjFA+8ZIAciDue0QmNavPi9lwE4Rvd9aEafmh
	dsl9TAWyI32Zm9KUW8OgXoz4Gc+DXUyiZR3uvWGIEjSOI9UE0tURwqZ/scOOEbTWWL0r
	VMCBVdgyEs4j6diMWJTRtZCl5AV+iPCJWo5VpMzLT8eeMJyxsDRwd7CwYVipuz4M8rt/
	czqvZxFfMfaEsF4PIX39JaSJj6l6qz5R0YAfDszb7zP9oRMkSWEPJcEaM0RjB/zRWvgG
	tvRWEuhCgXXrkNKCLGAYUEn3O9ba7EQcJnikQrqz0Bi7rU3jn9dEM/Wt4XNFau4rZCYM
	B4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=rB6HNdqKgMWB9pb7qpnC+Wdo1bWy7Mivg31YMHIddSs=;
	b=I4v/r8Eg4egKD4ZqKPqrRxtTm77VZtHhp5WvVU3zyKSLz0vo8LmQLKv1RMCNtJsn/K
	HdeXVTOeirBrBbdbrbI2EEcgoz5id03DntDs1yg6IPiKKgkjA62IXjIJVV77TdtVN7nB
	+hSeucoQ60M5o8/3A4r2vlm0mc4No0WmLAcks2b2SjDOCYw869CX1ZGuLSl8eauKIih3
	hlkCTeyv/IGDI3EbR/qszBBaaQBWIm0yADdj+CZ7YeEPcpXfQ68jNO6sFtH3q26HavNw
	8YtnL0O50R3xeKP3XPeljYHF515zWDZR/ZYMRHmZ4Tjx5X8AdiuXi1Uq6NST7KvIZUMM
	LceQ==
X-Gm-Message-State: AJcUukcYz08m6Z/R2NK9fhF6HCUn6EkV9+zswhYRv2/7q3IRNhKI6uh9
	niRCepDHvR7P0at8t9pj5LtIjAjRJW8=
X-Google-Smtp-Source: ALg8bN5eYppVMdVzP24bnQp3Y52P24g5c+aCPPoVAVNtB99FSXUD4iuoUlK4ZpN9DUSAHTPS3pzp5w==
X-Received: by 2002:adf:f703:: with SMTP id r3mr6984937wrp.93.1547638058176;
	Wed, 16 Jan 2019 03:27:38 -0800 (PST)
Received: from alexander-box.luxoft.com ([62.96.135.139])
	by smtp.gmail.com with ESMTPSA id
	v133sm28668176wmf.19.2019.01.16.03.27.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Jan 2019 03:27:37 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 16 Jan 2019 12:27:30 +0100
Message-Id: <20190116112730.127926-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [PATCH] README: remove mentions of distrodata, as AUH no longer uses it
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
X-List-Received-Date: Wed, 16 Jan 2019 11:27:40 -0000

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 README | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/README b/README
index 4752dc6..cb9f87e 100644
--- a/README
+++ b/README
@@ -30,13 +30,6 @@ Setup
    upgrade-helper.conf. A sample file is provided in AUH source tree;
    it can be used as-is, or tweaked further.
 
-3. Enable distrodata and supply appropriate additional metadata. For
-   example, you could add the following to your conf/local.conf:
-
---------------- snip ---------------
-INHERIT =+ "distrodata"
---------------- snip ---------------
-
 WARNING: if you are using the default maintainers.inc file supplied
          with Poky (in meta-yocto) and you don't set a
          maintainers_whitelist or (global_)maintainer_override in the
@@ -57,7 +50,7 @@ BUILDHISTORY_COMMIT = "1"
 If upgrade is succesful buildhistory diff's are generated into
 $BUILDDIR/upgrade-helper/work/recipe/buildhistory-diff.txt.
 
-(Do not remove any other inherited class in the process, e.g. distrodata).
+(Do not remove any other inherited class in the process).
 
 5. If you want to enable testimage (optional) you need to enable in
 upgrade-helper.conf also add the following lines to your conf/local.conf
@@ -76,7 +69,7 @@ a vncserver example:
 $ vncserver :1
 $ export DISPLAY=:1
 
-(Do not remove any other inherited class in the process, e.g. distrodata).
+(Do not remove any other inherited class in the process).
 
 Usage
 -----
-- 
2.17.1


