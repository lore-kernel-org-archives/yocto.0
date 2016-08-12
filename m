Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DF58E0104D; Thu, 11 Aug 2016 18:06:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B814FE01040
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:20 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id ez1so558342pab.3
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 18:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=yD4qIyfhuKaWOgI0TCKoKJfe2dp1+I5TaVWH5ey8mgw=;
	b=u0At/8KFawPoOsp6jJswA4rtBgCg38JOspj/kxfu8fOT7MmDTWEbWNpjfCVoB7lYYe
	KSfxmDs84HvVfdZthWtBng9BokWCPpEceciRYRbpyz1if4G3mQfrxU+xwShBD5m0zVnb
	r4CVnSp6qY9acLbJMgWKB97WSHz+U6jLZABMtM7/WT0FSmEoExAVFAxMyAeVtTcjJGM+
	8oYV5o/Du0IBnYGkFGeRA6D/C8lqtyny9z1kPY3NMNexNRYVqiW8JZ76ANWOiQwqgd+o
	PLhzWvt0IXOBchZ5Lmnd8a8d0Tzcr4pzBXz+zl4sUYoeXAEbGaw2Mxb5lp+iGdhU9HUe
	Mnvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=yD4qIyfhuKaWOgI0TCKoKJfe2dp1+I5TaVWH5ey8mgw=;
	b=B+k45kOG+P8Wh7CEmrB9q3v8jpbRxJLPlCEWe8fLCCtf5GP5QDweYKGFk+O1IQxMPs
	ZYmf+3eqzZzh9T88iJPmzO06wEyb9RwPbRJ2a8rXOMLPfJELRaABCu977enqSfd4xcta
	lgq+qzSu1Qpe0Te14L/cJs7lIG8LGAxAU7o2f39B+TlKbHRLraCDOufPhfZ6oDVEUYXQ
	4oikIaxJOSGjrtFxP3dCWt0rqiQhd8VfrJF2mQWCdr54jqbs1MQ0dP3faWaye8z7bDZV
	tLQuuvGRbFZYV4OE3doU0DVvk6RtD1hYfL84I+MLzrifbreNsq+lw18lWwq0ahTdEmT5
	a4dg==
X-Gm-Message-State: AEkoousIogKubjSEEwLTuCq0gFl2YpzTSdhUDy5hSlCBHe0SrSE6GaftCc49QXTHP+vqNA==
X-Received: by 10.66.127.38 with SMTP id nd6mr22428571pab.74.1470963980052;
	Thu, 11 Aug 2016 18:06:20 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id a5sm7955260pfc.89.2016.08.11.18.06.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 11 Aug 2016 18:06:19 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Aug 2016 18:05:50 -0700
Message-Id: <20160812010608.31182-5-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20160812010608.31182-1-raj.khem@gmail.com>
References: <20160812010608.31182-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 05/23] rpi-default-providers.inc: change default providers to support vc4graphics
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
X-List-Received-Date: Fri, 12 Aug 2016 01:06:21 -0000

From: Herve Jourdain <herve.jourdain@neuf.fr>

Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/include/rpi-default-providers.inc | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 359870d..078e9d6 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -2,8 +2,8 @@
 
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
 PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
-PREFERRED_PROVIDER_virtual/egl ?= "userland"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
-PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
-PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
+PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "userland", d)}"
+PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
+PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl", d)}"
 PREFERRED_PROVIDER_jpeg ?= "jpeg"
-- 
2.9.2


