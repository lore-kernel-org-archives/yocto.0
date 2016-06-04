Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C064E009DC; Sat,  4 Jun 2016 08:39:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 661D9E008A4
	for <yocto@yoctoproject.org>; Sat,  4 Jun 2016 08:39:44 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id 62so14140061pfd.3
	for <yocto@yoctoproject.org>; Sat, 04 Jun 2016 08:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=dWIQ17YVW+w5KmQvNDdp6jXlXJnPV06coi/SQtDPMMU=;
	b=nKV6YTTk4a/x2FV9wCyVQ78yGqSijBuF+v2MeQznudLMLfSwwKdcUKjsCQZrNbOg3M
	Y0Gnmj6Y5PVWbCLwrVVzedczYqStNtNsr6tYpecoX9L9WYL6P81JprmyTMlUi9/nxXKB
	Vx4u6roErTFUqSeg0M83dkXWH9eC5YbMe49tKCuvfMU9Pj1pyerP6EHxnQlMZVqfQiIP
	WyvrU5EU9kdTSzdSpmrVis7GOmNsBf5lqD67vvCA6Cc44nayjTzsgj2IXpY5rENG9v4q
	H9GAZnxdyMjdW/boA+ZGDVTpdeUKPrdZWG+YCBRG8at9zLV3ZkrMHf04r9fJ2D5XdGPz
	mZuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=dWIQ17YVW+w5KmQvNDdp6jXlXJnPV06coi/SQtDPMMU=;
	b=h0OWrsQwOPqayvsXNHVi3ktI3IgRobGTX7rPUE04C9bnKJVYYpwf01lVKjbBRuCoJP
	tS5fj+eTWgY0oYt9xCIoyjegt+r96Ht3ceCSan5fOgrAwd1Rq9YkLr4iwoLLbalexi+W
	a7kot+rwAl1eKYje3xNeA0Ywb1sSQbG8S5fB+vRMpPxCVK3jBYY5Cebw1Jq+WEcUMpQh
	uDlLPyfO9Wd6FnIG+yLrDIp0Z8vyz8tIhx1NJNUc02Iu04ap3nI+YQCj3nKdfAhgg/yH
	EGVrDfPjjz1zM4RSZCXByiKkEvSDb9FRAEHvpkzrxTumZa6baq//4bFVVKNmzp2ph2Cw
	3o9Q==
X-Gm-Message-State: ALyK8tKGA9EZ/6lt6ErUFSZYuW3TAkFU4WX3hOkYcxhp1j4JafDPsGGIe+C9fKUQ1u6fsw==
X-Received: by 10.98.19.211 with SMTP id 80mr5390570pft.117.1465054784512;
	Sat, 04 Jun 2016 08:39:44 -0700 (PDT)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by smtp.gmail.com with ESMTPSA id
	vy8sm13744298pab.22.2016.06.04.08.39.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 04 Jun 2016 08:39:43 -0700 (PDT)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Sun,  5 Jun 2016 01:38:52 +1000
Message-Id: <20160604153852.23464-1-net147@gmail.com>
X-Mailer: git-send-email 2.8.3
Subject: [meta-raspberrypi][PATCH] linux-rpi: ensure config file is closed
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
X-List-Received-Date: Sat, 04 Jun 2016 15:39:48 -0000

Avoids warnings like this with python3:

    WARNING: .../meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_3.18.bb: <string>:16: ResourceWarning: unclosed file <_io.TextIOWrapper name='.../meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi/defconfig' mode='r' encoding='UTF-8'>

Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-kernel/linux/linux-rpi.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
index 1755685..4b65fc2 100644
--- a/recipes-kernel/linux/linux-rpi.inc
+++ b/recipes-kernel/linux/linux-rpi.inc
@@ -133,4 +133,6 @@ python () {
     if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
         depends = d.getVar('DEPENDS', False)
         d.setVar('DEPENDS', depends + ' lzop-native')
+
+    configfile.close()
 }
-- 
2.8.3


