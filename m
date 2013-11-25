Return-Path: <tstellanova@gmail.com>
Received: from mail-pb0-f46.google.com (mail-pb0-f46.google.com
	[209.85.160.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37C9BE00511
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 07:03:41 -0800 (PST)
Received: by mail-pb0-f46.google.com with SMTP id md12so5920688pbc.33
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 07:03:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=pcw6R2UwQdsLNcWcNPS/RgXC9t7XpIpZTYVe3iPjmnY=;
	b=sCroDgN5j1yhNs8epzcAMn67z4DacrTt/Cm2eSWLmjgn/dtclZuC0cAWiVUFYVmbZB
	yU6iMlrFVwyGO9dA0Wmg/rEibdzPPJFUiB1xrRzvp1Oh66n6lppn28nW2TujtTKhy0qt
	m1vLhWiP2lNk+muOv0oJz8xOqbts2vhVvJNUz9fWoTsBYf1ysi99h6UoyiRMrZrEio60
	HBsU0Rz/GLnxQAnGaEDWMCUAhnDGi1QWB+TGSrbII8wQHuHEoJ/GPwL5m1qQMOFq1XkZ
	lbKw4hrQfEHklFsjWOosJjaGGYw9PWyBqam86UyozchI5ghYbUixL9o/06mtcdX2fv8P
	lB5g==
X-Received: by 10.68.189.5 with SMTP id ge5mr27786735pbc.42.1385391818844;
	Mon, 25 Nov 2013 07:03:38 -0800 (PST)
Received: from [10.0.1.17] (c-67-169-127-96.hsd1.ca.comcast.net.
	[67.169.127.96]) by mx.google.com with ESMTPSA id
	pe3sm43088059pbc.23.2013.11.25.07.03.37 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 25 Nov 2013 07:03:37 -0800 (PST)
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
	<CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>
	<CAP71Wjwim0JxpX01Zw+EXknG1cLC0xqVcf8ZwK=2=i2Bfswegg@mail.gmail.com>
	<2925583.ItqHBfeJuJ@helios>
Mime-Version: 1.0 (1.0)
In-Reply-To: <2925583.ItqHBfeJuJ@helios>
Message-Id: <FDC4F28A-69CB-406F-95EA-0A5D2AB800BC@gmail.com>
X-Mailer: iPad Mail (11B554a)
From: Todd Stellanova <tstellanova@gmail.com>
Date: Mon, 25 Nov 2013 07:03:34 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Nov 2013 15:03:42 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Thanks for the ideas. I'll try creating a new build folder. If that still sh=
ows the problem, I'm thinking this has something to do with the fact that I'=
m running the build inside a vm (inside an Ubuntu vm running on a Mac). It l=
ooks like the build is using debugfs...maybe it's running out of ram at some=
 point and not obtaining more in the vm properly?

> On Nov 25, 2013, at 5:21 AM, Paul Eggleton <paul.eggleton@linux.intel.com>=
 wrote:
>=20
> Hi Nicolas / Todd,
>=20
>> On Monday 25 November 2013 11:31:42 Nicolas Dechesne wrote:
>> On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova
>> <tstellanova@gmail.com>wrote:
>>> It appears that copying the files to the ext3 / sdcard image is failing i=
n
>>> *populate-extfs.sh*
>>> I see a series of these errors:
>>>=20
>>> *copy_file: Could not allocate block in ext2 filesystem*
>>>=20
>>> Any idea what might cause this?  I've verified that the initial .tar
>>> archive and the bz2 contain the right files.
>>=20
>> can you try to create a new <build> folder (do not remove the current one=

>> for now) and reuse the downloads and sstate folder? i am wondering if the=
re
>> is a bug when trying to change PACKAGE_CLASSES in an existing <build>
>> folder.
>=20
> I do this not infrequently and never hit a problem like this, so I doubt t=
his=20
> is the case.
>=20
> Either there is a problem in how the filesystem is being set up (block siz=
es,=20
> etc.) or there is some kind of corruption occurring.
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

