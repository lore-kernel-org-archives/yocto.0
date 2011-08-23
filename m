Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8073E011C6
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 05:38:33 -0700 (PDT)
Received: by wyg30 with SMTP id 30so59884wyg.35
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 05:38:32 -0700 (PDT)
Received: by 10.227.6.215 with SMTP id a23mr209163wba.110.1314103112400;
	Tue, 23 Aug 2011 05:38:32 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fb2sm113982wbb.45.2011.08.23.05.38.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Aug 2011 05:38:31 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
Date: Tue, 23 Aug 2011 14:38:28 +0200
Message-Id: <CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
References: <cover.1313792192.git.dvhart@linux.intel.com>
	<0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1244.3)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Tue, 23 Aug 2011 12:38:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 aug. 2011, om 00:23 heeft Darren Hart het volgende geschreven:

> Fixes [YOCTO #1203]
>=20
> Using the hard floating point abi is incompatible with some binary =
libaries and
> 3D support for the Beagleboard. As we do not provide these in poky and
> meta-yocto, we can take advantage of the hard floating point abi.=20

What advantage are you talking about? So far everyone has been unable to =
provide real-world numbers[1] that show hardfp making a difference =
compared to a properly configured softfp. The numbers debian and meego =
are showing are comparing it against completely vfpless builds, which =
borders on fraud.

Yocto is of course free to do what it pleases, but switching to hardfp =
isn't going to make beagle support better, only worse. But if that's =
your goal, go for it, meta-ti is still there to provide the absolute =
best beagle support.

[1] povray is the only outlier, but I don't think people will build =
beagle based renderfarms in the near future.=

