Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96A77E01653
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 00:32:01 -0700 (PDT)
Received: by mail-ea0-f173.google.com with SMTP id g10so1015809eak.18
	for <yocto@yoctoproject.org>; Fri, 27 Sep 2013 00:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=v29oB4eR8Fcwsjgwq7j5M4o4tb3XObsjNEoge+UG1TA=;
	b=vcVs2kFxX1A4K/2YHHoHEgRuD8jFJcSNSHAUhBZx/laPli8lBk9uH5rYLK+KsXkAqA
	sqWh/vFDeXJMau/J7mtwuF1w7N3y3a2rpCgCMfk8h9c9ApHBzN+3ck4pN7zGvpNqYJUY
	74hbVK3HbR8j8flJ6YzEwXfigoWd2edwRWyYxV1A/HgIgfUQU/0mMm+Yfg3anb6kfZu4
	k4LE8OAwXkmQTVXcnooAjohDlHmnAUo/jVm5LA8WnCzpDAY+oQVhdia2mEtZftcr7RvL
	SuG/IhVpLAvH3ctgQNAV3TanEzsoJovguMMXK9TtusbriJ1o1B4kq/P10LxhydAx1Zq8
	nQMQ==
X-Received: by 10.14.251.5 with SMTP id a5mr164440ees.91.1380267120933;
	Fri, 27 Sep 2013 00:32:00 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	f49sm12921643eec.7.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 27 Sep 2013 00:32:00 -0700 (PDT)
Date: Fri, 27 Sep 2013 09:31:59 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: =?utf-8?B?5pu55b+X56CU?= <czyhit@126.com>
Message-ID: <20130927073159.GA3575@jama>
References: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
MIME-Version: 1.0
In-Reply-To: <bfe9b2.4f09.1415dea90ad.Coremail.czyhit@126.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: how to add a new bb(xerces-c)?
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
X-List-Received-Date: Fri, 27 Sep 2013 07:32:06 -0000
X-Groupsio-MsgNum: 16259
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 27, 2013 at 01:35:55PM +0800, =E6=9B=B9=E5=BF=97=E7=A0=94 wrote:
> Hello, everyone!
> I try to add a new bb(xerces-c) to my image, bb is as followings:
>=20

Check oe-classic recipes
http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/xerces-c/xe=
rces-c_3.1.1.bb
http://cgit.openembedded.org/cgit.cgi/openembedded/tree/recipes/xerces-c/xe=
rces-c_2.8.0.bb

maybe it was fixed there..

>=20
> DESCRIPTION =3D "Xerces-C++ is a validating XML parser written in a porta=
ble subset of C++."
> HOMEPAGE =3D "http://xerces.apache.org/xerces-c/"
> LICENSE =3D "Apache"
> LIC_FILES_CHKSUM =3D "file://src/xercesc/dom/DOM.hpp;endline=3D22;md5=3D9=
986d741cab88a8b7bc4a19d3c1b8106 \
> file://src/xercesc/parsers/XercesDOMParser.hpp;endline=3D21;md5=3D85be7b6=
e587aa51e4f30c262f1cd695e \
> file://src/xercesc/xinclude/XIncludeDOMDocumentProcessor.hpp;endline=3D23=
;md5=3D4236d3c0f2537b3df547a97d60f93dc0"
>=20
>=20
> PR =3D "r1"
>=20
>=20
> DEPENDS =3D "curl icu"
>=20
>=20
> SRC_URI =3D "http://mirror.bit.edu.cn/apache//xerces/c/3/sources/xerces-c=
-${PV}.tar.gz"
>=20
>=20
> SRC_URI[md5sum] =3D "6a8ec45d83c8cfb1584c5a5345cb51ae"
> SRC_URI[sha256sum] =3D "a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b=
805d26d44968736"
>=20
>=20
> inherit autotools
>=20
>=20
> S =3D "${WORKDIR}/xerces-c-${PV}/"
>=20
>=20
> EXTRA_OECONF =3D "\
> --enable-netaccessor-curl \
> --enable-transcoder-icu \
> --enable-msgloader-icu \
> "
>=20
>=20
> but when configure come into the error:
> ERROR: This autoconf log indicates errors, it looked at host include and/=
or library paths while determining system capabilities.
> Rerun configure task after fixing this. The path was '/home/caozhiyan/fsl=
-community-bsp/build-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xer=
ces-c/3.1.1-r1/xerces-c-3.1.1'
> ERROR: Function failed: do_qa_configure
> ERROR: Logfile of failure stored in: /home/caozhiyan/fsl-community-bsp/bu=
ild-hc1200/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/xerces-c/3.1.1-r1/te=
mp/log.do_configure.19932
> ERROR: Task 5 (/home/caozhiyan/fsl-community-bsp/sources/meta-fsl-hc1200/=
recipes-hc1200/xerces-c/xerces-c_3.1.1.bb, do_configure) failed with exit c=
ode '1'
>=20
>=20
> who can show me how to port the autotools-based project? Thanks.

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlJFNG8ACgkQN1Ujt2V2gBws2wCgnaP1eJEEFMzb3POhRE95faTm
POEAnA4fqjZwf88vZaChCOUjwuFgBRwK
=anDr
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
