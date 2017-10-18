Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C3ABE00D33; Wed, 18 Oct 2017 14:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.180 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D8D2E00C96
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 14:10:02 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id l32so1775100ywh.13
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 14:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:to; bh=/nrPpXwFLejIMfJNM4rOQYwQp4lBTQCxzagIcXJzSBI=;
	b=0Qw2Mn8gLuQ/0NnmfYy6Z8dpSpOXNM0Bjr2/GSzyw5U/uxxkw6SjLzH5TJZtdAuIhC
	ZH3pv0IWO5iZU0RTl9BXs4LfEhibUeDWNqTQSeOVRlEqpUEggcOzBMY8rOamJ1d55Hdc
	sktOu16Rpur317p8j3hu5mLCdelh9Q2/r9BpwIfIxQfhYqMWx9P2tgFnpJS7rPxIgnHG
	2bji/GW+wzUdTxiiHNboHmvWMePnkwXR4Y/7g6QUQWfmdjXTgEnv9JVylpAIyRfulavz
	xqCaU8XmiUCe88thr3/ykYPVu5pYSTQ9U4dqWGIC7fFXdV0DJosOQuyXg5gQvJs2qI2J
	AA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:to;
	bh=/nrPpXwFLejIMfJNM4rOQYwQp4lBTQCxzagIcXJzSBI=;
	b=NKcAy5tnyqhIuRmIcaI/HuwuGC7Z9U9Kk7vu37tMPriiD3pkcSpIE1gbyFWgiAZ2y7
	C79PfurVr7VuihwJRHsvrGHDopEMZlu+PeZZSfzSmkpHmkE3rXiSoSfmhK+kjJdFJzyH
	W1pYZAKKGvc61AEyOlOuI1/R5bBS1uqKr59Edd712Nl0OXWCPvCSoDHYo0jsgIb+7me/
	inU3tDmi005gBTwhP31d0oa/tYio+bQTvQEf778z195zUXAEC41mtoEiXDisgjfHsxE4
	8C4EkT7ecEcueZxpkm0497xIB8vMixJ2+/iMBUdahkT1pJjfe67OKlxaTO/7MsSLZfGb
	kMUQ==
X-Gm-Message-State: AMCzsaUa3BqfwU1xIU831DLwK0jew9tC1p8SNRLIhcVcH10UcEVz4qmn
	3ROB41ZQmoQIKQ37SmH34wPnHLwmzYM=
X-Google-Smtp-Source: ABhQp+S+0oEanm3zcYM4BaP+2PGDXhr2qwQ/lQGInpGzXIbKYFbMOdtrK2GrzLfK1FKnHk7+Feokgg==
X-Received: by 10.13.199.131 with SMTP id j125mr2328753ywd.213.1508361001918; 
	Wed, 18 Oct 2017 14:10:01 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	x189sm7069668ywx.90.2017.10.18.14.10.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Oct 2017 14:10:01 -0700 (PDT)
From: Steve Pavao <stevep@korgrd.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 18 Oct 2017 17:10:00 -0400
Message-Id: <C900AACF-94AA-42E1-8EC2-92D4E76711E2@korgrd.com>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
Subject: [meta-raspberrypi] errors in tools-testapps when targeting raspberrypi3
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
X-List-Received-Date: Wed, 18 Oct 2017 21:10:04 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

When I target raspberrypi3 and have tools-testapps listed in =
EXTRA_IMAGE_FEATURES in my local.conf, build errors occur.

The errors come from the building of mesa-demos and gst-player.  If I =
remove those targets from packagegroup-core-tools-testapps.bb, I don=E2=80=
=99t get errors.

The errors seem to relate to required settings of these variables in =
local.conf to match available packages:

PREFERRED_PROVIDER_virtual/egl
PREFERRED_PROVIDER_virtual/libgles1
PREFERRED_PROVIDER_virtual/libgles2
PREFERRED_PROVIDER_virtual/libgl
PREFERRED_PROVIDER_virtual/mesa

I tried setting these all to the value =E2=80=9Cmesa=E2=80=9D, but then =
the gstreamer build seemed to demand a value of =E2=80=9Cuserland=E2=80=9D=
 for at least one of the variables.  I wasn=E2=80=99t able to resolve =
the conflict.

Could someone please reply with the proper value of these and other =
configuration variables possibly needed to complete this build without =
having to hack packagegroup-core-tools-testapps.bb like I did, or else =
supply a proper fix?

Here are my local.conf settings of interest.  I=E2=80=99m building in =
pyro branch for everything, at current head.

MACHINE ??=3D =E2=80=9Craspberrypi3"
IMAGE_INSTALL_append =3D " apt gdbserver perfcnt-enable mdns"
EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks x11-base tools-debug =
tools-testapps ssh-server-dropbear package-management"

- Steve Pavao
Korg R&D



