Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4859E0030B
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2012 11:06:40 -0700 (PDT)
Received: by dajx4 with SMTP id x4so1384515daj.28
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2012 11:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=81cYeAAwrElZXg/714IkMMDM3pS9MMBmgG2ZcQrshfk=;
	b=foB6nKZeF9WASri+CCp5ZBOnwCQEPXaP7lDgRozrMyQJUYGBf2WRQvPTx9iIViVnK7
	fZb61mg44sEW4j4bsICC8FiKU25q7314lznlrzMltTPRVGrNgZ42CWPUWoNLywTJbF6S
	U0biNMW6QMpPhZCd2a93asMAvwGzaqKOP6JcVlSaovFOdG4xGn4Q4OeR+pC2DU5V5DKp
	tF+4WpH+TN3kaJPmvXzrgmpz7HgOCpUMxtF2mkRvt3G1lc8QuT3DMEx0Yf7/062MJwtQ
	5RihpbAewl+r7weGJSBTjgpCkRMZjBKb/AvVys8FZ7jqdcxACKoO+yUfbiWskyesx6+O
	6plQ==
MIME-Version: 1.0
Received: by 10.68.237.130 with SMTP id vc2mr2946525pbc.134.1335290800483;
	Tue, 24 Apr 2012 11:06:40 -0700 (PDT)
Received: by 10.68.14.166 with HTTP; Tue, 24 Apr 2012 11:06:40 -0700 (PDT)
In-Reply-To: <4F967CB6.6020301@qq.com>
References: <4F967CB6.6020301@qq.com>
Date: Tue, 24 Apr 2012 14:06:40 -0400
Message-ID: <CADzUK1+eN6k+ZLuPDnjwc4aPx+8MLd6mVYGinxXNkb83upPwEw@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: =?UTF-8?B?5rKI5Y2O5piOQHFx?= <446257357@qq.com>
Cc: yocto@yoctoproject.org
Subject: Re: to build the opencv lib
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
X-List-Received-Date: Tue, 24 Apr 2012 18:06:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 24, 2012 at 6:13 AM, "=E6=B2=88=E5=8D=8E=E6=98=8E@qq" <44625735=
7@qq.com> wrote:
> Hi,
> =C2=A0=C2=A0 I want to build the opencv lib into yocto,but I have no idea=
 to do it. I
> have copyed a opencv_1.0.0.bb file
> into my layer,and after I do :bitbake opencv.,it comes the error:Nothing
> PROVIDES 'swig'(but ....)....
> The recipe is the following,

You can not just copy a recipe - if it has dependencies, then you need
to copy those recipes too.

OR - the simpler thing to do

Add the entire meta layer to bblayers.conf

>
> DESCRIPTION =3D "Opencv : The Open Computer Vision Library"
> HOMEPAGE =3D "http://sourceforge.net/projects/opencvlibrary"
> SECTION =3D "libs"
> PRIORITY =3D "optional"
> LICENSE =3D "GPLv2"
>
> PR =3D "r3"
>
> DEPENDS =3D "libtool swig swig-native python jpeg zlib libpng tiff glib-2=
.0"
> #RDEPENDS_${PN} =3D "python jpeg zlib libpng tiff glib-2.0"

This is where the recipe says that it depends on "swig" and you likely
do not have swig in any of your meta layers. Chances are - you can get
swig from the same place you got the recipe for opencv

>
> SRC_URI =3D "${SOURCEFORGE_MIRROR}/opencvlibrary/opencv-${PV}.tar.gz \
>           file://debian/010_enable_static.diff \
>           file://debian/010_ffmpeg_linking.diff \
>           file://debian/010_fix_optimisations.diff \
>           file://debian/010_m4_syntax.diff \
>           file://debian/010_makefile_syntax.diff \
>           file://debian/010_python_cspec.diff \
>           file://debian/020_python_linking.diff \
>           file://debian/030_install_hook.diff \
>           file://debian/050_rebootstrap.diff \
>           file://debian/100_amd64.diff \
>           file://debian/100_static_inline.diff \
>           file://debian/100_ffmpeg_updates.diff \
>           file://debian/110_dc1394.diff \
>           file://debian/120_header_warnings.diff \
>           file://debian/200_documentation.diff \
>           file://debian/200_examples_makefile.diff \
>           file://debian/210_openmp_compilation.diff \
>           file://debian/300_fix_segfault_in_window_gtk.diff \
> "
>
> inherit distutils-base autotools pkgconfig
>
> EXTRA_OECONF =3D "--disable-debug  --without-gtk --without-python
> --disable-apps az_python_cspec=3D${STAGING_INCDIR}/${PYTHON_DIR}"
>
> export BUILD_SYS
> export HOST_SYS
>
> do_configure() {
> 	gnu-configize
> 	cp ${STAGING_DATADIR}/libtool/config.{sub,guess} autotools
> 	oe_runconf
> }
>
> PACKAGES +=3D "python-opencv"
>
> python populate_packages_prepend () {
> 	cv_libdir =3D bb.data.expand('${libdir}', d)
> 	cv_libdir_dbg =3D bb.data.expand('${libdir}/.debug', d)
> 	do_split_packages(d, cv_libdir, '^lib(.*)\.so$', 'lib%s-dev', 'OpenCV %s
> development package', extra_depends=3D'${PN}-dev', allow_links=3DTrue)
> 	do_split_packages(d, cv_libdir, '^lib(.*)\.la$', 'lib%s-dev', 'OpenCV %s
> development package', extra_depends=3D'${PN}-dev')
> 	do_split_packages(d, cv_libdir, '^lib(.*)\.a$', 'lib%s-dev', 'OpenCV %s
> development package', extra_depends=3D'${PN}-dev')
> 	do_split_packages(d, cv_libdir, '^lib(.*)\.so\.*', 'lib%s', 'OpenCV %s
> library', extra_depends=3D'', allow_links=3DTrue)
> }
>
> FILES_${PN}-doc +=3D "${datadir}/opencv/"
> FILES_${PN} =3D "${bindir}"
> FILES_${PN}-dbg +=3D "${libdir}/.debug"
> FILES_${PN}-dev =3D "${includedir} ${libdir}/pkgconfig"
>
> DESCRIPTION_python-opencv =3D "Python bindings to opencv"
> FILES_python-opencv =3D "${PYTHON_SITEPACKAGES_DIR}/*"
> RDEPENDS_python-opencv =3D "python-core"
>
> SRC_URI[md5sum] =3D "146a05005f2d2c16c4ee10ebd7f1dd58"
> SRC_URI[sha256sum] =3D
> "3a6ee888e4dd4ab7f2bc80d046688c099c6a95d1267af554b7c8f1543b66f21e"
>
>
>
> Thanks~
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

