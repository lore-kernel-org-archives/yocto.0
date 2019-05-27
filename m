Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD4B5E006D2; Sun, 26 May 2019 21:56:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3EECE006D2
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:45 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id r22so5966283pfh.9
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=yX2rFZh5laJlVGIba46sXfznSqdt4kD3VR8KHw6esbg=;
	b=S80Rbu9Y+huLJG4NBXxMRzVJwcr6qz5P3kdfFNjHgmxicAUD5aHMf/GIbvl8Wjtzd5
	SYks/cdYceQecxLEEY/EkKWe1m6pm3fOHsV2SSQ8X0BcdBBxVxi1Vdsy+tdk79KSUqdG
	zY29RpgLMB0dVb2EAu85FpqfFu1exvoQYQ1eYOP/ZGmJBdd8w1dg4Sa8tFEFnz/86mTB
	EFeWXPRk7xj2c6GaPUx/Yjxc3tFxmN15Qda0kP9PI4NBVhnwgW9Ud6QIUipKMgyZ0iwg
	sHbSVvhKUQq+ruoXagvWSec52jnxN+1yWjjsXZFPJ2Gc9H1R1ZMRQAAGdie/7UCjnGHc
	/mLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=yX2rFZh5laJlVGIba46sXfznSqdt4kD3VR8KHw6esbg=;
	b=mFl0JO0P19dFudkWz6+I7T/HIbUuFmncdwKQJm5dH6psMXyUgszVTWQFaMnQ1IoNE3
	5a3GIyKOkeswI6e+C02KoY9exuL0DvDARdq94EqNAEL9Fqm+AXjazdTVQSx1qWKO1cFN
	J7yklb+ZKmua0kv6nOb1FMkIXKVsXij6tUcPSvWa5OA8NHCynd36HANjjjBriu4ko7bH
	nZy69b9Rbn/K8CnSLiGlrdKABpw1oGggQmQO31+kkyBlMbHxahGODh7ywjgFG2dB8TYf
	ZzGDDi/HvIUI2D3pSaXUTIcx6qRBhcJmnwuaSsf2IVhr1hZesVXrrhshL3Ue7atco+nY
	DXTQ==
X-Gm-Message-State: APjAAAUo5pCF9Twzp89LU09fT0kEA6267zPqEXkUxLQEe7NOqZohMuj8
	Phkd5J5q4uUUFXeu/yV1AFUCwqTn
X-Google-Smtp-Source: APXvYqyRARfvowB70bUFupcZjbY7Vu4Z6R8DAKHXFzaZzxBm3CtgteBbg/MPv71zwQpUW4cbsnsm2w==
X-Received: by 2002:a17:90a:ac18:: with SMTP id
	o24mr29421940pjq.116.1558933005207; 
	Sun, 26 May 2019 21:56:45 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.44 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:29 -0700
Message-Id: <20190527045641.18884-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 02/14] layer.conf: add LAYERSERIES_COMPAT
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
X-List-Received-Date: Mon, 27 May 2019 04:56:46 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/conf/layer.conf | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index e8bb268..2f696cf 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,3 +20,5 @@ IMA_EVM_BASE := '${LAYERDIR}'
 # dependent on location of the layer). Exporting it to just the
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "IMA_EVM_BASE"
+
+LAYERSERIES_COMPAT_integrity = "warrior"
-- 
2.17.1


