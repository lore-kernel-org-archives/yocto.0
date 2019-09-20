Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19086E00B8E; Fri, 20 Sep 2019 07:54:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 587 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Sep 2019 07:54:42 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67475E009D8
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 07:54:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 3F6D218393;
	Fri, 20 Sep 2019 16:44:53 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id OH1hMoE8MUL1; Fri, 20 Sep 2019 16:44:50 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 0191218524;
	Fri, 20 Sep 2019 16:44:49 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B17CA1E066;
	Fri, 20 Sep 2019 16:44:49 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A56651E04F;
	Fri, 20 Sep 2019 16:44:49 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Fri, 20 Sep 2019 16:44:49 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by thoth.se.axis.com (Postfix) with ESMTP id 99985183C;
	Fri, 20 Sep 2019 16:44:49 +0200 (CEST)
Received: from xbox06.axis.com (10.0.15.176) by XBOX02.axis.com (10.0.5.16)
	with Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Fri, 20 Sep 2019 16:44:49 +0200
Received: from xbox06.axis.com ([fe80::59d2:4cb0:3900:3c35]) by
	xbox06.axis.com ([fe80::59d2:4cb0:3900:3c35%12]) with mapi id
	15.00.1395.000; Fri, 20 Sep 2019 16:44:49 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Ross Burton <ross.burton@intel.com>
Thread-Topic: [yocto] [meta-gplv2][master][warrior][PATCH] tar: Make it build
	with GCC 8.3
Thread-Index: AQHVb6Z1hFleOYuW2kCxcpdL3fcVS6c0pESQ
Date: Fri, 20 Sep 2019 14:44:49 +0000
Message-ID: <f986a5fdda9c4ab6836934baef005e5a@xbox06.axis.com>
References: <20190918154818.5425-1-pkj@axis.com>
	<ebecad3b-fe12-a8c5-1621-b031ecd098d5@intel.com>
In-Reply-To: <ebecad3b-fe12-a8c5-1621-b031ecd098d5@intel.com>
Accept-Language: en-US, sv-FI
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][master][warrior][PATCH] tar: Make it build with GCC 8.3
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
X-List-Received-Date: Fri, 20 Sep 2019 14:54:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

One of these days I will read my mail before I go pushing stuff...
Anyway, the Upstream-Status has been added now.

//Peter

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> On Behalf Of Ross Burton
> Sent: den 20 september 2019 13:27
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-gplv2][master][warrior][PATCH] tar: Make it
> build with GCC 8.3
>=20
> Missing an upstream-status, but good to push when that's fixed.
>=20
> Ross
>=20
> On 18/09/2019 16:48, Peter Kjellerstedt wrote:
> > From: Joakim Roubert <joakimr@axis.com>
> >
> > This avoids the following error:
> >
> >    lib/argp-parse.c: In function 'argp_version_parser':
> >    lib/argp-parse.c:158:2: error: format not a string literal and no
> >    format arguments [-Werror=3Dformat-security]
> >      __argp_error (state, dgettext (state->root_argp->argp_domain,
> >      ^~~~~~~~~~~~
> >
> > Signed-off-by: Joakim Roubert <joakim.roubert@axis.com>
> > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > ---
> >   ...-lib-argp-parse.c-Fix-compiler-error.patch | 34
> +++++++++++++++++++
> >   recipes-extended/tar/tar_1.17.bb              |  1 +
> >   2 files changed, 35 insertions(+)
> >   create mode 100644 recipes-extended/tar/tar/0001-lib-argp-parse.c-
> Fix-compiler-error.patch
> >
> > diff --git a/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-
> compiler-error.patch b/recipes-extended/tar/tar/0001-lib-argp-parse.c-
> Fix-compiler-error.patch
> > new file mode 100644
> > index 0000000..3de9fd1
> > --- /dev/null
> > +++ b/recipes-extended/tar/tar/0001-lib-argp-parse.c-Fix-compiler-
> error.patch
> > @@ -0,0 +1,34 @@
> > +From 153c0aab9e2a4a97b1a2c6b530594cd9a211e9ec Mon Sep 17 00:00:00
> 2001
> > +From: Joakim Roubert <joakimr@axis.com>
> > +Date: Thu, 6 Dec 2018 10:33:14 +0100
> > +Subject: [PATCH] lib/argp-parse.c: Fix compiler error
> > +
> > +This avoids the following error:
> > +
> > +  lib/argp-parse.c: In function 'argp_version_parser':
> > +  lib/argp-parse.c:158:2: error: format not a string literal and no
> > +  format arguments [-Werror=3Dformat-security]
> > +    __argp_error (state, dgettext (state->root_argp->argp_domain,
> > +    ^~~~~~~~~~~~
> > +
> > +Signed-off-by: Joakim Roubert <joakim.roubert@axis.com>
> > +---
> > + lib/argp-parse.c | 2 +-
> > + 1 file changed, 1 insertion(+), 1 deletion(-)
> > +
> > +diff --git a/lib/argp-parse.c b/lib/argp-parse.c
> > +index a7de729..09511ba 100644
> > +--- a/lib/argp-parse.c
> > ++++ b/lib/argp-parse.c
> > +@@ -155,7 +155,7 @@ argp_version_parser (int key, char *arg, struct
> argp_state *state)
> > +       else if (argp_program_version)
> > + 	fprintf (state->out_stream, "%s\n", argp_program_version);
> > +       else
> > +-	__argp_error (state, dgettext (state->root_argp-
> >argp_domain,
> > ++	__argp_error (state, "%s", dgettext (state->root_argp-
> >argp_domain,
> > + 				       "(PROGRAM ERROR) No
> version known!?"));
> > +       if (! (state->flags & ARGP_NO_EXIT))
> > + 	exit (0);
> > +--
> > +2.11.0
> > +
> > diff --git a/recipes-extended/tar/tar_1.17.bb b/recipes-
> extended/tar/tar_1.17.bb
> > index b9ca206..1ee5e34 100644
> > --- a/recipes-extended/tar/tar_1.17.bb
> > +++ b/recipes-extended/tar/tar_1.17.bb
> > @@ -8,6 +8,7 @@ PR =3D "r3"
> >   SRC_URI +=3D "file://m4extensions.patch \
> >       file://gcc43build.patch \
> >       file://avoid_heap_overflow.patch \
> > +    file://0001-lib-argp-parse.c-Fix-compiler-error.patch \
> >       "
> >
> >   SRC_URI[md5sum] =3D "c6c4f1c075dbf0f75c29737faa58f290"
> >
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

