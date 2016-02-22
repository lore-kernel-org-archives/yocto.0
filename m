Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BE67E00C4F; Mon, 22 Feb 2016 08:07:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 287DCE00C31
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 08:07:56 -0800 (PST)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1aXt1f-0004cv-QK from Joe_MacDonald@mentor.com ;
	Mon, 22 Feb 2016 08:07:55 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 22 Feb 2016 08:07:55 -0800
Received: by burninator (Postfix, from userid 1000)	id 9E331580CB9; Mon, 22
	Feb 2016 11:07:54 -0500 (EST)
Date: Mon, 22 Feb 2016 11:07:54 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20160222160754.GC2255@mentor.com>
References: <1455922741-3342-1-git-send-email-radzy@windriver.com>
	<56CB1DC8.1030505@windriver.com> <20160222153336.GB2255@mentor.com>
	<CAJTo0LY7D1o9+9mU13DdEnK_h4SjZPX3+jph5A4fXny_HSHuoA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY7D1o9+9mU13DdEnK_h4SjZPX3+jph5A4fXny_HSHuoA@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "T.O. Radzy Radzykewycz" <radzy@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] swig is in meta-oe, remove this copy
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
X-List-Received-Date: Mon, 22 Feb 2016 16:07:59 -0000
X-Groupsio-MsgNum: 28561
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="aT9PWwzfKXlsBJM1"
Content-Disposition: inline

--aT9PWwzfKXlsBJM1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] swig is in meta-oe, remove this copy] On=
 16.02.22 (Mon 15:58) Burton, Ross wrote:

>=20
> On 22 February 2016 at 15:33, Joe MacDonald <Joe_MacDonald@mentor.com> wr=
ote:
>=20
>     I'm also not against removing the local copy (I don't think it adds
>     anything to the layer and occasionally causes headaches), but I really
>     don't want to make meta-selinux dependent on meta-oe components, so I
>     guess I'm voting for keeping it.
>=20
>=20
> Luckily it's also in oe-core (meta/recipes-devtools/swig/swig_3.0.8.bb).

And, y'know what?  I thought I'd had this very conversation with Armin
regarding it being in meta-security ages back, but since swig was still
in meta-selinux and Radzy mentioned it's also still in meta-oe, I
assumed it must've been some other package duplicated between
meta-selinux and meta-security (libcap-ng, perhaps?).

So with that, let's say my only concern no longer applies.  :-)

--=20
-Joe MacDonald.
:wq

--aT9PWwzfKXlsBJM1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQEcBAEBAgAGBQJWyzJaAAoJEEn8ffcsOfaW+gQH/RIDbQuoY2lnqHkCSxR7IsKU
2kbGJNgmK+H6Tzm1bPUQ+xI3rj3Tpx2eC+5nFtkCf3BHgJCcjb7wR2F8/GSXhYDB
9/iGJCg7tW3HNkinrK0k0fE7jAqco6lt46xAtzAb3mvGZditU8DH50ZxPQtj6e98
GERvneVFiRQpAacb3OQ3MKMqgOyFZ64gMs5uq70VbDX65abbaA1IAONCmdWVY8zK
cI0dALurr8oMWbDNLNQCPdmw8oOFQLabHOeinKwCqMZ5WdqjGsQ6M7Gn+j+I2PSa
+aqUijZuazY1YEe7pQpyKC47DpN6/n3vfDe1ph1cB+5b6l+BjBOpBgOQHhOkhUQ=
=eW/1
-----END PGP SIGNATURE-----

--aT9PWwzfKXlsBJM1--
