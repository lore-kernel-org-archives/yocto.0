Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F20CEE00C2D; Mon, 28 Nov 2016 11:08:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B1DDE006B4
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 11:07:59 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id r94so24563450ioe.1
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 11:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=WxQbpoMDhwkcI8W1hQRWg7/vm3FozZVTV5TXlHto7QU=;
	b=ctN5yxFuRf0ZnUtACqEeTpipfnUml0vDdI5XZ0Hes9fY0/WPT/bpSMYivzYQVN9lYK
	w8M5aWX0g3kxt4gdxYIoSWNdpqtty+A1VV0EqFU9IylSIMxnvVimkgjy0anunEA5zycb
	i/B482uvpP9StqP2VfLzounS3bOxfxUnnWoLS4eb9zTc5S3j9c4Nb0/9gBECCYHUgsWG
	HYnXB7vSRf83LpqlLPCleFKar9iha8JLd0wyhj/+W9NKbRiYQVREt5KWkR7txMyrcLiK
	BqM6Yhy+UKoSQkzZcaV0IbHocrvo3TZ5G77Ogn5ZhNh2gMWIuWYY3JBcRvk0/1/zmta+
	Df0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=WxQbpoMDhwkcI8W1hQRWg7/vm3FozZVTV5TXlHto7QU=;
	b=ONPkYVfdpCV9TWZOlnJcm6xRbEteSXc8IxxuXS4iSvIGBVcA3QONyFvl59uHVUMiLX
	n5jTaffXCmnxyusnlNAGTZZbcnytzq6wzR1KKDKyzwy/jXTZ8vddzqZs4ddJA10fT1kr
	4+yzmW/XJjerRs5dbKQFWHHArf5HcjAlrCQc757ZXvdw+NxmRJVZ67kHPhI1jKqASh/r
	S3SBH+wZjq+6U1FluuAMTtWXAjRWKfhciV6nzQPyhrZwQLXs50jGO/IaIarPl4EX2RB8
	Bb4CTiX9T9b3fTIfGIql27lPU5lsdHc3xWi5y6ybj0WeZ6j7HmA1f+dtXDoOaebiPnwG
	Rq4g==
X-Gm-Message-State: AKaTC02km8izcOVYxrZGa78JGKQXVrV5gnGITkw2G78mbFFduPhOt1XLU9D9ljcxEBHdLw==
X-Received: by 10.36.103.200 with SMTP id u191mr20010865itc.8.1480360078189;
	Mon, 28 Nov 2016 11:07:58 -0800 (PST)
Received: from openSUSE-i7.site ([45.72.128.170])
	by smtp.gmail.com with ESMTPSA id
	v75sm9620356ita.12.2016.11.28.11.07.57 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 28 Nov 2016 11:07:57 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 14:07:45 -0500
Message-Id: <20161128190745.18053-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.10.0.129.g35f6318
Subject: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: allow -rt kernels
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
X-List-Received-Date: Mon, 28 Nov 2016 19:08:02 -0000

If the PREEMPT_RT patch is applied, the kernel version becomes, say,
4.4.32-rt43 (instead of 4.4.32). This confuses the version handling code in
this class. Update how the version string is processed so that trailing rt-
strings are properly handled, in addition to handling the existing cases.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 classes/linux-raspberrypi-base.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/classes/linux-raspberrypi-base.bbclass b/classes/linux-raspberrypi-base.bbclass
index 3a6e33d..fecac30 100644
--- a/classes/linux-raspberrypi-base.bbclass
+++ b/classes/linux-raspberrypi-base.bbclass
@@ -15,7 +15,7 @@ def get_dts(d, ver=None):
         ver = get_kernelversion_file(staging_dir)
 
     if ver is not None:
-        min_ver = ver.split('.', 3)
+        min_ver = re.split(r'[.-]+', ver, maxsplit=3)
     else:
         return dts
 
-- 
2.10.2


