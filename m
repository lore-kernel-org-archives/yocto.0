Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6211CE004D2; Fri, 20 Jan 2017 11:16:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f195.google.com (mail-yb0-f195.google.com
	[209.85.213.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D855E003C1
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:33 -0800 (PST)
Received: by mail-yb0-f195.google.com with SMTP id l23so8834248ybj.3
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 11:16:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=TtC2IKFSJylhSnVVB5gbFBIWRJ8QbzhWe4o4FiNOUiI=;
	b=gNnuYJHmySbRxt/Tku3mKUAzUoSNn6+35dqZad4VsV2HUJ0bp1uOLuaW8zfY/qAVvM
	l111AM0lszEIjafpjw8cOaY4SFSdqVrdhJlsW1O0DffIA4wDDUeZJjIOPYYK9J400Qu1
	fsnJCaApD8etb8H80PtmaMfWxVvhd5z9F/YLbmNXld0NjWqPiBDRk2wb5zjXd9fEWhIP
	t3nkOpbFvy+jEZfRsJw4E6MeR3VIOQGt1QAhE1DNKL0+Rw7j1sGaS47PKQ8jllfkk8y9
	r2OkeBozT1JSZZR/uqMyAcG/9MaEDps45aqMDeI1sftf8FNyfvpsAeYKMWJsrtSpcXD8
	V2PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=TtC2IKFSJylhSnVVB5gbFBIWRJ8QbzhWe4o4FiNOUiI=;
	b=Ze4Ioux+CObEaRZbE1kbq0jePBKdqKPnbjjEKJE6nVpOjlysB6EdiKMgJQVgaR4LVW
	3RH1OPQQpuumrZK/fcFyAro3I262qktAKK16yDXGd44H7TGIn7jVBGKJ6aqVPkNJ7lKp
	VD90OiS3YuhgS/utFJw8oXy4CCmEBAHGqgbJJ01CARMRJujjPsDleMiTMbOqbM6YamPv
	iwX5vqJene4q6sSib4AgOdobjzCKheAkbwefYRumJsccH4pMNBdkNMr2uk3BUguR/Kgd
	GG4JVLALx4jDWMUWGzkgfwZv6Axn7f4z6a332ld9lbQ0fyUjmaSuU2XQmDAcZb++GztD
	cLCQ==
X-Gm-Message-State: AIkVDXITF9/UwjmXXhUi1bUheSAethCvAw6qH4wYDAGgXFaXaYaXrO8aRmuURLfCK64AHQ==
X-Received: by 10.237.62.68 with SMTP id m4mr13210004qtf.171.1484939793115;
	Fri, 20 Jan 2017 11:16:33 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id e3sm6673488qtg.7.2017.01.20.11.16.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 20 Jan 2017 11:16:32 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Fri, 20 Jan 2017 20:16:02 +0100
Message-Id: <1484939765-30566-2-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
References: <1484939765-30566-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 2/5] raspberrypi-cm3.conf: Add dummy machine for CM3 (alias for RPi2)
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
X-List-Received-Date: Fri, 20 Jan 2017 19:16:37 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/raspberrypi-cm3.conf | 6 ++++++
 1 file changed, 6 insertions(+)
 create mode 100644 conf/machine/raspberrypi-cm3.conf

diff --git a/conf/machine/raspberrypi-cm3.conf b/conf/machine/raspberrypi-cm3.conf
new file mode 100644
index 0000000..153d5d5
--- /dev/null
+++ b/conf/machine/raspberrypi-cm3.conf
@@ -0,0 +1,6 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi Compute Module 3 (CM3)
+#@DESCRIPTION: Machine configuration for the RaspberryPi Compute Module 3 (CM3)
+
+MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
+include conf/machine/raspberrypi2.conf
-- 
2.7.4


