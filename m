Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17C0BE00A0A; Thu, 16 Feb 2017 10:47:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A847BE009B8
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:03 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 5so2658381pgj.0
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2017 10:47:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=04+AmjkQpnwObj84zHN6KV/sqIc4HoLq5l/DJKmpfDU=;
	b=rGSDtOu06bWfqOa4DSqmw0zfzDUe+Nh4ykOtrzgLGFRoGOQG8ccTQ8B3SXZ8Ha2Db2
	Oo5qKoGKUDi3h14p4ycvEb2bsmEi7S+FlznogFCRVSSUnOMk43ryrdA9VraBU5GnAXfA
	oix4aM3Ydjl69iuqlVUEbzk329NjbgVCS6rSg7RaFIYrho94WEe/aixlu+5ao/rf8/k6
	TmtCs5/kUZr3AqYjXTnB0yr/hu1fCgy3w8WMQQnR3m93xjBX4HT8Wn69rYXvDpdxbCcP
	d/ObRw/lSZEuGEM+4IwnzCXvA89s3ogDpK1BLqF5eEy3GlRkcPJTV8vWSfr/6uVKtpsQ
	QugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=04+AmjkQpnwObj84zHN6KV/sqIc4HoLq5l/DJKmpfDU=;
	b=Mf/Qxh27yRrptYoPx+aQNRtz4mh6Zu31a0z8B5faE9L7mx3ctXOnmUKgNwNghGfL2r
	iw9mq+Cly/+DPxWWuTYLdoy91n1nM3Wx8BD0B/5qICdJ6P1VxY1cLuDP20LfXDmQ4KIO
	4mt2wxrzlUmgYSTAEzmBeivrrxz+e3nIkFeHjWLvhOAVZBd5pc7btd2iH/fn/xk9zzO2
	GGx1HBNdLRzU+6QpJt8mBZnjxdjQDyeNOb5sUwCNqjxttQOZ0mpN2sLn6a5n36Je9w/V
	E7ztbdDQJUTpWLtwBbfP1+mA+tfyfY1/PaBxrYJA1mXIQ/tT9/+K1rH82KQPjFWeumcu
	s4Jg==
X-Gm-Message-State: AMke39m63YM6oDPAVMa0xNRkXOk12npAnA2hSYMKCFXS8oKqL0hH6wb6cXnToPZe3EXA/g==
X-Received: by 10.98.158.210 with SMTP id f79mr4295273pfk.145.1487270823290;
	Thu, 16 Feb 2017 10:47:03 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	188sm14970399pfg.99.2017.02.16.10.47.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Feb 2017 10:47:02 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 16 Feb 2017 10:46:44 -0800
Message-Id: <20170216184645.6258-13-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170216184645.6258-1-raj.khem@gmail.com>
References: <20170216184645.6258-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 13/14] raspberrypi3-64.conf: Add vc4graphics to MACHINE_FEATURES
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
X-List-Received-Date: Thu, 16 Feb 2017 18:47:04 -0000

Userland wont work in 64bit mode

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/raspberrypi3-64.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/machine/raspberrypi3-64.conf b/conf/machine/raspberrypi3-64.conf
index e7d9af2..0bf1397 100644
--- a/conf/machine/raspberrypi3-64.conf
+++ b/conf/machine/raspberrypi3-64.conf
@@ -36,5 +36,6 @@ SERIAL_CONSOLE = "115200 ttyS0"
 VC4_CMA_SIZE ?= "cma-256"
 
 UBOOT_MACHINE = "rpi_3_config"
+MACHINE_FEATURES_append = " vc4graphics"
 
 PREFERRED_VERSION_linux-raspberrypi ?= "4.9.%"
-- 
2.11.1


