Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D49304C804C2
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:48:34 -0500 (CDT)
Received: by eya28 with SMTP id 28so1022442eya.35
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 00:48:33 -0700 (PDT)
Received: by 10.14.41.8 with SMTP id g8mr1846871eeb.58.1308642513375;
	Tue, 21 Jun 2011 00:48:33 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id r39sm938671eeb.25.2011.06.21.00.48.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 21 Jun 2011 00:48:32 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <6ba0b5880d906578d64713c1780aa8d67647bce9.1308639171.git.dvhart@linux.intel.com>
Date: Tue, 21 Jun 2011 09:48:31 +0200
Message-Id: <53B1780F-C192-4AAA-806D-B94EDC47F03F@dominion.thruhere.net>
References: <cover.1308639171.git.dvhart@linux.intel.com>
	<6ba0b5880d906578d64713c1780aa8d67647bce9.1308639171.git.dvhart@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] beagleboard: add basic audio mixer defaults
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
X-List-Received-Date: Tue, 21 Jun 2011 07:48:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 jun 2011, om 09:19 heeft Darren Hart het volgende geschreven:

> We need a generic alsa based mechanism that we can use a bbappend to =
save
> default mixer controls per bsp. Until that is ready,

Like the alsa-state we had in .dev for some years now? =
https://github.com/openembedded/openembedded/blob/master/recipes/alsa/alsa=
-state.bb=

