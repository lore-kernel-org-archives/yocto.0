Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29AEDE00CCE; Wed,  1 Aug 2018 01:09:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8253CE00CCE
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:49 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id b10-v6so6276989eds.4
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=2fGzU1EFBfV7oJ28C/2AgHnGpEFpV2cW8j7Cxfb+Ics=;
	b=QSRtq+5/oRI/GxtVRk2w5soqP5KZ+6Pm1eSRKMgAXCNjxKpKvDd4JO7ml7JWf7oegD
	ylr8k9/qDdjeeyCFCIIk7c0XP/cVVj2Zmdz2SoODsSA9HKLVl6UNGUp3EjVoFlpjowwK
	QF7O4yzcW8uKdq5SZ63eDX63uVjfyzeWhPQf7KRZULrbX1Fvf3Y9i/K8raVQiEie5MCE
	IXXGudaHbLPg3khGtzxD8ZFqHShfJkH9HbEjLwKF17eqM5W5KTJeHQ3kGoI3kv8xqb1d
	4E0jSvjYJp0CX+SX53f0qH4B9rWqrlzoAIKV860N0vhihbjycAw124uxGs0KktxPpdk5
	+iTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=2fGzU1EFBfV7oJ28C/2AgHnGpEFpV2cW8j7Cxfb+Ics=;
	b=W2XiF2SxjBlTkSLocEdp6T8ZC/iJ3MiebMs/0qRjwu7WbOE8FwXNLC7Eoli3ppTw8z
	i4oSLZzQSqjZ6CUIpbBHVp7SkXsOecDTHk1dley8zfx3Wg5jGT6AbWdoGOPyAvxs6d+f
	nHxdjcT4Br4TZkjouGIdr/ygBhqLBtzlU4bDdgBdvrU8tDYR8MJpag82cz7gtxAmib7q
	hg67xTKy9KRowHHPBlsc0YzvtgDAVAThzEljuIFth89tgw0j7w2UIB3TS0KZk0Nh7m8l
	kRFMV/bwhMrevVq/2YWOUEEW5zNlhGo5lqrRWK8S7Pq4bfW/p+86t9hgW+t8SoXtKLUj
	M2TQ==
X-Gm-Message-State: AOUpUlFP14oGE6O3wJXjjzQIui6twbMwbT3wtE2tF+7rzYHWLbEh8bDX
	VCdwxEGfgy1FkOWSZvOo8h6gx1Uuy7o=
X-Google-Smtp-Source: AAOMgpfh2LhYzfkhJXDDm3jTR14VYD6Wi5VXtwS24KNy7F7WeKMbzMNbqbsJycW4KTkBqerUFiAoDw==
X-Received: by 2002:aa7:d34d:: with SMTP id
	m13-v6mr2988913edr.143.1533110988194; 
	Wed, 01 Aug 2018 01:09:48 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.47
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:47 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:23 +0200
Message-Id: <20180801080927.26522-6-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 06/10] suricate: create and package logdir
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:50 -0000

This fixes the following error preventing startup:

  suricata[18771]: 31/7/2018 -- 13:08:21 - <Error> - [ERRCODE: SC_ERR_LOGDIR_CONFIG(116)] - The logging directory "/var/log/suricata/" supplied by /etc/suricata/suricata.yaml (default-log-dir) doesn't exist. Shut>

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 91136bf..928cb07 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -47,6 +47,8 @@ do_install_append () {
     install -m 644 ${WORKDIR}/suricata.yaml ${D}${sysconfdir}/suricata
     install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/volatiles.03_suricata
 
+    install -d ${D}${logdir}/suricata
+
     install -d ${D}${systemd_unitdir}/system
     sed  -e s:/etc:${sysconfdir}:g \
          -e s:/var/run:/run:g \
-- 
2.9.5


