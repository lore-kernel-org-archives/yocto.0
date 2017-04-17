Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2786E00839; Sun, 16 Apr 2017 18:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 932E9E00AF2
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:12:13 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id o81so6774250wmb.0
	for <yocto@yoctoproject.org>; Sun, 16 Apr 2017 18:12:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=BQFushQyIXvBuEb2UE9XIjRH5djcTL+6cQT4SvCL3/Y=;
	b=D9NxdNeLvnksC/u3ExNwdM30K3uTl/Urkrzo7HnazsB/fGwJ2R3JIdvA2BEPjMfb4e
	x9wauZxVgQV9WTGba0K0AfP/grTRkbv0tMrHBJHDppQmwYqh3cxZKULGYsz7i90ux2++
	FNHG7DjuIiBE6QKU/RShU7dvbWy4hNk4XQcJ8GjnFjtwA7B6bNIJ6wImFaShHkBZHrUZ
	v9GQOvSrvvzRzWXMgskxokHPisCQjoK4I3+xXZvl3TZaZ4R15F+F6My6cT94NEO0Ap+A
	BAZsoD2Q0E05hufV4Vtw2rMTM/QhTock7WOel4JBixc5RfscIbfsryVz4AAp1tTUvJXq
	AQog==
X-Gm-Message-State: AN3rC/6WsG6JrVbJvXaFTy61QihorwUjb1DLEBctWyZikOKYmx0PyTz3
	Z1ZW318be5Bvwg==
X-Received: by 10.28.24.8 with SMTP id 8mr7224057wmy.133.1492391532298;
	Sun, 16 Apr 2017 18:12:12 -0700 (PDT)
Received: from localhost.localdomain
	(host86-158-8-191.range86-158.btcentralplus.com. [86.158.8.191])
	by smtp.gmail.com with ESMTPSA id
	w16sm11203929wmd.0.2017.04.16.18.12.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 16 Apr 2017 18:12:11 -0700 (PDT)
From: Andrei Gherzan <andrei@resin.io>
To: yocto@yoctoproject.org
Date: Mon, 17 Apr 2017 02:12:06 +0100
Message-Id: <20170417011206.29137-2-andrei@resin.io>
X-Mailer: git-send-email 2.12.2
In-Reply-To: <20170417011206.29137-1-andrei@resin.io>
References: <20170417011206.29137-1-andrei@resin.io>
Cc: Andrei Gherzan <andrei@resin.io>
Subject: [meta-raspberrypi][PATCH 2/2] x264: Fix build for armv6 RaspberryPi boards
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
X-List-Received-Date: Mon, 17 Apr 2017 01:12:27 -0000

quant-a.S uses rbit thumb instruction unconditionally even though only
from ARMV6T2 this is available (which is not the case for RPI1, RPI0
etc). Avoid this by disabling asm.

Signed-off-by: Andrei Gherzan <andrei@resin.io>
---
 recipes-multimedia/x264/x264_git.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-multimedia/x264/x264_git.bbappend

diff --git a/recipes-multimedia/x264/x264_git.bbappend b/recipes-multimedia/x264/x264_git.bbappend
new file mode 100644
index 0000000..c1cb3bc
--- /dev/null
+++ b/recipes-multimedia/x264/x264_git.bbappend
@@ -0,0 +1 @@
+EXTRA_OECONF_append_raspberrypi = " --disable-asm"
-- 
2.12.2


