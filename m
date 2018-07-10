Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3952DE00CCC; Tue, 10 Jul 2018 10:51:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f176.google.com (mail-yb0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CC9E00BAF
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 10:51:37 -0700 (PDT)
Received: by mail-yb0-f176.google.com with SMTP id r3-v6so8957843ybo.4
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 10:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=uS/AzREpTIsqGdwsjbmQ2929trAIe+hq7/tBru3g8sw=;
	b=ATDI0WLm/NH1wVIc2xIA5GuizX/Dn4sfZEZ5PTwD9Xty/iU6qzMHWADSjMOgr2s1KR
	CpK291xroUbt9VOAZaVAFIfjICNIDmC62XFZVqgoc6pLi1pOHb/OvyCmwcHY7fFPqtMC
	khWW614Wre0d4KsoGnTikGIkWEU4ZjhlfBGZ+/CXMEuQRht3RzoNeHRmB5ZRTAWsrPCN
	7IcVAdy32Qdi/UZM4bWQOgz0CZUAedOOJNYTwYj/pLOBIsJ49SuAvxZYxv/GGHgw21uV
	atOUnqrM8oX8ZnKk9FT0fhlvCkB/KxN0DNfQrUbFxTgfq14U68pblXShJJdrcnQSJ291
	4Kpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=uS/AzREpTIsqGdwsjbmQ2929trAIe+hq7/tBru3g8sw=;
	b=TwN7mRNyfBL/5CaXOuSNHWAOm3zt0myZ3UN3GXSBXfIQPTqKeEAHvJV5wvNm8w37Q9
	t1vYsP0L8hj5qwkpKrLzFNtWKLPG4Urw6ZdWFgYiHPQxBSxSUak/yV0iQLTUrZ+WZSbi
	QtFld7ScoxwHiEH2d4vX6Ay/5VAT6gbBLZmUsKp57r9AHr8M2WvjBWJbxZSAWdM5Mt1t
	LHWj7dsOaJAv9YjZKMP13a7+cgZXB16wPhsaND2ovsAQDQWjX8wiHfwEChqFXS3Yqduv
	Or+9JEb8iELn42Lwe5qtLkZMbBVEq7+grz6VJVPbzJ+c4MkGxUDY0IRGtHK4I5HHNPMP
	Zu1g==
X-Gm-Message-State: APt69E3qwQJtAdfpz421j7T6jFmF+iEVKCoYdVMkVgDWyktwH5WMGq3X
	5gnXiPYjtbcj5jydy6yGhCoMdktTo1s=
X-Google-Smtp-Source: AAOMgpeKMBMYh3PvHs7+9ibKCWwQ2jnMm0x3+6L2dFuogc/Dt4cTEZAxCWRKsKplZ7yWabk1letSbg==
X-Received: by 2002:a25:ae15:: with SMTP id
	a21-v6mr13334329ybj.436.1531245096339; 
	Tue, 10 Jul 2018 10:51:36 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	q184-v6sm8336413ywf.81.2018.07.10.10.51.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Jul 2018 10:51:35 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Tue, 10 Jul 2018 13:51:34 -0400
Message-Id: <D5656CB5-D7A6-4244-A803-4CC13ECD108E@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] dtb mising from raspberrypi3-64.conf
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
X-List-Received-Date: Tue, 10 Jul 2018 17:51:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Would you please add the bcm2710-rpi-cm3.dtb to the KERNEL_DEVICETREE =
listing in raspberrypi3-64.conf in sumo branch?  It=E2=80=99s missing.

- Steve Pavao
Korg R&D


