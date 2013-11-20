Return-Path: <zhenhua.luo@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A4FE0055C
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 06:12:19 -0800 (PST)
Received: from mail80-ch1-R.bigfish.com (10.43.68.229) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.22; Wed, 20 Nov 2013 14:12:17 +0000
Received: from mail80-ch1 (localhost [127.0.0.1])	by mail80-ch1-R.bigfish.com
	(Postfix) with ESMTP id 69C513405A0;
	Wed, 20 Nov 2013 14:12:17 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(z579ehz98dI9371I936eI542I1432Izz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h8275bh8275dh1de097hz2dh109h2a8h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1b2fh2222h224fh1fb3h1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5h2184h21a6h2216h22d0hbe9i1155h)
Received: from mail80-ch1 (localhost.localdomain [127.0.0.1]) by mail80-ch1
	(MessageSwitch) id 1384956735140195_22712;
	Wed, 20 Nov 2013 14:12:15 +0000 (UTC)
Received: from CH1EHSMHS032.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.243])	by mail80-ch1.bigfish.com (Postfix) with ESMTP id
	1E7E66004D; Wed, 20 Nov 2013 14:12:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS032.bigfish.com
	(10.43.70.32) with Microsoft SMTP Server (TLS) id 14.16.227.3;
	Wed, 20 Nov 2013 14:12:15 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.28]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.03.0158.002;
	Wed, 20 Nov 2013 14:12:14 +0000
From: Zhenhua Luo <zhenhua.luo@freescale.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [meta-cloud-services][PATCH v2] erlang: skip the host library
	path check to fix cross-compile issue
Thread-Index: AQHO5dzvhyYIx4i+NkyIELvz03KifpouIhQAgAAG8rA=
Date: Wed, 20 Nov 2013 14:12:13 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A017E4D58@039-SN2MPN1-021.039d.mgd.msft.net>
References: <1384943915-4695-1-git-send-email-zhenhua.luo@freescale.com>
	<528CBD30.9070904@windriver.com>
In-Reply-To: <528CBD30.9070904@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.185.93]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Chunrong Guo <B40290@freescale.com>, Ting Liu <ting.liu@freescale.com>,
	Zongchun Yu <Zongchun.Yu@freescale.com>
Subject: Re: [meta-cloud-services][PATCH v2] erlang: skip the host library path check to fix cross-compile issue
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
X-List-Received-Date: Wed, 20 Nov 2013 14:12:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am checking if this modification is necessary, and will post a patch if i=
t is needed.=20


Best Regards,

Zhenhua


> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, November 20, 2013 9:46 PM
> To: Luo Zhenhua-B19537; yocto@yoctoproject.org
> Cc: Liu Ting-B28495; Guo Chunrong-B40290; Yu Zongchun-B40527
> Subject: Re: [meta-cloud-services][PATCH v2] erlang: skip the host
> library path check to fix cross-compile issue
>=20
> On 13-11-20 05:38 AM, Zhenhua Luo wrote:
> > Below is the error message:
> > ERROR: This autoconf log indicates errors, it looked at host include
> and/or library paths while determining system capabilities.
> > Rerun configure task after fixing this.
>=20
> In your previous revision, you also had:
>=20
>    EXTRA_OECONF_append_powerpc =3D " --disable-smp-support --disable-hipe=
"
>=20
> I had asked for it to be a separate patch. Is that part no longer
> required for your builds ?
>=20
> Bruce
>=20
> >
> > Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
> > ---
> >   .../erlang/erlang-fix-build-issue-in-Yocto.patch   | 25
> ++++++++++++++++++++++
> >   .../recipes-devtools/erlang/erlang_R15B.bb         |  1 +
> >   2 files changed, 26 insertions(+)
> >   create mode 100644
> > meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue-i
> > n-Yocto.patch
> >
> > diff --git
> > a/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue
> > -in-Yocto.patch
> > b/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-issue
> > -in-Yocto.patch
> > new file mode 100644
> > index 0000000..2d4b7b5
> > --- /dev/null
> > +++ b/meta-openstack/recipes-devtools/erlang/erlang/erlang-fix-build-i
> > +++ ssue-in-Yocto.patch
> > @@ -0,0 +1,25 @@
> > +Upstream-Status: Inappropriate [The fix is specific to Yocto build
> > +env]
> > +
> > +Skip host library path check to fix following Yocto insane check issue=
:
> > +ERROR: This autoconf log indicates errors, it looked at host include
> and/or library paths while determining system capabilities.
> > +Rerun configure task after fixing this.
> > +
> > +Signed-off-by: Zhenhua Luo <zhenhua.luo@freescale.com>
> > +
> > +--- otp_src_R15B/erts/configure.in.orig	2011-12-14
> 04:22:11.000000000 -0600
> > ++++ otp_src_R15B/erts/configure.in	2013-11-19 04:15:33.694334610 -
> 0600
> > +@@ -1469,10 +1469,10 @@
> > + 	# ln -s libdlpi.so.1 $try_dlpi_lib/libdlpi.so
> > + 	])
> > +    fi
> > +-   LDFLAGS=3D"-L$try_dlpi_lib -R$try_dlpi_lib $LDFLAGS"
> > +-   unset -v try_dlpi_lib
> > +-   AC_MSG_NOTICE([Extending the search to include /lib])
> > +-   AC_CHECK_LIB(dlpi, dlpi_open)
> > ++#   LDFLAGS=3D"-L$try_dlpi_lib -R$try_dlpi_lib $LDFLAGS"
> > ++#   unset -v try_dlpi_lib
> > ++#   AC_MSG_NOTICE([Extending the search to include /lib])
> > ++#   AC_CHECK_LIB(dlpi, dlpi_open)
> > +    if test x"$ac_cv_lib_dlpi_dlpi_open" =3D x"no"; then
> > +       LDFLAGS=3D"$save_ldflags"
> > +    fi
> > diff --git a/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> > b/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> > index 68d144b..d7fd310 100644
> > --- a/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> > +++ b/meta-openstack/recipes-devtools/erlang/erlang_R15B.bb
> > @@ -55,5 +55,6 @@ FILES_${PN}-staticdev +=3D "${libdir}/*/*/*/*.a
> > ${libdir}/*/*/*/*/*.a ${libdir}/*/
> >
> >   FILES_${PN}-libs-dbg +=3D " ${libdir}/erlang/*/.debug
> ${libdir}/erlang/*/*/.debug ${libdir}/erlang/*/*/*/.debug
> ${libdir}/erlang/*/*/*/*/.debug ${libdir}/erlang/*/*/*/*/*/.debug "
> >
> > +SRC_URI +=3D "file://erlang-fix-build-issue-in-Yocto.patch"
> >   SRC_URI[md5sum] =3D "dd6c2a4807551b4a8a536067bde31d73"
> >   SRC_URI[sha256sum] =3D
> "5bc34fc34fc890f84bae7ff1f7c81fbec2c9aa28a0ef51a57d7a8192204d8aa2"
> >
>=20



