Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
 by mx.groups.io with SMTP id smtpd.web09.15967.1607616170474637694
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Dec 2020 08:02:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IiiPnzAT;
 spf=pass (domain: gmail.com, ip: 209.85.208.194, mailfrom: zmuda.w@gmail.com)
Received: by mail-lj1-f194.google.com with SMTP id t22so7282756ljk.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Dec 2020 08:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0eHFfKevj3ZINEp8nehWi1USsgMOCFD8IGpX52gldsI=;
        b=IiiPnzATKV6Qvh3Cf2fnbb5vwkrpeCa6QaCNJnPfninWbFo9qZ6MAK6b5Ad4Ixpxzc
         INVHu5S6EO9WV24bgXp9NqfsBsmdgXTkjAPRC3JkSm71wqEnkXtYW0GBeZFajnuT8554
         7A3t2kZ04rGaCJdSqs6J0eEzqz3k4y179SfqxLavPKe2H3cawV/vIOg+ZqA47RMJC00b
         2qPougBFwqqFLOwrJwneberHJPXJIAvSs50GJaJ0ldcLcpcyVMMhM7SNseCzEN8ZTbv/
         +ShqkKGP9Z0Bh4ZxGKaE/Ypt3KQMVhJDhXIWt1ZOejNL8Jdxll0v+YyFoz5Ui5hOvwlk
         GEUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0eHFfKevj3ZINEp8nehWi1USsgMOCFD8IGpX52gldsI=;
        b=NuqZYO7jMFiUWhgSlyTOb6WE7WjX4UVi+G0pgUBngy9pgK/w1+PdeFCbMn9gUcP525
         MZeA/16+5TCJMC3IzhNjlo2MKf5EX9SZPPUDDNlkKKE3XUr/cKzzm+yddrMyT/G9bZlk
         1MA5vFZNDQAfbQNI6sRA8hbAN1DPXU5BAcOk/1nUqXzRMQCkEvkvK2Tem7JUa6l6DcIM
         S1emeGY4/IIq26KKE9GgID5ksiq+3ZM+C2gEAeSQBX+c3NCbmI6Z+RpbWt/143NGoJCt
         1CWGWeDQtYc/myKn2QSo/HfZldBS8A1I17RLYQ01lhKWkJpLwH6Z/0Rv9QCdyLP9i82k
         dfTA==
X-Gm-Message-State: AOAM530epQ0g24CmcTXaJ50gGdHYqWSTZlRPFSyHSiQjxSBl4hMsmpcH
	Frfn9mIEu73vaqXsGBL90BfLIpuAboDnXg==
X-Google-Smtp-Source: ABdhPJxteUZUq5r2Ooxz1Af0UA6DVkVohM38DsfY4E1j/wtzbJSwlq3kEAn2M1ukbHcDwlQlHlRKZQ==
X-Received: by 2002:a2e:2244:: with SMTP id i65mr817319lji.111.1607616168540;
        Thu, 10 Dec 2020 08:02:48 -0800 (PST)
Return-Path: <zmuda.w@gmail.com>
Received: from localhost.localdomain (89-64-68-83.dynamic.chello.pl. [89.64.68.83])
        by smtp.gmail.com with ESMTPSA id n10sm646744ljg.139.2020.12.10.08.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 08:02:48 -0800 (PST)
From: "Wojciech Zmuda" <zmuda.w@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: naveen.kumar.saini@intel.com,
	davide.ricci@huawei.com,
	jaroslaw.marek@huawei.com,
	zbigniew.bodek@huawei.com,
	robert.drab@huawei.com,
	amit.kucheria.ext@huawei.com,
	Wojciech Zmuda <wojciech.zmuda@huawei.com>
Subject: [meta-zephyr][PATCH v3 3/5] conf: machine: add 96boards Nitrogen support
Date: Thu, 10 Dec 2020 16:02:09 +0000
Message-Id: <20201210160211.71850-4-zmuda.w@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201210160211.71850-1-zmuda.w@gmail.com>
References: <20201210160211.71850-1-zmuda.w@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Wojciech Zmuda <wojciech.zmuda@huawei.com>

The board is based on Nordic nRF52832 Cortex-M4 chip.
The support depends on Nordic HAL. It has been verified
with zephyr-philosophers and zephyr-shell sample applications.

Signed-off-by: Wojciech Zmuda <wojciech.zmuda@huawei.com>
---
 conf/machine/96b-nitrogen.conf | 7 +++++++
 1 file changed, 7 insertions(+)
 create mode 100644 conf/machine/96b-nitrogen.conf

diff --git a/conf/machine/96b-nitrogen.conf b/conf/machine/96b-nitrogen.conf
new file mode 100644
index 0000000..d1905f2
--- /dev/null
+++ b/conf/machine/96b-nitrogen.conf
@@ -0,0 +1,7 @@
+#@TYPE: Machine
+#@NAME: 96b_nitrogen
+
+#@DESCRIPTION: Machine configuration for 96Boards Nitrogen Board.
+
+require conf/machine/include/nrf52832.inc
+ARCH_96b-nitrogen = "arm"
-- 
2.25.1

