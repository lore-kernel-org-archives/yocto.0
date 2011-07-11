Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD2914C80579
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 05:33:02 -0500 (CDT)
Received: by wwf4 with SMTP id 4so3431482wwf.11
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2011 03:33:01 -0700 (PDT)
Received: by 10.227.2.144 with SMTP id 16mr4304674wbj.9.1310380381649;
	Mon, 11 Jul 2011 03:33:01 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id fy9sm4871107wbb.59.2011.07.11.03.32.59
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 11 Jul 2011 03:33:00 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E14906E.4050606@linux.intel.com>
Date: Mon, 11 Jul 2011 12:32:58 +0200
Message-Id: <C29ABBA8-125D-4CA9-97F2-75BB0258F448@dominion.thruhere.net>
References: <9AAFA2F5BB120A448121E0997AE4438834482092@POCITMSEXMB03.LntUniverse.com>
	<4E14906E.4050606@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	G Rajender <G.Rajender@lnties.com>
Subject: Re: minimal yocto images not booting on Beagleboard-xM rev B
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
X-List-Received-Date: Mon, 11 Jul 2011 10:33:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 6 jul 2011, om 18:42 heeft Darren Hart het volgende geschreven:

>=20
>=20
> On 07/06/2011 07:00 AM, G Rajender wrote:
>> Hi,
>>=20
>>=20
>>=20
>> I am new to Yocto project and Beagleboard.
>>=20
>>=20
>>=20
>> I am using Beagleboard-xM rev B. I got the information about Yocto
>> project by search. Yocto is a good open platform for Embedded =
developers
>> for target specific architectures.
>>=20
>>=20
>>=20
>> I have started working on Yocto project to build a LTP (Linux Test
>> Project) Test frame work for Beagleboard-xM rev B. I have downloaded =
the
>> Yocto release 1.0.1 and Beagleboard-xM BSP from the Yocto website. I
>> have installed the Yocto project poky build tool and demo image in my
>> Host PC (Ubuntu 10.04)as per poky quick start guide.
>>=20
>>=20
>>=20
>> *Now I am trying to execute the meta-bsp (meta-beagleboard) binaries
>> (built images) on beagleboard-xM rev B as per README. Hardware file. =
But
>> the beagleboard-xM revision B is not booting with theses BSP images.*
>=20
> Hi Rajender,
>=20
> Welcome to the Yocto Project.
>=20
> We just recently completed a major overhaul to the meta-yocto
> beagleboard BSP, bringing it closer in line with the
> meta-texasinstruments BSP. I have tested on a C4 and an xM Rev A. I =
have
> reports of it working on rev B and not working on rev C, which we are
> looking into.
>=20
> For the best Yocto beagleboard support, I suggest building from the =
git
> repository until the 1.1 release later this year.

Well, for the best beagleboard support you'd still need the offcial =
beagleboard layer =
(http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrumen=
ts/) and use angstrom as distro=

