Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24D4BE00E14; Thu, 13 Oct 2016 01:15:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4872BE00E05
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:15:41 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id s8so4546798pfj.2
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=sFvMn6zxGj1f9cS91aYQj9OrWO8SUmO9bFWOVI5VmHY=;
	b=NvXbf5PDJ97oGwxgeE03+MtPiJEqixxnilDxmcjYRAkLfCS/OirRxUGiuRQzXzguj7
	U2j6ZxGERdJKm+0W8kfFYLL6LbAeaN8w7BOVSLyHXMF4T/pcllXdSD8McZ/LB8d+ZRTP
	1Sn4x1dVTIlPVHiqTICaqsC9u+ubE6r4dXrvStknSdyPWOp3f86WVoqCC8TWRi05NV8f
	27MqKIIW43TD5OiqntVxRW8dbr2FshYI6AvwM6C0VDl0wDjh1mB2VG0Rxndeqk1EikXB
	D/gI8ZzSWwcAa2X6B/oPfdWsCH8qzb5982jmT8/1qMrvyDgfe6piShorKHgDu+DK9kBj
	PcJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=sFvMn6zxGj1f9cS91aYQj9OrWO8SUmO9bFWOVI5VmHY=;
	b=XCjMTd2yUTAH9gR6g6heFNkC6htkQkkNWsM8jQlQasGTzJ2tJHJZoS7Ri9imzJqOuu
	L/nm/arnUzt3QlxTONFCfPeA8NDFP/AZ78oZk52lAFl0O90NHY7pF3LsraCMGycPJKNw
	ml6ppM35aDz4lGDp0r9/Ibr03T9lM9J/mHyhhTzfOWCqCa2lDCKXZVw882vLnhbavtU0
	Z5CxYtd1/Z1aEx7v320oCCiIojEC8ZWvIqal2CA+aRCUJcgXp8pdu0isCewV8xDXnf+r
	eeQ9Ksa1izxb2nMfVArYa8RJexuHPf7YDF+bRCDt4+6KZ6rd9IZNSPVLlPyluLvTQakp
	vnJQ==
X-Gm-Message-State: AA6/9RmjII6my7/XP2kEMOO1Lu5sqixEIQ7hC26x2p0vQhsNDEqNbK50TGNhDg7TOrycUg==
X-Received: by 10.98.102.221 with SMTP id s90mr8180645pfj.146.1476346541241;
	Thu, 13 Oct 2016 01:15:41 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t128sm4179701pfd.65.2016.10.13.01.15.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 13 Oct 2016 01:15:40 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Oct 2016 01:15:32 -0700
Message-Id: <20161013081532.22457-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.0
In-Reply-To: <20161013081532.22457-1-raj.khem@gmail.com>
References: <20161013081532.22457-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi_4.7.bb: Update to 4.7.7
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
X-List-Received-Date: Thu, 13 Oct 2016 08:15:57 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-kernel/linux/linux-raspberrypi_4.7.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
index 44ac961..0315f8f 100644
--- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
+++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
@@ -1,8 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
 
-LINUX_VERSION ?= "4.7.0"
+LINUX_VERSION ?= "4.7.7"
 
-SRCREV = "d38b45a21294eaf01aa7568aaeb161d7553477e9"
+SRCREV = "a45a35c08598b23f9fd82e49c83b46c7d536244f"
 SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
            file://0001-fix-dtbo-rules.patch \
 "
-- 
2.10.0


