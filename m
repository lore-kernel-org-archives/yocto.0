Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56768E0097F; Thu, 12 Feb 2015 05:35:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD20AE0093B
	for <yocto@yoctoproject.org>; Thu, 12 Feb 2015 05:35:09 -0800 (PST)
Received: from svr-orw-fem-02x.mgc.mentorg.com ([147.34.96.206]
	helo=SVR-ORW-FEM-02.mgc.mentorg.com)
	by relay1.mentorg.com with esmtp 
	id 1YLtvB-0004Nc-7Z from Joe_MacDonald@mentor.com ;
	Thu, 12 Feb 2015 05:35:09 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 12 Feb 2015 05:35:08 -0800
Received: by burninator (Postfix, from userid 1000)	id 83787580C3B; Thu, 12
	Feb 2015 08:35:08 -0500 (EST)
Date: Thu, 12 Feb 2015 08:35:08 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: <yocto@yoctoproject.org>
Message-ID: <20150212133508.GA21267@mentor.com>
MIME-Version: 1.0
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: "New" Dependencies (was: Re: [meta-selinux][PATCH] Add explicit dependency on layers with recipes we bbappend.)
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
X-List-Received-Date: Thu, 12 Feb 2015 13:35:11 -0000
X-Groupsio-MsgNum: 23562
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WIyZ46R2i8wDzkSu"
Content-Disposition: inline

--WIyZ46R2i8wDzkSu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

I thought I'd better follow this up with a semi-separate thread for
anyone who is using meta-selinux and isn't really interested in the
direct follow-ups when I just indicate a patch has been merged.

This went into master and it captures, I think, the implicit
dependencies in the layer right now.  It actually casts a wider net than
is required if you're building core-image-selinux, but it does describe
what's currently included in the layer in terms of appends, so it's the
right thing to do.

If you've been working with a smaller set of selinux layers before,
you'll probably see an error like this:

ERROR: Layer 'selinux' depends on layer 'meta-python', but this layer is no=
t enabled in your configuration
ERROR: Layer 'selinux' depends on layer 'networking-layer', but this layer =
is not enabled in your configuration
ERROR: Layer 'selinux' depends on layer 'openembedded-layer', but this laye=
r is not enabled in your configuration
ERROR: Layer 'selinux' depends on layer 'virtualization-layer', but this la=
yer is not enabled in your configuration

If you don't want to bring in all of these additional layers, my advice
for the short term is to stick with either the 1.7 branch or if you know
you need to work on master, stick with commit 0d270cbd.

-J.

[Re: [meta-selinux][PATCH] Add explicit dependency on layers with recipes w=
e bbappend.] On 15.02.12 (Thu 08:16) Joe MacDonald wrote:

> [[meta-selinux][PATCH] Add explicit dependency on layers with recipes we =
bbappend.] On 15.02.12 (Thu 04:39) Philip Tricca wrote:
>=20
> > This is a stop-gap to get meaningful error messages to folks till we get
> > per-layer bbappends implemented.
> >=20
> > Signed-off-by: Philip Tricca <flihp@twobit.us>
>=20
> Merged.  Thanks Phil.
>=20
> -J.
>=20
> > ---
> >  conf/layer.conf |    8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/conf/layer.conf b/conf/layer.conf
> > index 7af76a1..723f5a8 100644
> > --- a/conf/layer.conf
> > +++ b/conf/layer.conf
> > @@ -13,4 +13,10 @@ BBFILE_PRIORITY_selinux =3D "5"
> >  # cause compatibility issues with other layers
> >  LAYERVERSION_selinux =3D "1"
> > =20
> > -LAYERDEPENDS_selinux =3D "core"
> > +LAYERDEPENDS_selinux =3D " \
> > +    core \
> > +    meta-python \
> > +    networking-layer \
> > +    openembedded-layer \
> > +    virtualization-layer \
> > +"
--=20
-Joe MacDonald.
:wq

--WIyZ46R2i8wDzkSu
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJU3KwMAAoJEEn8ffcsOfaWC1wH/jhhutroJMKXBPYJGN0S+zwp
yv/68+JlE3JPMmbNH00jAwWISd6zKIdmh9vuvbKblwCucVAtCP7rK75/LGB5vyZU
AkWo34LFVRHZFu/X5fgP+TojhepjoZoN3i1leaabjCivm6G44/X4A3Uhb7qee+8A
BCtCrPGy1fFgqz5iYspQ/PjUBA2gHtnsZ6Ux3b0IUaZDT0ZYVuoxC3P6A1GVka4T
o4R3tppvGGW+K4cCDZpMekNkIQ0Bivi/kOg3M8St8e+wtwkh/+spk1ZqYPrvi0Cf
rs0CL2CKroqLluSSzMwyAwLHaIr875gEHKmt0iGNikPX7iYaqzf7OECiCqmy1KE=
=usQv
-----END PGP SIGNATURE-----

--WIyZ46R2i8wDzkSu--
