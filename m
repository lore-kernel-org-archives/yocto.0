Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 069E1E0086D; Sun,  1 Mar 2015 15:06:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBC1DE008E3
	for <yocto@yoctoproject.org>; Sun,  1 Mar 2015 15:06:32 -0800 (PST)
Received: by labge10 with SMTP id ge10so26895757lab.12
	for <yocto@yoctoproject.org>; Sun, 01 Mar 2015 15:06:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=9bTn4arKViNSqFA80QCuRVyzw1W2y6ZGPPLLKv83sh4=;
	b=VPUM3QDmXFnFKgj0uB/5ZwglnSlPSXCtzykWfswuSEjSa+RuRsmjrx18cuFaCNRaNi
	GN8ab7fXM3AGmew6gFfgM2sMJWfJ6in/xL8U2RIQTrJS3+y5YyWdYGWqZt/1jVp1UORg
	0GyQ2mxajaH0Yqf67Ox7eP6Z96kXdpKnyt4ar0+9qB8hYB9pjUX6aOCQIg6YPIAJzjDK
	p41FwTA9mV6/cBNrChRWsGPZwsZWREenaG+Y+q+LyGuGL2Mb0ZnKuyUJtEezrlr7Ny7R
	ReFkTzrKLsvg6cCl7e/tCt7s2tGnbugO+2kRjFY8p9wSnFQGPnznJrc3mwZzUHT239bH
	anwQ==
X-Gm-Message-State: ALoCoQlVIFfyZhGSAdmw8ejJ/wHvYDqzkEA0Sis3oc/fCpTssUTgakPpXnqbo9UuyyI59dbb95Bu
X-Received: by 10.152.1.135 with SMTP id 7mr3997313lam.41.1425251191834;
	Sun, 01 Mar 2015 15:06:31 -0800 (PST)
Received: from otp-agherzan-l1.gjk.dk (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id
	n12sm2148284lbg.31.2015.03.01.15.06.30 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Mar 2015 15:06:31 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Mon,  2 Mar 2015 00:06:21 +0100
Message-Id: <139e7ffff6c7b0dec91b2190542539aaae1b06c0.1425251029.git.andrei@gherzan.ro>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
References: <d8cb69b8fa4668be6719b7a100ccb1fedf8b2aa1.1425251029.git.andrei@gherzan.ro>
In-Reply-To: <cover.1425251029.git.andrei@gherzan.ro>
References: <cover.1425251029.git.andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 6/6] .gitignore: Ignore some stuff
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
X-List-Received-Date: Sun, 01 Mar 2015 23:06:39 -0000

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..1677b58
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,2 @@
+build*
+*~
-- 
2.1.0


