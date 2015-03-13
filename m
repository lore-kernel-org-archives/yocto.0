Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B99D8E0086E; Fri, 13 Mar 2015 04:47:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.217.128.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from g2t2353.austin.hp.com (g2t2353.austin.hp.com [15.217.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AC98E00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:47:36 -0700 (PDT)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2353.austin.hp.com (Postfix) with ESMTPS id 624FE9E;
	Fri, 13 Mar 2015 11:47:35 +0000 (UTC)
Received: from G1W5784.americas.hpqcorp.net (16.193.26.2) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Fri, 13 Mar 2015 11:46:21 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.112]) by
	G1W5784.americas.hpqcorp.net ([16.193.26.2]) with mapi id
	14.03.0169.001; Fri, 13 Mar 2015 11:46:20 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] running task only for native but not target?
Thread-Index: AQHQXWxYbSwfmhTVJ0GqZos0A+42Bp0aS2mw
Date: Fri, 13 Mar 2015 11:46:20 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A8069053A4@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8069052BA@G2W2533.americas.hpqcorp.net>
	<4649620.1oiO9F2Se0@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4649620.1oiO9F2Se0@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.196.64.186]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: running task only for native but not target?
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
X-List-Received-Date: Fri, 13 Mar 2015 11:47:37 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

  Thanks, yes that is likely to work, I will try it.  I was looking for a m=
ore Yocto-like solution using the overriding stuff but it seems the overrid=
ing doesn't apply in this particular situation.

Yannick Koehler

-----Message d'origine-----
De=A0: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Envoy=E9=A0: March-13-15 5:02 AM
=C0=A0: Koehler, Yannick (HP Networking)
Cc=A0: yocto@yoctoproject.org
Objet=A0: Re: [yocto] running task only for native but not target?

Hi Yannick,

On Thursday 12 March 2015 19:05:13 Koehler, Yannick wrote:
> I have a package that produce a binary that I need for native, and an=20
> C header file that I need for target.
>=20
> I put the following do_install function to install appropriately the=20
> bin or header according to the class:
>=20
> 	do_install_append_class-target () {
> 	        install -d ${D}${includedir}
> 	        install -m 0755 ${S}/ifrpc.h ${D}${includedir}
> 	}
>=20
> 	do_install_append_class-native() {
> 	        install -d ${D}${bindir}
> 	        install -m 0755 ${S}/ifrpcgen ${D}${bindir}
> 	}
>=20
> but is there a way for me to disable do_patch/do_configure/do_compile=20
> only when building for the target?  I have tried the following without su=
ccess:
>=20
> 	do_configure_class-target[noexec] =3D "1"
> 	do_patch_class-target[noexec] =3D "1"
> 	do_compile_class-target[noexec] =3D "1"
>=20
> It appears the OVERRIDES do not apply here, any hint on how I can=20
> achieve this?

Probably the easiest way would be to just null out the tasks just for the t=
arget class i.e.

do_configure_class-target () {
   :
}

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

