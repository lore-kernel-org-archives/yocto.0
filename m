Return-Path: <chengwei.yang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11362E00575
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 01:27:33 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Feb 2014 01:27:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,511,1389772800"; 
	d="asc'?scan'208";a="486445859"
Received: from chengwei.bj.intel.com (HELO localhost) ([10.238.155.111])
	by orsmga002.jf.intel.com with ESMTP; 20 Feb 2014 01:27:31 -0800
Date: Thu, 20 Feb 2014 17:27:31 +0800
From: Yang Chengwei <chengwei.yang@intel.com>
To: yocto@yoctoproject.org
Message-ID: <20140220092731.GL20025@chengwei-workstation.bj.intel.com>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: No 'directfb' distro feature
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
X-List-Received-Date: Thu, 20 Feb 2014 09:27:36 -0000
X-Groupsio-MsgNum: 18167
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="UUBKWyapWpFAak7q"
Content-Disposition: inline

--UUBKWyapWpFAak7q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi list,

When I was building a core-image-directfb, bitbake failed like below.

---------->8------copied from #yocto@irc.freenode------->8--------

16:16 < chengwei> $ bitbake core-image-directfb
16:16 < chengwei> Loading cache: 100%
|##########################################################################=
###################|
ETA:  00:00:00
16:16 < chengwei> Loaded 1218 entries from dependency cache.
16:16 < chengwei> ERROR: Nothing PROVIDES 'core-image-directfb'
16:16 < chengwei> ERROR: core-image-directfb was skipped: missing
required distro feature ['directfb'] (not in DISTRO_FEATURES)

------------>8------------end------->8-----------------

It complained "directfb" not in DISTRO_FEATURES, and that's true.

=46rom the poky source code, I found that there is a commit introduced
change to meta/recipes-graphics/images/core-image-directfb.bb by using
"distro_feature_check", this *does* break the build though it's not the
one to be blamed, the real bug is as bitbake said "there is no directfb
feature" used by core-image-directfb.bb.

Is there a plan to fix this?

--
Thanks,
Chengwei

--UUBKWyapWpFAak7q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJTBcqDAAoJEEy3wb4lFVSrob0IAMmC+1vq7PKXd3lJZGCus5lB
c0o8Onq3Og90N6pOUl24N3KiuGx0De4G/10qtQvdDSe/76jEQwbwSaAQOdq9DOe7
H7AOYC2G0ezO6FCavLS6xWHFY54GKYIIDNbeUAFhB4MqcltTc6Ybn1GcwYmgIScx
Sicr8cBmR9IVhXI5suqgkZcBa4/TYF14IDu7mtNWx39QCqSBEACWMk6hru/mrf3n
ebBAYPNTMjNGoIi2aY2wHmZG9y/0srXNm5ujqz9eYDnxthfCpOhjfLl+FxLVqVaN
fc44pfoILrq2btVOHbFv4aB3ioNs7mA4ulhJ6HXZmUJssxtOcGHnn3laVAFbDwI=
=MBKv
-----END PGP SIGNATURE-----

--UUBKWyapWpFAak7q--
