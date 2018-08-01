Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80900E00CDC; Wed,  1 Aug 2018 01:09:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.208.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
	[209.85.208.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87C9DE00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 01:09:47 -0700 (PDT)
Received: by mail-ed1-f65.google.com with SMTP id h4-v6so6267009edi.6
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 01:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dominion-thruhere-net.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=w5xCfZWrERPRmMCRmmOx0FYrvZ/rANMNZ+YbhEZebX4=;
	b=L6lY49gxS0wpfkuz6PERqaRSIN+5z4dn48fzdmFpPigCZP+2XjKpmxwmb9+ffTNnnW
	e3YTMlHNsqU9Bh3J/IQIZ0MYYbXNmVMGcOdUlFkAMbiJKnExAaTweJNc47ahjmLOo5oU
	CaOHq1kOun+FZpsQa39+L4AbtzNKTko3p6EC6fJcsRev9ta9JTVUYj/t+oKbj9O26gtc
	4oEOQYOvC3O3xHVBD1F16Bos8VAdTGUPegZlph0lGNKeRqgEjzjRSRtFTzVjr3bZRGnZ
	2yzc6fWOtpgbYsxOngVUFzppgHgjLQ3Wjwv0e1I/APK+4OjHcIlNne07iR6F0AAneoGr
	wOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=w5xCfZWrERPRmMCRmmOx0FYrvZ/rANMNZ+YbhEZebX4=;
	b=tgUEB/KMj4vfLZOWVDV+zrK62gYkTvmLLns9gTvze8if7/qOhxjX0m2NT7e2Ues4RI
	NlvUCZ9ICbcHZ7Wfa2iTBd51vtdwhklkxoIcfYmEya+nHTMZVnsZtklTuVNd3W9bN5uR
	dkdt4mbqwvfevo1WymcAEccemj68aytMEqEsi7sLYl0eBQON/AQUk6RXVsZtqz7T1U9K
	sYC6yE6axwYPIN8f5ZoJQwS86kGoEClYaiL/gxW4Sm/bq0Xl80P6Riihn3TWzXPVrySf
	xXTp+VZUH9JAthlktCue8hjR5O5fTqO8BmJzq1YD3vQ/VFJAY1kBfZYz/vB3N5FIjS1y
	d8vQ==
X-Gm-Message-State: AOUpUlEfXyRBPWfn8grYsq7zZG14NNrlF0V2lX0hpW+iwKcKtUURginR
	XJTf4mfeCcMBlB5NEAfYQD1hv1K4oAY=
X-Google-Smtp-Source: AAOMgpe7A19Lfdz4Gm9oJ4oHUHHnuVrI2xHr6Opwz5zaddDS0pMEUQlvHSFpwI1iXhHRTo0vTilWqQ==
X-Received: by 2002:a50:a4a1:: with SMTP id
	w30-v6mr2911185edb.67.1533110986383; 
	Wed, 01 Aug 2018 01:09:46 -0700 (PDT)
Received: from localhost.localdomain ([82.163.40.65])
	by smtp.gmail.com with ESMTPSA id
	x51-v6sm3911447edd.67.2018.08.01.01.09.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Aug 2018 01:09:45 -0700 (PDT)
From: Koen Kooi <koen@dominion.thruhere.net>
X-Google-Original-From: Koen Kooi <koen.kooi@linaro.org>
To: yocto@yoctoproject.org
Date: Wed,  1 Aug 2018 10:09:21 +0200
Message-Id: <20180801080927.26522-4-koen.kooi@linaro.org>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20180801080927.26522-1-koen.kooi@linaro.org>
References: <20180801080927.26522-1-koen.kooi@linaro.org>
Cc: Koen Kooi <koen.kooi@linaro.org>
Subject: [meta-security][PATCH 04/10] suricata: add 'nfq' PACKAGECONFIG
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
X-List-Received-Date: Wed, 01 Aug 2018 08:09:49 -0000

For inline IPS nfqueue is nice to have, so add a PACKAGECONFIG entry for
it.

Signed-off-by: Koen Kooi <koen.kooi@linaro.org>
---
 recipes-security/suricata/suricata_4.0.0.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/suricata/suricata_4.0.0.bb b/recipes-security/suricata/suricata_4.0.0.bb
index 73f4af6..7ab3077 100644
--- a/recipes-security/suricata/suricata_4.0.0.bb
+++ b/recipes-security/suricata/suricata_4.0.0.bb
@@ -28,6 +28,7 @@ PACKAGECONFIG[pcap] = "--with-libpcap-includes=${STAGING_INCDIR} --with-libpcap-
 PACKAGECONFIG[cap-ng] = "--with-libcap_ng-includes=${STAGING_INCDIR} --with-libcap_ng-libraries=${STAGING_LIBDIR}, ,libcap-ng , "
 PACKAGECONFIG[net] = "--with-libnet-includes=${STAGING_INCDIR} --with-libnet-libraries=${STAGING_LIBDIR}, , libnet," 
 PACKAGECONFIG[nfnetlink] = "--with-libnfnetlink-includes=${STAGING_INCDIR} --with-libnfnetlink-libraries=${STAGING_LIBDIR}, ,libnfnetlink ,"
+PACKAGECONFIG[nfq] = "--enable-nfqueue, --disable-nfqueue,libnetfilter-queue,"
 
 PACKAGECONFIG[jansson] = "--with-libjansson-includes=${STAGING_INCDIR} --with-libjansson-libraries=${STAGING_LIBDIR},,jansson, jansson"
 PACKAGECONFIG[file] = ",,file, file"
-- 
2.9.5


