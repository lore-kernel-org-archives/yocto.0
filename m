Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF10D4C804C2
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 02:53:22 -0500 (CDT)
Received: by wyb36 with SMTP id 36so1765981wyb.35
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2011 00:53:22 -0700 (PDT)
Received: by 10.227.55.66 with SMTP id t2mr5665350wbg.109.1308642801922;
	Tue, 21 Jun 2011 00:53:21 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id en1sm3785422wbb.52.2011.06.21.00.53.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 21 Jun 2011 00:53:21 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <53B1780F-C192-4AAA-806D-B94EDC47F03F@dominion.thruhere.net>
Date: Tue, 21 Jun 2011 09:53:15 +0200
Message-Id: <93FA5058-9490-4E17-A1C9-93CFC28F6D92@dominion.thruhere.net>
References: <cover.1308639171.git.dvhart@linux.intel.com>
	<6ba0b5880d906578d64713c1780aa8d67647bce9.1308639171.git.dvhart@linux.intel.com>
	<53B1780F-C192-4AAA-806D-B94EDC47F03F@dominion.thruhere.net>
To: yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1084)
Cc: Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Tue, 21 Jun 2011 07:53:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 21 jun 2011, om 09:48 heeft Koen Kooi het volgende geschreven:

>=20
> Op 21 jun 2011, om 09:19 heeft Darren Hart het volgende geschreven:
>=20
>> We need a generic alsa based mechanism that we can use a bbappend to =
save
>> default mixer controls per bsp. Until that is ready,
>=20
> Like the alsa-state we had in .dev for some years now? =
https://github.com/openembedded/openembedded/blob/master/recipes/alsa/alsa=
-state.bb

I really should start reading the coverletter first :)


