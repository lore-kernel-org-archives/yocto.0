Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 092E4E00C5B; Fri, 16 Nov 2018 07:56:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.67 listed in list.dnswl.org]
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
	[209.85.166.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09355E00C28
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:56:24 -0800 (PST)
Received: by mail-io1-f67.google.com with SMTP id e9-v6so2099385iob.5
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 07:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=745hjI+thzVZpGj3QRXjujMBYRTLvEh0Q0IcsHyHoUk=;
	b=FifZrmg25TOla/y2f3dHIp1rUuwx1zMZ6ZjZWEB8kHGnTDwT1AbGdqdaq66KOVZmVk
	nD9XElpZKpb5XmxjVc6B5uemKDzPbFsc/vQf4tYNqk2lg1dcv4aljk6sAVO/lWgz09lr
	h0zNebqan1zfjnyJJWYXMd3O4XDSVFGVUk1x1KSwo0pQENxVl3PxzOpYHJQBZNhOkpxo
	5uLP3Rr7leMWiiFdhdKaGNTo9Of3GxOgAWHZUejHdk0hDdhWCoCuAZT0GbQ7+zV/oQIg
	Frj0mu59tipYNhCeUO1ytO0uaU18d1+/auSunZkhKyVFUQ6biMvSczr2O6AQYf193Ivg
	3O6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=745hjI+thzVZpGj3QRXjujMBYRTLvEh0Q0IcsHyHoUk=;
	b=dVv612kmcvAa4jdOAj8PRoK8aeCGGMpA+wdx0Zp7J2i7Ar+1XUj8DS5xWygusPLzHB
	Tq4SUkPVS2FZ517j2L7AYW66twu+3o+7YbXtoUCXOG/QHb/IvfCjQ2BaGPyW676G2p0B
	seHXt/g+huSfj2mS8JRsxjQy+i6Ma0bXuy/KhLVnmgaN8UWIg5lDwc5DANgdjqsrrdj9
	SXy+423VnQNDA5f0Ch5nqtSYHwkt7rZoIdvEiRX2hH1wqVL+yvFzil1vwxG2kJMq0Hkm
	xRIo885PfL1xgwMGFJErDSVNUIATEN2g5TPbuRCaCtJYowhWCik8IJqSa/EwY3wcI9DU
	IsTg==
X-Gm-Message-State: AA+aEWbLZJ3j/TsF5xXp4dIBIBCY6wBFUHaSVgBjhs3MK/yr3v0A1RrA
	+jxzC12j1eZBo3FYoW4EYcxHXvnvbAU=
X-Google-Smtp-Source: AFSGD/V1Q98HMVVK5dGHLUMq9IKqVbryRu3RieIxqYsbNx1cA07MKYEHuJx1TWf1EtCTOTD6T82fCQ==
X-Received: by 2002:a5e:a513:: with SMTP id 19mr3083245iog.151.1542383784076; 
	Fri, 16 Nov 2018 07:56:24 -0800 (PST)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.gmail.com with ESMTPSA id
	u68-v6sm587628itd.1.2018.11.16.07.56.23
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 16 Nov 2018 07:56:23 -0800 (PST)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 16 Nov 2018 09:56:17 -0600
Message-Id: <20181116155617.6112-1-JPEWhacker@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20181116153608.24733-1-JPEWhacker@gmail.com>
References: <20181116153608.24733-1-JPEWhacker@gmail.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH v2] README: Add myself as a maintainer
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
X-List-Received-Date: Fri, 16 Nov 2018 15:56:27 -0000
Content-Transfer-Encoding: 8bit

Replace Juro, as he no longer maintains the layer.

Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 2ed1395..c17f74a 100644
--- a/README
+++ b/README
@@ -11,7 +11,7 @@ This layer depends on:
  layers: meta
  branch: master
 
-Layer Maintainer: Juro Bystricky <juro.bystricky@intel.com>
+Layer Maintainer: Joshua Watt <jpewhacker@gmail.com>
 
 Please send changes to the yocto mailing list with [meta-mingw] in the subject line,
 cc'ing the maintainer.
-- 
2.19.1


