Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41B03E00953; Mon, 29 May 2017 14:22:32 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA8ABE0080F
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:22:31 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id w69so13462748pfk.1
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 14:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=jCwEuHPzLBuUzI7RRqp4vMj6fi5t+Q//aP34W8GfR+s=;
	b=o7xl/WbpUsw8gcntUISDVAifA/rPvqnF+YdtYzOvyjgLnv7YQ1H0CFp4554ogXCgb+
	qZlR1/X2oQrFUEagwGEua4bkGGSl+CoJ68u/1GooqjBt+ZxxNKxCNxn1S5TEY+QmHimi
	nWaM4LV27NpIid+N5dSyCYVc9X46xEUoMgB+rWxP1lA7ba0x6rPoybubb+fp1icqdlRz
	wQVxyh9EiccihAWxygoL3M2o+bRol/ORBEv1nxiKXm4zvtZg12jwgrCIZa3YG0XG1Zqu
	6uddcpQW2Ia3SPsMcSIl8GCX7+3xV7jdKU0a8vPFLnz9QvOkOI+GemB6pa/cHGiRlFe5
	xuEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=jCwEuHPzLBuUzI7RRqp4vMj6fi5t+Q//aP34W8GfR+s=;
	b=Q7zWq/3F28oHA2/Si5CsQDFNn3WcfC1GikBMZR5FujjMJyDRVcG00WdQmg2KD5E0Cr
	3/WKrPe+gjkaVaoawTQ6qbuVeyXrpjnK9oxU+UDU6EpIIsdGUwQsG/wxd3+EwjiCv1Uh
	gtPYNYVwShepSVnsUkZTFTT3jN5qGM2lirufJcyEizqk/+7XW2cYKUYi38LMFc+vRb9L
	rOF1bzcUzIVPswPau/pPm7WH8eFBF7TDdQbYuF6uPpAxGOLX9brRpXNmiC5sIjBxmPV6
	XPTHjD9tLinp0Ky39hcsLJqNU4tayT07ve46chBRKuFspnAOIgGvxC8TIC6aeHAlmuv3
	T+ZA==
X-Gm-Message-State: AODbwcCLKxvfPx9QeJwsYVScaDBfbrt86bB7rzWeh/Jqt5hzA0zSY88H
	Jk20gsHCn5Sjgg==
X-Received: by 10.84.137.1 with SMTP id 1mr80677616plm.128.1496092950891;
	Mon, 29 May 2017 14:22:30 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c940:bb39:2b1d:3b23])
	by smtp.gmail.com with ESMTPSA id
	n24sm21261917pgd.57.2017.05.29.14.22.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 May 2017 14:22:30 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Mon, 29 May 2017 14:22:28 -0700
Message-Id: <1496092949-5916-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH 1/2] resource-agents: fix configure issue
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
X-List-Received-Date: Mon, 29 May 2017 21:22:32 -0000

From: Armin Kuster <akuster@mvista.com>

| checking for pkg-config... no
| configure: error: You need pkgconfig installed in order to build
| ERROR: Function failed: do_configure (log file is located at /home/akuster/oss/maint/oe-test-distro/build/tmp-glibc-glibc/work/i586-dummy-linux/resource-agents/3.9.7-r0/temp/log.do_configure.3415)
ERROR: Task (/home/akuster/oss/maint/oe-test-distro/openembedded-core/../meta-cgl/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb:do_configure) failed with exit code '1

add inherit pkgconfig

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 .../recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
index a0d4e1f..e6f127b 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_3.9.7.bb
@@ -30,7 +30,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
 DEPENDS = "cluster-glue"
 RDEPENDS_${PN} += "bash"
 
-inherit autotools systemd
+inherit autotools systemd pkgconfig
 
 EXTRA_OECONF += "--disable-fatal-warnings \
                  --with-rsctmpdir=/var/run/heartbeat/rsctmp"
-- 
2.7.4


