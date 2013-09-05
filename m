Return-Path: <joe.slater@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4190E00747
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 10:41:39 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r85HfdT5011316
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 5 Sep 2013 10:41:39 -0700 (PDT)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.103]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.02.0347.000;
	Thu, 5 Sep 2013 10:41:37 -0700
From: "Slater, Joseph" <joe.slater@windriver.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] [PATCH 1/1] tar: add acl dependency information
Thread-Index: AQHOqlgwUA2Ch5P9m0GrluOTtAlIkpm31MQA//+Ul4A=
Date: Thu, 5 Sep 2013 17:41:37 +0000
Message-ID: <007BD92917A2324FA403BCF9A464CF843C508FCE@ALA-MBB.corp.ad.wrs.com>
References: <1378399896-28502-1-git-send-email-jslater@windriver.com>
	<3573701.ovexZDZeie@helios>
In-Reply-To: <3573701.ovexZDZeie@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.152.80]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 05 Sep 2013 13:30:17 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] tar: add acl dependency information
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
X-List-Received-Date: Thu, 05 Sep 2013 17:41:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Oops, I was so worried about sending to the right address, I forgot about
marking it meta-selinux.

Joe


> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, September 05, 2013 10:05 AM
> To: Slater, Joseph
> Cc: Ouyang, Xin; Slater, Joseph; yocto@yoctoproject.org
> Subject: Re: [yocto] [PATCH 1/1] tar: add acl dependency information
>=20
> Hi Joe,
>=20
> On Thursday 05 September 2013 09:51:36 Joe Slater wrote:
> > If acl is a distro feature, we want to depend
> > on it.  Note that without the xattrs patch, tar
> > cannot deal with acl information.
> >
> > Signed-off-by: Joe Slater <jslater@windriver.com>
> > ---
> >  recipes-extended/tar/tar_1.26.bbappend |   10 +++++++++-
> >  1 files changed, 9 insertions(+), 1 deletions(-)
> >
> > diff --git a/recipes-extended/tar/tar_1.26.bbappend
> > b/recipes-extended/tar/tar_1.26.bbappend index 4b971c5..972a7b8 100644
> > --- a/recipes-extended/tar/tar_1.26.bbappend
> > +++ b/recipes-extended/tar/tar_1.26.bbappend
> > @@ -1,7 +1,15 @@
> > -PR .=3D ".2"
> > +PR .=3D ".selinux3"
> >
> >  FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >
> >  SRC_URI +=3D "file://tar-1.24-xattrs.patch"
> >
> >  inherit enable-selinux
> > +
> > +
> > +PACKAGECONFIG +=3D "${@base_contains('DISTRO_FEATURES', 'acl', 'acl', =
'',
> > d)}" +
> > +# configure has no acl enable/disable options!
> > +#
> > +PACKAGECONFIG[acl] =3D ",,acl,"
> > +
>=20
> Should this have been marked as [meta-selinux] ?
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

