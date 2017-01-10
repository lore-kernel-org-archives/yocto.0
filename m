Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E663CE00B3F; Tue, 10 Jan 2017 06:48:25 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C88CE00935
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 06:48:23 -0800 (PST)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1cQxip-0005nH-FZ from Joe_MacDonald@mentor.com ;
	Tue, 10 Jan 2017 06:48:23 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Tue, 10 Jan 2017 06:48:23 -0800
Received: by burninator (Postfix, from userid 1000)	id 453C758054C; Tue, 10
	Jan 2017 09:48:22 -0500 (EST)
Date: Tue, 10 Jan 2017 09:48:22 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <wenzong.fan@windriver.com>, <shrikant_bobade@mentor.com>
Message-ID: <20170110144821.GC8258@mentor.com>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: [meta-selinux] What's the point of refpolicy-minimum?
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
X-List-Received-Date: Tue, 10 Jan 2017 14:48:26 -0000
X-Groupsio-MsgNum: 33734
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IpbVkmxF4tDyP/Kb"
Content-Disposition: inline

--IpbVkmxF4tDyP/Kb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Wenzong / Shrikant,

I thought I knew the answer to the above question, and maybe my
understanding is still correct, but I think I need to ask it now anyway.

I don't use refpolicy-minimum for anything, so when I did the updates to
refpolicy*_git I didn't even glance at refpolicy-minimum_git.  Wenzong's
change to refpolicy-minimum_2.20161023 (in the same thread as the uprev
of the recipe) piqued my curiosity, so I had a look.  Of course,
refpolicy-minimum_git.bb also needs to be updated (or thrown out), but
now that I'm looking at the recipe I see what seems like conflicting
statements in the recipe:

   recipes-security/refpolicy/refpolicy-minimum_2.20161023.bb:

     1 include refpolicy-targeted_${PV}.bb
     2=20
     3 SUMMARY =3D "SELinux minimum policy"
     4 DESCRIPTION =3D "\
     5 This is a minimum reference policy with just core policy modules, an=
d \
     6 could be used as a base for customizing targeted policy. \
     7 Pretty much everything runs as initrc_t or unconfined_t so all of th=
e \
     8 domains are unconfined. \
     9 "

and:

   recipes-security/refpolicy/refpolicy-targeted_2.20161023.bb:

     1 SUMMARY =3D "SELinux targeted policy"
     2 DESCRIPTION =3D "\
     3 This is the targeted variant of the SELinux reference policy.  Most =
service \
     4 domains are locked down. Users and admins will login in with unconfi=
ned_t \
     5 domain, so they have the same access to the system as if SELinux was=
 not \
     6 enabled. \
     7 "

So now I'm trying to understand what the point of refpolicy-minimum
really is here.  Those of you who are using it, what are you using it
for and what do you expect would be the correct behaviour of a system
running that policy?

At the very least, I'm going to remove the 'include [...].bb' from both
'minimum' recipes, as that's completely incorrect, but when I do that I
want to know what anyone using this recipe wants to see from it, so
whatever the 'include' gets replaced with is doing the right thing
(which isn't necessarily what it's doing today).

--=20
-Joe MacDonald.
:wq

--IpbVkmxF4tDyP/Kb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJYdPQ1AAoJEEn8ffcsOfaWV+8IAIs43hhNSORMpy60AMR8HGhG
cByZz8JB2wCaHYfyuOmWHG+DcOMmWpCURWaL27Gw/kFrIIsWFZz4kWPA8E4wTa0E
Z/js31VX2N62EuusuwhIqdcqeziHkw81a79emPRidj1IKovTUNph/vH+7pM3HtuR
1S/tOusbxogapktjy7ad7fEqlpSviTFMFWDTci9AkyDHW4PgsEAK7gRl4RNzj3ZE
Ul5DoiaZOgiUaXgBKc+BL1tF9MCGCvpMl/2BzefjYj3JSx0Zef6Y2AiWdnhPuVct
zfXwx2D+ExJgOdbN7VE5m30sy9+v82jDs+0KbHC28nWEdNSHP2nnJ76daZvmT7s=
=FvcF
-----END PGP SIGNATURE-----

--IpbVkmxF4tDyP/Kb--
