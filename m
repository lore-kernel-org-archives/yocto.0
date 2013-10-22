Return-Path: <davide.soldan@kynetics.it>
Received: from mail-bk0-f46.google.com (mail-bk0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD9EDE01730
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 02:36:51 -0700 (PDT)
Received: by mail-bk0-f46.google.com with SMTP id 6so1164294bkj.5
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 02:36:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type;
	bh=d3TRDFaNbx+5lPU5F/Zl+rEW6caKA6BJByH4tcNyc9U=;
	b=bEXcp2BNQHXxCWIdFf4QNfdTp5CVZCX78ydunN4mJklw6nAtvqBI3/UdH8DMPMnCzJ
	Qi/dcp/p14qC5R8xNXa2pasEbkNvgylSUthQxeuneH5cMO+y3Lm0w/4JzrW/ib0piY3e
	xL8Q76KzSU03+dXF/PG4aZQ0WHKaDyxZmdxeI+OelHFfBqsx5D/VZQiHvLP33dxJyLgc
	n1pEQONTdWA2k1yGytx7Qd17ohRO6Jc0baPiB08QLBA4vNldePCpNIbLU1tafgO3oFlb
	Jq+pYLg27L2yHe8vq761Kk4N/AD8RZeXSHj7YToIxN6JE1No6V91NldlsTfP1XkM7jiA
	zlmw==
X-Gm-Message-State: ALoCoQnifjtDCEqfFXi7DNa6kKgYeoiU9WWZIxJznBqXgXjSqEdtMD4B9y3CnK3Ueq8T9Vmosm31
X-Received: by 10.204.2.140 with SMTP id 12mr766110bkj.47.1382434610259;
	Tue, 22 Oct 2013 02:36:50 -0700 (PDT)
Received: from fedora-fisso.localnet
	(static-217-133-170-65.clienti.tiscali.it. [217.133.170.65])
	by mx.google.com with ESMTPSA id rj5sm12277992bkb.9.2013.10.22.02.36.48
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Oct 2013 02:36:49 -0700 (PDT)
From: Davide Soldan <davide.soldan@kynetics.it>
To: Amit Tomer <amittomer25@gmail.com>
Date: Tue, 22 Oct 2013 11:36:39 +0200
Message-ID: <5444829.OlCDNcOOm9@fedora-fisso>
User-Agent: KMail/4.11.2 (Linux/3.11.4-201.fc19.x86_64; KDE/4.11.2; x86_64; ; )
In-Reply-To: <CABHD4K920C+ZX-tSzT0uN_9eB_pYb82NSfmWM=AWjsM60zdEag@mail.gmail.com>
References: <CABHD4K_df0qEL0Lqw=Z6Gi=YwMe1RNv5-Tk8cyBM5y98K67SJA@mail.gmail.com>
	<7055398.MVNfTLEc1P@fedora-fisso>
	<CABHD4K920C+ZX-tSzT0uN_9eB_pYb82NSfmWM=AWjsM60zdEag@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How Do I add users in /etc/passwd in Yocto
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
X-List-Received-Date: Tue, 22 Oct 2013 09:36:53 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

In data marted=EC 22 ottobre 2013 14:35:52, Amit Tomer ha scritto:
> Fine Davide
>=20
> So  my requiremnet is this .
>=20
> From from original /etc/passwd file
>=20
> root:x:0:0:root:/home/root:/bin/sh
> proxy:x:13:13:proxy:/bin:/bin/sh
> www-data:x:33:33:www-data:/var/www:/bin/sh
>=20
> Have to do this
>=20
> root:x:0:0:root:/home/root:/bin/false
> proxy:x:13:13:proxy:/bin:/bin/false
> www-data:x:33:33:www-data:/var/www:/bin/false
>=20
>=20
>=20
> Now for this would below work??
>=20
> SUMMARY =3D "Example recipe for using inherit useradd"
> DESCRIPTION =3D "This recipe serves as an example for using features
> from useradd.bbclass"
> SECTION =3D "examples"
> PR =3D "r1"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D
> "file://${COREBASE}/LICENSE;md5=3D3f40d7994397109285ec7b81fdeb3b58 \
>=20
> file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb788c80a0384361b4de=
20420"
>=20
> SRC_URI =3D "file://passwd"
>=20
> USERADD_PARAM_${PN} =3D "-u 1200 -d /home/root -r -s /bin/false root"=

>=20
> And How do I force this recipe to be picked while bitbake my image??
>=20
> Thanks
> Amit
>=20
> On Tue, Oct 22, 2013 at 2:22 PM, Davide Soldan
> <davide.soldan@kynetics.it> wrote:
> > In data marted=EC 22 ottobre 2013 14:18:55, Amit Tomer ha scritto:
> >> Thanks Davide
> >> Can you please point to right link.
> >>
> > I found the example recipe there:
> > http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/r=
ecipes-skeleton/useradd/useradd-example.bb
> >
> >> On Tue, Oct 22, 2013 at 2:12 PM, Davide Soldan
> >> <davide.soldan@kynetics.it> wrote:
> >> > In data marted=EC 22 ottobre 2013 14:00:22, Amit Tomer ha scritt=
o:
> >> >> For some requirement I wante to add some new users in /etc/pass=
wd .
> >> >>
> >> >> I tried doing it in couple of way but none of it worked out wel=
l
> >> >>
> >> >> I tried to patcth the /etc/passwd file but getting few errors w=
hile
> >> >> bitbaking my image.
> >> >>
> >> >> Paul Eggleton suggests me that patching /etc/passwd  file won't=
 work
> >> >>
> >> >> Then I tried doing it in below way
> >> >>
> >> >> SRC_URI +=3D "file://passwd"
> >> >>
> >> >> do_install_append() {
> >> >> install -d ${D}${sysconfdir}/base-passwd ${D}${sysconfdir}
> >> >> passwd/passwd${STAGING_DIR_TARGET}${sysconfdir}/passwd
> >> >>
> >> >>                     install -m 0644 ${WORKDIR}/passwd ${D}${sys=
confdir}/passwd
> >> >> }
> >> >>
> >> >>  With above method I am able to add new user to /etc/passwd fil=
e
> >> >>
> >> >> but testing this image gives me trouble and now when I login to=
 board
> >> >> it is asking password.
> >> >>
> >> >> Now would like to know what are the ways to add new users in
> >> >> /etc/passwd file in yocto.
> >> >>
> >> >> Thanks
> >> >> Amit
> >> >> _______________________________________________
> >> >> yocto mailing list
> >> >> yocto@yoctoproject.org
> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >> > I've done it creating my useradd recipe following
> >> > poky/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
> >
For bitbaking your recipe within the image add the recipe in CORE_IMAGE=
_EXTRA_INSTALL of your local.conf
I don't know if the replacement of /etc/passwd would work...give it a t=
ry and if all works you're ok.=20
I only add new users so I don't know how to replace existing ones...may=
be recreate that users via USERADD_PARAM_${PN}/GROUPADD_PARAM_${PN} lik=
e in useradd-example.bb?
Hope this helps
Cheers

