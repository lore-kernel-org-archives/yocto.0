Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 094C8E009C3; Mon, 22 Feb 2016 06:00:48 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C498E008C6;
	Mon, 22 Feb 2016 06:00:44 -0800 (PST)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1aXr2a-0001NH-F1 from Joe_MacDonald@mentor.com ;
	Mon, 22 Feb 2016 06:00:44 -0800
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 22 Feb 2016 06:00:44 -0800
Received: by burninator (Postfix, from userid 1000)	id 28D57580CB9; Mon, 22
	Feb 2016 09:00:43 -0500 (EST)
Date: Mon, 22 Feb 2016 09:00:43 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Tricca <flihp@twobit.us>, <michael@yoctoproject.org>
Message-ID: <20160222140042.GA2255@mentor.com>
References: <1455763309-9622-1-git-send-email-joe_macdonald@mentor.com>
	<56C93C17.20704@twobit.us>
MIME-Version: 1.0
In-Reply-To: <56C93C17.20704@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] MAINTAINERS: Update maintainers file
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
X-List-Received-Date: Mon, 22 Feb 2016 14:00:48 -0000
X-Groupsio-MsgNum: 28548
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline

--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] MAINTAINERS: Update maintainers file] On=
 16.02.20 (Sat 20:24) Philip Tricca wrote:

> On 02/17/2016 06:41 PM, Joe MacDonald wrote:
> > Adding Philip Tricca as a common layer maintainer and marking Pascal as
> > away.
>=20
> While the admins upstream get my ssh key in place I did a pass over the
> pending patches and the current state of the repo. There isn't a lot to
> do in the actual meta-selinux layer beyond what's already on the list.
> There was only one fix needed to get the build working again:
>=20
> The xattr patches to e2fsprogs have been superseded by the work that
> WindRiver has been doing in upstream e2fsprogs. There's a bug in their
> implementation though and the root directory on the rootfs image doesn't
> get labeled. I've sent a fix to the upstream maintainer. In the meantime
> the current patches can just be dropped and replaced with this one.
>=20
> There's also one fix required to get a login shell working. In
> openembedded-core, commit
> http://git.openembedded.org/openembedded-core/commit/?id=3Db93369a7943949=
f51057e0a704f5524ab7682fe6
> breaks the login process when the SELinux policy is enforced. I've sent
> a patch upstream to fix this:
> http://article.gmane.org/gmane.comp.handhelds.openembedded.core/76599
>=20
> When I can commit these changes they're ready to go. After that I'll do
> another pass over the list and pick up the remaining patches that
> weren't required to get basic functionality back.

Awesome, thanks Philip.  I've pushed the change to the repo this morning
that lists you in the maintainers file, but if you haven't got access yet
to push to the repo yourself I'll be happy to take a PR from  you and
merge it myself.  I think I'm finally getting my head above water today.

Also, Michael, we talked last summer about getting meta-selinux added to
the list of projects monitored by Patchwork at patchwork.openembedded.org
and everyone seemed in favour of it but we didn't seem to close the loop
on it.  What's needed from Philip / Mark / myself to make that happen?

--=20
-Joe MacDonald.
:wq

--NzB8fVQJ5HfG6fxh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWyxSIAAoJEEn8ffcsOfaW/UsH/18UsAinux9GOp4vQLFF43MT
hAQt4aHNBXzdQgxklT/oqB43PWf3UfKlAa514EaZhtdk74Lj5U2XrNAV01NDVETQ
jfCiUbaCvvEJnkLIgipiLzy9sZiEUr9/Ge5J9CzHJgi1C5LReG0JnRJAIWG/nMgv
XD2qK9uhbgsSOfWCOw7Fs3o5oYuB2DTQE0sUGXlc8TMuPV38rIxhE3LbeNDCDGss
pd+twVCx0e3B0wDwl0m1Vn5wkpIe0q8m/8QiH1NnBHcxrsgEyYC9ujSbGNcN73ec
Ow332yp/mjd6tHzTCmTOOsRNoaFXhsW9bwQ50Xz6sUYPfpaNkHcA8MNLb1BRbrg=
=qPyj
-----END PGP SIGNATURE-----

--NzB8fVQJ5HfG6fxh--
