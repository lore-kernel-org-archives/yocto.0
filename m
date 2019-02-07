Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53337E00C45; Wed,  6 Feb 2019 23:58:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.35.17.28 listed in list.dnswl.org]
X-Greylist: delayed 337 seconds by postgrey-1.32 at yocto-www;
	Wed, 06 Feb 2019 23:58:53 PST
Received: from goliath.siemens.de (goliath.siemens.de [192.35.17.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB5AE00BAB
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2019 23:58:53 -0800 (PST)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by goliath.siemens.de (8.15.2/8.15.2) with ESMTPS id x177rDci012926
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 7 Feb 2019 08:53:13 +0100
Received: from DEFTHW99ERLMSX.ww902.siemens.net
	(defthw99erlmsx.ww902.siemens.net [139.22.70.136])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTPS id x177rCNE015756
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Thu, 7 Feb 2019 08:53:12 +0100
Received: from DENBGAT9ERPMSX.ww902.siemens.net (139.22.70.194) by
	DEFTHW99ERLMSX.ww902.siemens.net (139.22.70.136) with Microsoft SMTP
	Server (TLS) id 14.3.408.0; Thu, 7 Feb 2019 08:53:13 +0100
Received: from DENBGAT9EL2MSX.ww902.siemens.net ([169.254.9.6]) by
	DENBGAT9ERPMSX.ww902.siemens.net ([139.22.70.194]) with mapi id
	14.03.0415.000; Thu, 7 Feb 2019 08:53:12 +0100
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: Eric Schwarz <eas@sw-optimization.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] SDK install w/ CMake
Thread-Index: AQHUuhLzDbqXvQRawkiO7SaTqBeCt6XT/t7Q
Date: Thu, 7 Feb 2019 07:53:11 +0000
Message-ID: <355BE46A91031048906B695426A8D8E61C3DF156@DENBGAT9EL2MSX.ww902.siemens.net>
References: <40b1945719475701252bad02ee39be4d@sw-optimization.com>
In-Reply-To: <40b1945719475701252bad02ee39be4d@sw-optimization.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.48]
MIME-Version: 1.0
Subject: Re: SDK install w/ CMake
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
X-List-Received-Date: Thu, 07 Feb 2019 07:58:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Eric

I don't think your issue has something do to with CMake.

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> On Behalf Of Eric Schwarz
> Sent: Freitag, 1. Februar 2019 09:51
> To: yocto@yoctoproject.org
> Subject: [yocto] SDK install w/ CMake
>=20
> Hello,
>=20
> we have got the problem that w/ the Yocto recipe and CMake install target=
s
> as below always everything (headers and library or binary
> respectively) is installed in the SDK.
> The binary also goes into the SDK even though we just add it to
> IMAGE_INSTALL based on a XILINX yocto build (rel-v2018.3).

I'm not sure I understand what you are trying to do. If you add something t=
o IMAGE_INSTALL it gets installed to the target.
That usually includes binaries and libraries.

If you only want libraries but not binaries it's probably best to split the=
m into multiple packages as described in https://www.yoctoproject.org/docs/=
latest/mega-manual/mega-manual.html#package-splitting-dev-environment

This way you can have the binaries in a different package like ${PN}-tools.

Pascal

> For sure we only want headers to be installed when "<library_name>-dev"
> is added to TOOLCHAIN_TARGET_TASK_append and the binary should not
> be installed at all when it is just added to IMAGE_INSTALL.
>=20
> For sure we studied Yocto and CMake recipes from other libraries where it
> works like pugixml but weren't able to figure out what's going wrong.
>=20
>=20
> Yocto recipe
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> DESCRIPTION =3D "C++ reflection library"
> SECTION =3D "libs"
> LICENSE =3D "CLOSED"
>=20
> SRCREV =3D "${AUTOREV}"
> SRCBRANCH =3D "next"
> SRC_URI =3D
> "git://gitlab.company.de/psg/${PN}.git;branch=3D${SRCBRANCH};protocol=3Ds=
sh
> "
>=20
> DEPENDS =3D "catch2"
>=20
> inherit cmake
> S =3D "${WORKDIR}/git"
> FILES_${PN}-dev +=3D "${libdir}/cmake"
>=20
> # The following are needed because the library is unversioned.
> # See
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libra=
ri
> es#Non-versioned_Libraries
> SOLIBS =3D ".so"
> FILES_SOLIBSDEV =3D ""
>=20
>=20
> CMake library install part
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
>=20
> # Shared client library target.
> add_library(shared SHARED $<TARGET_OBJECTS:objects>)
> target_include_directories(shared PUBLIC
>                  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
>                  $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
> )
>=20
> set_target_properties(shared
>                  PROPERTIES
>                  ARCHIVE_OUTPUT_DIRECTORY lib/shared
>                  LIBRARY_OUTPUT_DIRECTORY lib/shared
>                  RUNTIME_OUTPUT_DIRECTORY lib/shared
>                  OUTPUT_NAME ${LIBRARY_NAME}
> )
>=20
> # Install target.
> install(TARGETS shared static
>          EXPORT ${LIBRARY_NAME}-config
>          DESTINATION ${CMAKE_INSTALL_LIBDIR})
> install(DIRECTORY include/reflect DESTINATION
> ${CMAKE_INSTALL_INCLUDEDIR})
> install(EXPORT ${LIBRARY_NAME}-config
>          NAMESPACE ${LIBRARY_NAME}-
>          DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${LIBRARY_NAME})
>=20
>=20
> CMake binary install part
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
>=20
> install(TARGETS ${EXECUTABLE_NAME} DESTINATION
> ${CMAKE_INSTALL_BINDIR})
>=20
>=20
> Many thanks for any hints
> Eric
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

