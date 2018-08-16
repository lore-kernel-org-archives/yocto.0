Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80CA0E0079D; Wed, 15 Aug 2018 18:22:50 -0700 (PDT)
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
	*      [209.85.215.195 listed in list.dnswl.org]
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54495E00726
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 18:22:48 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id y4-v6so1253502pgp.9
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 18:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=+zV85Jh7DMGKjo9DwgthNdHvKXKhwRTLaDnY3Zv7Fp8=;
	b=eaLGzRdLcfSdEDw5CJ7x3u5RYKibCef6vijubSoERnoZcFg09pyrNk3wNHeI/ryaG7
	KUzyG1xh7oY/G4ufQBbbnq5Ibvx6EDc7siVFlWFbRC3vdpzToYja7F/m5EuX/yy52Hxu
	7EzIFWeheGerHPFgpuz/JYTwZyUFjQ9HYhHhcVvrphwYuZ8hblfSOUkuCMzgKXnJe0dg
	EG89pY6F5GWX080OEXLInZbmD7QHRgwyc5K0YRE5K8+dzUCTMUUFcHTWl/hoAojFgJR/
	E1Doi4MZGpqc089/T6hccuJK/mAb5WPk652iMjIrwSj/MQoHO9wlMhsXiQ1lXH3maITT
	I7ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=+zV85Jh7DMGKjo9DwgthNdHvKXKhwRTLaDnY3Zv7Fp8=;
	b=RPIbIvX4T+kVmV3kZexGs96SFlrByGIypKupG9yB6NA9vYDbl0KV4T5xQrw8ekUj3K
	VUcDpiKp9nc/QF3T6ODSENpcFemzSALCzzAwzkbqHO2zKJ+YVEFWqFllvHsotErO8cXB
	jeu50DRq7AyqlDLtWW68UDX2YJcUpQF0lZLsl8lDuYXgUmIRwEBgNg/L+zOxxNa3WoXu
	5UMGWilhMsIjawOttVzVcDmS+Kr7HgtJqRzQvLDC24r+71UVLQtKAD9m3zunyW7+Hw05
	6LQ+gjuL7Zq9CoUev++MELoQPVzIkzXGGD37MLH+E8NCtuWeKF0GDFX5+dq98O/omrw+
	Sa9g==
X-Gm-Message-State: AOUpUlGUZGKsQ5usHrFlPeQJRhgs8WTnU8/4aA6ympA19R0FfLCiFDbB
	Zr65UTzrW5gEf9sg2c6fXKmo+ocr
X-Google-Smtp-Source: AA+uWPwdkAOm4eC9uAHL9Tk+nPETS3C7Qz8HHymYRQS1B3NN60u39bWAdw7x+Lyxu1Hs+YtJz+m7GA==
X-Received: by 2002:a63:ff4d:: with SMTP id
	s13-v6mr27189753pgk.150.1534382567490; 
	Wed, 15 Aug 2018 18:22:47 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:877f:9499::f217])
	by smtp.gmail.com with ESMTPSA id
	p73-v6sm45525787pfk.186.2018.08.15.18.22.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Aug 2018 18:22:46 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 15 Aug 2018 18:22:40 -0700
Message-Id: <20180816012240.21645-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.18.0
Subject: [meta-selinux][PATCH] README: Document setting PREFERRED_VERSION for refpolicy
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
X-List-Received-Date: Thu, 16 Aug 2018 01:22:50 -0000

When setting preferred version for a given refpolicy
we also need to set the PV for refpolicy recipe since
its part of the selinux packagegroup and will silently
use git version

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 README | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 35e03f4..806d9c3 100644
--- a/README
+++ b/README
@@ -71,7 +71,8 @@ SRCREV for refpolicy and refpolicy-contrib as appropriate at refpolicy_git.inc
 to check refpolicy as per required commits.
 
 * enable the preferred refpolicy-minimum:
-e.g. PREFERRED_VERSION_refpolicy-minimum = "2.20151208"
+PREFERRED_VERSION_refpolicy-minimum = "2.20151208"
+PREFERRED_VERSION_refpolicy = "2.20151208"
 
 
 Using different init manager
-- 
2.18.0


