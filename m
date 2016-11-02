Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB3BE007D3; Wed,  2 Nov 2016 02:52:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EAF3E006E9
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 02:52:07 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id t79so25192294wmt.0
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 02:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=Q2vXzGD5W1ANdkDwe44t8vOaFDBMkpxjYAi+dvhcuXM=;
	b=ZdoKO64+anRCy5hKMSqvWZ6ihqV1VoeO+fF4/x3Z1NA/0SJOX7s3jyjOw00WlfMLOQ
	EFVLiDmcoztK8D6juFuf91/yv7JE+vMtdnwfaX/8ULnQbCWAXtPruDvl+LUL60S4lapE
	4Uvraclv7EYZUruggXL4hJvkNa+10lBrpqmDPn3+JNTpvAV+rDk3P0fAdkmJua/1Py5A
	qjUfZ8iGm3Vvi87QVfXW4zWurngulV349eNjsZngFBE7V9c9uVTg0tAYHeKUWDCuY5Uj
	cFlWGg0qvKQxCtGqRKFiZjtTAt9KYs+dW/Nya8YQsnaKCA67DYC0IENgV/BX8AIQUpN2
	FlZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Q2vXzGD5W1ANdkDwe44t8vOaFDBMkpxjYAi+dvhcuXM=;
	b=kwRcMBN/7dRU+/4POZlykrs292YwBZKZrcpY5cAMwKit9o6i5U1GXQUT6hvx0B9otO
	+cEpqQdouqDAsTgJzEkWlhJgSb+qWFc5Q2xdyvCmgHhtR9Dlpotk36LPqF7vK1+a2nWF
	i9kbogQ/neBH/tmy26jxVu7RKm1Beuh/CO+4yTcDQb057+lZ7GzFa7ZDrxRSb2IiGQrs
	1XgoONVlCvxGIcVb3S3fF4sDQHwG6Rh2JDfwn2KtV22sn6GnG4m1ZQKEJuVnuHNM551x
	7ccsMa1EGwmyCrtJHFBgQnCd9FUzV9kc+0JFFolDXDV0u2MJGGsIOUGLOtqWh2SM72HV
	UQEw==
X-Gm-Message-State: ABUngvc39AgI1wHQQJZN7E6Ndr9y96PmI+BXn8aadaFQ0Lz2i8Kn2/PWSUgsNX9ZNSWMjw==
X-Received: by 10.28.157.200 with SMTP id g191mr2176216wme.33.1478080326651;
	Wed, 02 Nov 2016 02:52:06 -0700 (PDT)
Received: from piotr-ideapad.elnet (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	us3sm1688719wjb.32.2016.11.02.02.52.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Nov 2016 02:52:06 -0700 (PDT)
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
To: yocto@yoctoproject.org
Date: Wed,  2 Nov 2016 10:52:00 +0100
Message-Id: <1478080321-19857-1-git-send-email-piotr.lewicki@elfin.de>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH 0/1] linux-raspberrypi: remove not needed bundle_initramfs_append()
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
X-List-Received-Date: Wed, 02 Nov 2016 09:52:11 -0000

This append is not needed anymore and it breaks the build for the people that use initramfs, because the path to
mkknlimg is wrong.

Resending again because it did not make into the master.

piotr.lewicki (1):
  linux-raspberrypi: remove not needed bundle_initramfs_append()

 recipes-kernel/linux/linux-raspberrypi.inc | 13 -------------
 1 file changed, 13 deletions(-)

-- 
2.7.4


