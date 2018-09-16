Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3080E00B81; Sun, 16 Sep 2018 12:01:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
	[209.85.221.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B6F1E007B3
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 12:00:33 -0700 (PDT)
Received: by mail-wr1-f67.google.com with SMTP id n2-v6so15133336wrw.7
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 12:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=TTPnzgT8aKPOabfCUD5jZ6/cjko3EIpNmQniMF8czU0=;
	b=fL+1/b/7zDh+UeVQ2xItWCSqzeoo+P7XW/2T7zmsAW7K+09Byhfwqu8ZFJOQOD1I7d
	zpX1lwTjezkeFsz+mCJwJ4dKz1qcH2L7q0q3PRzJzONRgo4f4yRcf4qVp2oqB3LVAinx
	Prmlo+sD19/eY+XuNuPyidjibBsqbP/14WaE3IQgrPjJzAv8URhCYWXYIqIQ0auvq5Cb
	q9B2hAXl/Kh/l9j6p1+OtUvKGWR06AS1WdI7dG23kwm88XPD6qdqFMx3cG3cFplFUPTp
	6kiiitk7+9fBXIxNWGuKd2QJCZz/WRJT6DqKLB9Al2m1KeRywBzxxxhWRSBvlgzMWBiE
	5//Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TTPnzgT8aKPOabfCUD5jZ6/cjko3EIpNmQniMF8czU0=;
	b=t6jOglcVvVHeSBTgs5oIUc8Qz9xMPWX2xxbnWA1CD27EvVDcBymMI9MKFiqlfHeHC/
	34Q5VGmn9qqVUtWZDfAyw7WUXm9b0vq6nIKwwurhFZttPs11GKWe0zJizh7//UHdKTPw
	AqfF1225FU93K7cO5xLOjd38Yh7dfmr3fgAj0CYdxex0PNLwtnuVKSSLOOzM/+rUNuES
	+jO5PuNYG2z01GDh+Fvg7cV7/txxpH4quACdh0J4m2KipXMRMToRu+W4VwOOiYhpqsHd
	p6OlZBPW/myyOQN5okr6la8BFK5EcPFLPJFeaRoN+EUybMnL349xEXrkJnYA6ljxawXo
	3JUA==
X-Gm-Message-State: APzg51CK/MXgaslHmYQcT8gEBeO8JOtfB7gE9uLAru33KFLIZCLwKB7R
	OFJA0nZPLVmn5+KeAobY4t9Ai97H
X-Google-Smtp-Source: ANB0VdaXVonoFoyRpS9P6uM5ZlA/zSqOQ3DfEL2uVbSL78R574FkYVccqw8RxCvEeR3nGEn7eR8aBw==
X-Received: by 2002:a5d:470d:: with SMTP id
	y13-v6mr16631291wrq.229.1537124432070; 
	Sun, 16 Sep 2018 12:00:32 -0700 (PDT)
Received: from localhost.localdomain (cust246-dsl91-135-6.idnet.net.
	[91.135.6.246]) by smtp.gmail.com with ESMTPSA id
	d1-v6sm28543936wrc.52.2018.09.16.12.00.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 16 Sep 2018 12:00:31 -0700 (PDT)
From: Alex Kiernan <alex.kiernan@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 16 Sep 2018 18:59:32 +0000
Message-Id: <1537124372-21225-1-git-send-email-alex.kiernan@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH] keyutils: Fix build with usrmerge
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
X-List-Received-Date: Sun, 16 Sep 2018 19:01:12 -0000

Update BINDIR and SBINDIR so keyutils builds with usrmerge

ERROR: keyutils-1.5.10-r0 do_package: QA Issue: keyutils: Files/directories were installed but not shipped in any package:
  /sbin/key.dns_resolver
  /sbin/request-key
  /bin/keyctl
Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
keyutils: 3 installed and not shipped files. [installed-vs-shipped]

Signed-off-by: Alex Kiernan <alex.kiernan@gmail.com>
---

 recipes-security/keyutils/keyutils_1.5.10.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/keyutils/keyutils_1.5.10.bb b/recipes-security/keyutils/keyutils_1.5.10.bb
index 2ead8fa..a4222b9 100644
--- a/recipes-security/keyutils/keyutils_1.5.10.bb
+++ b/recipes-security/keyutils/keyutils_1.5.10.bb
@@ -27,6 +27,8 @@ SRC_URI[sha256sum] = "115c3deae7f181778fd0e0ffaa2dad1bf1fe2f5677cf2e0e348cdb7a1c
 
 EXTRA_OEMAKE = "'CFLAGS=${CFLAGS} -Wall' \
     NO_ARLIB=1 \
+    BINDIR=${base_bindir} \
+    SBINDIR=${base_sbindir} \
     LIBDIR=${base_libdir} \
     USRLIBDIR=${base_libdir} \
     BUILDFOR=${SITEINFO_BITS}-bit \
-- 
2.7.4


