Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC5BE00C38; Sat, 26 Mar 2016 09:59:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9994E0078E
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id u110so80427544qge.3
	for <yocto@yoctoproject.org>; Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=+k5WsRQmvtPtvmttkGOztH/6EtHbZVncjNMHkjykTeo=;
	b=CV1Av0SXJL4x4oRIwLwS2PggwEmExQSsxUW6g5l2ru6sHyVRCQmdt9ArCNmb0Yb7T2
	Ox+4zSs+YphWVxFFripsTO49N92Txycki7tP2tqNtjHjdvWSxfBlMmW0b4TVx6AcqpOs
	uDR9yp5JV4s1nw2EA9NvbLc0PDJh5OBt6cr+EmoGcCoC5ay6xMrfzPLAm+e/gnsRT4gX
	p+oc+0VIEPncSFUq8Nt38yWQiXeoCAiNkTyQf4BwDPbu1YKz/WspFCDB7sOTPAgV23za
	FMML6A96nGg9+sPtsXTeQoyFdRol2HjXq9PqQmB88YH+1afkPKVb9herUkjLQ/ktn37Z
	YKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=+k5WsRQmvtPtvmttkGOztH/6EtHbZVncjNMHkjykTeo=;
	b=EiuTZkhi39U1aYUDeB/KdNSfhfq0ZsBeBPpnYgvGxrHVW6l3S2Zczv6xzQRT3Up9r2
	PfODkBYpBIVcnh6+LLmC/Ra1Vc4e7NJgfOwR3+dIFCfX6umDQB2A6vFmjCOVkHsd1YJs
	wuMHdXYexjtcHVIZWIzkpUmbfMKFINHJF2M2kf+868xksphyZXe7Rnbe+BpgFX4eV4jJ
	pbbRo3FNwJL6qsuVnda5tVW7/Yv1RqzijgMbRfomBYeMYPROJh0R5BIMB6/E3083Hd9L
	M8cjKdPetSuwP8zW0C0ElRri1kykFqQmPpLQxij04hamin78fwmmPlegCartgU2JYenI
	f9Jw==
X-Gm-Message-State: AD7BkJIK4BZcLCBRhf+K2GrQlB0iwHiVRSF2RIaHLWmRhK4cmBoPMOz537fzxtSd3fvE4Q==
X-Received: by 10.140.169.4 with SMTP id p4mr26100317qhp.71.1459011587214;
	Sat, 26 Mar 2016 09:59:47 -0700 (PDT)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	o128sm7955368qhb.34.2016.03.26.09.59.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 26 Mar 2016 09:59:46 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 26 Mar 2016 16:59:35 +0000
Message-Id: <1459011577-14870-3-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
References: <1459011577-14870-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/5] eglinfo-x11: Disable --as-needed
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
X-List-Received-Date: Sat, 26 Mar 2016 16:59:51 -0000

--as-needed exposes a dependency problem where libegl needs some symbols
from libgles2 but the order that waf uses on linker cmdline for these
libs is reversed so we end up with link time failures e.g.

libEGL.so: undefined reference to `glxx_client_GetRenderbufferParameteriv'

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
index 7f8b600..fd32abc 100644
--- a/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
+++ b/recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
@@ -1 +1,2 @@
 EGLINFO_DEVICE_rpi  = "raspberrypi"
+ASNEEDED = ""
-- 
1.9.1


