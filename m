Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1166E00A54; Mon, 13 Aug 2018 11:20:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.68 listed in list.dnswl.org]
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
	[209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C7AFE009C2
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 11:20:25 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id h9-v6so15095802wro.3
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 11:20:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=AOdhFPZukPhEBfkoP3F9U3KhS0Ohj5/NOASIITx9Ius=;
	b=bUu4e7SEFbZUgK1T+G+nSGPH2VYFxNMT6/REU2HpcRrP4X+9f8RPSL4JbOWscE/0TR
	ogEKvs3OwOxmKO0dQpL5at4fHqiO/wcRbZ48SSMjOxAQS3zFjM+YnU7DaTxSUNTUN1ow
	R4C37idzcpDzKi6Vpz9BGVQtVZUCbl5bAAXufpeszxDRPogD7y1K0yiFKRylj41ctCdH
	JIPp0Fd8qs/MpIjvotL8DR4losjowtuP7dzILXnMBV0BkTYCksdal7/oiGRWJ2Jr903q
	13EnrQGxipylc6Zdopun/DHeuozXWOJ6EBrRUOQvYhWoIYE3RYRUUQp0vdUVFrGijHMN
	MoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=AOdhFPZukPhEBfkoP3F9U3KhS0Ohj5/NOASIITx9Ius=;
	b=ckUjxYOyV0Wrzm25bZg8cuL+WV6s+Zh61IF/Govboi1TZsuHNfrWaXfhTwuQGk5/ED
	HQIPJlsps8dN/H7XtVQ/74+h4rGWgu8ch/3tQ3cFhB3hxo5+NQZkYcxKweDH43MKLfS3
	sDYfj3YnKAB4TDi6w9IrHDYl2Qix/3D9xiMSEhKxH1rgsVmCUEKAVowM8/9BsivJUadQ
	Hqd6BhlD+WogVXIYNx8ksC4+ivlcP6kFvCbsn5ro1WP9meVZiW/Q3jEZC8eAdKM1Z7Fj
	fHI+s0fSqPDEC6qJRABn0EeThIxNdVDYSBWXOeMJSyBkcNeGph3ZeEN1Zqdx9dab/x23
	Hnow==
X-Gm-Message-State: AOUpUlECVf3rUbrViiDaN2g7yKgbp+7vMVw3ydJfTRBPFUPhld4Ei2Zn
	7/YnXQ3PZQIi3ODy5nqNrqZQmvhH
X-Google-Smtp-Source: AA+uWPxhIK9rShkaXfZPV8R0elQy9remITKLO+ZP6dlPFmtqjp9SIkWlId/ZmJgQj114US7eQVTpKQ==
X-Received: by 2002:adf:a634:: with SMTP id
	k49-v6mr11082371wrc.181.1534184424356; 
	Mon, 13 Aug 2018 11:20:24 -0700 (PDT)
Received: from localhost.localdomain (cust246-dsl91-135-6.idnet.net.
	[91.135.6.246]) by smtp.gmail.com with ESMTPSA id
	b13-v6sm25464397wrs.43.2018.08.13.11.20.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 Aug 2018 11:20:23 -0700 (PDT)
From: Alex Kiernan <alex.kiernan@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Aug 2018 18:20:07 +0000
Message-Id: <1534184407-23219-1-git-send-email-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] libseccomp: Drop RDEPENDS on bash
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
X-List-Received-Date: Mon, 13 Aug 2018 18:20:26 -0000

Commit ada3eee ("libseccomp: fix rdepends") added RDEPENDS on bash, but
this is no longer needed, so drop it.

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---

 recipes-security/libseccomp/libseccomp_2.3.3.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/libseccomp/libseccomp_2.3.3.bb b/recipes-security/libseccomp/libseccomp_2.3.3.bb
index 8d58163..0a8a679 100644
--- a/recipes-security/libseccomp/libseccomp_2.3.3.bb
+++ b/recipes-security/libseccomp/libseccomp_2.3.3.bb
@@ -38,5 +38,4 @@ do_install_ptest() {
 FILES_${PN} = "${bindir} ${libdir}/${PN}.so*"
 FILES_${PN}-dbg += "${libdir}/${PN}/tests/.debug/* ${libdir}/${PN}/tools/.debug"
 
-RDEPENDS_${PN} = "bash"
 RDEPENDS_${PN}-ptest = "bash"
-- 
2.7.4


