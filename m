Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82AACE00A85; Tue,  4 Oct 2016 23:55:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A615E00A30
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 23:55:13 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga105.fm.intel.com with ESMTP; 04 Oct 2016 23:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,447,1473145200"; d="scan'208";a="886867962"
Received: from hle6-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.185.42])
	by orsmga003.jf.intel.com with ESMTP; 04 Oct 2016 23:55:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Date: Wed, 05 Oct 2016 19:55:09 +1300
Message-ID: <1722958.a5vgrEO2cN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
References: <D6696459-1F17-4F52-8D0A-4ED8C3FC35EE@cisco.com>
	<15215572.tG9QIyjkit@peggleto-mobl.ger.corp.intel.com>
	<4EBFFDF8-32F2-48C0-A456-DB9A9A4D3841@cisco.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question: xxxx listed in PACKAGES multiple times, this leads to packaging errors
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
X-List-Received-Date: Wed, 05 Oct 2016 06:55:16 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Wed, 05 Oct 2016 05:12:27 Dinh Nguyen wrote:
> Thanks much Paul.
>=20
> >>>> PACKAGES =3D "${PN}" should work
>=20
> It solved the early error =E2=80=9C c-mlib listed in PACKAGES multipl=
e times, this
> leads to packaging errors=E2=80=9D =E2=80=94 Thanks again.
>=20
>=20
> But running into other issue. Below is my do_install
>=20
> do_install () {
> =09oe_runmake all
> =09install -d ${D}${libdir}
> =09install -d ${D}${bindir}
> =09install -m 0644 ${S}/target/libmlib.so ${D}${libdir}
> =09install -m 0644 ${S}/target/datamodel_cache ${D}${bindir}
> =09install -m 0644 ${S}/target/invoke ${D}${bindir}
> =09install -m 0644 ${S}/target/invoke_b ${D}${bindir}
> =09install -m 0644 ${S}/target/protocol_infra ${D}${bindir}
> =09install -m 0644 ${S}/target/publisher ${D}${bindir}
> =09install -m 0644 ${S}/target/rpc-register ${D}${bindir}
> =09install -m 0644 ${S}/target/service ${D}${bindir}
> =09install -m 0644 ${S}/target/subscriber ${D}${bindir}
> }
>=20
> PACKAGES =3D "${PN}"
> FILES_${PN} =3D "/usr/bin/datamodel_cache \
> =09=09/usr/bin/invoke \
> =09=09/usr/bin/invoke_b \
> =09=09/usr/lib/libmlib.so \
> =09=09/usr/bin/protocol_infra \
> =09=09/usr/bin/publisher \
> =09=09/usr/bin/rpc-register \
> =09=09/usr/bin/service \
> =09=09/usr/bin/subscriber"
>=20
>=20
>=20
> And under ${S}/target, it has the libmlib.so and other binaries built=
,
> And I intended to copy the .so to ${D}${libdir} and binarires to
> ${D}${bindir}. I am able to build the c-mlib package as shown below:
=20
> dinhn@rs-bldsrv:/media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp$ fi=
nd
> tmp/deploy | grep c-mlib
> tmp/deploy/ipk/core2-64/c-mlib_1.1-r0_core2-64.ipk
>=20
>=20
> The problem is that, after "bitbake c-mlib=E2=80=9D, it moved all sou=
rces under ${S}
> to /usr/src/debug etc..=20
> I googled but unable to find the root cause.
> Would you and other can help to identify the issue?=20
> NOTE: Executing RunQueue Tasks
> ERROR: QA Issue: c-mlib: Files/directories were installed but not shi=
pped
>   /usr/src
>   /usr/lib/.debug
>   /usr/lib/.debug/libmlib.so
>   /usr/src/debug
>   /usr/src/debug/c-mlib
>   /usr/src/debug/c-mlib/1.1-r0
>   /usr/src/debug/c-mlib/1.1-r0/git
>   /usr/src/debug/c-mlib/1.1-r0/git/src
>   /usr/src/debug/c-mlib/1.1-r0/git/include
>   /usr/src/debug/c-mlib/1.1-r0/git/deps
>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_api.c
>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_metrics.c
>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_util.c
>   /usr/src/debug/c-mlib/1.1-r0/git/src/mlib_local_metrics.c
>   /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings
>   /usr/src/debug/c-mlib/1.1-r0/git/src/utils
>   /usr/src/debug/c-mlib/1.1-r0/git/src/service_sdk
>   /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_service_c=
ache.c
> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_wrapper.c
> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/mlib_dsa.c
> /usr/src/debug/c-mlib/1.1-r0/git/src/dslink_bindings/include
> =E2=80=A6.

This is what I suspected would happen - these files would normally be p=
art of=20
the ${PN}-dbg package, but since you've removed that from PACKAGES, the=
y are=20
ending up unpackaged and that is not allowed.

Like the other responder I would suggest you not set PACKAGES - instead=
 you=20
just need to take steps so that the .so file doesn't end up in the ${PN=
}-dev=20
package. You could do something like this:

FILES_${PN}-dev =3D "${includedir}"

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

