Return-Path: <davide.soldan@kynetics.it>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7650E01629
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:58:01 -0700 (PDT)
Received: by mail-ea0-f181.google.com with SMTP id d10so2031517eaj.12
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:58:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=qr15s/hFt0zjDjex6dmHENwSdR0X+eBARWFJd7+b99E=;
	b=fhb2Xr+mBCJq9uJr9h5uzHsp4Ln5/0j3ickXijAhgHB280JQRRXSnON1e9GkKROQpF
	9IREs4TVvn6Nx8AgcLgIDq+QCGtfn3ELPz3JGuZsxt3hfm2hEg2OIgp8jNgBqUlQi/iq
	Erkr61EE6SFgAOOWicZCrKlsM1YKsBRxuvDZXlVIKxJKlVpGYXGdPl321Zm94H1C5dtk
	1GsuBpulOyEGPkG44N0E20+QST/0cJfOVT2usCELve0lSyBw4NuzNHcQqUxkqgTETJoe
	82hejBUldNe+e2QMcc8bdIBX8U93HncjfsdQxQuE2sBX+joc4wMoOGpfzPA7BhYw3jYQ
	vBTg==
X-Gm-Message-State: ALoCoQkDVsNHrCQVRFNysvjSwssONKPKVBQ8Mh1LgLfJ7pTnYkg1Gr4zstSRoNuJ8/X++rbHaqYg
X-Received: by 10.15.56.72 with SMTP id x48mr4709201eew.62.1382104680078;
	Fri, 18 Oct 2013 06:58:00 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id s3sm4896722eeo.3.2013.10.18.06.57.58
	for <multiple recipients>
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Oct 2013 06:57:59 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 18 Oct 2013 15:57:54 +0200
Message-ID: <98724567.6MEpULbTr7@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.4-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <2090420.FiXqQSde1A@helios>
References: <2654026.GvoHhChOvl@fedora-fisso>
	<1569815.B0lOYLcWFJ@fedora-fisso> <2090420.FiXqQSde1A@helios>
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
X-List-Received-Date: Fri, 18 Oct 2013 13:58:02 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data venerd=EC 18 ottobre 2013 14:38:27, Paul Eggleton ha scritto:
> Hi Davide,
>=20
> On Friday 18 October 2013 15:31:22 Davide Soldan wrote:
> > In data marted=EC 15 ottobre 2013 17:18:35, Paul Eggleton ha scritt=
o:
> > > On Tuesday 15 October 2013 18:12:42 Davide Soldan wrote:
> > > > In data marted=EC 15 ottobre 2013 11:38:21, Paul Eggleton ha sc=
ritto:
> > > > > On Tuesday 15 October 2013 12:02:20 Davide Soldan wrote:
> > > > > > in my recipe I want to change owner and permission of a fil=
e, so I
> > > > > > wrote:
> > > > > >=20
> > > > > > do_install() {
> > > > > >=20
> > > > > >         ls -la ${D}/opt/user
> > > > > >         chown -R user ${D}/opt/user
> > > > > >         chgrp -R user ${D}/opt/user
> > > > > >         ls -la ${D}/opt/user
> > > > > >         chmod 754 ${D}/opt/user/user.sh
> > > > > >         ls -la ${D}/opt/user
> > > > > >=20
> > > > > > }
> > > > > >=20
> > > > > > the output of ls commands is:
> > > > > >=20
> > > > > > drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
> > > > > > drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
> > > > > > -rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh
> > > > > >=20
> > > > > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > > > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > > > > -rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh
> > > > > >=20
> > > > > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > > > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > > > > *-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh
> > > > > >=20
> > > > > > So the change of owner and permission works fine in do_inst=
all
> > > > > > phase.
> > > > > > Opening the final rootfs tarball, however, the file user.sh=
 has
> > > > > > still
> > > > > > 754
> > > > > > permission but root as owner...so do_package doesn't preser=
ve owner
> > > > > > change
> > > > > > done in do_install? Or maybe I'm doing something wrong in c=
hanging
> > > > > > file
> > > > > > owner? Any ideas? Thanks to all!
> > > > >=20
> > > > > Does your recipe create the specified user via useradd.bbclas=
s?
> > > >=20
> > > > I solved with a postinstall script (that run at boot):
> > > >=20
> > > > pkg_postinst_${PN}() {
> > > >=20
> > > >         #!/bin/sh -e
> > > >         if [ x"$D" =3D "x" ]; then
> > > >        =20
> > > >           chown -R user /opt/user
> > > >           chgrp -R user /opt/user
> > > >        =20
> > > >         else
> > > >        =20
> > > >           exit 1
> > > >        =20
> > > >         fi
> > > >=20
> > > > }
> > >=20
> > > This shouldn't be necessary though. I honestly can't tell you why=
 it
> > > doesn't work as specified. I think it might be worth filing a bug=
 for
> > > this.
> > >=20
> > > Cheers,
> > > Paul
> >=20
> > I'm so sorry Paul, but my mail client missed your last email and so=
 I filed
> > a bug uselessly... I tried, as you suggested, to add the package th=
at
> > create the user to the RDEPENDS_${PN} removing the postinstall scri=
pi. That
> > worked setting the right owner with chown/chgrp in do_install... Th=
ank you
> > so much. I very sorry for the useless bug opened...can I close it b=
y
> > myself?
>=20
> I've marked it resolved. No problem about filing it, at least it's no=
w there=20
> for reference if anyone hits the same situation :)
>=20
> I think it's fair to say we need to look at how to better document al=
l of this=20
> stuff in the manual. We could probably afford to dedicate a small sec=
tion on how=20
> to deal with adding/modifying users and file ownership. Scott, could =
you add=20
> this to your todo list?
>=20
> Cheers,
> Paul
>=20
>=20
Very good idea! When I was looking for information about how to add/mod=
ify users and file ownership I missed a bit of official documentation!
Cheers
Davide

