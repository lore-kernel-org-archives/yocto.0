Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97A60E00E6A; Tue, 27 Feb 2018 15:19:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4BA1E00843
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 15:19:18 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id t6so1635026wmt.5
	for <yocto@yoctoproject.org>; Tue, 27 Feb 2018 15:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=JGwT4cRP3nKze4Ra3Kr21O7TNzK7gwrVWdxMWV6w/cA=;
	b=tZEL2GYV5BGVCRQx46iN7slZygSVCvZsFLrifW5gm3W/jCHaS9UBpgjiYBV96W1hvk
	6uPjYd8X050uiEZmbUlNFTmn7oYbYunRxvNrRv/mWsmLoEA3AuCmgWYlMUDMzg/R5bik
	HEFFRX/MBP+zYoMEF4s7rUdffj3RKIOo5TAE1i+yiTUQKbcar5ZCcw5IXoYG/FE9MSTt
	He0f5zSXCZwCLbRq1vkFiTpt9gOjHdtxubN7L1LxBs2zAglFZ6SeFmp7f6mwUUQTyZUz
	ddBZ9e/VCbsc1ZpWVyweaPAssxclcsYXbR9zecG5GUb3VHYw//lFtGuS1B78rlv7Jut6
	dRZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=JGwT4cRP3nKze4Ra3Kr21O7TNzK7gwrVWdxMWV6w/cA=;
	b=Y6uI3dc0hwbTcZ3oBu1M/501pM0xYTnY4gRU6OPoUviJuF8z1y1vrM2nubWHXKc8di
	xsZtjN3XDD6ujNe5KZRWDV6ffuihC7vR9OBmpuIoo9jIla/sYDReb6GuRsgJhHLPyypZ
	bMDTDouCW0ceH5PJ73uZ/Ixd9saYSmRd585zz8wuhYJME5Ugo3pH/Rk7kqLc1LzaLShS
	YSFB/7rDO4ARGnkTMOKexdo8PuGD+BeFTCDP96DK7hixwejapFBdpjQfAk7fYtpTnHSg
	7AzwzJy6Mmt8RFLAd/J66Qww30VaxkfRBSq9hMyazvIOMEdtXBhxolctisqdziHaBuhp
	eaHA==
X-Gm-Message-State: APf1xPDduLdFO50E3jTk0hlFzEdC1oVf5fiZyMkZSWV5+DwQiHcBuqwm
	N3kew6rg4/t4k32wijDycDAD4Dzd
X-Google-Smtp-Source: AH8x227Cwc9Pa8OVa9OSU9UR/TQHhNb/SgGTM7wHGW17rK7ROJcTsx0jecqoPxfOfmAeYpHDlZjZIw==
X-Received: by 10.28.63.65 with SMTP id m62mr12341209wma.29.1519773557581;
	Tue, 27 Feb 2018 15:19:17 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35])
	by smtp.gmail.com with ESMTPSA id k18sm884923wmd.4.2018.02.27.15.19.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 27 Feb 2018 15:19:16 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 27 Feb 2018 23:19:13 +0000
Message-Id: <20180227231913.8553-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH][meta-mingw] libmpc: use wildcard version
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
X-List-Received-Date: Tue, 27 Feb 2018 23:19:19 -0000

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-support/libmpc/{libmpc_1.0.3.bbappend => libmpc_%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-support/libmpc/{libmpc_1.0.3.bbappend => libmpc_%.bbappend} (100%)

diff --git a/recipes-support/libmpc/libmpc_1.0.3.bbappend b/recipes-support/libmpc/libmpc_%.bbappend
similarity index 100%
rename from recipes-support/libmpc/libmpc_1.0.3.bbappend
rename to recipes-support/libmpc/libmpc_%.bbappend
-- 
2.11.0


