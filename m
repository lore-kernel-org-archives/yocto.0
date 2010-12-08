Return-Path: <liping.ke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58B494C811F4
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 03:37:36 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 01:37:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="581696684"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 01:37:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 17:37:20 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	17:37:19 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "Ke, Liping" <liping.ke@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, "Tian, Kevin" <kevin.tian@intel.com>, "Lu,
	Lianhao" <lianhao.lu@intel.com>
Date: Wed, 8 Dec 2010 17:37:18 +0800
Thread-Topic: yocto_installer test script update
Thread-Index: AcuRP2G+ThJAQacvTRywh28cpIwTgQAdMP0gABKk1AAAHtt2YACqdV0QAAJu3TAAH5th4AABuUTAAAUY5IAAAFA80AABnpXgAABEWKAAOpY5AAAALGDA
Message-ID: <789F9655DD1B8F43B48D77C5D30659733104CE84@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659732FF6C134@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950208643C@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659732FFC465B@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502086DDD@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F49@shsmsx501.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597330021F85@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178E3E@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659733104C4D4@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D4754397C@shsmsx502.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178EB1@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D30659733104C691@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9502178ED5@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto_installer test script update
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
X-List-Received-Date: Wed, 08 Dec 2010 09:37:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

And Jessica

If you have no rights to modify my branch tree ( I am not sure), you can ch=
eck it in your own branch.

We can merge it later.

Thanks a lot!
criping

> -----Original Message-----
> From: Ke, Liping
> Sent: Wednesday, December 08, 2010 5:35 PM
> To: Zhang, Jessica; Tian, Kevin; Lu, Lianhao
> Cc: yocto@yoctoproject.org
> Subject: RE: yocto_installer test script update
>=20
> Hi, Jessica
>=20
>=20
> I have check the script in my branch tree (branch origin/lke/master),
> please check @ http://git.pokylinux.org/cgit/cgit.cgi/poky-
> contrib/log/?h=3Dlke/master
>=20
> After checkout, directly goto poky_tree/script/adt_installer,
> everything is there.
>=20
> Thanks& Regards,
> criping
>=20
>=20
> > -----Original Message-----
> > From: Zhang, Jessica
> > Sent: Tuesday, December 07, 2010 1:34 PM
> > To: Ke, Liping; Tian, Kevin; Lu, Lianhao
> > Cc: yocto@yoctoproject.org
> > Subject: RE: yocto_installer test script update
> >
> > Ke, Liping wrote:
> > > the final files a little later. Just wait.
> > >>>
> > >>> why don't you setup a master repo on git.pokylinux.org? anyway we
> > >>> need such thing finally and now you have multiple people touching
> > >>> same code...
> > >>
> > >> Yes, realize the issue from today's situation, I'll setup a repo
> for
> > >> the installer once Liping's done her updates today to prevent
> > >> further stepping on each other...
> > >
> > > Oh, that'll be great. I remember we said we will send the code to
> the
> > > poky.git in the end and we can use our own contrib tree? But of
> > > course the separate tree will be better.
> > >
> > > Current I temporarily put the updated code in the old place. I have
> > > finished the merging.
> > >
> > > Any problem, just let me know.
> >
> > Thanks, I'll try it out tomorrow and figure out how to setup the repo
> > for us
> > to continue update in the futuer..
> >
> > - Jessica

