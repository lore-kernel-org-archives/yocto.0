Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CBCAE00C2F; Mon,  4 Apr 2016 06:25:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CD0AE00C15
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 06:25:06 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id e128so122917755pfe.3
	for <yocto@yoctoproject.org>; Mon, 04 Apr 2016 06:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=bOyRvLb74zwaGmODWlR9mz2uz9h1RYhZ62eA1o9AInM=;
	b=ge9crXyO2cuxn5NZKcQ3KXBd6Tz3/B554Dv16uJ+OzovaHAloGozb5FURKDTh1M0Jd
	6MS+rzFWE2OTkFH/HN7zCSDIAaLv5JIXNvmFJ8t8cbKebZRvjsq25iuOjdm10ZVXYWa+
	RE2aE9TRHWF5a/T9QL/uT9BbipY2FM4rU/XLz413AoHVnoT2cmkIdBsfrTaw6gCrVfHo
	FiLNNgUuBQUdlfePXAq8q5WpfJDEcCzd6nGELfV/rOUeDyK9thWUIfijOC50JVBJ9CzB
	kK6pMrUK2ZyaahwfCzWugHvlNayQ3O0r4PMc86hBvpOTevrTxmgG9yt7Nz1XnA11lOau
	nh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=bOyRvLb74zwaGmODWlR9mz2uz9h1RYhZ62eA1o9AInM=;
	b=K5fj6BYYGb5O8pBwSuobsKpkYfgOMOKNJVpht9dVoQlu0y17mbvGjccnzSYEshcibR
	ZDebFrquOcucXafgiAn70eBqNd/a87LM6Id11jrU1LuU25lbRrmn4eKMaWbuUW78Q9tg
	T6AFOWf8hzNhjXlErjfA/92lF3X50KiQB/RtwIdDYQBlyeFpSsJ0v4iP2dDUeJjX1eat
	M2bhzuEY81XujKgF+tX67CZmde6wmm0SjTJpg9Q75OHI4nQzTh45SxDzP/lAuiOBfUYq
	WjXBQmHMIduZ8ZiRf/RRSsO4HxOjKXgPojDaqTqlL+tMFVh5EBjXCmrN2sYOYVGSONSg
	zaNg==
X-Gm-Message-State: AD7BkJJkSCASTpZsC8p/LOU8uHocoSxV3qH4Vdm6Aug4vu+A+nyJme4/TpZyZ1uLx6QY/g==
X-Received: by 10.98.89.22 with SMTP id n22mr20880419pfb.55.1459776306524;
	Mon, 04 Apr 2016 06:25:06 -0700 (PDT)
Received: from localhost.localdomain ([209.65.105.133])
	by smtp.gmail.com with ESMTPSA id
	i1sm39725261pfj.17.2016.04.04.06.25.05 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 04 Apr 2016 06:25:05 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  4 Apr 2016 06:24:50 -0700
Message-Id: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [PATCH][meta-raspberrypi 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Mon, 04 Apr 2016 13:25:10 -0000

The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
/dev/ttyAMA0.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/raspberrypi3.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
index 1b73f2f..2c3df41 100644
--- a/conf/machine/raspberrypi3.conf
+++ b/conf/machine/raspberrypi3.conf
@@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
 MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
 
 include conf/machine/raspberrypi2.conf
+
+SERIAL_CONSOLE_raspberrypi3 = "115200 ttyS0"
-- 
2.7.0.rc3


