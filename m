Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA6D2E00D28; Thu, 16 Nov 2017 02:03:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wr0-f195.google.com (mail-wr0-f195.google.com
	[209.85.128.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1099FE00D07
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:03:01 -0800 (PST)
Received: by mail-wr0-f195.google.com with SMTP id l22so22870201wrc.11
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:03:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=n+SQmLaYJBiumW7OIo0IDLMCULcHa+dni7A2uQ+SxfM=;
	b=jzuBsbbVpBpnz9G6QpLwreMD+UPU4773hh0v0le/V7p3TeT/uqs1kam2IcRhhp2vmT
	5CY3ZLw8UIUumXFme94JiQI0v+HCFNfCSZ+ccYIqCj+3KgLvBmDGhU4SOsWvFSsgA//k
	NhiG2JgYrdA3QdkeJcMSKygewafbqAyl4Pv3Yk/EHEtSNkBPoVEk1fvkrMm8chVa7Svd
	r5uO45LVekyCK/sutQBWE9SyvQzL0eSof8GW+S8BUShzmzJ1TZAdRqW3mP0BdK2fQ77W
	hqDNd/Pgf/rEttOPoX4kr7JakBivdmr/nhepeI81ZPA4+PWQD0U2zlt9sLm6nBR9ZJOO
	GDkA==
X-Gm-Message-State: AJaThX6nn+Z2/K7O6jP9fVOKk1YIG8aadETb+oGfxhab0L07lEIcWh59
	QmEChP3IX/KFx/m5+z+U3TT8PSqG
X-Google-Smtp-Source: AGs4zMa8sWE/wbGL/YbaajC1mFAZ9CkQ1WrK6td88L1yG8n2MqisppFmTS51DadEfnZ2uWD70raXTg==
X-Received: by 10.223.188.147 with SMTP id g19mr1038530wrh.250.1510826580340; 
	Thu, 16 Nov 2017 02:03:00 -0800 (PST)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id j21sm621546wre.86.2017.11.16.02.02.59
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 16 Nov 2017 02:02:59 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Thu, 16 Nov 2017 10:02:58 +0000
Message-Id: <20171116100258.21588-1-git@andred.net>
X-Mailer: git-send-email 2.15.0.rc1
MIME-Version: 1.0
Subject: [meta-swupd][PATCH] layer.conf: exclude libarchive (bsdtar) dependency from swupd-client
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
X-List-Received-Date: Thu, 16 Nov 2017 10:03:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

The swupd-client doesn't need to be rebuilt if libarchive
changes, because swupd-client just invokes the command line
utility bsdtar from the libarchive recipe, it doesn't link
against libarchive.
The bsdtar binary changing doesn't matter, as bsdtar's ABI
(command line argument handling) wouldn't be changing.

Signed-off-by: André Draszik <adraszik@tycoint.com>
---
 conf/layer.conf | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 50e7558..3af6992 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,4 +14,5 @@ LAYERVERSION_meta-swupd = "1"
 SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS += "\
   oe-swupd-helpers->bash \
   oe-swupd-helpers->busybox \
+  swupd-client->libarchive \
 "
-- 
2.15.0.rc1


