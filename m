Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5179BE00B65; Fri, 13 Apr 2018 15:39:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21CABE00B30
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:39:08 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id p6so7020925pfn.4
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=P5Gnn4z/1D5gsSNFhDDfJMzbGj/7PNzJ6n2HxH7xLlw=;
	b=XRR8AuZjiZbibtBgd0kM+UAJNXCcgh8JPJsG2fH4N9WlrIXNvAwVRXPie/gK/mpAXJ
	nmG02wXqdbZOlKrtsNShBezJUwEgr0+/oxpDJ5+23Q4g2SFKutQwkaL3/H3JDwqcBt6M
	NdUEFoC7S0+RuFhTFmDJ4aQwFMenvk6d2mi9idhm0Z5y01UwTHnvEf7cp4fBrQnXfG43
	36UQa01UGOq+sJ63v1rtFXig79XcWVDhswd8nYDVG1zs0wV7cJVyixCwXyamnFSunMgn
	U8Cx/i/9SGrH5wWQdAxqB1Wl/MkuJYPQzC3agVHEAu/xJZqFtCUAd2EjEpP+jqxAmjn4
	3g7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=P5Gnn4z/1D5gsSNFhDDfJMzbGj/7PNzJ6n2HxH7xLlw=;
	b=Y2WaujXNGgHnXUkZa3CP6WnsphuL7ltLQpsKmkg1FCyhwgaq07q55Mvdy93thyzV3f
	M7IzzMD/jR+G4rmP/vbFSzyMjAJfA2h60LN0tMKvT8iAK/BusmGRbzzeqlQ32SaaHWxZ
	1Y/3ViYHJeByxCgemCJldBZbG9vGkEWa+pZVWWeEt4VyVhJWgyy99hNyDLNPN4s8vieE
	gqMr/3OH/fbgpROIftrVOemvh1RLyxmseNqnZxDnPrBMUcoN0paBhl4uty7SYeDuoWTp
	teF9472JLFtTQbt6VKnfk3l4249pYXYDnTyp4G/mUQHg2CgiTSkPCAOjuZf2Yk9aNpIB
	Tsjw==
X-Gm-Message-State: ALQs6tB+92ncjz8cAL8BtJWaKcMVIHZW7klnpoqbkfeoKDse05CAkGOx
	OrrfQmYOYSOAbYz3vZBnIEA=
X-Google-Smtp-Source: AIpwx4/AocQppu6/KyTgZG/4G/DiIcDgMIY76xw3G5ofRB7clnHJuBxebzW/drtR+chz71EnzbJNuw==
X-Received: by 10.99.56.8 with SMTP id f8mr5521810pga.374.1523659148450;
	Fri, 13 Apr 2018 15:39:08 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	n20sm10321419pgv.29.2018.04.13.15.39.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:39:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:39:05 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:39:01 -0700
Message-Id: <1523659141-17543-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523659141-17543-1-git-send-email-akuster@mvista.com>
References: <1523659141-17543-1-git-send-email-akuster@mvista.com>
Subject: [meta-qt4][v2][PATCH 2/2] layers: move LAYERSERIES_COMPAT to sumo
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
X-List-Received-Date: Fri, 13 Apr 2018 22:39:10 -0000

[v2]
Fix cut&paste error

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 1ce54af..915d89c 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt4-layer"
 BBFILE_PATTERN_qt4-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt4-layer = "6"
 
-LAYERSERIES_COMPAT_qt4-layer = "rocko"
+LAYERSERIES_COMPAT_qt4-layer = "sumo"
-- 
2.7.4


