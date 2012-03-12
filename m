Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37224E011D1
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 10:56:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Mar 2012 10:56:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="116967982"
Received: from unknown (HELO helios.localnet) ([10.252.123.166])
	by orsmga001.jf.intel.com with ESMTP; 12 Mar 2012 10:55:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Jo=E3o?= Henrique Freitas <joaohf@gmail.com>
Date: Mon, 12 Mar 2012 17:55:22 +0000
Message-ID: <3351192.6a7q7nAkMU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CANFVK78iYKEwh=ypSX3cmo0AkY=aOrLGB=T3DttPugWsv-Ws0Q@mail.gmail.com>
References: <CANFVK78iYKEwh=ypSX3cmo0AkY=aOrLGB=T3DttPugWsv-Ws0Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: custom image recipes
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
X-List-Received-Date: Mon, 12 Mar 2012 17:56:59 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Sunday 11 March 2012 13:14:12 Jo=E3o Henrique Freitas wrote:
> One of my custom recipes (via-image-st.bb) is to make a custom image
> (adding some files). Example:
>=20
> SRC_URI =3D " \
>         file://interfaces \
>         file://snmpd.conf \
>         file://snmp.conf \
>         file://syslog.conf \
>         file://ntpd \
>         file://syslog.lr \
>     "
>=20
> inherit core-image
>=20
> ROOTFS_POSTPROCESS_COMMAND_append =3D "remove_packaging_data_files ; =
"
> ROOTFS_POSTPROCESS_COMMAND_append =3D "setup_target_image ; "
>=20
> setup_target_image() {
>     mkdir -p ${IMAGE_ROOTFS}/opt/sistema/conf
>     install -m 0644 ${WORKDIR}/interfaces
> ${IMAGE_ROOTFS}/etc/network/interfaces
>=20
>     ...
>=20
> }
>=20
> When I run: bitbake via-image-st:
>=20
> install: cannot stat
> `/mnt/yocto/build/mst_1.2/tmp/work/qemux86-tp-linux/via-image-st-1.0-=
r1/inte
> rfaces': No such file or directory
> NOTE: package via-image-st-1.0-r1: task do_rootfs: Failed
> ERROR: Task 8
> (/home/joaohf/jhf/tropico/projetos/yocto-1.1tropico/meta-tropico/meta=
-viast/
> images/ via-image-st.bb, do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 3192 tasks of which 3190 didn't need t=
o be
> rerun and 1 failed.
>=20
> Summary: 1 task failed:
>=20
> /home/joaohf/jhf/tropico/projetos/yocto-1.1tropico/meta-tropico/meta-=
viast/i
> mages/ via-image-st.bb, do_rootfs
>=20
>=20
> I think this commit
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/classes/im=
age.bbc
> lass?id=3D6706c7bdd2de6e0e447d90062e74a718a8d31778the others task doe=
sn't
> perform.

Indeed, this seems to no longer be supported. I think this is probably =
a good
idea because then there is less confusion as to where files come from.

> The main question is: How I can create a recipe to customize some fil=
es
> inside of the image?
>=20
> I need to have a recipe like base-files? (recipes-core/base-files/
> base-files_3.0.14.bb)

Yes, the preferred method to achieve this is to use bbappends for the r=
ecipes
where these files appear if they are already provided by a recipe, e.g.=
 netbase
for /etc/network/interfaces - see here for a machine-specific example:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto/recipes-=
core/netbase

For new files you can either include them via the same bbappend mechani=
sm if
that makes sense for the particular files, or a separate recipe.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

