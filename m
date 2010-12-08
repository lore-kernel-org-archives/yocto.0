Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D43844C811C4
	for <yocto@yoctoproject.org>; Tue,  7 Dec 2010 19:47:16 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Dec 2010 17:47:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,313,1288594800"; d="scan'208";a="684945043"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2010 17:47:06 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 09:46:49 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 09:46:49 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	09:46:48 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Garman, Scott A" <scott.a.garman@intel.com>
Date: Wed, 8 Dec 2010 09:46:46 +0800
Thread-Topic: param format about qeme extra options parse in
Thread-Index: AcuV7bumImnT6wQBSNKTH05bES8CkwAi9EkA
Message-ID: <789F9655DD1B8F43B48D77C5D30659733104CAAD@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659733104C7B4@shsmsx501.ccr.corp.intel.com>
	<4CFDF890.40901@intel.com>
In-Reply-To: <4CFDF890.40901@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: param format about qeme extra options parse in
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
X-List-Received-Date: Wed, 08 Dec 2010 01:47:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks scott!
I will send you the patch for review after I add the extra parameter.

Thanks & Regards,
criping

> -----Original Message-----
> From: Garman, Scott A
> Sent: Tuesday, December 07, 2010 5:04 PM
> To: Ke, Liping
> Cc: Zhang, Jessica; Lu, Lianhao; yocto@yoctoproject.org
> Subject: Re: param format about qeme extra options parse in
>=20
> On 12/06/2010 11:29 PM, Ke, Liping wrote:
> > Hi, Jessica&  Scott
> >
> > I am now looking@the task of User specified qemu config support, desc
> > " We'll provide user an edit box which allows advanced qemu user to
> > specify arbitrary qemu configuration to meet their needs, which the
> > poky-qemu scrip will just append the config list towards the end of
> > the list of parameters to bring up qemu, it also expect the poky-qemu
> > script to do some basic sanity check on the user specifications to
> > catch the obvious mistake"
> >
> >
> > Currently, for the user experiences, the param parsing is without
> > specific ordering. So the parsing shell code would be somewhat fixed.
> > Since we're needing to append other user options directly, the
> > options vary greatly. So my plan is all user options are put into ""
> > and read in as one parameters for easier processing in the shell
> > script, for example:
> >
> > ./poky-qemu qemuarm qemuarm.bin unfs_dir serial "-smp -hda
> > /dev/myfda_file -m 256" (extra options for advance user)
> >
> >
> > How do you think of it? All extra options are given within "" as one
> > parameter.
>=20
> Sounds reasonable to me.
>=20
> Scott
>=20
> --
> Scott Garman
> Embedded Linux Distro Engineer - Yocto Project

