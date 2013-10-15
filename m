Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDE6DE01705
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 09:18:46 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Oct 2013 09:18:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,500,1378882800"; d="scan'208";a="375066123"
Received: from unknown (HELO helios.localnet) ([10.252.121.7])
	by azsmga001.ch.intel.com with ESMTP; 15 Oct 2013 09:18:36 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Davide Soldan <davide.soldan@kynetics.it>
Date: Tue, 15 Oct 2013 17:18:35 +0100
Message-ID: <1425778.v7NdBFTXrz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <2594354.j31pHjW9di@fedora-fisso>
References: <2654026.GvoHhChOvl@fedora-fisso> <4902772.MP4sNkXC8r@helios>
	<2594354.j31pHjW9di@fedora-fisso>
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
X-List-Received-Date: Tue, 15 Oct 2013 16:18:47 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Tuesday 15 October 2013 18:12:42 Davide Soldan wrote:
> In data marted=EC 15 ottobre 2013 11:38:21, Paul Eggleton ha scritto:=

> > On Tuesday 15 October 2013 12:02:20 Davide Soldan wrote:
> > > in my recipe I want to change owner and permission of a file, so =
I
> > > wrote:
> > >=20
> > > do_install() {
> > >=20
> > >         ls -la ${D}/opt/user
> > >         chown -R user ${D}/opt/user
> > >         chgrp -R user ${D}/opt/user
> > >         ls -la ${D}/opt/user
> > >         chmod 754 ${D}/opt/user/user.sh
> > >         ls -la ${D}/opt/user
> > >=20
> > > }
> > >=20
> > > the output of ls commands is:
> > >=20
> > > drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
> > > drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
> > > -rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh
> > >=20
> > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > -rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh
> > >=20
> > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > *-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh
> > >=20
> > > So the change of owner and permission works fine in do_install ph=
ase.
> > > Opening the final rootfs tarball, however, the file user.sh has s=
till
> > > 754
> > > permission but root as owner...so do_package doesn't preserve own=
er
> > > change
> > > done in do_install? Or maybe I'm doing something wrong in changin=
g file
> > > owner? Any ideas? Thanks to all!
> >=20
> > Does your recipe create the specified user via useradd.bbclass?
>=20
> I solved with a postinstall script (that run at boot):
>=20
> pkg_postinst_${PN}() {
>         #!/bin/sh -e
>         if [ x"$D" =3D "x" ]; then
>           chown -R user /opt/user
>           chgrp -R user /opt/user
>         else
>           exit 1
>         fi
> }

This shouldn't be necessary though. I honestly can't tell you why it do=
esn't=20
work as specified. I think it might be worth filing a bug for this.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

