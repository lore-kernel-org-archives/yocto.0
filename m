Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DBE2E00CDD; Wed,  1 Aug 2018 01:09:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D508EE00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:44 -0700 (PDT)
Received: by mail-ed1-f68.google.com with SMTP id s16-v6so6265081edq.12
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=wyTwmebcMJlyn9ifahF9GjbT2MBXOndJJtGZO/DXuKw=;
	b=SadbWECfZcdtxb/2PZTfvTbJH9fIFUIQV2GkHvCHx04Kcybx2AvVIGEdGzB7nCvgkB
	o1ers/M22GbRCeC3tJ6H7yVLfp5v0HEowwox+b5GlI6SZppWSoOY+Rag8yNBuzNdbmi3
	5az9SCY+pSV722QgB6wFDBubeMAovZqsN3y/B4xRlIQjlY4Ti/eDEGAebfTfgfTJse1k
	xi1DrA0th3/WvI/AdXOgr0WMCMWpVwRXq/NsTbBH7QCwU9MB4VjLuS0Yvs49bTYYPlIs
	jdHY1Fj7aBgNXMtCwaSEjK1t35E5L9Vv+rKZ3mA6v+J4VKtkIGxPMOLioJ9iBpDuDDG2
	MNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=wyTwmebcMJlyn9ifahF9GjbT2MBXOndJJtGZO/DXuKw=;
	b=WwAUcQJ6wbvMga5FXP03Kn3uKOJuvsBimFneGKFB/QvuNlCYgp6z7B260Tv62wLt0u
	YNVj1Pi+SYqdKpFLVB5JrbEYEfYOQ6N/7cs1IV1nWwD1tB8W3NNPC3mwglabMEb/HVoH
	apIcH2uE2URdf+G8uE1mwPptpftaui10DNL7dj8CFBWCG8fze+h4W4TuhevB2DnMvgN5
	Z+o+Hm7SpcFt4I92DeiH18OITbb3t83SXCvra/GtGBb2pXx5jjIsxmSB47+zK2p6vZve
	rHoO+W2976IuCAoVwedAZ4vUF3RYOIKlYGvrRHGeF4dqaeEeKT+/Rl+HfaVacNjQdExA
	rzQA==
X-Gm-Message-State: AOUpUlFLAsskJGCvrHSOH9vn1Cc0yuPzd6MNpVJdEaNRUbso4TrjXB5z
	bpkA6na5BdJrEdOgII6VRC2KEzbMCJM=
X-Google-Smtp-Source: AAOMgpcqgQNokO5TwWeU271qFymyuYxCaLgFJapWScW+JyIUNIPYmOi+T5HqOmURUuTNCVNBV156ZA==
X-Received: by 2002:a50:aa83:: with SMTP id q3-v6mr2887910edc.64.1533110983556;
	Wed, 01 Aug 2018 01:09:43 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:42 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:18 +0200
Message-Id: <20180801080927.26522-1-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 01/10] suricata: don't start service in postinst
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:46 -0000

Apart from hardcoding the wrong networking device it won't survive device restart

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index e163486..3f88920 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -50,7 +50,6 @@ pkg_postinst_ontarget_${PN} () {
 if [ -e /etc/init.d/populate-volatile.sh ] ; then
     ${sysconfdir}/init.d/populate-volatile.sh update
 fi
-    ${bindir}/suricata -c ${sysconfdir}/suricata.yaml -i eth0 
 }
 
 PACKAGES += "${PN}-python"
-- 
2.9.5


