Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8756E0093B; Mon, 31 Oct 2016 09:52:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D95EE00803
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:21 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id a136so5792779pfa.0
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=G/2RhhdVETGTpr2LJau0OvTJgZK2Bx8rglo5sglI4cU=;
	b=VF8Vtr4WJm+hqDGwnVNd0QAKwn68a6VfJOwkSxh62DIsEeNhPDcFOE+xiw+7ACnWZS
	pYHuwtV+IOPsvAsi4MLCkPg65l5admX66gfVuCEhhk8gBCt4xOr6zYirQxRWVY+PllIw
	RnVv+a8IHThO0+F4UkFUKliR7PUQBKBab4UEssXsO7ueVjBMVTogYMfWcZOKlDnKUfbM
	llKjnT4KJgdfib+Y1f4AMYPbo7TqA9++L7eck4X8Fbx4HiU/dqZxm/CIH9/qTqUZd5GZ
	v8Sgzpfbmf95brl3fuUhRvWbMdcsGjJo7vtGuA0r3luEzGTZZ7m2DdBeWtet9xM9/+Sd
	rHwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=G/2RhhdVETGTpr2LJau0OvTJgZK2Bx8rglo5sglI4cU=;
	b=YplK8H5AQHU//dwZFIrN/ImyLK5qdcVtHqi1oUwBY25/kL2kRpLRZeFGRcKtq7E3iD
	KVqxkxXCw7SuLfFctcPHUckZhrp+Tf/l7HEP3J4MMbopErd4+lFyGlP7uL2RPiUFTlWv
	ZoAj0+lFUYtd+z7Sl0KYva37OK6Pms1E9Hdz5Jt+RivukqdEcnl3CMjsBFMP7k4xikjt
	Ju8S4GRKnmlRVQWX5J4DvRgbRJ+ffQdeRFFLvQTXTdN23qqrxQ/4vRORz5shIjrzwgeB
	r73rWrX3DxDoSTuUGm7UI3mhrSi+u3RwWtxvFdK1SwS7ecncxGdh8l4MEw4cFrvCd3VQ
	G2uA==
X-Gm-Message-State: ABUngveOh4FfsLN5G3uTgeihyMYH4DMYC2PK9V1Y8KI2MUAD3UEa8HQRvtaxyjuhWNoMyQ==
X-Received: by 10.99.110.142 with SMTP id j136mr42372144pgc.132.1477932740609; 
	Mon, 31 Oct 2016 09:52:20 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r2sm14653100pfi.67.2016.10.31.09.52.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Oct 2016 09:52:20 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 09:52:08 -0700
Message-Id: <20161031165208.16286-6-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.1
In-Reply-To: <20161031165208.16286-1-raj.khem@gmail.com>
References: <20161031165208.16286-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 6/6] linux-raspberrypi-4.4: Update to 4.4.28
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
X-List-Received-Date: Mon, 31 Oct 2016 16:52:23 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.4.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
index 4b15f88..19e8552 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.4.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.4.23"
+LINUX_VERSION ?= "4.4.28"
 
-SRCREV = "c2a1d975537fcac01da80ce34f10bc491620a64e"
+SRCREV = "5afda48c3408e15742d4569459a4ff668e2857f7"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.10.1


