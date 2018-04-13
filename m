Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C8C6E00994; Fri, 13 Apr 2018 15:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f66.google.com (mail-pl0-f66.google.com
	[209.85.160.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE33BE00529
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:41:34 -0700 (PDT)
Received: by mail-pl0-f66.google.com with SMTP id bj1-v6so6837116plb.8
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 15:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=ghrkxf0Ad3VMas4hpueTos4PiS1B66ckUSPMj2GRg60=;
	b=HUd2SvoHdo9V26JwyCQ/swMWh7p2ocfWYtALUG8YBYhFJC5lLoxK3HFSp025cUs7tM
	QiwTSvfRpKXrp8VJbDnnWcOgMG18T8VqSO3lnamaFVgjrekUEVj8xvP8rXBjOPQ2vVP2
	O511hwHQedW+InnXPYlMs0ySx3fYWXIE951nBZVL+wRHgu3vocp+S1StsDmj2rdrbUZ+
	9YYTlk8Tgih3KBbEYn/EbclP8Fi/QIpgKqYA4fuRCIlQNs4MFQCUlZyQL0oFBt/j/6eY
	dngaqnvlm3HeaWTGtwj+D1HFvIvPIS/RW9wDtn0e8Uk8NA36CZcVmyWz+Z6P8ULXFSf3
	VStA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=ghrkxf0Ad3VMas4hpueTos4PiS1B66ckUSPMj2GRg60=;
	b=ZIPp4zwjl0O6Pqeqm+qbvj+cF8k3FlGHfgLY/P3ThGJZu1LE/1hSAhy60JBiubEgnm
	Pl/qCM0w1Lat7EBzjD8GCt8KOxsnpK1d0SSlL+agP+CtSzHu9wkrJtaRfmo2MM3HmT+u
	h6OAEoOxYJ8yww/07pKH0i3K3Gy7NNpgNJPBu4rN3aNMDCaXjEsSE15Ez2KcuGFhgXT9
	FDrNBEzi7bvsSqm3ecmp/0z7x13i578SbCsFzyxMXB3jN6WKd5WxIbs7Xw1+XQ2q4QnK
	WNvOjCjc/lThx+RRNgjXEgejN5WwAiUKNC8CMJvI/KY7n3QcFXnTmRXZdEYyoP+vxf91
	Qz9w==
X-Gm-Message-State: ALQs6tDN0GupD00ZVf/viQCcQ2HaX5rWNHFia0ITyvaRwYYwds33OmYY
	23AHk5RiSMonXbIA0z09ZcI=
X-Google-Smtp-Source: AIpwx4+7eo7jZGz0RTai/gFAxa3Ja1vHVaD2hlKlBgkXZE+flT0C6Fg7lE6fzSWrLkhRAIsM9zLXCA==
X-Received: by 2002:a17:902:2702:: with SMTP id
	c2-v6mr6852465plb.110.1523659294024; 
	Fri, 13 Apr 2018 15:41:34 -0700 (PDT)
Received: from akuster-ThinkPad-T460s
	([2601:202:4000:1184:dd04:5ab2:7006:f760])
	by smtp.gmail.com with ESMTPSA id
	a6sm11480148pfi.12.2018.04.13.15.41.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Apr 2018 15:41:33 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
X-Google-Original-From: "Armin Kuster" <akuster@akuster-ThinkPad-T460s>
Received: by akuster-ThinkPad-T460s (sSMTP sendmail emulation);
	Fri, 13 Apr 2018 15:41:31 -0700
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Fri, 13 Apr 2018 15:41:27 -0700
Message-Id: <1523659287-17805-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1523659287-17805-1-git-send-email-akuster@mvista.com>
References: <1523659287-17805-1-git-send-email-akuster@mvista.com>
Subject: [meta-qt3][PATCH 2/2] layer: Change LAYERSERIES_COMPAT to sumo
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
X-List-Received-Date: Fri, 13 Apr 2018 22:41:35 -0000

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 2100ffb..04025ac 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -8,4 +8,4 @@ BBFILE_COLLECTIONS += "qt3"
 BBFILE_PATTERN_qt3 = "^${LAYERDIR}/"
 BBFILE_PRIORITY_qt3 = "6"
 
-LAYERSERIES_COMPAT_qt3-layer = "rocko"
+LAYERSERIES_COMPAT_qt3-layer = "sumo"
-- 
2.7.4


