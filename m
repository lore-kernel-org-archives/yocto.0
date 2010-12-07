Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFE494C80050
	for <yocto@yoctoproject.org>; Mon,  6 Dec 2010 23:21:47 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Dec 2010 21:21:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,309,1288594800"; d="scan'208";a="633819156"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2010 21:21:47 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 13:21:43 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 13:20:35 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 7 Dec 2010
	13:21:42 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "Lu, Lianhao"
	<lianhao.lu@intel.com>
Date: Tue, 7 Dec 2010 13:21:41 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YACqdV0QAAJu3TAAH5th4AADk9oAAAAdwxAAAyOOYAABn9zQ
Message-ID: <789F9655DD1B8F43B48D77C5D30659733104C685@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F49@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F85@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178E3E@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659733104C58C@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178EB0@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9502178EB0@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
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
X-List-Received-Date: Tue, 07 Dec 2010 05:21:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Jessica

I just worry if user needs long time to downloading the image (it might be =
several G)
and if he really want to use the existing working image, the force download=
ing might be quite
brute...

My original thought is: if he want to download, easy... remove the folder..=
.
Otherwise, let it be....

Anyway, since no user input right now, I have no problem and already change=
 it.

I plan to check in the code to my contrib. tree, so that tracking changing =
is easier.

Thanks a lot for your help!
criping



> -----Original Message-----
> From: Zhang, Jessica
> Sent: Tuesday, December 07, 2010 12:39 PM
> To: Ke, Liping; Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: RE: yocto_installer test script update
>=20
> Liping,
>=20
> It's not new image for each install, I want to download image whether
> new or
> old for each install period.  Reasons:
>=20
> 1. The old image may be corrupted, this is how I found the problem,
> since
> the download detect the image file only by file name, there's no way to
> sanity check the image file itself, so the later extract rootfs will
> always
> fail if the file's corrupted
> 2. I've noticed that if we don't remove the directory, the new download
> will
> be called *(1) *(2), etc. and the extraction only happen to the
> original
> file, so the new files will never be picked, thus why I add remove and
> recreate the download directory to totally avoid the issue...
>=20
>=20
> - Jessica
> Ke, Liping wrote:
> > Ok, you want to download new image for each install...
> >
> > Ok, no problem. I will change that.
> >
> > Thanks& Regards,
> > criping
> >
> >
> >> -----Original Message-----
> >> From: Ke, Liping
> >> Sent: Tuesday, December 07, 2010 10:59 AM
> >> To: Zhang, Jessica; Lu, Lianhao
> >> Cc: yocto@yoctoproject.org
> >> Subject: RE: yocto_installer test script update
> >>
> >> 3. Correct
> >>> the problem for qemu image download, now we forcing download images
> >>> in a clean directory since wget will change the file ext if the
> file
> >>> already there and which maybe corrupted
> >>>
> >> Hi, Jessica
> >>
> >> Have question for this one.
> >> Now the code will directly downloading, so the folders might contain
> >> image, image(1), image(2)... But the untar will always untar the old
> >> image? Then why downloading new? If user's network is very slow?
> >>
> >>
> >> Thanks& Regards,
> >> criping

