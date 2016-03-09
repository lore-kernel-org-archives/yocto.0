Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3915E00C41; Wed,  9 Mar 2016 06:15:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99AAEE00C3B
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 06:15:26 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id l68so10281610wml.3
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 06:15:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=XJZuVTG4Gow0J2nEJ5fAEjOIIesWkWjKFXZIbzWyZzc=;
	b=JNycSjsjPyZ+vnk0eYXwDnaevNOyA+m/jwaKGRuAX2z2YhvBgnkeNhMQCcdKoo5ru2
	4aEqEARlaFoVpLmB5c3WUsVAXvmFCrY/9Z6l3ecPZejjfk0j+SQL2u29bGFmiEFBScoR
	fAi7KuPr7K8Xskz6VMse8/c1OXSz0/ZfbGqsn6qj4gX/uyt2RCIiAwhMG5DePL5QXYyy
	TErnktWQeDir91I4Mt96oIrDnqWXpSuq9BPgBtnV+o5DYatKdTBpTobb10PtvnekO+zO
	Rh7kqeUGRS4ICLvqK52YUg5htd/i794NYJhGCarVZWUgZv14y0sIxjIt+kaWqmoW+sfa
	OQoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=XJZuVTG4Gow0J2nEJ5fAEjOIIesWkWjKFXZIbzWyZzc=;
	b=h61bSlbhXNGjxb8ZEvhaNh0saUnujWGCqCZ3yLupFOOPUZfU/Ibu33xh9wZq4Zw7LP
	68PXoNH7B2SRkpUfJzUcx04o7sleT+5drile4nPsvoZVYI2PcZjkW7U1ZasgWvie+yqu
	WUqOWGn2mOR3duRt4JMLA5dGvfKmhvt7G2NHAMJLiY+4eaG/R2WNOckuNzlvGoHTtK6G
	ebs0n7qizRlM14A2+lxd/B9ane7NISyCJlJxfegyq5j4fVCRVSkVjJADKBmH3Q5ZxB8Z
	q+84X4WO+ApYaIl0QgDLhsCF7HRmGmQgcKl8GMJ1o09w38udY+EE3syoArG5qoLCRGpo
	afBA==
X-Gm-Message-State: AD7BkJKc4OzTbyiqdktvu81XeFwOjfzkgQrdQdp1fn3X5lKxeu4xL3hztPQeH/MjCfLh4g==
X-Received: by 10.28.238.210 with SMTP id j79mr2110230wmi.23.1457532925877;
	Wed, 09 Mar 2016 06:15:25 -0800 (PST)
Received: from localhost.localdomain ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id
	e19sm24214662wmd.1.2016.03.09.06.15.25
	(version=TLS1 cipher=AES128-SHA bits=128/128);
	Wed, 09 Mar 2016 06:15:25 -0800 (PST)
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Date: Wed,  9 Mar 2016 16:15:07 +0200
Message-Id: <1457532907-49811-6-git-send-email-theodor@gherzan.ro>
X-Mailer: git-send-email 2.3.2 (Apple Git-55)
In-Reply-To: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/6] rpi-base.inc: Add rpi3 device tree blob
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
X-List-Received-Date: Wed, 09 Mar 2016 14:15:28 -0000

From: Theodor Gherzan <theodor@resin.io>

Signed-off-by: Theodor Gherzan <theodor@resin.io>
---
 conf/machine/include/rpi-base.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
index 27f09ad..792150e 100644
--- a/conf/machine/include/rpi-base.inc
+++ b/conf/machine/include/rpi-base.inc
@@ -22,6 +22,7 @@ KERNEL_DEVICETREE ?= " \
     bcm2708-rpi-b.dtb \
     bcm2708-rpi-b-plus.dtb \
     bcm2709-rpi-2-b.dtb \
+    bcm2710-rpi-3-b.dtb \
     \
     overlays/hifiberry-amp-overlay.dtb \
     overlays/hifiberry-dac-overlay.dtb \
--
2.1.4


