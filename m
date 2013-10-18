Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40FECE016E8
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:38:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 18 Oct 2013 06:38:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,522,1378882800"; d="scan'208";a="413252561"
Received: from unknown (HELO helios.localnet) ([10.252.121.12])
	by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2013 06:38:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Davide Soldan <davide.soldan@kynetics.it>
Date: Fri, 18 Oct 2013 14:38:27 +0100
Message-ID: <2090420.FiXqQSde1A@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1569815.B0lOYLcWFJ@fedora-fisso>
References: <2654026.GvoHhChOvl@fedora-fisso> <1425778.v7NdBFTXrz@helios>
	<1569815.B0lOYLcWFJ@fedora-fisso>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: preserving file owners in do_package
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
X-List-Received-Date: Fri, 18 Oct 2013 13:38:30 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Davide,

On Friday 18 October 2013 15:31:22 Davide Soldan wrote:
> In data marted=EC 15 ottobre 2013 17:18:35, Paul Eggleton ha scritto:=

> > On Tuesday 15 October 2013 18:12:42 Davide Soldan wrote:
> > > In data marted=EC 15 ottobre 2013 11:38:21, Paul Eggleton ha scri=
tto:
> > > > On Tuesday 15 October 2013 12:02:20 Davide Soldan wrote:
> > > > > in my recipe I want to change owner and permission of a file,=
 so I
> > > > > wrote:
> > > > >=20
> > > > > do_install() {
> > > > >=20
> > > > >         ls -la ${D}/opt/user
> > > > >         chown -R user ${D}/opt/user
> > > > >         chgrp -R user ${D}/opt/user
> > > > >         ls -la ${D}/opt/user
> > > > >         chmod 754 ${D}/opt/user/user.sh
> > > > >         ls -la ${D}/opt/user
> > > > >=20
> > > > > }
> > > > >=20
> > > > > the output of ls commands is:
> > > > >=20
> > > > > drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
> > > > > drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
> > > > > -rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh
> > > > >=20
> > > > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > > > -rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh
> > > > >=20
> > > > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > > > *-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh
> > > > >=20
> > > > > So the change of owner and permission works fine in do_instal=
l
> > > > > phase.
> > > > > Opening the final rootfs tarball, however, the file user.sh h=
as
> > > > > still
> > > > > 754
> > > > > permission but root as owner...so do_package doesn't preserve=
 owner
> > > > > change
> > > > > done in do_install? Or maybe I'm doing something wrong in cha=
nging
> > > > > file
> > > > > owner? Any ideas? Thanks to all!
> > > >=20
> > > > Does your recipe create the specified user via useradd.bbclass?=

> > >=20
> > > I solved with a postinstall script (that run at boot):
> > >=20
> > > pkg_postinst_${PN}() {
> > >=20
> > >         #!/bin/sh -e
> > >         if [ x"$D" =3D "x" ]; then
> > >        =20
> > >           chown -R user /opt/user
> > >           chgrp -R user /opt/user
> > >        =20
> > >         else
> > >        =20
> > >           exit 1
> > >        =20
> > >         fi
> > >=20
> > > }
> >=20
> > This shouldn't be necessary though. I honestly can't tell you why i=
t
> > doesn't work as specified. I think it might be worth filing a bug f=
or
> > this.
> >=20
> > Cheers,
> > Paul
>=20
> I'm so sorry Paul, but my mail client missed your last email and so I=
 filed
> a bug uselessly... I tried, as you suggested, to add the package that=

> create the user to the RDEPENDS_${PN} removing the postinstall scripi=
. That
> worked setting the right owner with chown/chgrp in do_install... Than=
k you
> so much. I very sorry for the useless bug opened...can I close it by
> myself?

I've marked it resolved. No problem about filing it, at least it's now =
there=20
for reference if anyone hits the same situation :)

I think it's fair to say we need to look at how to better document all =
of this=20
stuff in the manual. We could probably afford to dedicate a small secti=
on on how=20
to deal with adding/modifying users and file ownership. Scott, could yo=
u add=20
this to your todo list?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

