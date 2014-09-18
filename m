Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D23D9E00790; Thu, 18 Sep 2014 12:57:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C6ACE0056A
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 12:57:40 -0700 (PDT)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1XUhpj-0006jr-58 from Joe_MacDonald@mentor.com ;
	Thu, 18 Sep 2014 12:57:39 -0700
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.181.6;
	Thu, 18 Sep 2014 12:57:37 -0700
Received: by burninator (Postfix, from userid 1000)	id A2644580D7C; Thu, 18
	Sep 2014 15:57:37 -0400 (EDT)
Date: Thu, 18 Sep 2014 15:57:37 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <xin.ouyang@windriver.com>, <mark.hatle@windriver.com>, <flihp@twobit.us>
Message-ID: <20140918195737.GB6322@mentor.com>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Fri, 19 Sep 2014 14:29:21 -0700
Cc: yocto@yoctoproject.org
Subject: [meta-selinux] refpolicy update in master-next
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
X-List-Received-Date: Thu, 18 Sep 2014 19:57:49 -0000
X-Groupsio-MsgNum: 21520
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NDin8bjvE/0mNLFQ"
Content-Disposition: inline

--NDin8bjvE/0mNLFQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey all,

As we'd all discussed at different times in the past, we're well behind
the curve on a refpolicy update for meta-selinux.  With the 1.7 release
of Yocto coming up, we thought it was important to update the policy
sooner rather than later, so I'm starting that work now.

It's being done in master-next and currently the only recipe that has
been updated is the -mls one.  Over the next few days I'll be updating
the others, then working through testing and trying to make sure they're
all sane.  It would help me out immensely if you had time to kick the
tires as well on your favourite policy variant.

Depending on how long this takes, the next step is updating the
userspace.  Fortunately this time around, though, the current userspace
is still officially up to the task of managing the current policy, so a
full update isn't strictly required.  It'd be a really nice thing to
have done, though.  :-)

--=20
-Joe MacDonald.
:wq

--NDin8bjvE/0mNLFQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUGzkxAAoJEEn8ffcsOfaWTj4IAMbMNIhR5obbpfVOflrlA4dU
q6iV1jS6SV7wkJN3uEObCM501JJCZybi42BX1Pq5qdzF0h4QHkYxYIuj2g/nIii5
jgzBQWecB3UV0TvTk/9CAjms94TEfk47b18+BRpqqL2E+KyoMJGyvMyldlv8oO4X
gUuTyaNXr+flKiKScJXhxoImj8BkRpX8tvz5BwirVgex2Iqz35KCWrOCSPnx1wCX
VxgJ+MmGww1nUqjlvzVmjQZg6v21MEGNMKiKAN1ILqolMwEDgLnGp6sH8f89BPgK
d4/BCrAK2C0Ga4u7uwrklFz77y8s03cdw8rdZtYxr4FRMUgp9fWx8mmi8FVsYag=
=0mvB
-----END PGP SIGNATURE-----

--NDin8bjvE/0mNLFQ--
