Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF67F4C800FB
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 08:25:10 -0500 (CDT)
Received: by wyb40 with SMTP id 40so415535wyb.35
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 06:25:04 -0700 (PDT)
Received: by 10.227.24.74 with SMTP id u10mr584296wbb.69.1308144303398;
	Wed, 15 Jun 2011 06:25:03 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id p21sm352873wbh.6.2011.06.15.06.25.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2011 06:25:02 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DF8B1D7.8050208@windriver.com>
Date: Wed, 15 Jun 2011 15:25:00 +0200
Message-Id: <E44DE684-78F8-4C17-8FF8-837A46CECD58@dominion.thruhere.net>
References: <cover.1308133815.git.jingdong.lu@windriver.com>
	<4DF8B1D7.8050208@windriver.com>
To: Bruce Ashfield <Bruce.Ashfield@windriver.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 0/1] Enable to set RTC for beagleboard
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
X-List-Received-Date: Wed, 15 Jun 2011 13:25:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 15 jun 2011, om 15:21 heeft Bruce Ashfield het volgende geschreven:

> On 06/15/11 06:41, Jingdong Lu wrote:
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>=20
>> Ensure msecure is mux'd to be able to set the RTC for beagleboard.
>> Fixes bug [YOCTO #767]
>=20
> Jingdong,
>=20
> The fix looks reasonable to me, Darren has been refreshing
> the beagleboard support as well, so I've cc'd him here to
> see if we have this change present in the work in progress
> trees.
>=20
> What tests did you run to ensure that the RTC worked on
> the beagleboard ? There was some debate around whether or
> not you needed an add-on card to get this functionality
> available ?

You need to remove some resistors and add a battery, or add an =
expansionboard like the zippy or zippy2, which have a DS1307 RTC with =
battery.

regards,

Koen=

