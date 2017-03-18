Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBE60E003C1; Fri, 17 Mar 2017 23:58:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AF9FE0030B
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 23:58:14 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id r141so7907172ita.1
	for <yocto@yoctoproject.org>; Fri, 17 Mar 2017 23:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=gvs64FYgjP61XlkYzniMymhrtzPDmz/DFaffROxWLS8=;
	b=cgziPTiL88UEAMing+ygEMjbv/3NTTFiOvMEmi4B5ZfavIfJD80V4ItjqQCyXIdHhs
	PxSG+yko23pQ6pbTRRaY7p5taS8ms9XxZSmQc3lTJVoa5Cg6U/qn25FvIms9c0P8zYMI
	kAGvg5cE4yp4/J6qhYpv6jYiuPfjIM7NZuXKPYuAUCrpMv+8Fh4OhuchTT1RfKqCUa+q
	D/cBpJRNK0WKmzzfZ4Wc2LUyOD6pETd8u1Q1UIdXqvjkRuuO942PKjffJbpj1uZM3eNG
	Xb7tkMhy6swgxI6odxRMA5/NKqoc3VPm64H9cLrsVPNjq/avSHfh8e7zQOPdnGgfKJt0
	wz2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=gvs64FYgjP61XlkYzniMymhrtzPDmz/DFaffROxWLS8=;
	b=OdVWRrHD5YRXhBjMDgBQ8I25bKwp6aNB4Ie53U6Uj2m2erJsNdPYxhObMorHCBBOXz
	98TRPRSwmGu/6T72DjOI0EOg+XFaNwCahTl1ObwlqDGWtBuS1ZqneVGYnba+t8JGpnzr
	VIi1lxzBUnlArZACF3vJGtZhFS6C97LIoUS0zlOWBbXVE7tqCcZdqBraYFWNN1o7yTcU
	TtKbZ4uyq1mthcInv5LRFZBVNvl8w/XVZptWwMG9LV28IBMRFaHsEuWS/2vNS8AyayER
	sGqFJh5alOJEosWDigYLjbYdpf0t2rRfJVqG+apRaDOhFJJ/osipOTpk6HA8/t2U4r/2
	oQsA==
X-Gm-Message-State: AFeK/H3Zi9vE/QsnadhgEfsdyR3kXrDKur9sOmJWIDY8+6tYanilGKvWpfQb/hWb/PmG9Q==
X-Received: by 10.36.181.23 with SMTP id v23mr1836859ite.100.1489820293949;
	Fri, 17 Mar 2017 23:58:13 -0700 (PDT)
Received: from linux-uys3.suse (104-247-246-30.cpe.teksavvy.com.
	[104.247.246.30]) by smtp.gmail.com with ESMTPSA id
	p191sm2165394itc.4.2017.03.17.23.58.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 17 Mar 2017 23:58:12 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 18 Mar 2017 02:58:04 -0400
Message-Id: <20170318065804.27967-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.12.0.rc1.48.g076c053
Subject: [meta-rockchip][PATCH] machine: rk3288: don't hard-code kernel choice
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
X-List-Received-Date: Sat, 18 Mar 2017 06:58:16 -0000

Allow the user to ultimately choose the kernel. Make 'linux' the _preferred_,
not the _required_.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 conf/machine/include/rk3288.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/machine/include/rk3288.inc b/conf/machine/include/rk3288.inc
index 964d8b0..88acbbf 100644
--- a/conf/machine/include/rk3288.inc
+++ b/conf/machine/include/rk3288.inc
@@ -6,7 +6,7 @@ SOC_FAMILY = "rk3288"
 require conf/machine/include/tune-cortexa17.inc
 require conf/machine/include/soc-family.inc
 
-PREFERRED_PROVIDER_virtual/kernel = "linux"
+PREFERRED_PROVIDER_virtual/kernel ?= "linux"
 SERIAL_CONSOLES = "115200;ttyS2"
 KERNEL_IMAGETYPE = "zImage"
 KBUILD_DEFCONFIG = "multi_v7_defconfig"
-- 
2.12.0.rc1.48.g076c053


