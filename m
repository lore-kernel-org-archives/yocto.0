Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B46DE008A2; Fri, 20 Apr 2018 18:35:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBAC8E0073D
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 18:35:23 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id D41D618611
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id Wyijxfs7buDU for <yocto@yoctoproject.org>;
	Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 4217B1860E
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2E47F1A073
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 226DC1A06F
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder02.se.axis.com (Postfix) with ESMTP
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by thoth.se.axis.com (Postfix) with ESMTP id 166DA1A2D
	for <yocto@yoctoproject.org>; Sat, 21 Apr 2018 03:35:22 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Sat, 21 Apr 2018 03:35:21 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Sat, 21 Apr 2018 03:35:22 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-gplv2][sumo][rocko][PATCH] bash: Provide
	/bin/{sh,bash} when usrmerge is used
Thread-Index: AdPZEQFvH0ZzhHvtR/aVjMQwC4qrzg==
Date: Sat, 21 Apr 2018 01:35:21 +0000
Message-ID: <7803e3a6385c4b86aec49cbaf7fb836f@XBOX02.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: [meta-gplv2][sumo][rocko][PATCH] bash: Provide /bin/{sh, bash} when usrmerge is used
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
X-List-Received-Date: Sat, 21 Apr 2018 01:35:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Peter Kjellerstedt
> Sent: den 21 april 2018 03:31
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-gplv2][sumo][rocko][PATCH] bash: Provide /bin/{sh,=
 bash} when usrmerge is used
>=20
> Most shell scripts have '#!/bin/{sh,bash}' on the first line of the
> script, which triggers RPM to automatically add a runtime dependency
> on that path for any package that contains shell scripts.  However,
> when the usrmerge feature is enabled, the path will actually be
> /usr/bin/{sh,bash}.
>=20
> So, to satisfy the runtime dependencies, add '/bin/{sh,bash}' to what
> the bash package provides.
>=20
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  recipes-extended/bash/bash.inc | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/recipes-extended/bash/bash.inc b/recipes-extended/bash/bash.=
inc
> index a05b987..0f0d679 100644
> --- a/recipes-extended/bash/bash.inc
> +++ b/recipes-extended/bash/bash.inc
> @@ -65,3 +65,5 @@ pkg_postinst_${PN} () {
>  pkg_postrm_${PN} () {
>  	printf "$(grep -v "^${base_bindir}/bash$" $D${sysconfdir}/shells)\n" > =
$D${sysconfdir}/shells
>  }
> +
> +RPROVIDES_${PN} +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge'=
, '/bin/sh /bin/bash', '', d)}"
> --
> 2.12.0

This change is needed for both Sumo and Rocko, and corresponds to=20
commit 4759408677a4e60c5fa7131afcb5bc184cf2f90a in OE-Core.

//Peter


