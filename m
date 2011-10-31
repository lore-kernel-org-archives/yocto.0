Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 456D0E013A3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 00:25:35 -0700 (PDT)
Received: by wyg34 with SMTP id 34so342622wyg.35
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 00:25:34 -0700 (PDT)
Received: by 10.227.58.18 with SMTP id e18mr16251134wbh.23.1320045934291;
	Mon, 31 Oct 2011 00:25:34 -0700 (PDT)
Received: from [172.20.1.32] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235]) by mx.google.com with ESMTPS id
	ei16sm30736532wbb.21.2011.10.31.00.25.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 31 Oct 2011 00:25:33 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <alpine.DEB.2.02.1110281009190.7011@localhost6.localdomain6>
Date: Mon, 31 Oct 2011 08:25:32 +0100
Message-Id: <020B9637-90D0-4C03-AEBA-19912F97033B@dominion.thruhere.net>
References: <CAFNE1kTTFYhhqK_nopj4MG7VNzWKriZTbGJYAZt-shTinw_ROA@mail.gmail.com>
	<alpine.DEB.2.02.1110281009190.7011@localhost6.localdomain6>
To: Robert P. J. Day <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.1251.1)
Cc: yocto@yoctoproject.org
Subject: Re: Building for pandaboard
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
X-List-Received-Date: Mon, 31 Oct 2011 07:25:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 28 okt. 2011, om 16:10 heeft Robert P. J. Day het volgende =
geschreven:

> On Thu, 27 Oct 2011, Brian Park wrote:
>=20
>> Hi,
>=20
>> I'm interested in using Yocto to build linux for PandaBoard. It
>> seems there are already patches some where that I can use to build
>> for panda, as I found some discussions mentioning PandaBoard patch
>> in the archive. But I could not apply it. I'd appreciate some
>> pointers on how to find and apply the right patch.
>>=20
>> Just trying to apply
>> =
http://article.gmane.org/gmane.linux.embedded.yocto.general/2037/match=3Dp=
andaboard as a patch
>> using "git am" command gave the following error. I'm using release =
1.1 Edison.
>>=20
>> briansp@LinuxMint11 ~/poky $ git am < ~/Documents/pandaboard.patch
>> previous rebase directory /home/briansp/poky/.git/rebase-apply still =
exists but mbox given.
>>=20
>> I'm new to developing for linux and yocto. So, any help would be =
appreciated.
>=20
>  i am particulartly interested in this topic as i have two
> pandaboards waiting to be yocto-ized.  might this be a more
> appropriate topic for the pandaboard mailing list?

The best pandaboard support is present in the meta-ti layer, to use it =
just follow the instructions at =
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/tree/README

regards,

Koen=

