Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.25673.1577666655061225567
 for <yocto@lists.yoctoproject.org>;
 Sun, 29 Dec 2019 16:44:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
IronPort-SDR: icffYxosx6PdzIYZjlmMmuHuU1yc/0uVJoWU/PPKM5/lrDMXNGsCjlckm+4MAKsPjnBWL+XmpP
 VvMTQk4Up2z0OOe55QTDluaemXxLq45wkCCJxzFoD7BBjUDIZGdueArlpNOOeWjqmmAB1tkOe1
 fMbfUx5jlQUsZGC3MZJBnuBJryV/9VmZDStFu55/dWWnzC98HGuPfP+u2N1mwNEupF2XBq0Psp
 M5Yp1OX+AufQfDpRZ8vjiXpzvIK9GgcskFTcwo2JwX4GM7PchRvMW/5ftwd+JmOiCVZShPGGva
 xfQ=
X-IronPort-AV: E=Sophos;i="5.69,373,1571695200"; 
   d="scan'208";a="3847434"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto] [PATCH 2/2] ref-manual: Update the documentation for USERADD_ERROR_DYNAMIC
Thread-Topic: [yocto] [PATCH 2/2] ref-manual: Update the documentation for
 USERADD_ERROR_DYNAMIC
Thread-Index: AQHVsEYvZN7+WOiFPkesrLeMM8xE36fR89ww
Date: Mon, 30 Dec 2019 00:44:08 +0000
Message-ID: <6bebc189e3ed4e82a3a5dcf65070668e@XBOX03.axis.com>
References: <20191211171217.408-1-pkj@axis.com>
 <15DF605D8C314196.4177@lists.yoctoproject.org>
In-Reply-To: <15DF605D8C314196.4177@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

*ping*

//Peter

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Peter Kjellerstedt
> Sent: den 11 december 2019 18:12
> To: yocto@lists.yoctoproject.org
> Cc: Scott Rifenbark <srifenbark@gmail.com>
> Subject: [yocto] [PATCH 2/2] ref-manual: Update the documentation for
> USERADD_ERROR_DYNAMIC
>=20
> * Update USERADD_ERROR_DYNAMIC[doc] and the first paragraph to match
>   the definition in meta/conf/documentation.conf.
> * Add a note explaining the differences in behavior when setting
>   USERADD_ERROR_DYNAMIC to "warn" and "error" respectively.
>=20
> [YOCTO #12932]
>=20
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  documentation/ref-manual/ref-variables.xml | 33 ++++++++++++++++------
>  1 file changed, 25 insertions(+), 8 deletions(-)
>=20
> diff --git a/documentation/ref-manual/ref-variables.xml
> b/documentation/ref-manual/ref-variables.xml
> index e6009926be..c8ece0c579 100644
> --- a/documentation/ref-manual/ref-variables.xml
> +++ b/documentation/ref-manual/ref-variables.xml
> @@ -16770,18 +16770,21 @@
>=20
>          <glossentry id=3D'var-
> USERADD_ERROR_DYNAMIC'><glossterm>USERADD_ERROR_DYNAMIC</glossterm>
>              <info>
> -               USERADD_ERROR_DYNAMIC[doc] =3D "If set to 'error', forces
> the OpenEmbedded build system to produce an error if the user
> identification (uid) and group identification (gid) values are not define=
d
> in files/passwd and files/group files. If set to 'warn', a warning will b=
e
> issued instead."
> +               USERADD_ERROR_DYNAMIC[doc] =3D "If set to 'error', forces
> the OpenEmbedded build system to produce an error if the user
> identification (uid) and group identification (gid) values are not define=
d
> in any of the files listed in USERADD_UID_TABLES and USERADD_GID_TABLES.
> If set to 'warn', a warning will be issued instead."
>              </info>
>              <glossdef>
>                  <para role=3D"glossdeffirst">
>  <!--                <para role=3D"glossdeffirst"><imagedata
> fileref=3D"figures/define-generic.png" /> -->
> -                    If set to "error", forces the OpenEmbedded build
> system to
> -                    produce an error if the user identification
> -                    (<filename>uid</filename>) and group identification
> -                    (<filename>gid</filename>) values are not defined
> -                    in <filename>files/passwd</filename>
> -                    and <filename>files/group</filename> files.
> -                    If set to "warn", a warning will be issued instead.
> +
> +                    If set to <filename>error</filename>, forces the
> +                    OpenEmbedded build system to produce an error if the
> user
> +                    identification (<filename>uid</filename>) and group
> +                    identification (<filename>gid</filename>) values are
> not
> +                    defined in any of the files listed
> +                    in <link linkend=3D'var-
> USERADD_UID_TABLES'><filename>USERADD_UID_TABLES</filename></link>
> +                    and <link linkend=3D'var-
> USERADD_GID_TABLES'><filename>USERADD_GID_TABLES</filename></link>. If
> +                    set to <filename>warn</filename>, a warning will be
> issued
> +                    instead.
>                  </para>
>=20
>                  <para>
> @@ -16808,6 +16811,20 @@
>                      <link linkend=3D'var-
> USERADD_GID_TABLES'><filename>USERADD_GID_TABLES</filename></link>
>                      variables.
>                  </para>
> +
> +                <note>
> +                    There is a difference in behavior between
> +                    setting <filename>USERADD_ERROR_DYNAMIC</filename>
> +                    to <filename>error</filename> and setting it
> +                    to <filename>warn</filename>. When it is set
> +                    to <filename>warn</filename>, the build system will
> report a
> +                    warning for every undefined <filename>uid</filename>
> and
> +                    <filename>gid</filename> in any recipe. But when it
> is set
> +                    to <filename>error</filename>, it will only report
> errors
> +                    for recipes that are actually built. This saves you
> from
> +                    having to add static IDs for recipes that you know
> will
> +                    never be built.
> +                </note>
>              </glossdef>
>          </glossentry>
>=20
> --
> 2.21.0

