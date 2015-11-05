Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DA03E00AC1; Wed,  4 Nov 2015 17:16:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4ABFE00AAA
	for <yocto@yoctoproject.org>; Wed,  4 Nov 2015 17:16:38 -0800 (PST)
Received: by pacdm15 with SMTP id dm15so45117882pac.3
	for <yocto@yoctoproject.org>; Wed, 04 Nov 2015 17:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=mWCpVDjwtQzsk9bfG+8toEDqbCT2oyacLFFGjeeD7dI=;
	b=SFSF4FnVR2ZpYMjPkScex3cYyW3fXFliEO/0eCi1BM2pz1wKsAYe+NMZ+SP6i03bQo
	XPGxiaU9m3kCeutvKa73QMALv0m8WCdm6+t30/nIOv/bfjhvZVpS4VaNI9aNcvpmyjBz
	75Ma7dgEPgca5bTJMnrtINbf7jxX7hDW76o55oCycNi6zJcO5xzSwcuShu2SwzGW5LJ0
	16lNt72YNktI6c3FUs2NHXS6Hh6aIN4J9lITDzCgwUfZDYWWWeUhalSU/IBc7Fy57kSI
	v7QJtmMnfTLryzDRzNY+CclRFLSWgCTKjUXozUTQ8j74PwaIPjbK1DP7kP6FVMJFZihP
	ldSw==
X-Received: by 10.66.222.68 with SMTP id qk4mr5977443pac.89.1446686197933;
	Wed, 04 Nov 2015 17:16:37 -0800 (PST)
Received: from ?IPv6:2601:646:8601:4580:441f:6745:6fd9:23af?
	([2601:646:8601:4580:441f:6745:6fd9:23af])
	by smtp.gmail.com with ESMTPSA id
	fx3sm4317293pbb.60.2015.11.04.17.16.37
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Nov 2015 17:16:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3106\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
Date: Wed, 4 Nov 2015 17:16:32 -0800
Message-Id: <6A5CD4C5-25C2-45C0-AF85-0BAC21D9B8A1@gmail.com>
References: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
To: Chris Hallinan <challinan@gmail.com>
X-Mailer: Apple Mail (2.3106)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unable to modify patch files in u-boot recipe - quilt applies direct from layer files
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
X-List-Received-Date: Thu, 05 Nov 2015 01:16:41 -0000
X-Groupsio-MsgNum: 27178
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9779F991-D2BC-4718-9AA4-BEDB279229DD";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9779F991-D2BC-4718-9AA4-BEDB279229DD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Nov 4, 2015, at 11:57 AM, Chris Hallinan <challinan@gmail.com> =
wrote:
>=20
> Hi,
>=20
> I was trying to "patch a patch" in a u-boot recipe using standard
> bbappends technique.  I added a task before do_patch after do_unpack
> to munge the patch that was broken.  Here is what seems to happen:
>=20
> do_unpack:
>    copies all the patch files from the metadata layer into ${WORKDIR}
>=20
> do_fix_patch (my additional task)
>    uses sed or patch to apply a local fix to a broken patch in =
${WORKDIR}
>=20
> do_patch
>    creates a subdirectory in ${S} called "patches", and puts links to
> the actual files in the layer and uses those links back to the layer
> files to apply the patches.
>=20
> It seems quilt is using the actual layer files instead of the ones in
> ${WORKDIR}??
>=20
> This seems odd and somehow wrong.  We copy the layer files into
> WORKDIR, and the unsuspecting user (me) thinks those are the files
> that do_patch will use.
>=20
> This one took me some time (and help) to figure out!
>=20
> Comments?  Is this a bug?  halfway in the middle of some architectural
> changes?  Expected behavior?

while what you are doing is quite questionable. You seem to have a =
point. Most probably
copy of the files in workdir should be removed from happening.

>=20
> My workaround was to simply replace the entire patch.

you should use the quilt workflow and edit/refresh the patch once and =
copy it back to metadata once for all yes.

>=20
> -Chris
>=20
> --
> Life is like Linux - it never stands still.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_9779F991-D2BC-4718-9AA4-BEDB279229DD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlY6rfQACgkQuwUzVZGdMxSMVwCeOfQ48fTvuC0KTeRWGRoHKOYl
0FgAn1zlrm/0CaoEKKguv6AQjSwPo2Xl
=bPd/
-----END PGP SIGNATURE-----

--Apple-Mail=_9779F991-D2BC-4718-9AA4-BEDB279229DD--
