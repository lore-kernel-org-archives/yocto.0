Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72CD5E009AC; Mon,  6 Apr 2015 17:06:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C83BDE007A0
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 17:06:52 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 06 Apr 2015 17:06:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,534,1422950400"; d="scan'208";a="477461368"
Received: from pgsmsx104.gar.corp.intel.com ([10.221.44.91])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Apr 2015 17:06:49 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.205]) by
	PGSMSX104.gar.corp.intel.com ([169.254.3.209]) with mapi id
	14.03.0224.002; Tue, 7 Apr 2015 08:06:40 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: "Smith, Virgil" <Virgil.Smith@flir.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Kernel Panic: /sbin/init not found
Thread-Index: AdBtJJT1N+XghKcCR/iJRvDjeaehYv//o26A//4//jD//HpMcIAGi48A//95NED//uZcYP/+I1aA//v1DAD/9mobgP/pgL2A/9ILEPA=
Date: Tue, 7 Apr 2015 00:06:39 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A28B390@PGSMSX101.gar.corp.intel.com>
References: <0E4D391FE2BDEC45AA0B4E32D6BD598A28AF2F@PGSMSX101.gar.corp.intel.com>
	<6493109.qmgxeLPueO@peggleto-mobl.ger.corp.intel.com>
	<F14AEF751653024287138321000C846AF4813599@BOS-DAG1.zone1.flir.net>
	<3830727.44ard1Gu2C@peggleto-mobl.ger.corp.intel.com>
	<F14AEF751653024287138321000C846AF48138A8@BOS-DAG1.zone1.flir.net>
In-Reply-To: <F14AEF751653024287138321000C846AF48138A8@BOS-DAG1.zone1.flir.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panic: /sbin/init not found
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
X-List-Received-Date: Tue, 07 Apr 2015 00:06:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I guess I have mistaken something in https://wiki.yoctoproject.org/wiki/Mul=
tilib#How_to_use_it . I have simply put the line:

IMAGE_INSTALL =3D "lib32-connman"

which turned out to be a wrong move. I'm not entirely sure of why this has =
worked for me for several months but that was the case and I stuck to it un=
til this problem took me in the knee. I'm not sure if the line above is cor=
rect in its context. lib32-connman is just a package and perhaps it should =
have used IMAGE_INSTALL_append or IMAGE_INSTALL+=3D

Chan Kit

> -----Original Message-----
> From: Smith, Virgil [mailto:Virgil.Smith@flir.com]
> Sent: Tuesday, April 07, 2015 1:13 AM
> To: Paul Eggleton
> Cc: Yu, Chan KitX; yocto@yoctoproject.org
> Subject: RE: [yocto] Kernel Panic: /sbin/init not found
>=20
>=20
> > This is not true in the general case. You definitely can use
> > IMAGE_INSTALL_append with a leading space to add items to an image, I
> > just verified that now.
> >
> > I'm not clear on exactly what happened in the case we're discussing,
> > at least initially it sounded like IMAGE_INSTALL =3D rather than
> > IMAGE_INSTALL_append =3D was being used, which would definitely account
> for the behaviour described.
>=20
> Digging.... testing.... reading....
> I don't know what happened in Chan Kit's case, but it looks like my earli=
er
> trouble was using IMAGE_INSTALL +=3D  from inside local.conf.
> IMAGE_INSTALL_append isn't applied until after parsing completes.  So her=
e
> is one (or rather the) way to overcome the fact that local.conf is *parse=
d*
> too early for extending variables/configuration introduced later in the
> *parsing* chain.
>=20
> So, my earlier statement that you can't use/rely on IMAGE_INSTALL_append
> from local.conf is flat wrong.
>=20
> > The precedence of bb files and order of application of bbappends is
> > controlled primarily by layer priorities; the order that layers appear
> > in bblayers.conf shouldn't come into that (although it may if you have
> > layers that have exactly the same priority set). The order of layers
> > in bblayers.conf can influence the order in which bbclass and inc
> > files are found *where files of the same name exist across different
> > layers*, since these are found using BBPATH, which is prepended or
> > appended to by each layer.conf file and thus the order in which those f=
iles
> are parsed is significant.
>=20
> Thanks Paul, I wasn't sure I had the whole story.
>=20
> ________________________________
>=20
> Notice to recipient: This email is meant for only the intended recipient =
of the
> transmission, and may be a communication privileged by law, subject to
> export control restrictions or that otherwise contains proprietary
> information. If you receive this email by mistake, please notify us
> immediately by replying to this message and then destroy it and do not
> review, disclose, copy or distribute it. Thank you in advance for your
> cooperation.

