Return-Path: <jonas.l.jonsson@ericsson.com>
Received: from mailgw1.ericsson.se (mailgw1.ericsson.se [193.180.251.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C96FE0141C
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2012 05:14:20 -0700 (PDT)
X-AuditID: c1b4fb2d-b7fea6d000002ccb-7a-505c5a1be78b
Received: from esessmw0191.eemea.ericsson.se (Unknown_Domain [153.88.253.125])
	by mailgw1.ericsson.se (Symantec Mail Security) with SMTP id
	05.72.11467.B1A5C505; Fri, 21 Sep 2012 14:14:19 +0200 (CEST)
Received: from ESESSCMS0355.eemea.ericsson.se ([169.254.1.103]) by
	esessmw0191.eemea.ericsson.se ([153.88.115.84]) with mapi;
	Fri, 21 Sep 2012 14:14:19 +0200
From: Jonas Jonsson L <jonas.l.jonsson@ericsson.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Sep 2012 14:14:17 +0200
Thread-Topic: [yocto] Using other recipes output in Makefile-project
Thread-Index: Ac2X4Oh2IAIORX8ZROu3QOp0TMQYsAAD/tIg
Message-ID: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24BAFB@ESESSCMS0355.eemea.ericsson.se>
References: <C1024C359E9D4C4EBC664A0111A52A3F7CFB24B9DA@ESESSCMS0355.eemea.ericsson.se>
	<CAJTo0La0S28iSaO3qRzygSrFkDtit-sqRpK=azqrDh0dqj_3aA@mail.gmail.com>
In-Reply-To: <CAJTo0La0S28iSaO3qRzygSrFkDtit-sqRpK=azqrDh0dqj_3aA@mail.gmail.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: sv-SE, en-US
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKLMWRmVeSWpSXmKPExsUyM+Jvra50VEyAwY7LehbzdthbTHq5hs2B
	yWPxnpdMHu0n+tgCmKK4bFJSczLLUov07RK4MvYvqS44IVDRsOsHawPjMd4uRg4OCQETiVn/
	vLoYOYFMMYkL99azdTFycQgJnGKUmPTkBZSzkFHi0ZfzbCBVbEANE1beZASxRQS0JM6+fswM
	YjMLeEq0LJjABDKURUBVYt9Ub5CwsICzxJqb+1ghyl0kliy5wQZSIiJgJPF5OQ9ImFcgXOLf
	zcmMEKvmMUr8WnCbHSTBKRAocX/hAbDxjAKyEve/32OBWCUucevJfCaIowUkluw5zwxhi0q8
	fPyPFaJeRuLUov+sEPU6Egt2f2KDsLUlli18zQyxWFDi5MwnLBMYxWYhGTsLScssJC2zkLQs
	YGRZxSicm5iZk15uqJdalJlcXJyfp1ecuokRGDUHt/zW3cF46pzIIUZpDhYlcV6upP3+QgLp
	iSWp2ampBalF8UWlOanFhxiZODilGhgdrKZ1Tt2ae3j3u2LFff8b6mYKnL78wOpQi6buzSMv
	004pzA0uPSh/i6HMLa7Z8N68mZLHPyndU9906v60pR5tz8Xei0yZfMqbvdLQ5eOC7QJH3BMe
	8x7d79U2WWNe5ESf1HOaJjNfmXQ94Vlz/IS9/6zavJSgG/VOqktEkpl1ruqv3V7hN9FKiaU4
	I9FQi7moOBEAXvz4y2gCAAA=
Cc: "Yocto Mailinglist \(yocto@yoctoproject.org\)" <yocto@yoctoproject.org>
Subject: Re: Using other recipes output in Makefile-project
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
X-List-Received-Date: Fri, 21 Sep 2012 12:14:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Unfortunately there are no include-files (for any of the three libs in DEPE=
ND) available in that folder.

I've also tried running "bitbake libxml2" and it runs fine but nothing happ=
ens in the $STAGING_{INCDIR|LIBDIR} folders :---(  Must I add the dependenc=
ies to the image too, via an IMAGE_INSTALL_append directive in the 'conf/lo=
cal.conf'-file?

I'm running yocto 1.2 snapshot 20120919 on an ubuntu 64-bit (VirtualBox) ma=
chine.

I don't have the time (in this project) for porting the whole buildsystem t=
o autotools...

/Jonas (Sorry for top-posting, outlook isn't made for mail)

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: den 21 september 2012 12:07
To: Jonas Jonsson L
Cc: Yocto Mailinglist (yocto@yoctoproject.org)
Subject: Re: [yocto] Using other recipes output in Makefile-project

On 21 September 2012 10:06, Jonas Jonsson L <jonas.l.jonsson@ericsson.com> =
wrote:
> Hi, I'm having trouble with understanding how to use built libraries=20
> (and their include-files).
>
> I'm writing a bitbake-recipe for some piece of software that is=20
> Makefile-based.  The SW has a compilation and runtime dependency on=20
> readline, Sqlite3 and libxml2.
>
> In my bb-file, I've added 'DEPEND =3D "readline sqlite3 libxml2"' and=20
> the three packages are built and installed for my chosen architecture.
>
> Now how do I use the build artifacts for my compilation??  I would=20
> like to add 'XML2_CFLAGS=3DFOO', 'XML2_LIBS=3DBAR' etc to my EXTRA_OEMAKE=
=20
> so that my Makefile can pick up the location of the necessary=20
> include-files and libraries?

I'd recommend considering porting the build system to autotools, but I know=
 that for a lot of situations that isn't doable.

I'd also recommend changing the build system to use pkg-config for
libxml2 and sqlite3, that way it will automatically find the right headers.

The magic variables you're looking for though are ${STAGING_INCDIR} and ${S=
TAGING_LIBDIR}, these are the include and lib directories under the staging=
 tree for the target.

Ross


