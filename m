Return-Path: <patrick@stwcx.xyz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B51F2E00AA2; Wed, 22 Jun 2016 09:58:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.201.84.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 912 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Jun 2016 09:58:50 PDT
Received: from sender163-mail.zoho.com (sender163-mail.zoho.com
	[74.201.84.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C07EE009F6
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 09:58:50 -0700 (PDT)
Received: from localhost (32.97.110.52 [32.97.110.52]) by mx.zohomail.com
	with SMTPS id 1466613807554237.07821707490564;
	Wed, 22 Jun 2016 09:43:27 -0700 (PDT)
Date: Wed, 22 Jun 2016 11:43:25 -0500
From: Patrick Williams <patrick@stwcx.xyz>
To: Yocto Maillist <yocto@yoctoproject.org>
Message-ID: <20160622164325.GB20922@asimov.austin.ibm.com>
MIME-Version: 1.0
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Zoho-Virus-Status: 1
Cc: Bradley Bishop <bradleyb@fuzziesquirrel.com>
Subject: uninative support on non-x86 platforms
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
X-List-Received-Date: Wed, 22 Jun 2016 16:58:51 -0000
X-Groupsio-MsgNum: 30706
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vGgW1X5XWziG23Ko"
Content-Disposition: inline

--vGgW1X5XWziG23Ko
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The current poky fails when building on a non-x86 platform with a
message like:

    uninative selected but not configured, please set UNINATIVE_CHKSUM[ppc6=
4le]

We have a number of developers that use ppc64le systems to do work on,
so we would like to help get this support in place.  Are there any
pointers to the work needed to get this going?

In the meantime, is there an intermediate commit that could be made to
disable uninative on all unsupported platforms?  It seems like instead
of:
   INHERIT +=3D "uninative"
we could have:
   INHERIT[i686,x86_64] +=3D "uninative"

This will allow those building on ARM and Power systems to continue to
function without manually disabling uninative themselves.

--=20
Patrick Williams

--vGgW1X5XWziG23Ko
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXasAtAAoJEKsDR8wtAMEZRyUP/ihxx6PG0QGzcyfr8bkEmEuo
UN6tvh4dSeJXFJfXJngdSj5KwXsyAD3ceVEzVgXoeKvBaihwX9q824PXatQdoJL4
1mCJk9XpGKD/PlgGQfswHmH4/IpRsNvZ+r4JWB245ajFlny+NJDceRRkMU9H1shY
Fl+CjS7R8PW50YulGwppKmeAPcDTdSm7Q/2XY9dxno/cM3RvfQlqL1k1mFUm3I3p
MGHte4O8fzLoIIp8zngfgLF849g4rSiPlXIViJyHWOd6AkV9PtDFNUaht2UdJPrm
XzFEe/wXLyqG3WDQvdGO0D7/ZtJG3DMnhy6odBjAAeml6jZVpYD0JL997/XDEGnl
29qqRLYHY/YE541v1zZPvRWVmUT+8JIVLyYVwL1yF1eVnLO4aVZtQA8VMPlSEtBF
Bx/6GMsPLYuE95VRGkBw2q208AjnT9PyqxZ34V/okdtKzETu+RrfuNK73GUPAOwB
urAUnYtU40SxnpuojFClbZswFW33r0/qhHf1Anbz2kyR8ccK54T9B/HW5Lv7wILY
4upP6v1f9GyjuC/ihY8Z+/M4qrcztT8Jx63Ym+aEdiRnkGeQWZ7ts+l2QsR+EN6K
OjGVi5MWasNSVPJV5j56x2hdi3m+CCghG4CvFN1AhjTnk+OHm2/8utdfxZ2hBCfJ
aJ0BDT5NBDoUPM5Dx59s
=eHeL
-----END PGP SIGNATURE-----

--vGgW1X5XWziG23Ko--
