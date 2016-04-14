Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9430DE00EA5; Thu, 14 Apr 2016 11:56:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C67F5E00D95
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 11:56:22 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id r184so32089077qkc.1
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 11:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=3cJ7PyrK+3PuSCesuL8XXjoOKYwpAweP8TyT+MyCu8Y=;
	b=bd7oSkA8wuIOWE89trdRyFmpRLFJKlZt4Mv2jidXJLtXWgJT6ZSmmeFMuxVRGqTUNb
	ZMDEcaihKNrXstSN5OzhlGfL9WGvsdy2vb0DozWYO+FkRkrCISmFb/uAarrUsdTzu8rA
	1u2RruMEUkglkoV5NZULbUAFkCyEbVMFH6qMVyz5QVoVO59Ibxv6Cqu0kVK+BKMVcx9G
	vh9DiJQ498ozc7S7DAGKSlaEEofhY1oczQOnBYoLObUlG/QX4RVDiW8+7penDeGFDfhv
	xgeK07L8wbJOyXM8i3s1cgIWY5Ney6/JZEqoFrM9ZynYXYDbfK4ShOYcM1M5f03+dNbC
	Nhow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=3cJ7PyrK+3PuSCesuL8XXjoOKYwpAweP8TyT+MyCu8Y=;
	b=FS/XFwTA41m8Jq+H+30SFH+w0ot+yzJvCN6COen09/O7xoRW9hcAZsTTpvQbg1zWkh
	pnnGIYIFE957eoXLmr9vE01g+N9Tgu+BN57LJPcqjdxT6/ktsLCM2rOm0SvsKv0vwJFM
	RdAip6XqGv3oe6m3USnHaRDFt2EkJEoXJnysoO+U8eVZ9xJVVr6XNSpIKwBI+3+6zeU/
	GmHdvtoHXX2UqqlXm42N3Mvo3iGiNh1faSRelYQ89wglZRxpwmhuY21ogHoinrc52WEm
	Qr7MDBATL/C7pdH7RJL7HqKXwe86TOCAeNRvWW6/htrEYSScbaQVIXVV9AhEcP+k+bOt
	jFPA==
X-Gm-Message-State: AOPr4FUkMpBC7hPF6NEgvX7rWsml4hQIINDhdkNi/bU5TZ86t/bn0/24IAPAxD0ROdpbQQ==
X-Received: by 10.55.78.70 with SMTP id c67mr20620809qkb.37.1460660181970;
	Thu, 14 Apr 2016 11:56:21 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	z110sm18649303qgd.45.2016.04.14.11.56.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 14 Apr 2016 11:56:21 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Apr 2016 18:56:16 +0000
Message-Id: <1460660176-21191-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-poky][PATCH] poky-tiny: Use linux-yocto-tiny for qemux86 only
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
X-List-Received-Date: Thu, 14 Apr 2016 18:56:37 -0000

This is not working for other BSPs yet and we cant
use poky-tiny profile for them. So make it qemux86
specific for now

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-poky/conf/distro/poky-tiny.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-tiny.conf b/meta-poky/conf/distro/poky-tiny.conf
index c6a9086..7a429fe 100644
--- a/meta-poky/conf/distro/poky-tiny.conf
+++ b/meta-poky/conf/distro/poky-tiny.conf
@@ -36,7 +36,7 @@ TCLIBC = "musl"
 
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
-PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
+PREFERRED_PROVIDER_virtual/kernel_qemux86 = "linux-yocto-tiny"
 PREFERRED_VERSION_linux-yocto-tiny ?= "4.4%"
 
 # We can use packagegroup-core-boot, but in the future we may need a new packagegroup-core-tiny
-- 
1.9.1


