Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90C36E00C3D; Wed,  9 Mar 2016 06:15:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9A5AE00C3A
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 06:15:25 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id n186so10314808wmn.0
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 06:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=B6OTyf4MPRoib471ehFhz0D/wh0Tvly/m+xpAfrizck=;
	b=jOUNIx2r5TjAMRVRS9fNcuFUsOChARw9IEP4xFubOVdboHaQwaJPtzQGjz7T5ypS2B
	jDHbCEBOsuNH5wYVU/Pm8EQGgOKGnUi7odg+gf+DG1Y9E4I0MnZzrwN2SGmcpunjlK+X
	ThXrVsBYK1AKGVgBIK/UR59mSHl3W5+bYbFDS05eiLnSqrl7cOi24RQaptt9V11ULlzH
	xDU9U7YP4DKk15kgL1kY5oCs8OwNiGpHoaJd/7huzqNE5uvVqTjQj4N2/uvZHKL2EviE
	CKYBI4VQTVOS7icw1F8nNb/MUNhX+hciXZK1v9eNXD8uMBLuBNPGJ4wpt3ClIuIX6RQl
	L8Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=B6OTyf4MPRoib471ehFhz0D/wh0Tvly/m+xpAfrizck=;
	b=UThie6pHe1YIlVaws+fqKFD2K8V8bUPXTTB2b7Qr8NCTaXNvBTGmYjdLD6sWxfScrU
	Yjv9zJJ54Zd96O9gIVmHstI7Yql5LAKj+4oO1WxqKYj1VJ3NwSqzc61SsjiRsgako+qr
	i1HLFVMNeKy5RQmAfeChVqk4onrbDB5UXYatr8Zu0sBkBp4blIZd7mwGA4yTVr4Bcsds
	ag00K2mN0j3SdWaNkwNfq4sWYnLUCqVWa9XvWa5IT2s4EcRgE8xMjps1bEGuU3jLlSGX
	K/y3CKiTwVnWAJvJITonamnwUg+pOlsFNC8ZCQvvd2En2wVG++tU8MxVryZBtobUTCNT
	02og==
X-Gm-Message-State: AD7BkJJdpNaTyjHcuZYdA4wgwHG4QHLPZyCJtwLAjG2Ht/qeP5rR/dKvu/pIfapKIMODqA==
X-Received: by 10.194.120.229 with SMTP id lf5mr38812581wjb.151.1457532925027; 
	Wed, 09 Mar 2016 06:15:25 -0800 (PST)
Received: from localhost.localdomain ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id
	e19sm24214662wmd.1.2016.03.09.06.15.24
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Wed, 09 Mar 2016 06:15:24 -0800 (PST)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  9 Mar 2016 16:15:06 +0200
Message-Id: <1457532907-49811-5-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
In-Reply-To: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 5/6] raspberrypi3.conf: Create machine configuration for Raspberrypi 3
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
X-List-Received-Date: Wed, 09 Mar 2016 14:15:27 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 conf/machine/raspberrypi3.conf | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 conf/machine/raspberrypi3.conf

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
new file mode 100644
index 0000000..1b73f2f
--- /dev/null
+++ b/conf/machine/raspberrypi3.conf
@@ -0,0 +1,9 @@
+#@TYPE: Machine
+#@NAME: RaspberryPi 3 Development Board
+#@DESCRIPTION: Machine configuration for the RaspberryPi 3
+
+MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
+
+MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
+
+include conf/machine/raspberrypi2.conf
-- 
2.1.4


