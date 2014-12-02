Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C309E00521; Tue,  2 Dec 2014 12:17:31 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C97F9E002F9
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 12:17:27 -0800 (PST)
Received: from svr-orw-fem-03.mgc.mentorg.com ([147.34.97.39])
	by relay1.mentorg.com with esmtp 
	id 1Xvtt0-00046p-KB from Joe_MacDonald@mentor.com ;
	Tue, 02 Dec 2014 12:17:26 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-03.mgc.mentorg.com
	(147.34.97.39) with Microsoft SMTP Server id 14.3.181.6; Tue, 2 Dec 2014
	12:17:25 -0800
Received: by burninator (Postfix, from userid 1000)	id 4859B5814AD; Tue,  2
	Dec 2014 15:17:25 -0500 (EST)
Date: Tue, 2 Dec 2014 15:17:25 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20141202201724.GE12784@mentor.com>
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
	<634293792.2309525.1417529010302.JavaMail.yahoo@jws100116.mail.ne1.yahoo.com>
	<20141202193747.GC12784@mentor.com>
	<547E17B2.6090502@windriver.com>
MIME-Version: 1.0
In-Reply-To: <547E17B2.6090502@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] Add some recipes
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
X-List-Received-Date: Tue, 02 Dec 2014 20:17:31 -0000
X-Groupsio-MsgNum: 22459
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Pql/uPZNXIm1JCle"
Content-Disposition: inline

--Pql/uPZNXIm1JCle
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:49) Bruce As=
hfield wrote:

> On 14-12-02 02:37 PM, Joe MacDonald wrote:
> >[Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:03) Alexa=
ndru Vaduva wrote:
> >
> >>Hello Bian,
> >>
> >>Did you know that the multipath tools recipe was also available inside =
the
> >>meta-oe and meta-virtualization?
> >>I do not have any problems with it being available in meta-cgl.  I just=
 wanted
> >>to hear other opinions because I would like to make sure we do not get =
to that
> >>point where we keep various versions of various recipes in a variety of=
 places.
> >>It will be a nightmare to work with them in the future.
> >
> >I completely agree, and I that's mostly the consensus of the community.
> >Since meta-cgl already has dependencies on both meta-virtualization and
> >meta-oe, I think it makes the most sense to try to keep updates for the
> >multipath recipes in one or both of those layers.  My recommendation
> >would be to update the meta-oe one as it has broader applicability, but
> >of course that's up to the submitter and the layer maintainers to
> >decide.  It may be that it's appropriate to maintain a bbappend for the
> >recipe in meta-cgl, but I think it'd be good to send it for inclusion in
> >meta-oe first.
>=20
> I'm with Joe on this one.
>=20
> I only did a really quick check on the history of the two copies
> that we have, but I see the meta-virt variant was added in January 2013
> and what could be the first version in meta-oe in March the same year.

I actually intended to say "update the meta-oe one as it has broader
applicability and if you're feeling ambitious, send the same update to
meta-virtualization" since I thought meta-virt didn't have dependencies
on meta-oe and I can see an argument in favour of keeping a separate
recipe if you're keeping the layer contained.  But it looks like that's
not the case, so consolidation makes sense here.

> The layer index may not have been as helpful back then (but honestly
> I can't recall) .. either way we failed to coordinate as a wider community
> and managed to end up with two different recipes in the layers.
>=20
> There's no sense making this any worse than it already is, so I'd say
> that we could spend the time looking at the two (three?) recipes, and
> get a consolidated variant in meta-oe, and I'd be happy to drop the
> one in meta-virtualization and bbappend the same way that Joe suggests.
>=20
> Thoughts ? We should figure out if someone is going to take a crack
> at it, so we don't all go do the same thing :)

It's not on my to-do list, so don't worry about me running in parallel.
iscsi was (and is again) the only meta-networking one and libcap-ng (as
discussed with Armin the other day) and swig are the meta-selinux ones.

-J.

>=20
> Bruce
>=20
>=20
>=20
> >
> >Just my thoughts on it.
> >-J.
> >
> >>Once again, just to make it clear. I am ok with the patches, I will mer=
ge all
> >>three of them (corosync, multipath and drbd) but I just wanted to make =
sure you
> >>took this into consideration.
> >>Also I like the idea of having drbd recipe inside and the fact that you=
 like to
> >>get involved in this initiative.
> >>Hope to hear more from you and also that I will be able to help more.
> >>
> >>
> >>Alex Vaduva
> >>
> >>
> >>On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng <biannm@cn.fujitsu.=
com>
> >>wrote:
> >>
> >>
> >>Bian Naimeng (2):
> >>   [meta-cgl] device-mapper-multipath: add recipe
> >>   [meta-cgl]drbd: add recipe
> >>
> >>.../device-mapper-multipath/multipathd.init.patch  | 12 +++++
> >>.../device-mapper-multipath_0.5.0.bb              | 53 ++++++++++++++++=
++++
> >>meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
> >>meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb    | 57 ++++++++++++++++=
++++++
> >>4 files changed, 134 insertions(+)
> >>create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/
> >>device-mapper-multipath/multipathd.init.patch
> >>create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/
> >>device-mapper-multipath_0.5.0.bb
> >>create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
> >>create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
> >>
> >>--
> >>1.9.1
> >>
> >>--
> >>_______________________________________________
> >>yocto mailing list
> >>yocto@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >
> >
> >
>=20

--=20
-Joe MacDonald.
:wq

--Pql/uPZNXIm1JCle
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUfh5UAAoJEEn8ffcsOfaWjgAH/jKUfFVw8WQW7Bojd+mUg7dN
XYVwWCV97LYCx6Z67j/JZNk0QtmNggXrCLeXvMMgRCQLJyYcZdXFtnXVh+Sr2lSf
85iLEfwv0swuZyyF3rP5NE+sDx6Kazg/g1gSFhK/47t+Z7JN5WCp8zv55zkDHlrj
1CCakdvRghVugnCWIXHGSoe06PdOYAPkI3XUiVNtt2Jg88DIcryLW+lPrySjNGQq
6o2IzkZIor9Z75nkRyywgGc0Q4Wd0IV9jG4yMQpt8kvEZ2CCDNLFZ5Ex9QqgVK9S
b6EKKHEux6cskmksIntRiQko9SK3SpaIKAhlXWNI7a4QLV0bcufMpXz4n7UTj4M=
=augt
-----END PGP SIGNATURE-----

--Pql/uPZNXIm1JCle--
