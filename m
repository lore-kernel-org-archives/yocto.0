Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 802FAE00747; Mon, 31 Oct 2016 09:40:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EE21E006C7
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:40:04 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id o68so7335200qkf.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 09:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=2WY23hn/OQc5LBpJMFioKdXPTW0mxrm3PxjVWMpoK/Y=;
	b=C5QUjgxpgu7hHYzYApuv5Y6/lPCd/JnyPHIf6UizHBWFK22O4yN/rABkvybSIDKBEv
	7yxf3zaMt2+KAuoVOpm0m/WFtE31+JemIFPPi6JL8c9L1yi2zCHS8nHJQ6IXpCDpyeTc
	3iMYIAUQ4XFjHcIQeaxzCFFLnrAIKOPl96y76NHXN18zfATPe5m1iQOX2SfoG6QyL3Sl
	ZxKqj23rxx92miw4750N/TjuUdIpy4P4Db1CtYt7mDbz51ZUvQCMUiURAEjdm6YtTfot
	U03DQuLV5KCxmaqqohnP6v+uQHfPP4JFh3RsBHgmbBaTTUw0mRVILFmbBTm4HEi4oxG6
	xWmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=2WY23hn/OQc5LBpJMFioKdXPTW0mxrm3PxjVWMpoK/Y=;
	b=QzVPnB9XXMP0JQzQM4qeZ5q35/q9Zoheceoeuv7tGPEZGk0ZA6T3/GCqAkNPDwzPS7
	ma9GArKvG9A0FZh+ay+8SZrOvz3KR0eSrordOh1hsEZe6/H0c6BpMaPe0y4I7g7nuEyk
	Cjlkf0TEedhfwlh2fI7ZWKzpYHbtypghodDgbe2+1krxroN6BiVoR23HxLZArEC9x83b
	j7HHdO0BVbJWN8qS6qmNnX+4DfJIhNDUqsSODsHCOT2VHAN/ePhx6lYK+AmX4zGZ5JOr
	TDArdiFXReza4M0lGd9vDIGrMsYygVHGGnKDV6+7Bot4rs72LgS0BjaOVxYPhE0dK5Uo
	242Q==
X-Gm-Message-State: ABUngvdvY+0YH3Hk/nUhd4W7G0HB5QwvOZlL1xstgPVfUSSvmtThLOgiOTg9fAiGNS6ijQ==
X-Received: by 10.55.16.10 with SMTP id a10mr24628092qkh.66.1477932003328;
	Mon, 31 Oct 2016 09:40:03 -0700 (PDT)
Received: from misc1.dev.resin.io ([2a01:4f8:173:120a::2])
	by smtp.gmail.com with ESMTPSA id
	q21sm12384399qkq.8.2016.10.31.09.40.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 09:40:02 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 17:39:53 +0100
Message-Id: <1477931993-21342-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH 1/1] linux-raspberrypi: Update to 4.8.4
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
X-List-Received-Date: Mon, 31 Oct 2016 16:40:06 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-kernel/linux/linux-raspberrypi_4.8.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
index 7934747..528cfef 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.8.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.8.2"
+LINUX_VERSION ?= "4.8.4"
 
-SRCREV = "0105b0ea92b1614ac00329a530da940053e64a4a"
+SRCREV = "d8f7c2da3d33ea4fb4f67411badad374b1160b44"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
 "
 require linux-raspberrypi.inc
-- 
2.7.4


