Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5162BE00AA7; Thu, 19 Jan 2017 03:51:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE, RCVD_IN_SORBS_SPAM,
	TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F9D4E00AA2
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:26 -0800 (PST)
Received: by mail-yw0-f196.google.com with SMTP id v73so3711273ywg.1
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 03:51:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=YGZhf4q12T7mNb2hyNjCctS/Fw60A2SHVguFPufwtD0=;
	b=L9eBAauwBjt7JRofpy6o1lKDffQfnh5JyromNOlFC9OtRqRBiuVFN1vuXoWSgV+S+5
	e4AfeBpsNKEURGTX7Ba/9LRs/fdrHN/zJrvlNs8GxQoscueKZ/GwSbY0uEde0dKNMF4E
	ar0J2GH34VGM6bqMgr8nx4PcI8MXiaGZKdEziVi0XnL+s4AsfyRI6ErRLlPCtQl8hvpm
	UaiiNfoIzZh7QO8OnLwQpman+rWyxPdo7vUkURWu3pf+PdZntUlmzD77JmsbdaTpJAt9
	NESe6drXqr0htT9+RT1vHe+f8+QI6oKSEMubbXmH9CVSkxosGuF/ZSxKZPcV+DfB4DzR
	8WPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=YGZhf4q12T7mNb2hyNjCctS/Fw60A2SHVguFPufwtD0=;
	b=f8paP5vR/ZJAGri/Of5BwGHRetE9fs4dc8WAC30tSr9RPwM3lvq/AfxkbOdAvf/3KH
	GVWyw/XKRnesz/MOqFJQ8aq79R78V5kVWAoNAzxvOhicgeD8rJQWo523V/dbMKM8GfMt
	o61480EV/CLNkXKFUH1dc17hQmw/eZg+2t1hpEq9CXSIQB8KiP66pDSUvfpw50iMlTXD
	nvwJSrxJd6qmebkcRF1YQztaHWAAE+9n0Kc26ODgh03VdPINDv1B2Isi1tKM0mPbjVSS
	fT6hf2LwbN3i3v8Sj6rx/RdDtGgDumGygwMDoZ3VdlK3EoDdr9ij9Mq1jtsxmoSu24g/
	PoJw==
X-Gm-Message-State: AIkVDXLuxo96rA4H5cYzD5y8jlZqFaQopWJwxTPM7TtbkD+F4+rOmtkePlXMIwc7wBvxdA==
X-Received: by 10.55.215.202 with SMTP id t71mr8434952qkt.114.1484826686036;
	Thu, 19 Jan 2017 03:51:26 -0800 (PST)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	i48sm2833382qti.37.2017.01.19.03.51.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 19 Jan 2017 03:51:25 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 12:50:57 +0100
Message-Id: <1484826659-21692-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
References: <1484826659-21692-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][morty][PATCH 4/6] linux-raspberrypi: Drop v4.8
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
X-List-Received-Date: Thu, 19 Jan 2017 11:51:28 -0000

From: Paul Barker <paul@paulbarker.me.uk>

Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 8 --------
 1 file changed, 8 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
deleted file mode 100644
index be25e65..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
-
-LINUX_VERSION ?= "4.8.16"
-
-SRCREV = "061dccce6cf6705bbb5da29a643f4b0ad1d11630"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
-"
-require linux-raspberrypi.inc
-- 
2.7.4


