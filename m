Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105C2E00CCE; Wed,  1 Aug 2018 01:09:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A632BE00CCE
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:45 -0700 (PDT)
Received: by mail-ed1-f67.google.com with SMTP id e19-v6so6275143edq.7
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=P8IL7oa+KhupxQKdX05n4Op+oaltE7ucCikTY7vC+R0=;
	b=dY8ydyLKafSoNeujjPWDNxGx25BmrLA6VjRUmwtayzU35BEdn9yKEY/bvtGZYeQ81r
	e6P/6zMoDnvsNFSZMTZ35hpVtaBqqvAeKpog9crUEqiAlFiV5/xkorrVNCam/jP3KrTP
	HtHEXMO+cGGd2lAX9t/Mrzke74L1rWT8T3RaPO9cFjuie2u9OPE5vblBiw2xBcZ+qQqb
	WAUVJajZ3iV6se2hVNyknUobnt7i6sOrj9nBpe6prR7+K6SxR2+J6buQ3p2YMbXCGqNJ
	horE+6r6Uit9Adl8mjuUqczQZNVS4erm1QAhCQKW2lvgm0mXvyVNpxqlHCAvLAl2qSdi
	y3qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=P8IL7oa+KhupxQKdX05n4Op+oaltE7ucCikTY7vC+R0=;
	b=X4RQgGfPuxolksPBVmPqtz3DHjq4HcgKv7NrVvzK7OTdnvD5khOPr76Es+O4pO3gB6
	N37u7wtyHQ++tRAyMYt3hx2m+jv8hleXdKAa5xD/VHLTgpreNE/G4USPG436RcofwwiV
	ZpBAVX5ugMtUKEtFdVg3cezR+EzX6s1NGOmnvF8fcTE5wqoDphN8/MlPLCmDdTtTttnw
	gy2gpx/D2dTCdlApRMoVoFYkhiw4zRRrGujZXyF99SLObyUj83CQPo0wLctMxeX69Cgo
	A/2ySdaSjO5aUBx0uBl9AWu8jxuUbOl4GVP9LbuoAW+7yWp5qCX24vhgQkOTDaDSoZ/E
	0Y9Q==
X-Gm-Message-State: AOUpUlGLiqXu7Y2vPtzPVVX5y3VkA+X7lQpnAiTjM4kzdxw3JyKAlUst
	FjF9JSjoH/nfeYdVd5Pa7ybzka+zpRs=
X-Google-Smtp-Source: AAOMgpdvqAFnek3NboCb+npSUTDXTUYL9KjnCVwHFufrmg8kW7u+guR52An84x6nS1yylMqh4ulzuA==
X-Received: by 2002:aa7:c2c1:: with SMTP id
	m1-v6mr2870014edp.249.1533110984527; 
	Wed, 01 Aug 2018 01:09:44 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:43 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:19 +0200
Message-Id: <20180801080927.26522-2-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 02/10] suricata: fix packaging
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

Move ${PN}-python in front so ${PN} can use default packaging rules.

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 3f88920..4a39325 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -52,8 +52,8 @@ if [ -e /etc/init.d/populate-volatile.sh ] ; then
 fi
 }
 
-PACKAGES += "${PN}-python"
-FILES_${PN} = "${bindir}/suricata ${sysconfdir}/default ${sysconfdir}/suricata ${logdir}/suricata"
+PACKAGES =+ "${PN}-python"
+FILES_${PN} += "${logdir}/suricata"
 FILES_${PN}-python = "${bindir}/suricatasc ${PYTHON_SITEPACKAGES_DIR}"
 
 RDEPENDS_${PN}-python = "python"
-- 
2.9.5


