Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86E69E0083C; Mon, 17 Apr 2017 05:37:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1608E00546
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:18 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id q125so8661270wmd.3
	for <yocto@yoctoproject.org>; Mon, 17 Apr 2017 05:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=AvhwIiz0bACekUXZmLNmXHjVplW2Neq+DHOsFHcSHl0=;
	b=qNU/XMp5BsB0K/AKjxIJVzE+5BNqTBnlOn32oA35lKOcvwdYayb6Smh8PzV82XlAGa
	vyctWrypLEVdmB+jaWkb5K4nICaKMiYv9cRHDjjP2kH2N4SZYH7rRzNogujeRRjE+sE5
	/lddI1/ccaBVOCaoghmDfaC2mL1hMvh4Ju2pBXVrx57XKUnmZWpiNs56WUQwHXkm9sy2
	WfHVg9zXMyJBwnFlhMOY0JHdyfHim3Q2k6JzkjN+13TJEb4D3LP6SyqciJWSgo95yE/v
	NnOwTdMNGCX4JGstOtPE7aXQ+OR/lfey5/hZ68JIAVwyrlo5iSu1NKzUV+WTP3Wwg/fI
	0DjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=AvhwIiz0bACekUXZmLNmXHjVplW2Neq+DHOsFHcSHl0=;
	b=K+1rxzaDIEJAL4xhJ+JWND2KILBNQ/8u7mrU4foLvrdn3JJ+PQQmbgAPiIEVFhX7Ww
	E5gfkaFHYV+Honh4xMBYUQ0Ie+GtEckOyON41f9SKQ2WZ9E8QfcoS4riEOlHK0Grle2t
	ARH/Yqesn4VfjV9wC59IHfcpIWCIDfGWtZBz5WbJuNsLq4z3ofg0aJEsL1ifVEfHO7hT
	ZzsuL3MMOUpwMRhk78Jp3GJzaNK4IaIT2zkOsekaZWDt8qUAGwscoYzbKp2fktewMRbu
	dDO0pETlm6jJ/GCaUZFAGxj9RY/VPHO3Ut4qUHNCbu2GvKXa0lksDNbKdHmz8A9wlUqK
	AgNQ==
X-Gm-Message-State: AN3rC/4TM1Ai1Pf2K57JMGA4po0hs+h8mRiJ1+7zrUXDzLrWvf/TigQd
	yjBTKf4YzWh01A==
X-Received: by 10.28.17.147 with SMTP id 141mr8658316wmr.4.1492432638277;
	Mon, 17 Apr 2017 05:37:18 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id d23sm8194524wra.6.2017.04.17.05.37.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 17 Apr 2017 05:37:17 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 13:37:09 +0100
Message-Id: <20170417123710.6374-6-andrei@gherzan.ro>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417123710.6374-1-andrei@gherzan.ro>
References: <20170417123710.6374-1-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 6/7] raspberrypi0-wifi.conf: Add machine configuration file
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
X-List-Received-Date: Mon, 17 Apr 2017 12:37:20 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi0-wifi.conf | 11 +++++++++++
 1 file changed, 11 insertions(+)
 create mode 100644 conf/machine/raspberrypi0-wifi.conf

diff --git a/conf/machine/raspberrypi0-wifi.conf b/conf/machine/raspberrypi0-wifi.conf
new file mode 100644
index 0000000..2b7cea4
--- /dev/null
+++ b/conf/machine/raspberrypi0-wifi.conf
@@ -0,0 +1,11 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi Zero WiFi Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi Zero  WiFi board (https://www.raspberrypi.org/blog/raspberry-pi-zero-w-joins-family/)
+
+MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
+include conf/machine/raspberrypi.conf
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-bcm43430"
+
+SERIAL_CONSOLE = "115200 ttyS0"
+VC4_CMA_SIZE ?= "cma-128"
-- 
2.12.2


