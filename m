Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3365FE00CDD; Wed,  1 Aug 2018 01:09:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
	[209.85.208.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50BF4E00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:46 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id h1-v6so6278781eds.1
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=s5F+j6dBgVCvCDfBjLkrOXkl0neco6EALp8rIy+kZXU=;
	b=qv2OA8aKzJn04vlfQTlnva4kUdNmkNNKsskn3+F0nUVWU0sBO9Mt/fcoo2TBdvDm+D
	nc6dNfFpk0WTrAtWgpxXHjmBov9dMu5YO/An9fx3IWg1R6x4uRFJfdsyTPqMSZvnKgkg
	TWB+yiC8vkSloHWBp4N5kbd+6hX5jZNMGxITZTlOtVkeNui2x8UWhMqqTis4ACEMLzQU
	Y+/YkwbX2C6fYFExvAAszBxWLS7it98OwnPGi9x9QBm/pDz2iYxFTkfDfWF4AFB3UNFM
	6syuDhbeQZUiDPhRgbPgPAetqVHePU+2RQblBhwfqfi/Bdt27qebABonyVU/sJCB6zJj
	2FKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=s5F+j6dBgVCvCDfBjLkrOXkl0neco6EALp8rIy+kZXU=;
	b=fTiJcIDzE1JdUgBTEwfwM8/VUSEjMAZjjzHH+FVeTBiHrJr1PV4TFOsHy3zsJzXm98
	tzjElUnHOfXSwBVmvSVcf0iWepFF0rSwPUPhHwDYqTlDYDF8uTPpk2th7YouOGH5mWBd
	IqxTde0YCCglhT5vNZRbayfmtnofIIUqR4RrtYfmWxalE4T+w9lTKANZgW3Q9WgwvLQA
	yfDQ4qV9g8+28nqWaI1FVO0icuBnICPyp59TnEfF5NCQVFP0pLSfTgnUaMMDJYNvCdI+
	YNQPN30LM/bwVNrdLy+78q/Eo961bY3hHI5FhtRtESFPu/moYwlx7d8XuY4DWWUKSaTI
	oudg==
X-Gm-Message-State: AOUpUlEbU9stI1RVsVUAJi6j1yWU+HbLONqFVwEHjOLMV0kFY78r1769
	7Wvrt2aJ79VGm31v1lwO2XKY6WVH9ug=
X-Google-Smtp-Source: AAOMgpcZ+xf9ezNbn9UBlTcbWmT8EUjXhzW4HY4Od6wi6/5uuHK2GJNSxcInSfJK5r5tj28Q4N4asg==
X-Received: by 2002:a50:b178:: with SMTP id
	l53-v6mr2855017edd.306.1533110985392; 
	Wed, 01 Aug 2018 01:09:45 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:44 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:20 +0200
Message-Id: <20180801080927.26522-3-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 03/10] suricata: mark config file as CONFFILE
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:47 -0000

This preserves user edits during package upgrades.

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 4a39325..73f4af6 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -56,4 +56,6 @@ PACKAGES =+ "${PN}-python"
 FILES_${PN} += "${logdir}/suricata"
 FILES_${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
+CONFFILES_${PN} = "${sysconfdir}/suricata/suricata.yaml"
+
 RDEPENDS_${PN}-python = "python"
-- 
2.9.5


