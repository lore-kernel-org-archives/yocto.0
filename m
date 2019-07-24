Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3362CE00D89; Wed, 24 Jul 2019 04:23:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18E37E00D36
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:23:29 -0700 (PDT)
Received: by mail-lj1-f194.google.com with SMTP id x25so44188429ljh.2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2019 04:23:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=KnDN7x1R/5iHTCstoRPY8JJhrhzZ4sMTvo+ZGEGRhMM=;
	b=WkFrlL28jDRjLrFPIj3rrOFVAb1ikesQYxfQavO/suWvIjaabm/5ZLsWGrmU+yXa6V
	W8hGquoadO79X9rBMWzxl97IooqpQ4kwgpnMn9m9vovIPokqgklK1kRErv0qYXOyHSW0
	usffZRvKPh/xtUyChSooHwGkaXa/2lElWNnvOsiY71Idw+TDe5bJ5xCYp8gUWCywUnaw
	SP+etWB8t3cNNPNp47iSi1zU+8HCe0gpusotjZ7gmN04tvtKjw5At7aI6ViXBi6XY2AC
	fsJQi56dvixWZq1pXm4o6spimUm1ViayNxIzcDFBNbYzv/zC6l7yjEenYk1txCClWOOG
	DFLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=KnDN7x1R/5iHTCstoRPY8JJhrhzZ4sMTvo+ZGEGRhMM=;
	b=Myj5uGdTX11NI5lfLMFwIzDMhEbDl4yiMwPeh40Pbgb+Tji7MENpTpTb35ykXUdOcT
	q5qG9rXuBOBFou6WEIwh3Ln3RaXiBoMnm9WUpRaLA4TrhUAxmRUDAPbanFEJnbAh1emi
	f5/tQICF4yYXbcgKqS4xlW09qM6x1b/C7N5Lwltt8o+1n6Lm8SN8WcPxTclrrClKx/WA
	ww1tcP4dfdqQs4+oG5FmlbMawb5ubr7OfJRAwlmocHT0iP+m0gI6nLZpWpBKW1Ysgncb
	xM/AA1I1ibCGFqJsbMrMALEkobTCBuHfLFoRlAcM2Wr2MsT2/4lBo9TVFack7wGFai5q
	GJnA==
X-Gm-Message-State: APjAAAWkQdu+UWP8SkDD4Yo/uFv1RnrDsMvoKLz7/mkgCAOLU4qWtSiT
	4xFVAr3/iC9cAgDb7FXAyJ+FcfqKTuI=
X-Google-Smtp-Source: APXvYqxPQ/sqDe1ZyTXFJS2AEvQG+IWMBFq/eOEmuqBHWR3Z2J5J8y4K+BEeIWEiyDXR/jlXxIS62w==
X-Received: by 2002:a2e:8155:: with SMTP id t21mr42263330ljg.80.1563967408609; 
	Wed, 24 Jul 2019 04:23:28 -0700 (PDT)
Received: from localhost.localdomain ([94.25.229.59])
	by smtp.gmail.com with ESMTPSA id d7sm6982113lfa.86.2019.07.24.04.23.27
	for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 24 Jul 2019 04:23:27 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
X-Google-Original-From: Dmitry Eremin-Solenikov
	<dmitry_eremin-solenikov@mentor.com>
To: yocto@yoctoproject.org
Date: Wed, 24 Jul 2019 14:23:24 +0300
Message-Id: <20190724112326.960-1-dmitry_eremin-solenikov@mentor.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [meta-integrity][PATCH 1/3] layer.conf: add dependency on meta-security
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
X-List-Received-Date: Wed, 24 Jul 2019 11:23:31 -0000
Content-Transfer-Encoding: 8bit

ima-evm-utils recipe depends on keyutils recipe which is a part of
meta-security layer.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 meta-integrity/conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 2f696cf7c332..917aa86e11d7 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -22,3 +22,5 @@ IMA_EVM_BASE := '${LAYERDIR}'
 OE_TERMINAL_EXPORTS += "IMA_EVM_BASE"
 
 LAYERSERIES_COMPAT_integrity = "warrior"
+# ima-evm-utils depends on keyutils from meta-security
+LAYERDEPENDS_integrity = "core security"
-- 
2.20.1


