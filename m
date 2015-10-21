Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58BCDE00AF9; Wed, 21 Oct 2015 14:13:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL
	blocklist *      [URIs: gherzan.ro]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F89E00AB0
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:54 -0700 (PDT)
Received: by wicfx6 with SMTP id fx6so109333213wic.1
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 14:12:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=qofhiSnAXlyqtZzIJu8dVoX1M0y5pQjBE3rv6pHArN4=;
	b=P+bsdm58Y2qXdpUm1oiVE67EL9L58GGuDBdh1zWyNFCjAkXj1Eb0pKvqBSbTgQJeH9
	6IQg8nKNi3lVKJsarP9DWfs4hoBIpF60JZ+WIIkuA9ZddEn//hKkap+up07Z7i3jl1Ig
	0gOVg0I7WvpyniyK/wAM3/2+/fBWVyiOr4L2ZN9diV1zJNZlMvpArAAFx3VQiAj/Ghu4
	FY6GyCnybcVz80RjtEH927cPhmaXWHu9BCLe3OF/cImlI590D5MdA4C7yy4hpL7vDR40
	IJkUXei/Am9ixJc/5/bj3PtGMyMU/Yy8GWfs2Q3NOdbgVWEcVQsHkolBEJKGU3ytifA3
	ofjQ==
X-Gm-Message-State: ALoCoQmP9JM6OhCyY/VqdBQ+UlrvGTxPgkIdX3s87e/Ke2GMvsO+IVSKq4VyU5PJ4Qp06Y4qXw+H
X-Received: by 10.180.102.135 with SMTP id fo7mr25293107wib.0.1445461973398;
	Wed, 21 Oct 2015 14:12:53 -0700 (PDT)
Received: from resin.localdomain
	(dslb-088-067-185-162.088.067.pools.vodafone-ip.de. [88.67.185.162])
	by smtp.gmail.com with ESMTPSA id
	x7sm25248958wia.10.2015.10.21.14.12.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 21 Oct 2015 14:12:52 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed, 21 Oct 2015 23:12:09 +0200
Message-Id: <1445461931-18349-9-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 09/11] rpi-mkimage: Bump revision
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
X-List-Received-Date: Wed, 21 Oct 2015 21:13:01 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
index ffd1818..ffcaa83 100644
--- a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
@@ -5,7 +5,7 @@ SECTION = "bootloader"
 
 DEPENDS = "python"
 
-SRCREV = "d4b397f3a1e60ea45660eafb9209bcb97453c456"
+SRCREV = "f5642106425d430e1f82ee064121a5fd0e05a386"
 SRC_URI = " \
     git://github.com/raspberrypi/tools.git;branch=master;protocol=git \
     file://License \
-- 
2.6.0


