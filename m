Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3817FE010F8; Thu,  1 Oct 2015 11:16:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DD65E0109B
	for <yocto@yoctoproject.org>; Thu,  1 Oct 2015 11:15:43 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so1176624wic.1
	for <yocto@yoctoproject.org>; Thu, 01 Oct 2015 11:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version;
	bh=9jUzEH8rQs66lA78oS0Fpq53rznXOwUL5P1xLG8MKQA=;
	b=dtd4X3+eOwtzU0lq5rr1gU4/QYKJvi4R8MlS8thRP3J0UNh428tNXmW97JbQzQKIXe
	wElMFac01VMcpHyO/LDTf03zSh0Wna4nJ5JmLKAp4/+lNK7hzLDAtQxCpney38GYke18
	vqiyhsk9oJkqPjEXPYzVaOiIxp7ONxadU1a9einZSs1S1hb6CAdkxWHOg7Jj3UebT26P
	O+h0XE8zTP5LHOiUgoXysBFLqBaSMtrwMsyqXVeHI7uhg7FkJtcpCr/UiUZVqZ2MgmDZ
	kiEJwPnZPDicloXljbY5E7WzLXaxHuvGE4Fgx19O7tzNdVwo9ASPe00qjAI+b46Amdlf
	/KpA==
X-Received: by 10.180.101.198 with SMTP id fi6mr186775wib.25.1443723341833;
	Thu, 01 Oct 2015 11:15:41 -0700 (PDT)
Received: from ernie.rdm.local (rademacherexchange.de. [46.245.221.222])
	by smtp.gmail.com with ESMTPSA id fu5sm5368051wic.0.2015.10.01.11.15.41
	for <yocto@yoctoproject.org> (version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 01 Oct 2015 11:15:41 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <2FE84BA7-9D8B-4DB9-A311-6EF36DAFE6CF@gmail.com>
Date: Thu, 1 Oct 2015 20:15:41 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: [PATCH 2/7][meta-openembedded] Ensure JIT is built with llvm
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
X-List-Received-Date: Thu, 01 Oct 2015 18:16:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Signed-off-by: Jens Rehsack <sno@netbsd.org>
---
 meta-oe/recipes-core/llvm/llvm.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-oe/recipes-core/llvm/llvm.inc =
b/meta-oe/recipes-core/llvm/llvm.inc
index 032fb47..cc45ca7 100644
--- a/meta-oe/recipes-core/llvm/llvm.inc
+++ b/meta-oe/recipes-core/llvm/llvm.inc
@@ -37,6 +37,7 @@ EXTRA_OECONF +=3D "--disable-assertions \
                  --enable-debug-runtime \
                  --disable-expensive-checks \
                  --enable-bindings=3Dnone \
+                 --enable-jit \
                  --enable-keep-symbols \
                  --enable-libffi \
                  --enable-optimized \
--=20
1.9.1

--=20
Jens Rehsack - rehsack@gmail.com


