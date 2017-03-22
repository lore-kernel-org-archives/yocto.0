Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5BFEE0093F; Wed, 22 Mar 2017 05:46:47 -0700 (PDT)
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
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A168E00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:45 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id o126so26732190pfb.1
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=S86j0H5nzg0YdpUaDWaIVxkYE3Q3gRK5rpQKiT7qiHY=;
	b=X38x6/TMRi7QVQ4PG8DDmrwDwEFyeZNTYN2d7QS5+Hk9FHSJNz7w0TlfCJ3TnMKCN3
	nHjxo8sR/xStNdLiXTGVfKjxFB67Gm5cn+wVo0oPN4sehAMCcHx8e4b89Y/yM/mo03Ui
	7M8pyinWKuJtgSI//lhLB6UQZSOpXFko+jAcOdwyiqFL8MWAI7r5mGpC5DriUkPmZoQt
	jKUvLcpGFD6uI3KzbgRkWAMBTrjr8F6CI0ywFDpszpAq2iXQxaKxEmakeOMLil5m2t8K
	XvZ+sjsHprANFQHq0MfCBG6d7V10d7ILSLQUhtKd4W9ebQJ2XMYwGHUivIIaZnRzSTo+
	UcMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=S86j0H5nzg0YdpUaDWaIVxkYE3Q3gRK5rpQKiT7qiHY=;
	b=HaxhL2+u8qvHhxHWT/L3y4NYYEXXr1suvJ8zuw8zI7/y15x+jFiGmBfboNvhmpFBao
	WWBOk9qKiiARkL0BtIPaowU6z4mnJIOAl/TMyDMPhio1iZhgclk4QhwPk6wSSXt2YXRF
	7b97EDmvB05o7IQvoJH5yXyeyinbLNs09FP0o7fqNAVHL+UtcOaVObROxNv188R5MwkL
	V4oKawq1urUjSsDRfkuvGPlHppktMei3G909/3Qm0dR0UYLEHq3tteEMCni76A5J40Wp
	JoK1IW9pPlKsDI2zaA6AW9+9S847+SvS1BqBTUo4uoErNdYWAnPa78l+kBlSJNxMJ9kO
	BO4Q==
X-Gm-Message-State: AFeK/H1v9mCkXj27KdGDHq9XFDB/vJuK9Ao3nU32xnPWlpKpAh5hfMciY+kQMFPyqGEWXg==
X-Received: by 10.98.19.156 with SMTP id 28mr45142628pft.208.1490186805679;
	Wed, 22 Mar 2017 05:46:45 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	e70sm3935214pfl.105.2017.03.22.05.46.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 05:46:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 05:46:39 -0700
Message-Id: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/6] tpm-tools: updatet 1.3.9.1
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
X-List-Received-Date: Wed, 22 Mar 2017 12:46:47 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/tpm-tools/tpm-tools_git.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-tpm/tpm-tools/tpm-tools_git.bb b/recipes-tpm/tpm-tools/tpm-tools_git.bb
index 83f1091..f670bff 100644
--- a/recipes-tpm/tpm-tools/tpm-tools_git.bb
+++ b/recipes-tpm/tpm-tools/tpm-tools_git.bb
@@ -12,13 +12,13 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=059e8cd6165cb4c31e351f2b69388fd9"
 DEPENDS = "libtspi openssl"
 DEPENDS_class-native = "trousers-native"
 
-SRCREV = "80954ab83be8d091c6e3112514945556aaa09d39"
+SRCREV = "5c5126bedf2da97906358adcfb8c43c86e7dd0ee"
 SRC_URI = " \
 	git://git.code.sf.net/p/trousers/tpm-tools \
 	file://tpm-tools-extendpcr.patch \
 	"
 
-PV = "1.3.9+git${SRCPV}"
+PV = "1.3.9.1+git${SRCPV}"
 
 inherit autotools-brokensep gettext
 
-- 
2.7.4


