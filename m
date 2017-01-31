Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3A02E00961; Mon, 30 Jan 2017 23:48:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 820E5E00970
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:21 -0800 (PST)
Received: by mail-io0-f174.google.com with SMTP id j18so125757204ioe.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=b6xMSmYWBRn1z1NIQujpjmQ3KK2CXsknJ0ez//5fhvk=;
	b=m3wLh/3Hivf4zwy1VWz8pBJzgOVvim2XRZpC4cOoCr1EcKV8AqlpmR4JWpC//h1wzE
	EDafcxdsgkhKfvMcdoO7ZaTFE4jUgSNyZ/fb1vPpJZIrR7LVJvcse5EH7mgecI+rBmry
	gX+rlcLxXJ1hK0Y9tZoS7vhJ2SRkfp8cv8NGVT+JQlwE7TUf70OCh3rPa8fhqV89W7rp
	DVgmsk8WfJf+I9MT/hUZhsiCMnTZW3isx8g01Sd+0aTCGHUqGUs1k6YD/OxWTmfInWnu
	JlQTQ2D0qSHOGit0VZVPHwXBOQkeHNKY7JUP4p/ydrIyX2g/9q4j65hfERq3qd9MaInH
	GdtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=b6xMSmYWBRn1z1NIQujpjmQ3KK2CXsknJ0ez//5fhvk=;
	b=FONQB+BakzgdUnPXU1ztnCAXBizUckRvhP0FYOdV9W2M3VohNVMp348XRLboQetRvA
	TY+10sCYrzzj5RwW2xKL/HsjLbYOj3wM8Yj4JZXnJFWCzaKz9gA3qbUejBG1YO/6tImy
	vrL3D9UmWnTBQ0tWniODkUuaDeWqlfGiG2iikBxfjQ7yA3b8Uds2pE3tXFggDcoOqIum
	koLh71hkelTfuqkZ7BvduCp7MQYs2S69EXZpZwXHVZoGfw5TSzSD/6kEoIj3t6g3/Vf9
	1KSVwtEgeeA7ugcqi5tpQ81vc6+7pR7qqIs1Rm1Pubjd5c2SytvgG6+a8HLutNUbxMti
	YM9A==
X-Gm-Message-State: AIkVDXL36b2NZR8OZXYvZxCtxg9j7LflRan25ar2gaCVtm5xuNnrksCkMV0um8GImL4xUT1H
X-Received: by 10.107.147.87 with SMTP id v84mr21372022iod.63.1485848900798;
	Mon, 30 Jan 2017 23:48:20 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:19 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:01 +0100
Message-Id: <9f34e7185d1e2efbae7073c5c3a71048dd34ef3d.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 2/8] trousers: recommend tcsd
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:26 -0000

Installing tpm-tools for tools like tpm_takeown pull in the libtspi
package, but the resulting system is not functional unless the tcsd
(from the main "trousers" package) also gets installed. A RRECOMMENDS
entry for that takes care of that automatically.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/trousers/trousers_git.bb | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 0a7e5b6..5737de3 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -56,6 +56,10 @@ PACKAGES = " \
 	trousers-doc \
 	"
 
+# libtspi needs tcsd for most (all?) operations, so suggest to
+# install that.
+RRECOMMENDS_libtspi = "${PN}"
+
 FILES_libtspi = " \
 	${libdir}/*.so.1 \
 	${libdir}/*.so.1.2.0 \
-- 
git-series 0.9.1

