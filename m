Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 912BBE00CDD; Wed,  1 Aug 2018 01:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
	[209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5233E00CCE
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:51 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id r4-v6so6269600edp.9
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=1qWzK30fSEWIsd6XRFi7mSt9rWXi6xB7fj/MJNAwdPY=;
	b=h1gJL7X0fPM0UF4w5OfepM7KJm+kVAuP3MhCH8JUSqRP4Bs8rzbpEHswdOs7qjPzax
	fq/fCqg1ZHSx8/M4mNslgoBm9dMsWSLO08bHZ/JDf1RtJ8q8VGqKl7kXXk9cMzt8TdCN
	G3U70KE3dWIk25e9oYxBcAtvUxL3vqz8Z2qMBYfeSmJNGkfY5F/eEbiAKtDU/QJu8z+U
	0UclrPVanw1UvOAMCnws9vRgrTzEVFTI4VGRLT9lGR90izJN6V6BetEO4h3oFVBfmb45
	cmBSirCaOXpPCSbNaS4zS3YdXhXp3RRSLwjpTaO2N5xk/jyXC4e0rSpIg8OZTCIQkLoo
	+CGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=1qWzK30fSEWIsd6XRFi7mSt9rWXi6xB7fj/MJNAwdPY=;
	b=i0YL/undot5TSgKR8uRHrLiLohoTFcEAeMFlndkZN+1wyTq10howPdIsSp1ylyLfWs
	Z42J4ToKpk/W7JEb/zfOOAJ5LBwu/4bMUH9ih9KTi/FV+cv5XMVHIjUg2PH+RmlXhqrY
	qXsj5il8II57lW6PSRamo3AZpWIeAjrpbWdbZQ1xoJgAepPB8sLE2djA4OYdLmEOroJM
	4bFoRyz3SmZnnYOtPaZU1ii/FkUp03IRGxFjgGthdZRtxoLs7gea+708jMfKjP6h3Yof
	9HVnEn7V7AZ3t73LV+Lgt/TghfyuAPK2xPVMYv1MdF+ADEZmRBMsEib8ZJivvZMhLZ9r
	PypA==
X-Gm-Message-State: AOUpUlFJer+Bc8eSCPSAat03Y7yQMWlFSkzP15DSQeGOdKbHyLFY3Q6Q
	XWGBXaHFprOBBH9iTAgbGiQdY9uzuJs=
X-Google-Smtp-Source: AAOMgpeQAj6QwV3iwicoRnc5UD7//y6XcLco14OdKaG6npZ4uIdtx8b387iW3P8p7Sn3pvzy7wndZQ==
X-Received: by 2002:a50:a666:: with SMTP id
	d93-v6mr2948194edc.244.1533110991036; 
	Wed, 01 Aug 2018 01:09:51 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:50 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:26 +0200
Message-Id: <20180801080927.26522-9-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 09/10] suricata: install and package threshold.config
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:52 -0000

This fixes the following warning during startup:

  suricata[24522]: 31/7/2018 -- 13:47:15 - <Warning> - [ERRCODE: SC_ERR_FOPEN(44)] - Error opening file: "/etc/suricata//threshold.config": No such file or directory

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index df5621b..8ea1486 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -50,6 +50,8 @@ do_install_append () {
     install -m 644 ${WORKDIR}/suricata.yaml ${D}${sysconfdir}/suricata
     install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
 
+    install -m 0644 ${S}/threshold.config ${D}${sysconfdir}/suricata
+
     install -d ${D}${logdir}/suricata
 
     install -d ${D}${systemd_unitdir}/system
-- 
2.9.5


