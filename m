Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3948EE00726; Wed, 15 Aug 2018 13:42:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E09FE0049F
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:42:37 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id t5-v6so2741955qtn.3
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2018 13:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=mp3DqzIy9gm73ghkWsHChGhjN3m1G1AuxbSfC9y52AY=;
	b=Do3E9lWih+G/dxc8V0BFFyUPAfBbqT0oDkf8k+BjDprN2N1A1PSTGhY8BBIIs2XovW
	KTt12XPiMpQEAWPAni17i/ojXMnnxpsGp51HB+TqcG0epsqxRxTnbUBbroYwKTgVY7gW
	qCWyKjysyU93+W+i2OxpfS214mDwVo5uAdbL2GTK01fI8BFzBoOwQYCv+st7DQmbg+K0
	Ydw089raVn1IAWxElH1nAP5P7jIIvTp3L996vTKsyB4R9i6f8okXw74asAUdzhgH+E8h
	PCDAHVflikVDK+yAa+v+QVsorjG9B7YthQ+FdfcEuNA8f3x0QzzF3NOtNGPwqO5e2wdt
	7OPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=mp3DqzIy9gm73ghkWsHChGhjN3m1G1AuxbSfC9y52AY=;
	b=PJiRYz7ZvTbV+T16RiLssFBgR18KL6+S9N2fksH0UPQUl6myWZT8aihhauT95eH+7h
	UH0PnRpNlqniw/+Dd3dkEu6ZsApglqgSm3h6+3kF32Aekzm29FZXVBg5sb0t062b/iGP
	ZMCK/82pP/5S+WKSK0iTO0ut0L2wfg3RRGi9AOr4oqa2q4J1wUhLNuyMtbx6I5vOATp1
	Z3Tv49llbM/aOHO1AkOGqDJuMy14VFDacrb0IK6wrsWMky3NLv/9mHAJ5+hGFvy2hjac
	cRSeHjZYNguKAJFOF8WUamKlD6xmTZ0U2cjaPhBgK9nQp7lZQNR5S+jsior5Jq+0Thvk
	/sKQ==
X-Gm-Message-State: AOUpUlGVXdyPR3dp+Rp9L8LzxbYGqhbIMTzF7gjWZeV/T/yVZQ4KTKpv
	q8MHMWP2KDTJIxGBF9GOw/CNRg==
X-Google-Smtp-Source: AA+uWPxcn+rMX+IawKgzrFrjZDkrxdsaikmMCbYy5ADNkH2Uudpop7Ltj1b/jPQ4OErKeBFj2UnDXg==
X-Received: by 2002:aed:235a:: with SMTP id
	i26-v6mr26629063qtc.382.1534365757467; 
	Wed, 15 Aug 2018 13:42:37 -0700 (PDT)
Received: from steves-mbp-2.lan (68-191-253-254.static.oxfr.ma.charter.com.
	[68.191.253.254]) by smtp.gmail.com with ESMTPSA id
	j5-v6sm13968772qtb.34.2018.08.15.13.42.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Aug 2018 13:42:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <CAMKF1srSZ4wkvdXfyKHo27aBLBx8vYWz3Ba2OP+aanr6BMZZOA@mail.gmail.com>
Date: Wed, 15 Aug 2018 16:42:34 -0400
Message-Id: <FFE3E10D-0186-4906-81F6-E0E3A699F40B@korgrd.com>
References: <9987A072-988B-440A-9A7C-2132D963E7EA@korgrd.com>
	<CAMKF1srjCWwcAKziq=yKRF1tZmmUBBT8reAqpTF5SMyMb2giQg@mail.gmail.com>
	<96C9E43C-BDF8-4095-BDC8-09B4F59F6AF4@korgrd.com>
	<CAMKF1srSZ4wkvdXfyKHo27aBLBx8vYWz3Ba2OP+aanr6BMZZOA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3273)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] core-image-minimal for raspberrypi3-64 manifest/sdimg contains no kernel modules
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
X-List-Received-Date: Wed, 15 Aug 2018 20:42:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

> On Aug 15, 2018, at 4:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Wed, Aug 15, 2018 at 1:25 PM Steve Pavao <stevep@korgrd.com> wrote:

>> I would like to state my opinion though that to unconditionally warn =
the user to use core-image-minimal instead of rpi-hwup-image  (which =
definitely packages kernel modules if they are there) is not often the =
best advice to give.
>=20
> This should be fixed in meta-raspberrypi, care to submit a patch
> to use core-image-base instead ?

Sure, I=E2=80=99ll submit a patch.  Should it unconditionally recommend =
core-image-base, or should it still recommend core-image-minimal if the =
kernel modules list is empty? (Could that condition possibly happen if =
the user cleared it in local.conf?)

Steve Pavao
Korg R&D


