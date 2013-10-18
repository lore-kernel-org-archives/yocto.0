Return-Path: <davide.soldan@kynetics.it>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B12E01629
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:31:29 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id c13so2036739eek.33
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=5i2Mh/sbKDGTbszmVyaGGkMqj2zteknaaXzbiZHgyAw=;
	b=aC8LrDxd7pcdSPUCUlPK1tOFIjoqK91qjB6msJH/9Ev2kJyCMEe2TUWWJk5KM1I0lt
	kJ0vPy/77CQg6MnzfLWjmiY9LbbhvL2Zz5o9/fv49jnEZ1qU05iopGrx46kowix1ySQ6
	n6WmXXMoJ5wL4/SKufDZGr2zr3zf3NzrMH3XEW+ewpmSxWHe1cfKpZlTMq0dOSUigtjx
	Rz7eiXyfK7R4yrzK4+UVPv+FBg26nz3HCJsTyLzk5FD8Q8e4PM+o+Zls5NC0S3b9n//0
	6EdPGHumRUZVDunLpkq0wyiMizZlsXl048D1ZNvduVlar00JBIwCTlfdTAhBtl7lstGC
	nBuw==
X-Gm-Message-State: ALoCoQlLaYjzx9Y7KlgA8KCuDsG7VIAuZvPZsJwmhkICEGJSCNhLalOSR4YGeSWbj2OVSRheDdLp
X-Received: by 10.14.174.131 with SMTP id x3mr4531186eel.25.1382103088541;
	Fri, 18 Oct 2013 06:31:28 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id r48sm4503586eev.14.2013.10.18.06.31.26
	for <multiple recipients>
	(version=TLSv1.2 cipher=AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Oct 2013 06:31:27 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 18 Oct 2013 15:31:22 +0200
Message-ID: <1569815.B0lOYLcWFJ@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.4-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <1425778.v7NdBFTXrz@helios>
References: <2654026.GvoHhChOvl@fedora-fisso>
	<2594354.j31pHjW9di@fedora-fisso> <1425778.v7NdBFTXrz@helios>
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
X-List-Received-Date: Fri, 18 Oct 2013 13:31:31 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data marted=EC 15 ottobre 2013 17:18:35, Paul Eggleton ha scritto:
> On Tuesday 15 October 2013 18:12:42 Davide Soldan wrote:
> > In data marted=EC 15 ottobre 2013 11:38:21, Paul Eggleton ha scritt=
o:
> > > On Tuesday 15 October 2013 12:02:20 Davide Soldan wrote:
> > > > in my recipe I want to change owner and permission of a file, s=
o I
> > > > wrote:
> > > >=20
> > > > do_install() {
> > > >=20
> > > >         ls -la ${D}/opt/user
> > > >         chown -R user ${D}/opt/user
> > > >         chgrp -R user ${D}/opt/user
> > > >         ls -la ${D}/opt/user
> > > >         chmod 754 ${D}/opt/user/user.sh
> > > >         ls -la ${D}/opt/user
> > > >=20
> > > > }
> > > >=20
> > > > the output of ls commands is:
> > > >=20
> > > > drwxr-xr-x 8 root root   4096 Oct 15 11:13 .
> > > > drwxr-xr-x 3 root root   4096 Oct 15 11:13 ..
> > > > -rw-r--r-- 1 *root root*  55753 Aug  2 08:48 user.sh
> > > >=20
> > > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > > -rw-r--r-- 1 *user user*  55753 Aug  2 08:48 user.sh
> > > >=20
> > > > drwxr-xr-x 8 user user   4096 Oct 15 11:13 .
> > > > drwxr-xr-x 3 root     root       4096 Oct 15 11:13 ..
> > > > *-rwxr-xr--* 1 user user  55753 Aug  2 08:48 user.sh
> > > >=20
> > > > So the change of owner and permission works fine in do_install =
phase.
> > > > Opening the final rootfs tarball, however, the file user.sh has=
 still
> > > > 754
> > > > permission but root as owner...so do_package doesn't preserve o=
wner
> > > > change
> > > > done in do_install? Or maybe I'm doing something wrong in chang=
ing file
> > > > owner? Any ideas? Thanks to all!
> > >=20
> > > Does your recipe create the specified user via useradd.bbclass?
> >=20
> > I solved with a postinstall script (that run at boot):
> >=20
> > pkg_postinst_${PN}() {
> >         #!/bin/sh -e
> >         if [ x"$D" =3D "x" ]; then
> >           chown -R user /opt/user
> >           chgrp -R user /opt/user
> >         else
> >           exit 1
> >         fi
> > }
>=20
> This shouldn't be necessary though. I honestly can't tell you why it =
doesn't=20
> work as specified. I think it might be worth filing a bug for this.
>=20
> Cheers,
> Paul
>=20
>=20
I'm so sorry Paul, but my mail client missed your last email and so I f=
iled a bug uselessly...
I tried, as you suggested, to add the package that create the user to t=
he RDEPENDS_${PN} removing the postinstall scripi. That worked setting =
the right owner with chown/chgrp in do_install...
Thank you so much. I very sorry for the useless bug opened...can I clos=
e it by myself?

Cheers
Davide

