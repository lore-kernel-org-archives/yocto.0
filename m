Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85ED4E0080C; Tue,  2 Dec 2014 11:38:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 645EDE002F9
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 11:37:49 -0800 (PST)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1XvtGe-00007M-NV from Joe_MacDonald@mentor.com ;
	Tue, 02 Dec 2014 11:37:48 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.181.6; Tue, 2 Dec 2014
	11:37:48 -0800
Received: by burninator (Postfix, from userid 1000)	id 76ABD5814AD; Tue,  2
	Dec 2014 14:37:47 -0500 (EST)
Date: Tue, 2 Dec 2014 14:37:47 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Alexandru Vaduva <vaduvajanalexandru@yahoo.com>
Message-ID: <20141202193747.GC12784@mentor.com>
References: <1417507403-7408-1-git-send-email-biannm@cn.fujitsu.com>
	<634293792.2309525.1417529010302.JavaMail.yahoo@jws100116.mail.ne1.yahoo.com>
MIME-Version: 1.0
In-Reply-To: <634293792.2309525.1417529010302.JavaMail.yahoo@jws100116.mail.ne1.yahoo.com>
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
X-List-Received-Date: Tue, 02 Dec 2014 19:38:00 -0000
X-Groupsio-MsgNum: 22454
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="cHMo6Wbp1wrKhbfi"
Content-Disposition: inline

--cHMo6Wbp1wrKhbfi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [PATCH 0/2] Add some recipes] On 14.12.02 (Tue 14:03) Alexandr=
u Vaduva wrote:

> Hello Bian,
>=20
> Did you know that the multipath tools recipe was also available inside the
> meta-oe and meta-virtualization?
> I do not have any problems with it being available in meta-cgl.  I just w=
anted
> to hear other opinions because I would like to make sure we do not get to=
 that
> point where we keep various versions of various recipes in a variety of p=
laces.
> It will be a nightmare to work with them in the future.

I completely agree, and I that's mostly the consensus of the community.
Since meta-cgl already has dependencies on both meta-virtualization and
meta-oe, I think it makes the most sense to try to keep updates for the
multipath recipes in one or both of those layers.  My recommendation
would be to update the meta-oe one as it has broader applicability, but
of course that's up to the submitter and the layer maintainers to
decide.  It may be that it's appropriate to maintain a bbappend for the
recipe in meta-cgl, but I think it'd be good to send it for inclusion in
meta-oe first.

Just my thoughts on it.
-J.

> Once again, just to make it clear. I am ok with the patches, I will merge=
 all
> three of them (corosync, multipath and drbd) but I just wanted to make su=
re you
> took this into consideration.
> Also I like the idea of having drbd recipe inside and the fact that you l=
ike to
> get involved in this initiative.
> Hope to hear more from you and also that I will be able to help more.
>=20
>=20
> Alex Vaduva
>=20
>=20
> On Tuesday, December 2, 2014 10:07 AM, Bian Naimeng <biannm@cn.fujitsu.co=
m>
> wrote:
>=20
>=20
> Bian Naimeng (2):
>   [meta-cgl] device-mapper-multipath: add recipe
>   [meta-cgl]drbd: add recipe
>=20
> .../device-mapper-multipath/multipathd.init.patch  | 12 +++++
> .../device-mapper-multipath_0.5.0.bb              | 53 ++++++++++++++++++=
++
> meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service | 12 +++++
> meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb    | 57 ++++++++++++++++++=
++++
> 4 files changed, 134 insertions(+)
> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/
> device-mapper-multipath/multipathd.init.patch
> create mode 100644 meta-cgl-common/recipes-cgl/device-mapper-multipath/
> device-mapper-multipath_0.5.0.bb
> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd/drbd.service
> create mode 100644 meta-cgl-common/recipes-cgl/drbd/drbd_8.4.4.bb
>=20
> --
> 1.9.1
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20

--=20
-Joe MacDonald.
:wq

--cHMo6Wbp1wrKhbfi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUfhULAAoJEEn8ffcsOfaWgdcH/iPuPvUT9f4/EbHinTwvufZ0
WsWGO9HOOUib52QVw1cW+0LALrNenwjY4FwGYtUZhSMdKiVIvm/BGAz9qQtdttxc
gJNeUH9021q1GR6wHMW2b+wHSA+l71UumVLLaxPha1bi4xO0+f56fu44bAuAIokm
r0MzKr9heksR71/liWrQNePdH+lZcT5Z/IsXwiC7OoqphoD5ZN+wtZRZp0yq332c
Cul5ihbIETrxJZ+JvdFu0UhJDUjOPbmYW48HB9ZX/ynRS55LulxEMo+jVL72fy70
ZrBUshaE6IpL4Iz7zqCNz+y9YSG/1XAfrK7AatFUhpzf+3hhHpMeFXeeEndYk3U=
=ONL7
-----END PGP SIGNATURE-----

--cHMo6Wbp1wrKhbfi--
