Return-Path: <prvs=1374dd09a=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFA22E00C78; Wed, 28 Aug 2019 23:42:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.139.62 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Aug 2019 23:42:42 PDT
Received: from esa4.bmw.c3s2.iphmx.com (esa4.bmw.c3s2.iphmx.com
	[68.232.139.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67AB7E00BA1
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 23:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1567060963; x=1598596963;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=R1I9o9+53+4toHI8ZOASy7OPAZhoCPB6SyIblTTvNjI=;
	b=azdOpiW6iBDNPhTakfmT68Qe0QhsYZDNWbmdK/eDxnLt+4xnkB6cqsvc
	BXs/XvqH3wA4yTUxcrm7g6OSExuqDe9JiaJCG/xgF71aDvRVzHcXyYgSX
	Z0GlIH3kQrSSnu5ScYd8Zfsul9VpWyx0xIQF12T+BzZtKR+xvo74sMMw2 g=;
IronPort-SDR: l/+WnFZmpUffVGKykzMHmyiva4BoILN85Zu3jXXkDhKG9cHAmHnqVn6Nx6/hH3fLXSz5/JqpBC
	FRoIHIwzqq2/rkt8aBWIZO3gB3CxupduKjNOouAFiGSnVJg//1koiYbrUpb2Byb60CM0MrsMEB
	KBnIf/uvMJx6boo71xtRJjf7Q5Wc1QA5a3DM7Ube7kdV4juAQoZuA/38/vtVxuX2cyaIlFZYHJ
	m7DPTmOgechaGFt9dKAbUHywzy21q3Sa/wqiJMe5NTiZSoeXspt3tx/Y3JygHlgQ1wlcYBwrC9
	4Y0=
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
	esa4.bmw.c3s2.iphmx.com with ESMTP/TLS; 29 Aug 2019 08:41:38 +0200
Received: from esabb3.muc ([160.50.100.30])  by esagw2.muc with ESMTP/TLS;
	29 Aug 2019 08:41:36 +0200
Received: from smucm10m.bmwgroup.net (HELO smucm10m.europe.bmw.corp)
	([160.48.96.49])
	by esabb3.muc with ESMTP/TLS; 29 Aug 2019 08:41:36 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10m.europe.bmw.corp
	(160.48.96.49) with Microsoft SMTP Server (TLS;
	Thu, 29 Aug 2019 08:41:36 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005;
	Thu, 29 Aug 2019 08:41:36 +0200
From: <Mikko.Rapeli@bmw.de>
To: <joe@deserted.net>
Thread-Topic: [yocto] [meta-selinux][PATCH 1/2] meson-selinux.bbclass: fix
	meson flags for glib-2.0-native
Thread-Index: AQHVXbbqoINJHTw760y4BTZR2eXf+qcQrHyAgADgKgA=
Date: Thu, 29 Aug 2019 06:41:36 +0000
Message-ID: <20190829064136.GT7889@hiutale>
References: <1567006222-23574-1-git-send-email-mikko.rapeli@bmw.de>
	<20190828171915.GA13881@deserted.net>
In-Reply-To: <20190828171915.GA13881@deserted.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.45]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 1/2] meson-selinux.bbclass: fix meson flags for glib-2.0-native
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
X-List-Received-Date: Thu, 29 Aug 2019 06:42:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <F6246371EAB264498DF68E2149D76019@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Aug 28, 2019 at 01:19:17PM -0400, Joe MacDonald wrote:
> Hi Mikko,
>=20
> Is this specifically for warrior (or thud), maybe?  The following commit
> explains the current logic:
>=20
>     commit bb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0
>     Author: Yi Zhao <yi.zhao@windriver.com>
>     Date:   Wed Jun 12 15:53:20 2019 +0800
>    =20
>         glib-2.0: fix configure error for meson build
>    =20
>         In glib 2.60.x, it turns selinux into a meson feature. We should =
use
>         '-Dselinux=3Denabled/disabled' rather than '-Dselinux=3Dtrue/fals=
e' to
>         enable/disable the feature.
>    =20
>         Add meso-enable-selinux.bbclass for this change and inherit it in
>         glib-2.0 bbappend to fix the configure error.
>    =20
>         Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>         Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>=20
> and the second patch is already present in tree:
>=20
>     commit 087fe5c8144c246c6361bd8bcbd1ffd9e9b675bb
>     Author: Yi Zhao <yi.zhao@windriver.com>
>     Date:   Fri Aug 9 17:48:00 2019 +0800
>    =20
>         libselinux: fix build with glibc 2.30
>    =20
>         Fix build error:
>         procattr.c:27:14: error: static declaration of 'gettid' follows
>         non-static declaration
>            27 | static pid_t gettid(void)
>               |              ^~~~~~
>         In file included from /buildarea/build/tmp/work/core2-64-poky-lin=
ux/libselinux/2.8-r0/recipe-sysroot/usr/include/unistd.h:1170,
>                          from procattr.c:2:
>         /buildarea/build/tmp/work/core2-64-poky-linux/libselinux/2.8-r0/r=
ecipe-sysroot/usr/include/bits/unistd_ext.h:34:16:
>         note: previous declaration of 'gettid' was here
>            34 | extern __pid_t gettid (void) __THROW;
>               |                ^~~~~~
>    =20
>         Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
>         Signed-off-by: Joe MacDonald <joe_macdonald@mentor.com>
>=20
> This is what my current work tree looks like, for reference:
>=20
>   $ repo forall -p -c git log -1 --pretty=3Doneline
>   project meta-openembedded/
>   2ebaa8df1257389161d0bee9e553c28f63e52005 python3-pyatspi: Add Dbus ATSP=
I recipe
>  =20
>   project meta-selinux/
>   154654a6fe12206a6b9ad6d8c36a4dbe672bcc46 selinux-python: Fix dependency=
 for ntpath
>  =20
>   project yocto-mainline/
>   ca2207f418b7847ffce4b8c53a5a442e5cf461d9 commands.py: fix typo

Hmm, good that same patches are already in master branch but I somehow got =
a
much older master branch state from remote git://git.yoctoproject.org/meta-=
selinux

commit a917c322c120c05fc6746fc9aca38c27398ffb4a
Author:     Yi Zhao <yi.zhao@windriver.com>
AuthorDate: Fri Apr 19 10:46:32 2019 +0800
Commit:     Joe MacDonald <joe@deserted.net>
CommitDate: Tue Apr 23 11:12:57 2019 -0400

Was also checking master-next there.

Based on time stamps in .git/modules/meta-selinux/refs/remotes/upstream/ my=
 last fetch
was Aug 28 11:02 CET. Seems like the "libselinux: fix build with glibc 2.30=
"
was pushed to the server just after I had been checking for it:

commit 087fe5c8144c246c6361bd8bcbd1ffd9e9b675bb
Author:     Yi Zhao <yi.zhao@windriver.com>
AuthorDate: Fri Aug 9 17:48:00 2019 +0800
Commit:     Joe MacDonald <joe_macdonald@mentor.com>
CommitDate: Wed Aug 28 10:26:52 2019 -0400

    libselinux: fix build with glibc 2.30

Anyway, fixes are in and life continues :)

