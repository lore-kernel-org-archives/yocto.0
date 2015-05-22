Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D418EE009D9; Fri, 22 May 2015 01:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 908B0E00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 01:51:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 22 May 2015 01:51:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,474,1427785200"; d="scan'208";a="733607328"
Received: from gfois-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.18])
	by orsmga002.jf.intel.com with ESMTP; 22 May 2015 01:51:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Date: Fri, 22 May 2015 09:51:31 +0100
Message-ID: <2493502.gGu5ytCTqB@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 08:51:47 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Thursday 21 May 2015 23:21:53 yocto yocto wrote:
> Good day,
>=20
>=20
> I am working with the intel Edison. Therefore I am using the
> meta-openembedded =E2=80=9Cdaisy=E2=80=9D branch (have a look here:
> https://github.com/openembedded/meta-openembedded/branches/stale). Us=
ing
> another branch causes bitbake errors. Beside this, =E2=80=9Cdaisy=E2=80=
=9D is recommended
> for the intel Edison within the official intel documents.
>=20
>=20
> Nevertheless I added apache2_2.4.9.bb and postgresql_9.2.4.bb to my c=
ustom
> image. However, php5 support is missing. Therefore I downloaded the p=
hp
> recipe from the current master branch and put it in my custom layer:
>=20
>=20
> https://github.com/openembedded/meta-openembedded/blob/b070899000162e=
7f4baf7
> 5e2427216b39c641a12/meta-oe/recipes-devtools/php/
>=20
>=20
> <https://github.com/openembedded/meta-openembedded/blob/b070899000162=
e7f4baf
> 75e2427216b39c641a12/meta-oe/recipes-devtools/php/>
>=20
> Furthermore I created =E2=80=9Cphp_5.5.24.bbappend=E2=80=9D with the =
following content in
> the same folder:
>=20
>=20
> PACKAGECONFIG_append +=3D "apache2"
>=20
> PACKAGECONFIG_append +=3D "pgsql"
>=20
>=20
> bitbake php results in the following errors:
>=20
>=20
> ERROR: Nothing PROVIDES 'uw-imap' [=E2=80=A6] but php/php_5.5.24.bb D=
EPENDS on or
> otherwise requires it)
>=20
> ERROR: Required build target 'php' has no buildable providers.
>=20
> Missing or unbuildable dependency chain was: ['php', 'uw-imap']
>=20
>=20
> So I removed the config =E2=80=9CPACKAGECONFIG[imap]=E2=80=9D from ph=
p_5.5.24.bb.  Result:
>=20
>=20
> ERROR: Nothing PROVIDES 'postgresql-native' [=E2=80=A6] but /php/php_=
5.5.24.bb
> DEPENDS on or otherwise requires it). Close matches:
>=20
>   postgresql
>=20
>   strace-native
>=20
>   popt-native
>=20
> ERROR: Required build target 'php' has no buildable providers.
>=20
> Missing or unbuildable dependency chain was: ['php', 'php-native',
> 'postgresql-native']
>=20
>=20
> Google does not show much for postgresql-native related to yocto. "bi=
tbake
> postgresql" is running fine... If I remove BBCLASSEXTEND =3D "native"=
 from
> the recipe I get the following result:
>=20
>=20
> ERROR: This autoconf log indicates errors, it looked at host include =
and/or
> library paths while determining system capabilities.
>=20
> Rerun configure task after fixing this. The path was
> "php/5.5.24-r0/php-5.5.24'
>=20
> ERROR: Function failed: do_qa_configure
>=20
> ERROR: Logfile of failure stored in:
> "php/5.5.24-r0/temp/log.do_configure.22410
>=20
> ERROR: Task 5 (php/php_5.5.24.bb, do_configure) failed with exit code=
 '1'
>=20
>=20
>=20
>=20
> I appreciate any advice on how to set up php5 for postgresql.

Change your PACKAGECONFIG_append lines in your bbappend to use=20
PACKAGECONFIG_append_class-native instead and you should be able to pro=
gress.=20
Also, you very likely shouldn't be removing the BBCLASSEXTEND.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

