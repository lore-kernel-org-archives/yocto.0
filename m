Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55FEDE006C6; Fri, 17 Feb 2017 10:08:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D86FEE00405
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:02 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id 203so30517892ith.0
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 10:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=Z4eSjclQ3UJQxi0oLUkuull+fL8WJZ0wgpxySKSdZTM=;
	b=jG4iQdOpY2D7+Pr5EmKKzogyAUVyO54x/4o2wfrMQcc0GBF0azn//vRisF9jpKIvTv
	2Iq/gspSJH74PAryWV2TiM2j2HVC8ED4iIwSkaM7YYAqQqwBtsGtTZt+NK8HcIlbylvh
	i7pJYgFWm4WZBv0gnJ6YhMZJYWnd+OdiwUfN4Ugi3Ym7vULj4bp/zp86d2yyq/1j/vXT
	kwjrPskbzk9AlwhK9dyxB0J0Jojss+LQ3W9BwBkZXEFLE6gqez/aI7s2SVurAmZn6CCf
	I/oMtGdpDLtKeY6oHLApGKEz2Y1cNVEPg4J6otzVfkrVtK9RcRi9SIxWB78i4qrYyfCQ
	CZow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Z4eSjclQ3UJQxi0oLUkuull+fL8WJZ0wgpxySKSdZTM=;
	b=P8uYXBpJ0LUgMED5RirTs8hU80cIglRe4cgOEOQQ/pAw0QYKjzlPl6Mfrp6GMTS0Cb
	UfONLtldGMWMCgblcqrznkYfCsFaiYlLplZT8520D+QV/Fixu9oAh9NJJ0qHZESXuHKn
	toNSehqKUgqxuGU6ltjQjDuumkR1pooVarjV4Bt7pIV+a+fIRV16W/m0OAel3WbEZcUV
	B8puawkNiXJP5ISUQsxGWY6aco7om0Xq7zILr+FqSL4UIPLWNhsXBIn4QKCtXjZG6mcG
	Ajp7LjmHA1lk7b9auQeGxprJpvLt+9oa/XGI8OburBH2M8jcRSgNi51E7kSsV+G0tou6
	0EJg==
X-Gm-Message-State: AMke39ldnxDsuZm7VChZqjSH1f7kTONl9KxSbySg91WNTyyDd6gcJuzATSeuxi5Iph6pSw==
X-Received: by 10.36.185.93 with SMTP id k29mr5247549iti.66.1487354881312;
	Fri, 17 Feb 2017 10:08:01 -0800 (PST)
Received: from linux-uys3.suse ([45.72.225.54])
	by smtp.gmail.com with ESMTPSA id 202sm866258ith.7.2017.02.17.10.08.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 17 Feb 2017 10:08:00 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Feb 2017 13:07:45 -0500
Message-Id: <20170217180748.28796-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.11.0.258.ge05806d
Subject: [meta-rockchip][PATCH 0/3] firefly gpt emmc update
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
X-List-Received-Date: Fri, 17 Feb 2017 18:08:04 -0000

This set of patches adds to meta-rockchip the ability to create an update
image using the latest GPT-style image for flashing to a firefly-rk3288's
eMMC.

Jacob Chen (2):
  u-boot-rockchip: add
  rockchip-next-img: add image for rockchip next-dev u-boot

Trevor Woerner (1):
  remove DEFAULTTUNEs

 README                                     |  15 ++++
 classes/rockchip-next-img.bbclass          | 130 +++++++++++++++++++++++++++++
 conf/machine/firefly-rk3288.conf           |   1 +
 conf/machine/include/rk3066.inc            |   1 -
 conf/machine/include/rk3288.inc            |  13 ++-
 recipes-bsp/u-boot/u-boot-rockchip_next.bb |  18 ++++
 6 files changed, 175 insertions(+), 3 deletions(-)
 create mode 100644 classes/rockchip-next-img.bbclass
 create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_next.bb

-- 
2.11.0.258.ge05806d


