Return-Path: <chengwei.yang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4DF5E00819
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 04:17:26 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Feb 2014 04:17:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,512,1389772800"; 
	d="asc'?scan'208";a="484795417"
Received: from chengwei.bj.intel.com (HELO localhost) ([10.238.155.111])
	by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2014 04:17:24 -0800
Date: Thu, 20 Feb 2014 20:17:23 +0800
From: Yang Chengwei <chengwei.yang@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20140220121723.GN20025@chengwei-workstation.bj.intel.com>
Mail-Followup-To: Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto@yoctoproject.org
References: <20140220092731.GL20025@chengwei-workstation.bj.intel.com>
	<4890456.akrrDeAUnM@peggleto-mobl5.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <4890456.akrrDeAUnM@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: No 'directfb' distro feature
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
X-List-Received-Date: Thu, 20 Feb 2014 12:17:28 -0000
X-Groupsio-MsgNum: 18171
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jx/LfW4V5TfZLeq7"
Content-Disposition: inline

--jx/LfW4V5TfZLeq7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Thu, Feb 20, 2014 at 10:08:25AM +0000, Paul Eggleton wrote:
> Hi Chengwei,
>=20
> > Is there a plan to fix this?
>=20
> This is not a bug - the intention is that you customise DISTRO_FEATURES to
> include the feature if you need it. You may find this section of the manu=
al
> useful:
>=20
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#creat=
ing-your-own-distribution

Thank you, I did read developer manual or maybe I missed them? Since
I didn't find 'directfb' as a DISTRO_FEATURES in ref manual, so I
think it's a non-exist feature. =20

Is there a way to list all available image features, distro features?

--
Thanks,
Chengwei

>=20
> Cheers,
> Paul
>=20
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

--jx/LfW4V5TfZLeq7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJTBfJTAAoJEEy3wb4lFVSrKRgH/0f9QsAN5y2s8xNDH8z2iof3
IVX6J7PBclVhujpEngZhv00b0LCNLHQFzwbJ2nPTvv4YjMtACG/KCDPTqXsDasOr
MEbvOHz4yxEpmYMzC2+pclb2BqUp2+slh1O6TJNLTzHqRZ/Qhl8WvMFg4YEqKiiN
o8NhgX+Nzih0amA+8GRaWCxOJgZMfdKx322T6djPfBnZo+1gqlhUkAZvjSXQEonx
zoPm2ALy5+2q5yFcpt7kAe6peCxKSgflMtKvlfyU2Kj7YjNJ8bkksHIQeTLg9PeB
6LP6xjt6kjyGy6dqFdnzSyMp+8jsaF0oZX5xOIswwgPcDOvwWPKfSE/4qUGxLIs=
=anWg
-----END PGP SIGNATURE-----

--jx/LfW4V5TfZLeq7--
