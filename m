Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D24724C811BA
	for <yocto@yoctoproject.org>; Sun, 19 Dec 2010 20:48:31 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Dec 2010 18:48:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,199,1291622400"; d="scan'208";a="869911408"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2010 18:48:30 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 20 Dec 2010 10:47:11 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 20 Dec 2010 10:47:10 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>, "Lock, 
	Joshua" <joshua.lock@intel.com>
Date: Mon, 20 Dec 2010 10:47:04 +0800
Thread-Topic: Help to review installer bb class file
Thread-Index: Acudm/3gpIFanIWjRiOh+nrZt2+aHQCVBRrA
Message-ID: <789F9655DD1B8F43B48D77C5D30659733142AF19@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733142A944@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <789F9655DD1B8F43B48D77C5D30659733142A944@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help to review installer bb class file
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
X-List-Received-Date: Mon, 20 Dec 2010 02:48:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all

Apart from Ke's suggestion that I need to add chksum for download file,
any other feedbacks?

Thanks& Regards,
criping

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Ke, Liping
> Sent: Friday, December 17, 2010 11:39 AM
> To: Zhang, Jessica; Lu, Lianhao; Lock, Joshua
> Cc: yocto@yoctoproject.org
> Subject: [yocto] Help to review installer bb class file
>=20
> Hi, Jessica and Josh
>=20
> This is a simple bb class file for generating installer tarball. And
> thanks for Lianhao/ke/Dexuan...'s help which saves me lots of efforts...
>=20
> It contains below steps:
>=20
> 1. fetch opkg source tarball to download location  and  copy other six
> files (opkg conf, scripts, user conf) to workdir (do_fetch) 2.
> unpacking  opkg source tarball to workdir (do_unpack). {So accordingly,
> in installer script, I will remove the untar step} 3. when do_install,
> tar the the opkg source file directory as well as other six files and
> copy it to sdk output directory (tmp/deploy/sdk)
>=20
> After bitbaking, adt-installer.tar.bz2 will be in
> ${build}/tmp/deploy/sdk and untar it. User can untar the tarball and
> running yocto_install installation script.
>=20
> I only attach bb file in the attachment. For installer, after RP's
> review, I will merge it into the final patch together with this bb file.
> If you're interest about the current installer implementation, please
> fetch it @ http://llu-piketon.sh.intel.com/installer.tar
>=20
>=20
> Any comments are highly appreciated. Actually I am not very sure about
> many options in bb file.
>=20
>=20
> Thanks & Regards,
> criping

