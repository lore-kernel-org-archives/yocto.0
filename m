Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F02F5E00B74; Thu, 12 Jun 2014 01:56:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 791E1E0082A
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 01:56:07 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id q58so907535wes.30
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 01:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=1H4yD9DE6qeXTqKUv9Nf2nNFQS7nsPDVv2vqp0yfAZI=;
	b=ExP0o/3SvisQIRwHgqSTiWCK5AHuhqSFbYEOqkZ03on/+HqKOl5O/4mEzmdWG3zDbX
	Ckajv8gLCh+WnAUSpdXOMJX/+jc3Q8k4Ui5qEFKM7bQBfpL2eGdeWVqsRk3VpRj4anXH
	iF4BG7U7zqrQvRErket0NA9sKpMTlJniXpI8+T7EfeH1VbDrUNzarMVmEAuuttgLQim4
	zINjjoLhQDJnuwwzz1sqMm+4mRxAZjNzRJl8m9n5tRaQKq5u+/jYaYHN92UmlOIbZIvY
	W9la4nTbaI+e7GUUC+gRqhGJeNkoTkAHHzujkDs8fzgO8dzWr0dbFo2k6mnk24TK0AZ8
	hwJw==
X-Received: by 10.180.90.242 with SMTP id bz18mr4592756wib.12.1402563366648;
	Thu, 12 Jun 2014 01:56:06 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	z7sm3471958eeo.42.2014.06.12.01.56.05 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 12 Jun 2014 01:56:05 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 12 Jun 2014 10:56:27 +0200
To: Yao Xinpan <yaoxp@cn.fujitsu.com>
Message-ID: <20140612085627.GD2428@jama>
References: <1402543617-25861-1-git-send-email-yaoxp@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <1402543617-25861-1-git-send-email-yaoxp@cn.fujitsu.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] add recipe cim-schema, cim-schema-docs and license file DMTF.
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
X-List-Received-Date: Thu, 12 Jun 2014 08:56:14 -0000
X-Groupsio-MsgNum: 20108
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IMjqdzrDRly81ofr"
Content-Disposition: inline

--IMjqdzrDRly81ofr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 12, 2014 at 11:26:57AM +0800, Yao Xinpan wrote:
> Signed-off-by: Yao Xinpan <yaoxp@cn.fujitsu.com>

Why is this recipe needed in oe-core layer? Wouldn't meta-networking be
more suitable?

The patch also belongs to oe-core ML not yocto.

