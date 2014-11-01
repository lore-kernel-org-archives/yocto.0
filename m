Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DB1E0084E; Sat,  1 Nov 2014 08:53:57 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1121E00777
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 08:53:42 -0700 (PDT)
Received: from svr-orw-fem-04.mgc.mentorg.com ([147.34.97.41])
	by relay1.mentorg.com with esmtp 
	id 1Xkazk-0005Nu-Lr from Joe_MacDonald@mentor.com ;
	Sat, 01 Nov 2014 08:53:40 -0700
Received: from burninator (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.3.181.6; Sat, 1 Nov 2014
	08:53:40 -0700
Received: by burninator (Postfix, from userid 1000)	id 2F422582054; Sat,  1
	Nov 2014 11:53:39 -0400 (EDT)
Date: Sat, 1 Nov 2014 11:53:39 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <yocto@yoctoproject.org>
Message-ID: <20141101155338.GH5513@mentor.com>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [meta-selinux] master-next updated
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
X-List-Received-Date: Sat, 01 Nov 2014 15:53:57 -0000
X-Groupsio-MsgNum: 22015
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="dCSxeJc5W8HZXZrD"
Content-Disposition: inline

--dCSxeJc5W8HZXZrD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Happy Halloween, all.  There were a few treats left over, so here's one
for anyone using meta-selinux.  master-next has been updated with the
latest (stable) userspace tools that will match the refpolicy updates I
did back in September.  I'm probably also going to provide another
userspace update to the next stable release when it is out (it's at rc5
the last time I looked) but unless that happens in the next couple of
days, it won't be before we create a 1.7 branch in the layer.

As with any Halloween treat, please check it over carefully before
consuming.  If nothing spooky pops up in the next couple of days,
master-next will become master, we'll create the branch and master-next
will again be left to the cobwebs for a little while.

Boo!

--=20
-Joe MacDonald.
:wq

--dCSxeJc5W8HZXZrD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUVQH/AAoJEEn8ffcsOfaWR40H/1G9jZB1aq74Ak6KXi4ClBDo
ZuUS5e5w+tEe0g7bQrYgNNJLUEiiAlLLdWV21FtEpECS29RgQVGFcnkgnUGXzcSQ
PpJUzt6rKZcwTeqdczsN/ITd9Rs03+uSbjzASQEvlCgpaKRLdUQRoPpCD7MUvLmc
3bMpjBGiam/wRzr6jWzFNGFTuLSzUJD2VEQRpCh+XZX0nsoGJzoJtXlgW9KNOl64
A8VawJ21FrAQR5S8C28zoga5fluJtTKoSdxQL4CGZ8M5falk7wCcRBVB98cQxSrz
6em4EnUqaxdV+S6LBvhBX21QvQT08CMn4q77Dx1Y1z3/S++pEHZkTguuYWLhqH8=
=YxFX
-----END PGP SIGNATURE-----

--dCSxeJc5W8HZXZrD--
