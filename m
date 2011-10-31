Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF9AE01347
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 00:27:14 -0700 (PDT)
Received: by wyg34 with SMTP id 34so343691wyg.35
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 00:27:14 -0700 (PDT)
Received: by 10.227.207.205 with SMTP id fz13mr16519883wbb.0.1320046034197;
	Mon, 31 Oct 2011 00:27:14 -0700 (PDT)
Received: from [172.20.1.32] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id e7sm30768730wbh.12.2011.10.31.00.27.12
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 31 Oct 2011 00:27:13 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <alpine.DEB.2.02.1110290915450.7280@localhost6.localdomain6>
Date: Mon, 31 Oct 2011 08:27:11 +0100
Message-Id: <BA8B50AF-70FB-4FF4-B1DA-BF9315C85EF4@dominion.thruhere.net>
References: <alpine.DEB.2.02.1110290915450.7280@localhost6.localdomain6>
To: Robert P. J. Day <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.1251.1)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a filesystem issue with kernel 3.0.x on pandaboards?
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
X-List-Received-Date: Mon, 31 Oct 2011 07:27:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 29 okt. 2011, om 15:19 heeft Robert P. J. Day het volgende =
geschreven:

>=20
>  possibly off-topic but i'm sitting in a fedora/ARM talk right this
> minute at FSOSS/linuxfest at york u, and the presenter mentioned that
> when building fedora for pandaboards, they had to back off from kernel
> 3.0.4 to 2.6.35 because, in that situation, the filesystem had a bad
> habit of switching unpredictably into read-only mode.
>=20
>  is this a known issue in any yocto context?  again, sorry if this is
> wandering far afield but yocto on a pandaboard was at the top of my
> TODO list for this coming week.

I'm not seeing that problem on the pandaboard that's running 3.0.x and =
angstrom. The default in angstrom/meta-ti is 2.6.35 due to multimedia =
acceleration madness.=

