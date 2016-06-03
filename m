Return-Path: <diego.ml@zoho.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25B08E00DBD; Fri,  3 Jun 2016 06:53:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.ml[at]zoho.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.201.84.153 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sender153-mail.zoho.com (sender153-mail.zoho.com
	[74.201.84.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB05EE00B89
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 06:53:04 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to:references:mime-version:content-type;
	b=gSwgE9LhDNRah00iIKKELhAQ9cZIndkZ/spWHjE+T2ywJ/wME6cYZdiPTi7fswn42gBPOKr8Qk+6
	d7kqDQsFlSS8O7njQPxcVfmYAxsVmmzzz0vW4jWNfngU491Ke+qQ  
Received: from localhost.localdomain
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1464961976571818.4096451964721;
	Fri, 3 Jun 2016 06:52:56 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Fri, 03 Jun 2016 15:52:51 +0200
Message-ID: <1726204.03aEvQFlgk@localhost.localdomain>
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Fri, 03 Jun 2016 13:53:08 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi Oleksandr,

In data mercoled=EC 1 giugno 2016 21:57:32, Oleksandr Poznyak ha scritt=
o:
> Here is the content of bbappend recipe for base-files recipe:
>=20
> FILESEXTRAPATHS_append :=3D "${THISDIR}/${PN}"
>=20
> SRC_URI +=3D "file://fstab-flash \
>         file://fstab-regular \
>         "
>=20
> PACKAGES +=3D " ${PN}-flash ${PN}-regular"
> CONFFILES_${PN}-flash =3D "${CONFFILES_${PN}}"
> CONFFILES_${PN}-regular =3D "${CONFFILES_${PN}}"
>=20
> pkg_preinst_${PN}-flash =3D "${pkg_preinst_${PN}}"
> pkg_preinst_${PN}-regular =3D "${pkg_preinst_${PN}}"
>=20
> RREPLACES_${PN}-flash =3D "${PN}"
> RPROVIDES_${PN}-flash =3D "${PN}"
> RCONFLICTS_${PN}-flash =3D "${PN}"
>=20
> RREPLACES_${PN}-regular =3D "${PN}"
> RPROVIDES_${PN}-regular =3D "${PN}"
> RCONFLICTS_${PN}-regular =3D "${PN}"
>=20
> python populate_packages_prepend() {
>     import shutil
>=20
>     packages =3D ("${PN}-flash", "${PN}-regular")
>     for package in packages:
>         # copy ${PN} content to packages
>         shutil.copytree("${PKGD}", "${PKGDEST}/%s" % package, symlink=
s=3DTrue)
> # replace fstab
>         if package =3D=3D "${PN}-flash":
>             shutil.copy("${WORKDIR}/fstab-flash",
> "${PKGDEST}/${PN}-flash/etc/fstab")
>         else:
>             shutil.copy("${WORKDIR}/fstab-regular",
> "${PKGDEST}/${PN}-regular/etc/fstab")
> }
>=20
>=20
> This will produce two separate packages that will replace base-files
> package.
> Moreover, this trick allows You to modify base-files package separate=
ly for
> flash-OS and regular-OS
>=20

This is very useful, thank you. With this code I'm able to have two dif=
ferent=20
fstab files under packages-split:
./packages-split/base-files-regular/etc/fstab
./packages-split/base-files-flash/etc/fstab

Regardless of that though, the resulting rpm packages for "base-files-r=
egular"=20
and "base-files-flash" have the original fstab as in "base-files", whic=
h is=20
different to both the fstabs in packages-split mentioned above.

I'm looking at what might be causing this, but any idea is welcome.

Thanks,
Diego