> ---
>  meta/files/common-licenses/DMTF                    | 34 ++++++++++++++++=
++++++
>  .../cim-schema/cim-schema-docs_2.40.0.bb           | 23 +++++++++++++++
>  meta/recipes-support/cim-schema/cim-schema.inc     |  9 ++++++
>  .../cim-schema/cim-schema_2.40.0.bb                | 31 ++++++++++++++++=
++++
>  meta/recipes-support/cim-schema/files/LICENSE      | 34 ++++++++++++++++=
++++++
>  5 files changed, 131 insertions(+)
>  create mode 100644 meta/files/common-licenses/DMTF
>  create mode 100644 meta/recipes-support/cim-schema/cim-schema-docs_2.40.=
0.bb
>  create mode 100644 meta/recipes-support/cim-schema/cim-schema.inc
>  create mode 100644 meta/recipes-support/cim-schema/cim-schema_2.40.0.bb
>  create mode 100644 meta/recipes-support/cim-schema/files/LICENSE
>=20
> diff --git a/meta/files/common-licenses/DMTF b/meta/files/common-licenses=
/DMTF
> new file mode 100644
> index 0000000..54a2812
> --- /dev/null
> +++ b/meta/files/common-licenses/DMTF
> @@ -0,0 +1,34 @@
> +// Copyright 1998-2008 Distributed Management Task Force, Inc. (DMTF).
> +// All rights reserved.
> +// DMTF is a not-for-profit association of industry members dedicated
> +// to promoting enterprise and systems management and interoperability.
> +// DMTF specifications and documents may be reproduced by
> +// members and non-members, provided that correct attribution is given.
> +// As DMTF specifications may be revised from time to time,
> +// the particular version and release date should always be noted.
> +//=20
> +// Implementation of certain elements of this standard or proposed
> +// standard may be subject to third party patent rights, including
> +// provisional patent rights (herein "patent rights"). DMTF makes
> +// no representations to users of the standard as to the existence
> +// of such rights, and is not responsible to recognize, disclose, or
> +// identify any or all such third party patent right, owners or
> +// claimants, nor for any incomplete or inaccurate identification or
> +// disclosure of such rights, owners or claimants. DMTF shall have no
> +// liability to any party, in any manner or circumstance, under any
> +// legal theory whatsoever, for failure to recognize, disclose, or
> +// identify any such third party patent rights, or for such party's
> +// reliance on the standard or incorporation thereof in its product,
> +// protocols or testing procedures. DMTF shall have no liability to
> +// any party implementing such standard, whether such implementation
> +// is foreseeable or not, nor to any patent owner or claimant, and shall
> +// have no liability or responsibility for costs or losses incurred if
> +// a standard is withdrawn or modified after publication, and shall be
> +// indemnified and held harmless by any party implementing the
> +// standard from any and all claims of infringement by a patent owner
> +// for such implementations.
> +//=20
> +// For information about patents held by third-parties which have
> +// notified the DMTF that, in their opinion, such patent may relate to
> +// or impact implementations of DMTF standards, visit
> +// http://www.dmtf.org/about/policies/disclosures.php.
> diff --git a/meta/recipes-support/cim-schema/cim-schema-docs_2.40.0.bb b/=
meta/recipes-support/cim-schema/cim-schema-docs_2.40.0.bb
> new file mode 100644
> index 0000000..06c0dd9
> --- /dev/null
> +++ b/meta/recipes-support/cim-schema/cim-schema-docs_2.40.0.bb
> @@ -0,0 +1,23 @@
> +require cim-schema.inc
> +
> +LICENSE =3D "DMTF"
> +
> +SRC_URI =3D "http://dmtf.org/sites/default/files/cim/cim_schema_v2400/ci=
m_schema_${PV}Final-Doc.zip \
> +           file://LICENSE \
> +          "
> +SRC_URI[md5sum] =3D "3d01940bc1085c6c42184c25fb61f739"
> +SRC_URI[sha256sum] =3D "3174cf0f8657b19d80dc59e184778d8e553da424728cb296=
6fe9d5428dd84267"
> +LIC_FILES_CHKSUM =3D "file://${WORKDIR}/LICENSE;md5=3Deecc6f71a56ff3caf1=
7f15bf7aeac7b4"
> +
> +do_unpack() {
> +        unzip -q ${DL_DIR}/cim_schema_${PV}Final-Doc.zip -d ${S}
> +        cp -f ${FILE_DIRNAME}/files/LICENSE ${WORKDIR}/
> +}
> +
> +do_install() {
> +        install -d -m 0755 ${D}${datadir}/doc/cim-schema-${PV}-docs
> +        cp -a ${S}/* ${D}${datadir}/doc/cim-schema-${PV}-docs
> +}
> +
> +FILES_${PN} =3D "${datadir}/doc/*"
> +FILES_${PN}-doc =3D ""
> diff --git a/meta/recipes-support/cim-schema/cim-schema.inc b/meta/recipe=
s-support/cim-schema/cim-schema.inc
> new file mode 100644
> index 0000000..e35bff6
> --- /dev/null
> +++ b/meta/recipes-support/cim-schema/cim-schema.inc
> @@ -0,0 +1,9 @@
> +SUMMARY =3D "Common Information Model (CIM) Schema"
> +DESCRIPTION =3D "Common Information Model (CIM) is a model for describin=
g overall\
> +management information in a network or enterprise environment. CIM\
> +consists of a specification and a schema. The specification defines the\
> +details for integration with other management models. The schema\
> +provides the actual model descriptions."
> +
> +HOMEPAGE =3D "http://www.dmtf.org/"
> +SECTION =3D "Development/Libraries"
> diff --git a/meta/recipes-support/cim-schema/cim-schema_2.40.0.bb b/meta/=
recipes-support/cim-schema/cim-schema_2.40.0.bb
> new file mode 100644
> index 0000000..ff6c29d
> --- /dev/null
> +++ b/meta/recipes-support/cim-schema/cim-schema_2.40.0.bb
> @@ -0,0 +1,31 @@
> +require cim-schema.inc
> +
> +LICENSE =3D "DMTF"
> +
> +SRC_URI =3D "http://dmtf.org/sites/default/files/cim/cim_schema_v2400/ci=
m_schema_${PV}Final-MOFs.zip \
> +           file://LICENSE \
> +          "
> +SRC_URI[md5sum] =3D "a9bdf17c7374e3b5b7adeaac4842c4ad"
> +SRC_URI[sha256sum] =3D "dbfa3064ea427acd71a4bebbc172ca2dc44b0b09a6d83b09=
45b9ffa988a9058a"
> +LIC_FILES_CHKSUM =3D "file://${WORKDIR}/LICENSE;md5=3Deecc6f71a56ff3caf1=
7f15bf7aeac7b4"
> +
> +do_unpack() {
> +        unzip -q ${DL_DIR}/cim_schema_${PV}Final-MOFs.zip -d ${S}
> +        cp -f ${FILE_DIRNAME}/files/LICENSE ${WORKDIR}/
> +}
> +
> +do_install() {
> +        install -d -m 0755 ${D}${datadir}/mof/cimv${PV}/
> +        install -d -m 0755 ${D}${datadir}/doc/cim-schema-${PV}
> +        install -m 644 ${WORKDIR}/LICENSE ${D}${datadir}/doc/cim-schema-=
${PV}
> +
> +        cp -a ${S}/* ${D}${datadir}/mof/cimv${PV}/=09
> +        for i in `find ${D}${datadir}/mof/cimv${PV} -name "*.mof"`; do
> +                sed -i -e 's/\r//g' $i
> +        done
> +        ln -s cimv${PV} ${D}${datadir}/mof/cim-current
> +        ln -s cim_schema_${PV}.mof ${D}${datadir}/mof/cim-current/CIM_Sc=
hema.mof
> +}
> +
> +FILES_${PN} =3D "${datadir}/mof/* ${datadir}/doc/*"
> +FILES_${PN}-doc =3D ""
> diff --git a/meta/recipes-support/cim-schema/files/LICENSE b/meta/recipes=
-support/cim-schema/files/LICENSE
> new file mode 100644
> index 0000000..54a2812
> --- /dev/null
> +++ b/meta/recipes-support/cim-schema/files/LICENSE
> @@ -0,0 +1,34 @@
> +// Copyright 1998-2008 Distributed Management Task Force, Inc. (DMTF).
> +// All rights reserved.
> +// DMTF is a not-for-profit association of industry members dedicated
> +// to promoting enterprise and systems management and interoperability.
> +// DMTF specifications and documents may be reproduced by
> +// members and non-members, provided that correct attribution is given.
> +// As DMTF specifications may be revised from time to time,
> +// the particular version and release date should always be noted.
> +//=20
> +// Implementation of certain elements of this standard or proposed
> +// standard may be subject to third party patent rights, including
> +// provisional patent rights (herein "patent rights"). DMTF makes
> +// no representations to users of the standard as to the existence
> +// of such rights, and is not responsible to recognize, disclose, or
> +// identify any or all such third party patent right, owners or
> +// claimants, nor for any incomplete or inaccurate identification or
> +// disclosure of such rights, owners or claimants. DMTF shall have no
> +// liability to any party, in any manner or circumstance, under any
> +// legal theory whatsoever, for failure to recognize, disclose, or
> +// identify any such third party patent rights, or for such party's
> +// reliance on the standard or incorporation thereof in its product,
> +// protocols or testing procedures. DMTF shall have no liability to
> +// any party implementing such standard, whether such implementation
> +// is foreseeable or not, nor to any patent owner or claimant, and shall
> +// have no liability or responsibility for costs or losses incurred if
> +// a standard is withdrawn or modified after publication, and shall be
> +// indemnified and held harmless by any party implementing the
> +// standard from any and all claims of infringement by a patent owner
> +// for such implementations.
> +//=20
> +// For information about patents held by third-parties which have
> +// notified the DMTF that, in their opinion, such patent may relate to
> +// or impact implementations of DMTF standards, visit
> +// http://www.dmtf.org/about/policies/disclosures.php.
> --=20
> 1.8.4.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--IMjqdzrDRly81ofr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlOZazsACgkQN1Ujt2V2gBzIEQCeMJeGEB715t6lNL+RnIW6idIr
MtkAoK+JDw1vR/NW+7AX3g99GKniFn/Y
=/T+I
-----END PGP SIGNATURE-----

--IMjqdzrDRly81ofr--
