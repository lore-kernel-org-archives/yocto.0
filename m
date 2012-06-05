Return-Path: <shane.wang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5652DE0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 22:04:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Jun 2012 22:04:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="107897911"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Jun 2012 22:04:44 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 4 Jun 2012 22:04:44 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.56]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.90]) with mapi id
	14.01.0355.002; Tue, 5 Jun 2012 13:04:42 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] something about gtk+-2.24.8.tar.bz2 that requires
	constant downloading?
Thread-Index: AQHNQi2qcLxOzm5xEUmO2ZSw2ZHdMZbrKO1A
Date: Tue, 5 Jun 2012 05:04:42 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC23BCA4CB@SHSMSX102.ccr.corp.intel.com>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
	<alpine.DEB.2.02.1206040435060.9995@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206040435060.9995@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
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
X-List-Received-Date: Tue, 05 Jun 2012 05:04:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Yeah, Robert,

You found a bug in bitbake.
In the fetch code, local directory /home/rpjday/dl/gtk+-2.24.8.tar.bz2 is d=
ecoded as /home/rpjday/dl/gtk%2B-2.24.8.tar.bz2 by
newuri =3D uri_replace(origud, find, replace, ld), which is line 480 in lib=
/bb/fetch2/__init__.py.
And later on it is checked whether or not existed by
if not os.path.exists(newpath) and path.find("*") =3D=3D -1:, which is line=
 61 in lib/bb/fetch2/local.py.

Actually the directory /home/rpjday/dl/gtk+-2.24.8.tar.bz2 is there, but /h=
ome/rpjday/dl/gtk%2B-2.24.8.tar.bz2 can't be found by bitbake code. That is=
 the problem. Therefore, Gtk+ shouldn't be decoded as gtk%2B.

I am not familiar with the whole fetch code and hope someone else can corre=
ct it, so can you please file a bug first?

--
Shane

Robert P. J. Day wrote on=A02012-06-04:

> On Sun, 3 Jun 2012, Robert P. J. Day wrote:
>=20
>>   for a yocto talk to my local LUG later this week, i want to build
>> a simple core-image-sato image for qemux86 and, for quite some time,
>> i've kept a local download directory for tarballs, and taken
>> advantage of it with this in all of my local.conf files:
>>=20
>> SOURCE_MIRROR_URL ?=3D "file:///home/rpjday/dl/"
>> INHERIT +=3D "own-mirrors"
>> BB_GENERATE_MIRROR_TARBALLS =3D "1"
>> # BB_NO_NETWORK =3D "1"
>>=20
>>   obviously, as i notice newer tarballs getting downloaded, i'll
>> just copy them into ~/dl so it doesn't happen again.  works fine,
>> except today with gtk+-2.24.8.tar.bz2 which, even after i made a
>> copy of it in ~/dl, the build still *insists* on downloading it from
>> download.gnome.org.
>>=20
>>   i don't see any obvious problem -- the checksum of the tarball
>> appears correct, it's a regular file, the tarball downloaded is
>> *exactly* the same as the one i've saved in ~/dl and yet, of all the
>> tarballs i have stashed away there, that one is the *only* one that
>> is downloaded each time.
>=20
>   ok, i'm baffled and getting thoroughly annoyed here.  i started from
> absolute scratch, configured to build for qemux86, then did
>=20
>   $ bitbake -c fetchall core-image-sato
> while pointing at my massive directory of tarballs which includes
> gtk+-2.24.8.tar.bz2.  every required tarball is accessed (via symlink)
> from my ~/dl directory, *except* for that incredibly irritating
> gtk+-2.24.8.tar.bz2 tarball, which is downloaded by the "fetchall"
> command *every* *single* *time*.
>=20
>   i've verified that tarball is there.  i've verified its md5 and
> sha256 checksums.  i'm out of ideas.
>=20
>   what am i doing wrong?
> rday
>



