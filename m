Return-Path: <anielsen@vitesse.com>
Received: from na3sys009aog117.obsmtp.com (na3sys009aog117.obsmtp.com
	[74.125.149.242])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 09B6EE002FB
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 00:04:49 -0700 (PDT)
Received: from smtp.vitesse.com ([67.78.86.101]) (using TLSv1) by
	na3sys009aob117.postini.com ([74.125.148.12]) with SMTP
	ID DSNKUfi3EN14lelfVEHa+a40K05lJvBRlcD9@postini.com;
	Wed, 31 Jul 2013 00:04:52 PDT
Received: from MBOX-TXA4.vitesse.com ([fe80::20c4:5fb8:c4c4:b418]) by
	cash-txa4.vitesse.com ([::1]) with mapi id 14.02.0309.002;
	Wed, 31 Jul 2013 02:04:47 -0500
From: Allan Nielsen <anielsen@vitesse.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Build yocto debug images
Thread-Index: Ac6NCs8oHkEVAJ1MRWefQiyOIlfvrgAhdzIAAArPbL8=
Date: Wed, 31 Jul 2013 07:04:46 +0000
Message-ID: <63BEC3E3AFFFE545A6A066C1E23BBDB9DF86F784@mbox-txa4.vitesse.com>
References: <63BEC3E3AFFFE545A6A066C1E23BBDB9DF867AEE@mbox-txa4.vitesse.com>,
	<36192541.OoqkZU033c@helios>
In-Reply-To: <36192541.OoqkZU033c@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.64.2]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build yocto debug images
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
X-List-Received-Date: Wed, 31 Jul 2013 07:04:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> > I'm new to Yocto and I'm trying to build a debug image.=0A=
> >=0A=
> > My image recipe looks like this:=0A=
> >=0A=
> > IMAGE_INSTALL =3D "packagegroup-core-boot ${ROOTFS_PKGMANAGE_BOOTSTRAP}=
 u-boot=0A=
> > webstax3 vtss-uio-mod"=0A=
> > IMAGE_LINGUAS =3D " "=0A=
> >=0A=
> > LICENSE =3D "MIT"=0A=
> >=0A=
> > inherit core-image=0A=
> >=0A=
> > DEBUG_BUILD =3D "1"=0A=
> >=0A=
> > DEBUG_FLAGS =3D "-ggdb3 -O0 -fno-omit-frame-pointer"=0A=
> > DEBUG_OPTIMIZATION =3D "-ggdb3 -O0 -fno-omit-frame-pointer"=0A=
> >=0A=
> > IMAGE_ROOTFS_SIZE =3D "16384"=0A=
> > IMAGE_FEATURES =3D "debug-tweaks tools-debug dbg-pkgs"=0A=
> >=0A=
> > # remove not needed ipkg informations=0A=
> > ROOTFS_POSTPROCESS_COMMAND +=3D "remove_packaging_data_files ; "=0A=
> >=0A=
> > IMAGE_FSTYPES =3D "tar.gz ext2.gz.u-boot"=0A=
> >=0A=
> >=0A=
> > But when I inspect the build logs of my packets I see that they have no=
t=0A=
> > been build with "-ggdb3 -O0 -fno-omit-frame-pointer"=0A=
>=0A=
> You can't set variables in an image recipe that need to be picked up by o=
ther=0A=
> recipes (in this specific case DEBUG_BUILD, DEBUG_FLAGS and=0A=
> DEBUG_OPTIMISATION); you need to set these at a higher level i.e. local.c=
onf=0A=
> or a custom distro configuration.=0A=
=0A=
Ahh... Inserting this into local.conf is working perfect.=0A=
=0A=
Thanks you.=0A=
=0A=
Best regards=0A=
Allan W. Nielsen=0A=

