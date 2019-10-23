Return-Path: <yann.cardaillac@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34443E00DF1; Wed, 23 Oct 2019 01:00:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E87C2E00DDC
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 01:00:53 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id g7so2012976wmk.4
	for <yocto@yoctoproject.org>; Wed, 23 Oct 2019 01:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=smile-fr.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=EqZlgcTlbLZqqoXlnVLCBU2q9cvDhVUqcPdf6jn4j3o=;
	b=YbYMUEEnf7PzR1SXCOhFxVhy/e32T93NhNo2RSifUNfGRD+KGI4qfc0ZNLLzHVFBt8
	fNhBqykbEIzKjAj7Kx1lQi4y0Xks2WTpgK15oUGCHBZ4yU5Yu8qf5nhwbhlbVakgjRUW
	UIpnOv5TeTtLOuFUmAmOaSUuheQDdeGijyJHM6c7kGyMVstU3gA8b09+uS/xPMUB/SEt
	kaKqpNYlmUnoCBhDcf8H7nkuvdSVenmVtIDWEaKd5sM+TnXGfDkrcei5E5DsrIet8pHp
	tP5wEFcVeTSvnVoQfsocSFkWUzXAXLBnV4mevmggd9rcY0FQNNI2I7jlMt/0YUI3G91I
	sB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=EqZlgcTlbLZqqoXlnVLCBU2q9cvDhVUqcPdf6jn4j3o=;
	b=VY3xkc5clmSAvLQ5mkxHVTMRya5w/ZHf9MYhQvqAL90aDtJwF3xBouC3ey0E/NETLI
	D5AEXTPy2ELr5NjVIkQn9dXNHUUR6TDEn/hNM2bV3NugEU8MwXagNkXeTid082aMPxOK
	IDI/agrAwJGKNgTmlsFfwOAHbWoTKnKgjFFojGiE57TBoXODQGl82CofBMxz/myzSQVt
	bFh73b7xr2fBAH50Fc0A5Na522nrCXHAP2Y3OAOa69nRrlV9G6PtywUS3nDV2squct6B
	CZrR3jfXCkb+JrfEKgm4KGvCRM7K/hynIojs7Jdnu+MjuzrZVJ6hgV+pVbxcWaXakxmo
	YKPQ==
X-Gm-Message-State: APjAAAWvw9kt3clz8JsywRCK1RxoT94itl115U2/oksCCLHxYk3pXv3h
	lsGzXlwGQ19mTGxpqiocesjLzT0WgUaCtw==
X-Google-Smtp-Source: APXvYqymTDbKzrrgy2g7MfSDRyBLx82q19sEkzubnfErvBResUB7O6aHwYCr9Ocv4tpHW6czcbfnTw==
X-Received: by 2002:a05:600c:294b:: with SMTP id
	n11mr6259394wmd.70.1571817653025; 
	Wed, 23 Oct 2019 01:00:53 -0700 (PDT)
Received: from P-ASN-Panpan.nantes.intranet
	(static-css-ccs-204145.business.bouyguestelecom.com.
	[176.157.204.145]) by smtp.gmail.com with ESMTPSA id
	h205sm3695521wmf.35.2019.10.23.01.00.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 23 Oct 2019 01:00:52 -0700 (PDT)
From: Yann CARDAILLAC <yann.cardaillac@smile.fr>
To: yocto@yoctoproject.org
Date: Wed, 23 Oct 2019 10:00:49 +0200
Message-Id: <1571817650-6839-1-git-send-email-yann.cardaillac@smile.fr>
X-Mailer: git-send-email 2.7.4
Cc: mallum@openedhand.com, romain.naour@smile.fr
Subject: [psplash][PATCH] Adding SPDX license identifier to psplash
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
X-List-Received-Date: Wed, 23 Oct 2019 08:00:56 -0000

Hi,

If you have any advice please feel free to ask. 

I've put GPLV2 or later whenever it was mentioned and GPLV2 where nothing was 
saying otherwise. 

Also it's my first try with git send-email so some things can go wrong ahah.

Best regards,

Yann CARDAILLAC

Yann CARDAILLAC (1):
  add SPDX License identifier

 make-image-header.sh | 1 +
 psplash-bar-img.h    | 1 +
 psplash-colors.h     | 2 ++
 psplash-config.h     | 2 ++
 psplash-console.c    | 2 ++
 psplash-console.h    | 2 ++
 psplash-fb.c         | 2 ++
 psplash-fb.h         | 2 ++
 psplash-hand-img.h   | 1 +
 psplash-poky-img.h   | 1 +
 psplash-write.c      | 2 ++
 psplash.c            | 2 ++
 psplash.h            | 2 ++
 radeon-font.h        | 1 +
 14 files changed, 23 insertions(+)

-- 
2.7.4


