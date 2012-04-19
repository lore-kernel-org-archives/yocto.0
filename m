Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D240BE013E5
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 03:00:51 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so3128262wgb.11
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 03:00:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=sIdPiRYvF/sJEh5ovfoV8mT3zKib0DCFxWgJNM2PHa8=;
	b=mNg85f+ZN6MNG6p3n+cdQQWuD0Ssz588JK8K1ZguWR7jNnVte7lueVzsF5ul0VZbHb
	PG+sKT3wr7NO3jndPQfvqCtkJNAr0vPG6bo2yUiYpnvUKPVO3sofk3Wvx1lVKyi/0Ucs
	qCIAFgEI3EbQqKC9C+NA+uxrHTfsWcJPhHwTOdqZs/WR2jotG67lHN+5rB9jUJVLhqsb
	on2Z/3ydMbx/0zYmJ3z61eEUoWoPJh6EGA2A53DHTZiPrpBQ7/RWQAzsGUDEHVryNgkE
	uA4OcLXuDyFQv4tupTQ9MJMzHb4Cjj2xEh9stK7ry8J+H/uIpNpQveDwbXRUWBaXMiRb
	dqWw==
Received: by 10.180.81.198 with SMTP id c6mr3644870wiy.18.1334829650755;
	Thu, 19 Apr 2012 03:00:50 -0700 (PDT)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id ff2sm6664131wib.9.2012.04.19.03.00.48
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 19 Apr 2012 03:00:49 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1334306723.7309.54.camel@ted>
Date: Thu, 19 Apr 2012 12:00:54 +0200
Message-Id: <A1812F33-640B-413F-8E3A-0B3784A9630C@dominion.thruhere.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <1334306723.7309.54.camel@ted>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQncZe1ZDbCCNET3djroGxDcvzk7s2+N+xbyFAIB1/Lwlwcyyn7aZ0pvRbMY0cq6V2ztnPI+
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 19 Apr 2012 10:00:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


Op 13 apr. 2012, om 10:45 heeft Richard Purdie het volgende geschreven:

> On Thu, 2012-04-12 at 07:34 -0700, Darren Hart wrote:
>>=20
>> On 04/12/2012 07:08 AM, Bj=F6rn Stenberg wrote:
>>> Darren Hart wrote:
>>>> /dev/md0        /build          ext4=20
>>>> noauto,noatime,nodiratime,commit=3D6000
>>>=20
>>> A minor detail: 'nodiratime' is a subset of 'noatime', so there is =
no
>>> need to specify both.
>>=20
>> Excellent, thanks for the tip.
>=20
> Note the key here is that for a system with large amounts of memory, =
you
> can effectively keep the build in memory due to the long commit time.
>=20
> All the tests I've done show we are not IO bound anyway.

Consider this scenario:

OS disk on spinning rust (sda1, /)
BUILDDIR on spinning rust (sdb1, /OE)
WORKDIR on SSD (sdc1, /OE/build/tmp/work)
SD card in USB reader (sde1)

When I do the following during a build all CPUs will enter IO wait and =
the build grinds to a halt:

cd /media ; xz -d -c foo.img.xz | pv -s 3488M > /dev/sde

That only touches the OS disk and the SD card, but for some reason the =
3.2.8 kernel stops IO to the OE disks as well. do_patch for my kernel =
recipe has been taking more than an hour now, it usually completes in =
less than 5 minutes (a few hundred patches applied with a custom =
patcher, git-am).

regards,

Koen=

