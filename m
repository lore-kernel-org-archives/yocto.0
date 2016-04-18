Return-Path: <fabio.berton@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FD88E00F06; Mon, 18 Apr 2016 11:13:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f68.google.com (mail-qg0-f68.google.com
	[209.85.192.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6F71E00F04
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 11:13:52 -0700 (PDT)
Received: by mail-qg0-f68.google.com with SMTP id m8so6053087qgd.1
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 11:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:organization; bh=+W+UjUc47g8wE7b1aNCP1PgpLWr8Js+rRvmfDZo6SEw=;
	b=lnncFMjuIZoV2/l1YMNa/g/ltsSNXzpDDrQGPUV4q0lpitCXmySrw342c2BRx9BY2b
	E2OWSEbtDGKrkpBBsjyOoRVF9aRkghDTMhIIhu+oY4HzpCG61LoA/aXHK/Rm81XHvyTx
	INNSLMZ7SDkHcwq8iEYMY48PVY+LpZIYxN6H/sDr61nQ1jCePRZE+gOP1S5eCw2k0PYq
	8sl0VQD8lBrzMHnBl6g2EMaLnd4gnoPMzzeaA8HxKwM+A4pyBcob07bi/EBQc0WQr5Xv
	46tfHNH0uVhg41seWaEobGPrZ90eXdAuKw5WiNVZn1JbJKmYfzjbxLjJNHQ+GQn6+aVY
	cifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:organization;
	bh=+W+UjUc47g8wE7b1aNCP1PgpLWr8Js+rRvmfDZo6SEw=;
	b=WAnXQP/zz9Qj3bFN+V0JgujZSAvSFOv8IXQCpVOTD27jIAOQ9QU7PciOpEwZ8p2lep
	xLoxus1SLYMPJFd+nn37tcnwBTY9N2y25AHJpQaBXK+B/rJZ+Hq74maUnX6GbBNES9lU
	VnTUvuglOCmIwmgUR/1nwTcfUIdFL8wEmqkZ19Jl3Y5NQJMxePjxW77EwPBgI5bMKcxa
	RVWMOAnNKay273pkmCK7Y8wcDpXHqHqijQQ76UfTzZ2R2eU74y5lMOKVQ/2poNtrzl4m
	50fzqSrnKL/k8ANPjQX1nPLAd38JwbyO5ySqerMcpw5sgTpcwM31BXnL6Grl0OSXz8Ti
	pF8w==
X-Gm-Message-State: AOPr4FXXhYfhfrKhNpXJo/7/T815wTQhPNTkTgC1e8MjWLsqdDs/QHxRW64zxEt+03fOVw==
X-Received: by 10.140.104.11 with SMTP id z11mr36496370qge.22.1461003231843;
	Mon, 18 Apr 2016 11:13:51 -0700 (PDT)
Received: from monster.lab.ossystems.com.br ([187.23.154.250])
	by smtp.gmail.com with ESMTPSA id
	y89sm27004024qgd.5.2016.04.18.11.13.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 18 Apr 2016 11:13:50 -0700 (PDT)
From: Fabio Berton <fabio.berton@ossystems.com.br>
To: yocto@yoctoproject.org
Date: Mon, 18 Apr 2016 15:13:26 -0300
Message-Id: <1461003206-12330-2-git-send-email-fabio.berton@ossystems.com.br>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1461003206-12330-1-git-send-email-fabio.berton@ossystems.com.br>
References: <1461003206-12330-1-git-send-email-fabio.berton@ossystems.com.br>
Organization: O.S. Systems Software LTDA.
Subject: [meta-mono][PATCH 2/2] mono: Add libikvm-native to FILES_${PN}-libs
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
X-List-Received-Date: Mon, 18 Apr 2016 18:13:54 -0000

Fix error:

ERROR: mono-4.3.2.467-r0 do_package_qa: QA Issue: -dev package contains
non-symlink .so: mono-dev path 'work/cortexa9hf-neon-linux-gnueabi/mono/
4.3.2.467-r0/packages-split/mono-dev/usr/lib/libikvm-native.so' [dev-elf]

Signed-off-by: Fabio Berton <fabio.berton@ossystems.com.br>
---
 recipes-mono/mono/mono-4.xx.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index 0225aaa..855c857 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -71,7 +71,7 @@ PACKAGES += "${PN}-lldb "
 PACKAGES += "${PN} "
 
 FILES_${PN}	   			= "${sysconfdir}/* ${bindir}/* ${libdir}/*.so*"
-FILES_${PN}-libs   			= "${libdir}/libMono*.so"
+FILES_${PN}-libs   			= "${libdir}/libMono*.so ${libdir}/libikvm-native.so"
 FILES_${PN}-lldb                        = "${libdir}/mono/lldb/*"
 FILES_${PN}-libs-2.0                    = "${libdir}/mono/2.0/* ${libdir}/mono/2.0-api/*"
 FILES_${PN}-libs-3.5                    = "${libdir}/mono/3.5/* ${libdir}/mono/3.5-api/*"
-- 
2.1.4


