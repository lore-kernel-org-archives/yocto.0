Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A86FE00C59; Sat, 14 Apr 2018 08:33:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32D9FE00BFD
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 08:33:40 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id y66so8353880pfi.7
	for <yocto@yoctoproject.org>; Sat, 14 Apr 2018 08:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=Cbqll7uwQf+bVN0M6P/4EOi+v5bzN19Ek4D666G+NXA=;
	b=t3QpzzNQF0OVePgKZ7apJasYp4jkFSbJQKAtBoD/HevYZfAdNkKqMpebqYh/VqiGqt
	JsBDzKQ6IeOCISoqCG/hWXxv+WFDBwwy/Na+2mkfC3rESD2nx8C7s57Pa7QOn8QkzKRt
	gXbY465omzT2UF+x0QtOhvgEpptm68yNis0T93j7m7vuAuxjZd0y3SXDgmmHkmZkAwBA
	StMuElUXQUFIw7ao4jBpOC23fuit/YD67dTjJKxMAao+buGMxbquWSMyQcsaBGOaMyGk
	DJDWR14E1u/9PslfMNtgbWpZ454JRNvdKD3wznyCfGSwrRmCaCC+4e5Qc/Ge2NTwkvOo
	EbYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=Cbqll7uwQf+bVN0M6P/4EOi+v5bzN19Ek4D666G+NXA=;
	b=AJm9lp4ViWiqgKILeC6TGGSASamjkF6jyxLwbm5E25Yfvt194w1iD7YmjSeWbs1X5K
	pq+JIA1DbeKNdtdjXLB19GFteMd/bvNypPa4CQsMfkQwsPO+unUjlIOFFd/SL7xcUjy1
	pJYHDnGj6kvXHIx3wAjVwSzJD3hIsxKR5rwOwQtlHUTU5GAPxIHiTIfq8SAU14a+mXCE
	XZyBOhhW5PAGkrFk2Z/7wYt4PUpopmXD1abVPKf9iCP0NP61i/zc0hMRSSU8nMWA4VG5
	9ZZHiqgXwbhnUsHajYcyWxgE5zRtooyZ84N87p+417omQVkHZndZktWcjmEDs/eM9M4h
	9Zkg==
X-Gm-Message-State: ALQs6tCCENaR3oBngMMFh8IqhM8xv/Z/G+1VlYH0jgvqsL8mzWAlxDoV
	a1vo3SNio+52EFjdH7hKYFA=
X-Google-Smtp-Source: AIpwx49z521aIdDxzQy8G1wi6HrejvJKmzuwS8DanVR5W4D0JRbV17nWBgZ8w1WXvREQMhb+sjd2sQ==
X-Received: by 10.101.73.2 with SMTP id p2mr7273301pgs.397.1523720020754;
	Sat, 14 Apr 2018 08:33:40 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	y14sm22954737pff.81.2018.04.14.08.33.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 14 Apr 2018 08:33:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Sat, 14 Apr 2018 08:33:38 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Sat, 14 Apr 2018 08:33:34 -0700
Message-Id: <1523720014-3204-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523720014-3204-1-git-send-email-akuster@mvista.com>
References: <1523720014-3204-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 2/2] layer: move LAYERSERIES_COMPAT to sumo
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
X-List-Received-Date: Sat, 14 Apr 2018 15:33:42 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/conf/layer.conf  | 2 +-
 meta-cgl-fsl-ppc/conf/layer.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/conf/layer.conf b/meta-cgl-common/conf/layer.conf
index bcbff51..526426b 100644
--- a/meta-cgl-common/conf/layer.conf
+++ b/meta-cgl-common/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERDEPENDS_cgl-common = "core openembedded-layer networking-layer perl-layer f
 
 require conf/distro/include/cgl_common_security_flags.inc
 
-LAYERSERIES_COMPAT_cgl-common-layer = "rocko"
+LAYERSERIES_COMPAT_cgl-common-layer = "sumo"
diff --git a/meta-cgl-fsl-ppc/conf/layer.conf b/meta-cgl-fsl-ppc/conf/layer.conf
index 2fee17e..bdafe72 100644
--- a/meta-cgl-fsl-ppc/conf/layer.conf
+++ b/meta-cgl-fsl-ppc/conf/layer.conf
@@ -11,4 +11,4 @@ BBFILE_PRIORITY_cgl-fsl-ppc = "7"
 
 LAYERDEPENDS_cgl-fsl-ppc = "cgl-common"
 
-LAYERSERIES_COMPAT_cgl-fsl-ppc-layer = "rocko"
+LAYERSERIES_COMPAT_cgl-fsl-ppc-layer = "sumo"
-- 
2.7.4


