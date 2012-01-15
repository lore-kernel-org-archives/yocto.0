Return-Path: <koen@beagleboard.org>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AABD7E0030C
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2012 00:47:04 -0800 (PST)
Received: by werm12 with SMTP id m12so311478wer.35
	for <yocto@yoctoproject.org>; Sun, 15 Jan 2012 00:47:03 -0800 (PST)
Received: by 10.216.133.224 with SMTP id q74mr1680000wei.3.1326617223573;
	Sun, 15 Jan 2012 00:47:03 -0800 (PST)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id fv6sm26665700wib.8.2012.01.15.00.47.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 15 Jan 2012 00:47:02 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
Date: Sun, 15 Jan 2012 09:47:02 +0100
Message-Id: <A3B88716-58B0-406C-AF71-27119B0F9A38@beagleboard.org>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Sun, 15 Jan 2012 08:47:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 11 jan. 2012, om 21:57 heeft Brian Hutchinson het volgende =
geschreven:

> On Wed, Jan 11, 2012 at 3:47 PM, Joshua Lock <josh@linux.intel.com> =
wrote:
>=20
>> In meta-yocto/conf/distro/poky.conf there's a line which sets:
>>=20
>> PREFERRED_VERSION_linux-yocto ?=3D "2.6.37+git%"
>>=20
>> Which is then overridden for the qemu machines to:
>>=20
>> PREFERRED_VERSION_linux-yocto_qemuppc ?=3D "3.0%"
>>=20
>> If you add a similar line for beagleboard to a conf file, such as
>> local.conf, it would look for a 3.0 kernel version and use your tree.
>>=20
>> PREFERRED_VERSION_linux-yocto_beagleboard ?=3D "3.0%"
>>=20
>> I know you've switched to master but I wanted to help you understand =
the
>> system is doing what it is.
>>=20
>=20
> Ah, very good!  Yes, good to know information.  I'm coming from
> OE-Angstrom/Arago and so far most things have been pretty familiar but
> it always helps to know how it fits together.  I need to make several
> BSP's for TI processors and this helps me understand things a bit
> better.

If that's the case, you'd be a lot better off basing it off the official =
TI BSP layer instead of meta-yocto.=