Thanks,

-Mikko

> -J.
>=20
> [[yocto] [meta-selinux][PATCH 1/2] meson-selinux.bbclass: fix meson flags=
 for glib-2.0-native] On 19.08.28 (Wed 18:30) Mikko Rapeli wrote:
>=20
> > With latest poky master, glib-2.0-native fails to compile:
> >=20
> > | meson.build:1:0: ERROR: Value "false" for combo option is not one of =
the choices. Possible choices are: "enabled",
> >  "disabled", "auto".
> >=20
> > Thus use enabled and disabled when enabling and disabling flags
> > with meson. Now glib-2.0-native compiles again.
> >=20
> > Signed-off-by: Mikko Rapeli <mikko.rapeli@bmw.de>
> > ---
> >  classes/meson-selinux.bbclass | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >=20
> > diff --git a/classes/meson-selinux.bbclass b/classes/meson-selinux.bbcl=
ass
> > index 77a763a..91c2a2b 100644
> > --- a/classes/meson-selinux.bbclass
> > +++ b/classes/meson-selinux.bbclass
> > @@ -1,4 +1,4 @@
> >  inherit selinux
> > =20
> >  PACKAGECONFIG_append =3D " ${@target_selinux(d)}"
> > -PACKAGECONFIG[selinux] =3D "-Dselinux=3Dtrue,-Dselinux=3Dfalse,libseli=
nux,"
> > +PACKAGECONFIG[selinux] =3D "-Dselinux=3Denabled,-Dselinux=3Ddisabled,l=
ibselinux,"
> > --=20
> > 1.9.1
> >=20
> > --=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> --=20
> -Joe MacDonald.
> :wq


