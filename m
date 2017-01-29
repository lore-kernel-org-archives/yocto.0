Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6217AE0082A; Sun, 29 Jan 2017 09:12:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F8EFE0071C
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:36 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id 19so21753396pfo.3
	for <yocto@yoctoproject.org>; Sun, 29 Jan 2017 09:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=+CP9kDQjrOR2wkQyl2EN/fdnUieE5KD3nGuSL+cAIBQ=;
	b=GrqUZPmkLR+xcLw2BlpbkghE23rINJl/2uVeZVLaUafAPQ+KlIheCW5PWAh0qG/cky
	s6ryqlFa3365UHlOXebWjroSE92OYAPLhSpvN5fn8XG+QG6qEo9r6efvulYLPnLXAIbo
	3frKVE5k0bL3/MhSuP8GtcdP0PjugUg4bCqN7kRezwo+7UG1Baq1YnUs4+7fOWHy9Jem
	sbgZQq+BJoVMcIHcYmAPoFUM30bFv/NWEJdhItiHGWiAf+sP58bXRt9lT+g89veGBxk8
	FLdaZlfU29a5cWbWyKpPQLwPVAoblAt11++KLf5PxPGCz/sitlpDjgImxWwjYSOJ+JtZ
	T6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=+CP9kDQjrOR2wkQyl2EN/fdnUieE5KD3nGuSL+cAIBQ=;
	b=ETxDytE19QGQN+P9TtSXmqnXQeahEeHTBoTytQeII+gezyIgi7qu9YLRtDPEhsk4VI
	aiAhpp2H0snBxKVvKZQQzJhEF0dPeyplRTfHRFDIIUcpYMm0QZyTv5oFc7z4mYf/VzcK
	HCb9w6MsasLAevC2UgA1JCtZJ+DFQNTWGyMi2Omt/QNSRux4c90DBeM4mAjQM2Q2SGSC
	dOiWDu61B6yagQ7DxkASuEFr5ymifPQ0b8KqtTDxger72yCkddJZHSzm1fFcfgWMUpS+
	XyOAerAz8Owolhr8yqtdHyBKwTTL9UBWmMo+92rFrJSA7nn5fOlKkdbX05iqrGAXlqr5
	uBbA==
X-Gm-Message-State: AIkVDXKuWsgv5eDO1iHDPQ9NicN0rXCogLcO9s2z76GUsdOTu2dmvWkBlMnBUFgeyAG/iw==
X-Received: by 10.84.138.165 with SMTP id 34mr26268916plp.37.1485709956194;
	Sun, 29 Jan 2017 09:12:36 -0800 (PST)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:d8f8:ce4a:79c4:7a9d])
	by smtp.gmail.com with ESMTPSA id
	g70sm25877403pfb.50.2017.01.29.09.12.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Jan 2017 09:12:35 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org,
	akuster@mvista.com
Date: Sun, 29 Jan 2017 09:12:28 -0800
Message-Id: <1485709952-13916-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/6] qemu: use wildcard for PV
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
X-List-Received-Date: Sun, 29 Jan 2017 17:12:39 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-devtools/qemu/{qemu_2.7.0.bbappend => qemu_2%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-devtools/qemu/{qemu_2.7.0.bbappend => qemu_2%.bbappend} (100%)

diff --git a/recipes-devtools/qemu/qemu_2.7.0.bbappend b/recipes-devtools/qemu/qemu_2%.bbappend
similarity index 100%
rename from recipes-devtools/qemu/qemu_2.7.0.bbappend
rename to recipes-devtools/qemu/qemu_2%.bbappend
-- 
2.7.4


