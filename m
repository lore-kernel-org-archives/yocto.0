Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 573294C80A8A
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 02:44:52 -0500 (CDT)
Received: by wyg34 with SMTP id 34so2620885wyg.35
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 00:44:51 -0700 (PDT)
Received: by 10.227.53.210 with SMTP id n18mr2126486wbg.63.1311061491067;
	Tue, 19 Jul 2011 00:44:51 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id 20sm4114840wbw.2.2011.07.19.00.44.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Jul 2011 00:44:50 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
Date: Tue, 19 Jul 2011 09:44:44 +0200
Message-Id: <AB1A5241-0B13-4DFF-A453-BECBB1ADD408@dominion.thruhere.net>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>
To: Kumar Gala <galak@kernel.crashing.org>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5] Add support for PowerPC e500v2/SPE
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jul 2011 07:44:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 19 jul 2011, om 07:21 heeft Kumar Gala het volgende geschreven:

> The majority of support for the PowerPC e500v2/SPE target already
> exists.  However some minor cleans are required to get things working
> completely.
>=20
> The e500v2 utilizes a unique floating point programming model / ABI =
from
> other PowerPC targets and thus requires special handling.


These should be sent to the oe-core list against the oe-core tree, not =
the poky list against the poky tree=

