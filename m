Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB211E00AA2; Sun, 11 Jun 2017 12:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90AC7E00A94
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 12:54:25 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id q15so49683801uaa.2
	for <yocto@yoctoproject.org>; Sun, 11 Jun 2017 12:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qw5C1Ooa08qdBpStYnfo39XQu9QdtTfjuzAnK+qMdrw=;
	b=nSL9yUpJ12xJ2wMZ7NHZDm0aHZw1qsyaoT8VvWzYWDmY6GYrKpmVYmcZAbMloO8lcz
	S89/ZaG4m4BOCisG8SNh/YdUudUVx2J/Q5Tod61S/Na6tXJlSMnHapqxKv1kpoGghrmG
	t1AtG+XB8/1+opm72PH0Q6sOdCmIkv56+9hDxyGQYqzX/QacQUJnXY5vybXnSnDBIRCy
	bn9KNttQtGMjKP+N6QKRsb94PZIiZUc4q5Ta7cazzeVuo/9Ml5V9KTTyexxrZNmgfv9a
	gP8Br1QyFQX/KLEc53perzoC+GYYcGrymk9vRxUpE4yyGaES/JttL1eZqg7HtMUtwX3z
	ZsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qw5C1Ooa08qdBpStYnfo39XQu9QdtTfjuzAnK+qMdrw=;
	b=SB38zYiHlYMymdlH2pXuvqTVhmjg9MGCiuYCFgx7K+3EkMnsaPON4n7MpCFg7SD8bo
	DOs5PdN+afnx8afxJNE0tseJ1egKwvVO1AsrSAcm5Jx53N5eLAX849UUnuFXhL0/d4RZ
	S5TQtCHqmZSW+RaBC+7XAelBGxYjWDErHGWP7skjg+6GwINlBF3Xu0JXOd4YVDCWo9iw
	ko0sASxUpkgAUVzjX1g45JH3IXGy3ASuRlgHk9OVPMGDDNlLD7ut/d1CxfI2Zgj4M6dQ
	RyfirgCnuzOsAP6Uft7RoXrON98KtLIku+8/Wm8JAE/rWC6Lc+FeL8GdudxQas6zFyJz
	tJ/w==
X-Gm-Message-State: AODbwcApuODHYw4Of/oiOTqoDytp9siVDyUyCMNmLl3PI15AD8YU9jE2
	fHhAzGUAIM52VOCevqm8q4Sw6AmUltKp
X-Received: by 10.176.71.25 with SMTP id h25mr29920181uac.140.1497210864421;
	Sun, 11 Jun 2017 12:54:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.7.2 with HTTP; Sun, 11 Jun 2017 12:54:23 -0700 (PDT)
In-Reply-To: <20170611065017.1785-1-romain.perier@collabora.com>
References: <20170611065017.1785-1-romain.perier@collabora.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sun, 11 Jun 2017 15:54:23 -0400
Message-ID: <CAHUNapR9McmvP+ZstEMTf9hesTB=YQ3THksmYeUjHD5VnJpzqg@mail.gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: Switch to u-boot-common_2017.05.inc
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
X-List-Received-Date: Sun, 11 Jun 2017 19:54:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Romain,

My nightly builds alerted me to the problem, so I fixed it and already
pushed a patch.
Thanks!

Best regards,
    Trevor

