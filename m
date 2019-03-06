Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9867E00CAB; Wed,  6 Mar 2019 08:47:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 431E8E00C43
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2019 08:47:37 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id p196so10754647iod.9
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2019 08:47:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=Mv3rgdwTjknA/6tA7ncMP8TFmeU10LLvUOTyzhY9yLk=;
	b=d0Csi/dGGoHiwrTBteCgbbnK9dNJVznCCKpNZIg2PvGbQCqp8vGddVzIu0F/quwNCc
	2BsP1rdAFCGJV4vLdKrm2tgnGJlWmClEqCz6mofr7AEPW0Pgrtv6gnHcXywHoA9qjfGN
	9OfQak46rf282W6BSyZ4nUHPPD5qAbFaOuMCVaSPVtIB/QAQQ5HP2I2iVoKlUViBVPCQ
	om+nzPQ7D2jN3yjeJJfcQ9CHyn1IB4QvFp8lyogyc5x2myqnAzpY7oQM4Hc4hyvbrluz
	e6mequMjqpJcsiKsAgi2QlSNGwR4thruJvjCG8cSgAmdJOIp2TRkDC5qHkX6uPHBrtWn
	s0rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Mv3rgdwTjknA/6tA7ncMP8TFmeU10LLvUOTyzhY9yLk=;
	b=HFjtFxbuM5Z2j59jbOWRms5wO1qZt2dbBM6VhOYqmgesqPTZTo2FEGmKWOE3Rojemk
	vTV2Ww7VRMoEPm0O21s1jqZ9lF5j6Q6nmmrFtmJxqoNSgrVSZodBUKjobeqvOQv5ghpv
	m5GRiailEn3k6ZVApvWDv2G5QSGh4z5YhTQH0SREfFUC1glf0K6mLzXvLvuzlgygulpH
	ZyJ8IL+PUpoKfwcvdAtn/+NUQhNdnR8iadigN5MxbnR6v/EmPHoJQH1vnvyPZwBB8M6S
	4usElGZfMaa8iyq/VGfqQ+VtfiwPayMwkLIFRzvZ6fjtP3p3P2pfYsURDtrynjfF83Vp
	bWLw==
X-Gm-Message-State: APjAAAXjgBAf1h8H7E37R/OrWj1N1fhBVt5dDVoAHTpyTEf5UolDwe3j
	I9zMStcGKz7McaYcCfku86Y=
X-Google-Smtp-Source: APXvYqyZ+1kch5jxP25WEY6pNZ+zHIy9plXSnO3+fmULfWg69mDMglRZi203m/jLM+wfSPnNTcK2JA==
X-Received: by 2002:a5d:8198:: with SMTP id u24mr3651024ion.177.1551890856704; 
	Wed, 06 Mar 2019 08:47:36 -0800 (PST)
Received: from localhost.localdomain
	(CPEe8de27b71faa-CM64777d5e8820.cpe.net.cable.rogers.com.
	[174.116.254.195])
	by smtp.gmail.com with ESMTPSA id v14sm700227iol.61.2019.03.06.08.47.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Mar 2019 08:47:35 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Date: Wed,  6 Mar 2019 11:47:29 -0500
Message-Id: <096db26aeb606048384028dff2b342e40a2db387.1551890688.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1551890688.git.bruce.ashfield@gmail.com>
References: <cover.1551890688.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 3/4] meta-yocto-bsp: Update the default kernel to v5.0 for the non-x86 BSPs
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
X-List-Received-Date: Wed, 06 Mar 2019 16:47:37 -0000
Content-Transfer-Encoding: 8bit

From: Kevin Hao <kexin.hao@windriver.com>

Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 2 +-
 meta-yocto-bsp/conf/machine/edgerouter.conf       | 2 +-
 meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index 69e11eca59..70d3cfea3d 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0"
 SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.18%"
+PREFERRED_VERSION_linux-yocto ?= "5.0%"
 
 KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
index b7a94e9cbb..78c87f2f87 100644
--- a/meta-yocto-bsp/conf/machine/edgerouter.conf
+++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
@@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
 KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "4.18%"
+PREFERRED_VERSION_linux-yocto ?= "5.0%"
 
 SERIAL_CONSOLES = "115200;ttyS0"
 USE_VT ?= "0"
diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
index 6f5b9859d7..54a34be3aa 100644
--- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
+++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
@@ -14,7 +14,7 @@ SERIAL_CONSOLES = "115200;ttyS0"
 
 MACHINE_FEATURES = "keyboard pci ext2 ext3 serial"
 
-PREFERRED_VERSION_linux-yocto ?= "4.18%"
+PREFERRED_VERSION_linux-yocto ?= "5.0%"
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-- 
2.19.1


