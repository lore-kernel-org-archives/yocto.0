Return-Path: <koen@beagleboard.org>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7DB3E00596
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 23:39:56 -0700 (PDT)
Received: by wibhr14 with SMTP id hr14so243877wib.11
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2012 23:39:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=auKWZDQhfke6uhSXvTuSzqiIZWlJTsVlOsGtJJPOuZw=;
	b=NeeuNZ9XTbYmxKul4ydXGwH99+P7iZuJLAUxHOqXwt9UguwJvSwG8YNIsV67AEBdk1
	ZizvSYfwvRmd+A+nMAdL6igV10tX735T4ewKDkPMID3wJtNC0REx5ztDRq8IlVJiFcNO
	OEq3MNb6UXQFbHgbMCbGFMgZklcX449XJGy9xJQbUuYqSQsfMVwmU7gKYrjp2HbBd4oa
	tb66PxxrxWXuakw4uMhew+LY1wGAJeT8l2f/tWhdnpddksGQLUkLGQzyMw6UiU4Jeoos
	O60ITeZUSSTFG6JNe9bwh35SvahWEoB8SL5nqmt/Le6xm3VSXmkV3t+/zHLXXyDQDiHY
	Emxw==
Received: by 10.180.101.230 with SMTP id fj6mr2892522wib.13.1335508795677;
	Thu, 26 Apr 2012 23:39:55 -0700 (PDT)
Received: from [172.20.1.36] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id fl2sm4221963wib.2.2012.04.26.23.39.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 Apr 2012 23:39:54 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <20120426185224.GF3646@jama.jama.net>
Date: Fri, 27 Apr 2012 08:39:55 +0200
Message-Id: <556E6D34-6DE8-4D2F-8B48-E11B717E1915@beagleboard.org>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
	<1335436998.20130.0.camel@ted>
	<EE230536-AE66-41DB-93EE-B1A7CA9FFD75@beagleboard.org>
	<20120426185224.GF3646@jama.jama.net>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQkDxNPdbARMY78xEYIYd0t5RC2+IJDNkdJzvN46hggy6pxWi7BHYf9FmZ9dZlJIQnZcAAOD
Cc: yocto@yoctoproject.org, Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Subject: Re: [opkg-utils][PATCH 00/22] Partially prepare for python3 and fix old Packages file reuse
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
X-List-Received-Date: Fri, 27 Apr 2012 06:39:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 26 apr. 2012, om 20:52 heeft Martin Jansa het volgende geschreven:

> On Thu, Apr 26, 2012 at 06:21:45PM +0200, Koen Kooi wrote:
>>=20
>> Op 26 apr. 2012, om 12:43 heeft Richard Purdie het volgende =
geschreven:
>>=20
>>> On Fri, 2012-03-30 at 00:21 +0200, Martin Jansa wrote:
>>>> First 5 patches are taken from oe-core.
>>>>=20
>>>> Then there are some cleanups and fixes for issues I've found while =
looking=20
>>>> for cause of very long package-index calls.
>>>>=20
>>>> Some patches uses compatible changes from 2to3 (tested with =
python2.7), but
>>>> python3 support is not 100% complete, but were closer.
>>>>=20
>>>> And in the end I've found the cause.. printing long fields (e. g. =
description)
>>>> with opkg.py was producing empty lines in Packages file (which are =
Packages entry=20
>>>> separators) so only first entries till first empty line were =
processed from old
>>>> Packages file and the rest was always extracted from control files =
in packaged .ipk.
>>>>=20
>>>> And this also fixes Packages.filelist generation.
>>>>=20
>>>> I don't use python very much, so please review.
>>>>=20
>>>> And the speedup? Almost 60 times :)
>>=20
>> [..]
>>=20
>>> I reviewed these and they all look like good improvements. I've =
merged
>>> it into master, thanks!
>>=20
>> After some more time in oe-core master for testing we should =
seriously consider cherry-picking the SRCREV bump to the denzil branch.
>=20
> Agreed, saves about 4 hours per day (13 images each with own =
package-index run=20
> and extra run for feed if built after iamges) on my buildhost for last =
month or so :)

I merged in denzil-next locally and grabbed 26465 from patchwork. Let's =
see how much time it saves on my machine :)=

