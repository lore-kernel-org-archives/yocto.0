Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80759E00E02; Wed,  4 Sep 2019 16:26:59 -0700 (PDT)
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
	*      [209.85.210.181 listed in list.dnswl.org]
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1D74E00D9F
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 16:26:58 -0700 (PDT)
Received: by mail-pf1-f181.google.com with SMTP id x127so422989pfb.7
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 16:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=y3DEIyG8OrpQRiDh9pVOBwZJisk9FWTTNI0EbLzMSw0=;
	b=oGq3v6Mq/QcseX2jrcJ9EguLNf1YjEMx+OO2La5HvxRb/C2Dojdl1o7NWBYhTURMVr
	JJoxC2m3Hut6oaB+pUqEJwm1aJm+IHVszt+3U846D09sErdyA4T1kQFlNorvM3EUJ1Rh
	pqDAVS/pKhBnuHHVu7BcNoS1lYVDTNchV6nd5OzluE9htE33xIyr98H1+JKh2kAE16VN
	GlBz54DvpZNn9a6j7XTH8+ZeV+8FmOAhnvp4W6wix8tIb+xEHJLUj3YkWOv4R+VpICzw
	/4pUfcsKFbeMWegyuh7X47lOmThZsRXwHQHyzJXrcElSR3Pp/3QSkMHN3dmRSrDqgNKy
	kc8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=y3DEIyG8OrpQRiDh9pVOBwZJisk9FWTTNI0EbLzMSw0=;
	b=GWNIOJ1/yt9GZJieGa78FCjtGkMXEY+GoTQMp3YHzUUP/uRZU6HqlLIwHKJhjuZJeB
	zcg3f4ZPsKq2TQFeN+7h8OVkjx6TEnnI1KqrkVfjXWfsP5QWdqaWKTbv1y+4kb0PgZ+i
	GOccA3EMthwm82QhPR8lJzsAi+Hxw3UCd0qe2RbYaAwdg46wHnGJnumHM/cup8542U1v
	Bm8CPfFPxY7U7J+SfO1zQZi9oD9HGDSWi9Jsc7ytRayLet1JBpvN1gN1RTQanRFsHZ6V
	sEDx81VzjtF/9pTDEZusjIOQWdjANR4B6J+p7JB5D2ehttti+fJDBLWKFlisTrYr0W9P
	qGLQ==
X-Gm-Message-State: APjAAAXW1bSbdNzsvAXsNGhEJheq3da3Zdu/dIi5JQe30F/ApthfWxyj
	0rvgTf+ellLE1yc5WcV7gOHyknGU
X-Google-Smtp-Source: APXvYqzp+gIzyR3O6/dfcV6UgxE3N7ir04EA2nzqqUKzVZWW2/vh8Y5n76Vh4Esbw4CLFjw0B+QYLQ==
X-Received: by 2002:a62:55c1:: with SMTP id j184mr274465pfb.104.1567639618234; 
	Wed, 04 Sep 2019 16:26:58 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	(c-71-204-143-8.hsd1.ca.comcast.net. [71.204.143.8])
	by smtp.gmail.com with ESMTPSA id
	129sm153508pfd.173.2019.09.04.16.26.57 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 04 Sep 2019 16:26:57 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Sep 2019 16:26:53 -0700
Message-Id: <1567639615-8404-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/3] cryptsetup-tpm-incubator: fix QA error RDEPENDS
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
X-List-Received-Date: Wed, 04 Sep 2019 23:26:59 -0000

ERROR: cryptsetup-tpm-incubator-0.9.9-r0 do_package_qa: QA Issue: /usr/lib/libcryptsetup.so.12.3.0 contained in package cryptsetup-tpm-incubator requires libdevmapper.so.1.02(DM_1_02_97)(64bit), but no providers found in RDEPENDS_cryptsetup-tpm-incubator? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
index 8b50445..8385c94 100644
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
+++ b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
@@ -32,7 +32,7 @@ RRECOMMENDS_${PN} = "kernel-module-aes-generic \
                      kernel-module-xts \
                     "
 
-RDEPENDS_${PN} += "lvm2"
+RDEPENDS_${PN} += "lvm2 libdevmapper"
 RRECOMMENDS_${PN} += "lvm2-udevrules"
 
 RREPLACES_${PN} = "cryptsetup"
-- 
2.7.4


