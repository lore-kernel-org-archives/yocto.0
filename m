Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B14534C8007E
	for <yocto@yoctoproject.org>; Sat, 12 Feb 2011 01:53:23 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Feb 2011 23:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,461,1291622400"; d="scan'208";a="656995287"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 11 Feb 2011 23:53:22 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 12 Feb 2011 15:53:21 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 12 Feb 2011 15:53:21 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sat, 12 Feb 2011 15:53:19 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "mark.hatle@windriver.com"
	<mark.hatle@windriver.com>
Date: Sat, 12 Feb 2011 15:53:15 +0800
Thread-Topic: [yocto] Master build error caused a small typo by commit today
	: fetch2: unpack revision
Thread-Index: AcvKcn5yiZZjPBwLS0ep3sKVS3OvqAAFrthQ
Message-ID: <789F9655DD1B8F43B48D77C5D306597332C18774@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733294D0BE@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Master build error caused a small typo by commit today : fetch2: unpack revision
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
X-List-Received-Date: Sat, 12 Feb 2011 07:53:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, Mark

After fixing this typo, I found another error when bitbake xorg-minimal-fon=
ts,
It will report
ERROR: Function 'org-minial-fonts: LIC_FILES_CHKSUM points to invalid file:=
 ../misc/fonts/alias' failed

I checked the folder of build/tmp/work/all-poky-linux/xorg-minimal-fonts-1_=
1.0-r0, fonts.alias fonts.dir
Cursor.pcf.gz we not under misc subfolder as its expectation, but on the ou=
ter folder,=20
seems the SRC_URI=3D"file://misc" defined in the Xorg-minimal-fonts.bb does=
 not work.

Thanks a lot!
criping


> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> Sent: Saturday, February 12, 2011 1:06 PM
> To: richard.purdie@linuxfoundation.org; mark.hatle@windriver.com
> Cc: yocto@yoctoproject.org
> Subject: [yocto] Master build error caused a small typo by commit
> today : fetch2: unpack revision
>=20
> Hi, all
>=20
> Just found a small typo which caused built error today. The "%d" (file)
> should be changed to "%s", otherwise, compile error.
>=20
> Anybody could help to modify the small bug if you're happening sending
> patches.
>=20
> Thanks a lot for your help!
> criping
>=20
>=20
>=20
>=20
>=20
> author	Mark Hatle <mark.hatle@windriver.com>	2011-02-11
> 17:43:54 (GMT)
> committer	 Richard Purdie <richard.purdie@linuxfoundation.org>	2011-
> 02-12 00:30:29 (GMT)
> commit	3faa635fd408695dd5b754fda3f6060dd670b81d (patch) (side-by-
> side diff)
> tree	d0ba5d2d4acca9f7748029116f3a74877ee899c9
> parent	e56f63a2843e5a7d70fd60e0aaed4d962a277da7 (diff)
> download	poky-3faa635fd408695dd5b754fda3f6060dd670b81d.zip
> poky-3faa635fd408695dd5b754fda3f6060dd670b81d.tar.gz
> poky-3faa635fd408695dd5b754fda3f6060dd670b81d.tar.bz2
>=20
>=20
>=20
> @@ -706,17 +720,17 @@ class FetchMethod(object):
>                              destdir =3D "."
>                          elif not os.access("%s/%s" % (rootdir,
> destdir), os.F_OK):
>                              os.makedirs("%s/%s" % (rootdir, destdir))
> -                    cmd =3D 'cp -pPR %s %s/%s/' % (file, rootdir,
> destdir)
> +                    #cmd =3D 'cp -pPR %s %s/%s/' % (file, rootdir,
> destdir)
> +                    cmd =3D 'tar -cf - -C "%d" -ps . | tar -xf - -C
> "%s/%s/"' % (file, rootdir, destdir)
>=20
>=20
>=20
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

