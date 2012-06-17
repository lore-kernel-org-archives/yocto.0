Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9850DE01351
	for <yocto@yoctoproject.org>; Sun, 17 Jun 2012 03:47:25 -0700 (PDT)
Received: by wgbfg15 with SMTP id fg15so3348777wgb.11
	for <yocto@yoctoproject.org>; Sun, 17 Jun 2012 03:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=63ylRySDvFbnl8jQ591janwJKRfKMSxm5S+mU59FFjs=;
	b=hHsmN53Iy3+CumdZwARYjv5JE1ghf0VVzG24/FkFiX+BVH0aIXolKzRYVQw5D/llzP
	GY9H2eyg8hjvs+N8BGnzgX43X9U0S61A421ksc8EZ8R9o8ZwW9XNBvLzzib1iU2fiIVT
	SAJq6+4f66FKQzks0UT4jFP94D4C/4u6wKBtGYczkV57sQe36mn010iaP8U819WCCr25
	hdFS6IjLLedbjVZJ+npOyMUoHCh5dXSxK5b9QViv+v4cblLxqKls548jd22ScMvsPbz8
	IGolVuZwDyFKAGAU5o+6LywaeO+B3SrSqqRadPTG97NnfoiFeooAu5iCsaR8f2/yPEbs
	KPHA==
Received: by 10.180.98.39 with SMTP id ef7mr16379450wib.21.1339930044314;
	Sun, 17 Jun 2012 03:47:24 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id fo7sm17612371wib.9.2012.06.17.03.47.22
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 17 Jun 2012 03:47:23 -0700 (PDT)
Date: Sun, 17 Jun 2012 12:47:23 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120617104723.GH3178@jama.jama.net>
References: <1339501183-16643-1-git-send-email-gary@mlbassoc.com>
	<4FDDB218.8070704@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4FDDB218.8070704@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] webkit-gtk: Apply work around for all PowerPC targets
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 17 Jun 2012 10:47:26 -0000
X-Groupsio-MsgNum: 7263
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="QDd5rp1wjxlDmy9q"
Content-Disposition: inline

--QDd5rp1wjxlDmy9q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 17, 2012 at 04:31:52AM -0600, Gary Thomas wrote:
> On 2012-06-12 05:39, Gary Thomas wrote:
> > The current patch for bug #1570 only applies to qemuppc but should be
> > applicable for all PowerPC targets.  Also update the patch so that
> > only one language backend, either ICU or PANGO, is built.
> >
> > Also remove some old customizations (dependencies on darwin) as these
> > should now be handled in a layer specific .bbappend file.
> >
> > Signed-off-by: Gary Thomas<gary@mlbassoc.com>
>=20
> ping??

http://git.openembedded.org/openembedded-core/commit/?id=3D2782caf0f07f61ca=
b92d2981c5e82914f22bd700

?

>=20
> > ---
> >   meta/recipes-sato/webkit/webkit-gtk_svn.bb |   15 +++++++++------
> >   1 files changed, 9 insertions(+), 6 deletions(-)
> >
> > diff --git a/meta/recipes-sato/webkit/webkit-gtk_svn.bb b/meta/recipes-=
sato/webkit/webkit-gtk_svn.bb
> > index 9381486..716afce 100644
> > --- a/meta/recipes-sato/webkit/webkit-gtk_svn.bb
> > +++ b/meta/recipes-sato/webkit/webkit-gtk_svn.bb
> > @@ -7,10 +7,13 @@ LIC_FILES_CHKSUM =3D "file://Source/WebCore/rendering=
/RenderApplet.h;endline=3D22;md
> >                       file://Source/WebKit/gtk/webkit/webkit.h;endline=
=3D21;md5=3Db4fbe9f4a944f1d071dba1d2c76b3351 \
> >                       file://Source/JavaScriptCore/parser/Parser.h;endl=
ine=3D23;md5=3D2f3cff0ad0a9c486da5a376928973a90"
> >
> > -DEPENDS =3D "zlib enchant gnome-keyring libsoup-2.4 curl icu libxml2 c=
airo libxslt libxt libidn gnutls gtk+ gstreamer gst-plugins-base flex-nativ=
e gperf-native perl-native-runtime sqlite3"
> > +# Choice of language backends - icu has issues on Big Endian machines =
so use pango
> > +ICU_LIB =3D "icu"
> > +ICU_LIB_powerpc =3D "pango"
> > +
> > +DEPENDS =3D "zlib enchant gnome-keyring libsoup-2.4 curl libxml2 cairo=
 libxslt libxt libidn gnutls \
> > +           gtk+ gstreamer gst-plugins-base flex-native gperf-native pe=
rl-native-runtime sqlite3 ${ICU_LIB}"
> >   DEPENDS +=3D " ${@base_contains('DISTRO_FEATURES', 'opengl', 'virtual=
/libgl', '', d)}"
> > -DEPENDS_darwin8 =3D "curl icu libxml2 cairo libxslt libidn gnutls gtk+=
 gstreamer flex-native gperf-native perl-native-runtime sqlite3"
> > -DEPENDS_append_qemuppc +=3D "pango"
> >
> >   SRCREV_FORMAT =3D "source"
> >
> > @@ -48,10 +51,10 @@ EXTRA_OECONF =3D "\
> >                   UNICODE_CFLAGS=3D-D_REENTRANT \
> >                  "
> >
> > -#default unicode backend icu breaks in cross-compile when target and h=
ost owns different endian type
> > -EXTRA_OECONF_append_qemuppc +=3D "--with-unicode-backend=3Dglib"
> > +#default unicode backend icu breaks in cross-compile when target and h=
ost are different endian type
> > +EXTRA_OECONF_append_powerpc +=3D "--with-unicode-backend=3Dglib"
> >
> > -CPPFLAGS_append_qemuppc +=3D "-I${STAGING_INCDIR}/pango-1.0 \
> > +CPPFLAGS_append_powerpc +=3D "-I${STAGING_INCDIR}/pango-1.0 \
> >                               -I${STAGING_LIBDIR}/glib-2.0/include \
> >                               -I${STAGING_INCDIR}/glib-2.0"
> >
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--QDd5rp1wjxlDmy9q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/dtbsACgkQN1Ujt2V2gBw+dACeKtYzdbRrouO+7C/RMG38CrbH
c50AoJGfLdJWohq5nrbzE5rOpEEQ+Ua1
=lX4G
-----END PGP SIGNATURE-----

--QDd5rp1wjxlDmy9q--
