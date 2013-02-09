Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 23877E01456
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 14:11:27 -0800 (PST)
Received: by mail-ee0-f45.google.com with SMTP id b57so2558118eek.4
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 14:11:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=DJq9xGl0R7eig8OKc3o88T8oGQaVABSuidK0uzgRXYM=;
	b=lpWscoztz8c5nWKQXEUP95E/Llyvy2ybqpFPV7VyHcURBiFHp+P3bJFCIyHRVLVHOx
	jjfXktvM1AgS4KwXYbGD2VdRNMxhIJzMDawMdc/dxIOjwi6MznCZH/uPziViyfjPYE90
	zKd+anibN648QmASjKZHRMk7A5uBLYkXziOAzSr/qXhnv+NaNgxlQ0CsCcEPR6v024C1
	l67LCF6Po5I337NRqXaPrQ7kL2Q4b1+/IC2nFtjExfGcOpTAx7Khq4JNbVbAJRecCVU1
	ChNYt5BWVqF5WnmTgi/arW2uzgZVIRiqkjtoZE1FhjVQ6qGD12Kox/oiB8dKQoWvB/QU
	IKwg==
X-Received: by 10.14.219.6 with SMTP id l6mr31328362eep.23.1360447886427;
	Sat, 09 Feb 2013 14:11:26 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com
	(5-13-217-124.residential.rdsnet.ro. [5.13.217.124])
	by mx.google.com with ESMTPS id z5sm16022941eep.16.2013.02.09.14.11.25
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 09 Feb 2013 14:11:25 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sun, 10 Feb 2013 00:11:08 +0200
Message-Id: <1360447871-10982-4-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQl0nES+VUTWZHZjYlspYxg03PmjVViAgyPeoO6eMPnIkC8cE+x0lvYfQALyZUUN2rgEWAuQ
Subject: [meta-raspberrypi][PATCH 4/7] layer.conf: Set LICENSE_PATH to layers's custom licenses directory
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 22:11:28 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/layer.conf |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index e8b87b2..7bffd4b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,3 +8,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb \
 BBFILE_COLLECTIONS += "raspberrypi"
 BBFILE_PATTERN_raspberrypi := "^${LAYERDIR}/"
 BBFILE_PRIORITY_raspberrypi = "6"
+
+# Additional license directories.
+LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
+
-- 
1.7.9.5


