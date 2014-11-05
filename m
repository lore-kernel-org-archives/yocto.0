Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC0AEE008C9; Wed,  5 Nov 2014 12:31:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F662E0080D
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 12:31:10 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1Xm7ET-0000H4-1R from Joe_MacDonald@mentor.com ;
	Wed, 05 Nov 2014 12:31:09 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.181.6; Wed, 5 Nov 2014
	12:31:08 -0800
Received: by burninator (Postfix, from userid 1000)	id 8B271580A3B; Wed,  5
	Nov 2014 15:31:07 -0500 (EST)
Date: Wed, 5 Nov 2014 15:31:07 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <yocto@yoctoproject.org>
Message-ID: <20141105203106.GB815@mentor.com>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [meta-selinux] master branch updated / dizzy branch created
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
X-List-Received-Date: Wed, 05 Nov 2014 20:31:14 -0000
X-Groupsio-MsgNum: 22076
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rJwd6BRFiFCcLxzm"
Content-Disposition: inline

--rJwd6BRFiFCcLxzm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

As previously discussed, meta-selinux has been updated with both the
latest reference policy (and derivatives) and userspace tools.  As
nothing has come up with testing in master-next those changes have now
been merged into master.  At the same time we now have a dizzy branch to
provide stable updates for Yocto 1.7 as required.

Please let us know if you see anything unexpected.

--=20
-Joe MacDonald.
:wq

--rJwd6BRFiFCcLxzm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUWokKAAoJEEn8ffcsOfaWXMoH/3XEXlQGy+4VTOBx9bjyA94d
0AzwH+HZqc/7hcIz08gjbAHnuAQFala9OZcuKVADfFNFKyEBZ9v1GCUI5yfR8AwM
ANlfv78Pd9TMBXnS7u0CL2oI6dqlu7Oxdf3uudeYuSkJC24BukdmX+54+aPbb3rm
kdrZgID2RgsnWFBs2ddJaAVIb0G1n3opNoQbZC1eDrRdEQGeSfRC5JOvxuadsLNI
+TnBn9gX2VfovrEVdmcjrmr5Wi3aGfSZyrqCjC8OqE/qhuWHqLmYFqMsQb+qC4hW
z19Kcm1mmH9Wgs2YFFMivAQYDEWcU6F7iGu47tdBH2knKGFM2n0uDR56LrEObrI=
=QFXK
-----END PGP SIGNATURE-----

--rJwd6BRFiFCcLxzm--
