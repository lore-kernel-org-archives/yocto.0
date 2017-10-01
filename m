Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59E48E00E46; Sun,  1 Oct 2017 09:43:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f180.google.com (mail-pf0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD5AE00E45
	for <yocto@yoctoproject.org>; Sun,  1 Oct 2017 09:43:47 -0700 (PDT)
Received: by mail-pf0-f180.google.com with SMTP id p87so1858442pfj.9
	for <yocto@yoctoproject.org>; Sun, 01 Oct 2017 09:43:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=yYd7hKAfEde9Ez7VunJGrD4DjIegNGUiiSqFkxxssfQ=;
	b=G6LXducNwrnbl27zEnxk3uSBMe6mcI/R0k20DiqW9ddR7X37Lc545OYmXpp8VgusJb
	4a9LMg07hlHJuW3/uRpB45+ETUTFWqJzOuOZphrRqwHF109Er9aDbxCtk1lukmnghzlr
	/rgRe/JmIT0sM6CHHTKL0iPcdF7qBSkI6TxiQBey58/NRE47x3OL/+gKpu51UK9k29iU
	b1rjhrmztbgly7Zr58IXWuW+o6OnuS1CBctKn2SlQizXNR4h/lf9RCcd9Ww/lq/1n4VG
	Yi4wK++Y5So9fQ65eEB16IyFdRWmAeDgg79bVelRPxA3mBi+Icr+nayJt9DQn0Yl+S1T
	6g7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=yYd7hKAfEde9Ez7VunJGrD4DjIegNGUiiSqFkxxssfQ=;
	b=jbaRJPUzZziqYRuobWs1+QSWnySpdKGis8Vqj8NT8tdhxhOZETxCrrzNZYoS/SZ1wY
	ah/9/4eciHlAmXF///CwwCMLp4mW/6IGtXSh/MHBxbOJmVZseJyBx/qa/M6P6tI879Ee
	hB6tw3jyo2dDYaNEqCztGV3RrTQFCZOWAwWsLHS+5/fz+GDPR/TiVH1l6jZBkYzc9UjP
	Rm109DINtz9DiL9RiKPQWH2zuGx2IVPa1DO/1Aw+NaoouzoEs4hbqUS6aPR6ES9WUNjD
	qNFwmTXIjiVJLlFegi5fee3EKPGJzBAkWJDeXfZ9+6nSZYHsEuKAam1vMDQG70WPWJeC
	VE1w==
X-Gm-Message-State: AMCzsaXJkV9SMZCBo85sath593NFOre0Ues4Y09N17H8YuY20A/JiHZw
	4OZgQDXv6ynph9yB5twjGiQ=
X-Google-Smtp-Source: AOwi7QC/Zwic+rWbbVK1gXvZPCd40uwGq4JLplLC7/mQRh6tf4Vk8uW3SNw1liyYiWBIcBChiE559w==
X-Received: by 10.84.218.2 with SMTP id q2mr3988614pli.111.1506876227593;
	Sun, 01 Oct 2017 09:43:47 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e0ed:d79b:a9ce:26d1])
	by smtp.gmail.com with ESMTPSA id
	h1sm14546794pgf.54.2017.10.01.09.43.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 01 Oct 2017 09:43:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun,  1 Oct 2017 09:43:37 -0700
Message-Id: <1506876220-22710-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
References: <1506876220-22710-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 07/10] openscap-daemon: fix QA issue
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
X-List-Received-Date: Sun, 01 Oct 2017 16:43:48 -0000

ERROR: openscap-daemon-0.1.6+gitAUTOINC+3fd5c75a08-r0 do_package_qa: QA Issue: /usr/bin/oscapd-cli contained in package openscap-daemon requires /usr/bin/python, but no providers found in RDEPENDS_openscap-daemon? [file-rdeps]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb           | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
index 1467da2..fb01a11 100644
--- a/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
+++ b/meta-security-compliance/recipes-openscap/openscap-daemon/openscap-daemon_0.1.6.bb
@@ -16,3 +16,5 @@ PV = "0.1.6+git${SRCPV}"
 inherit setuptools3
 
 S = "${WORKDIR}/git"
+
+RDEPENDS_${PN} = "python"
-- 
2.7.4


