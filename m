Return-Path: <francois.p.gallichand@ca.abb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65760E0059A; Tue, 24 Jun 2014 10:19:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.199.154.13 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1lp0013.outbound.protection.outlook.com [213.199.154.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE76DE00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 10:19:07 -0700 (PDT)
Received: from AM3PR06MB195.eurprd06.prod.outlook.com (10.242.244.145) by
	AM3PR06MB193.eurprd06.prod.outlook.com (10.242.244.139) with Microsoft
	SMTP Server (TLS) id 15.0.959.24; Tue, 24 Jun 2014 17:19:05 +0000
Received: from AM3PR06MB195.eurprd06.prod.outlook.com ([169.254.3.96]) by
	AM3PR06MB195.eurprd06.prod.outlook.com ([169.254.3.96]) with mapi id
	15.00.0959.000; Tue, 24 Jun 2014 17:19:05 +0000
From: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
To: Anders Darander <anders@chargestorm.se>
Thread-Topic: [yocto] Adding files to the hddimg
Thread-Index: Ac+HDyg4D0UyDiGwSqOwoU+fegyOnAD/JOwgAAIsQAAAASycQADxTJAAADu4s0c=
Date: Tue, 24 Jun 2014 17:19:04 +0000
Message-ID: <1403630342378.67114@ca.abb.com>
References: <d57f9ee937d1459388fbd840265567ea@AM3PR06MB195.eurprd06.prod.outlook.com>
	<da5185e814af4fd8830f3de7896e453d@AM3PR06MB195.eurprd06.prod.outlook.com>
	<4294568.gQz8zEimiU@peggleto-mobl5.ger.corp.intel.com>
	<2ea31a38a69545438c772962d47c792d@AM3PR06MB195.eurprd06.prod.outlook.com>,
	<20140623122612.GB16414@ad.chargestorm.se>
In-Reply-To: <20140623122612.GB16414@ad.chargestorm.se>
Accept-Language: fr-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [65.95.16.220]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 02524402D6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(189002)(199002)(51914003)(66066001)(105586002)(64706001)(21056001)(83322001)(31966008)(85852003)(83072002)(87936001)(2656002)(76176999)(81542001)(101416001)(86362001)(54356999)(92726001)(92566001)(19580395003)(79102001)(20776003)(93886003)(46102001)(106356001)(85306003)(76482001)(77096002)(19580405001)(77982001)(74662001)(50986999)(99396002)(80022001)(95666004)(74502001)(81342001)(4396001);
	DIR:OUT; SFP:; SCL:1; SRVR:AM3PR06MB193;
	H:AM3PR06MB195.eurprd06.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: ca.abb.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding files to the hddimg
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
X-List-Received-Date: Tue, 24 Jun 2014 17:19:14 -0000
Content-Language: fr-CA
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Anders,=0A=
=0A=
I don't want to copy files into the rootfs, I know how to do that. It's rea=
lly in the hddimg that I need to copy files, at the same level as the rootf=
s.=0A=
=0A=
To make a short story, here's what I want to do. I want to use a usb drive =
to install a system so I "dd" the hddimg to this usb drive. The idea is to =
boot this usb drive on the target system so it can be used to accomplish va=
rious task, like installing a new system or updating or configuring an exis=
ting one. So to do that, I need to put the required files to install or con=
figure the system also on the key. You could argue that I can still do all =
of this even if I put everything in the rootfs. However, I use squashfs for=
 the rootfs (to save space), and also the files on the key must be modifiab=
le by a user using a Windows computer (which is easy since this is a VFAT p=
artition but not the rootfs that's not even writable).=0A=
=0A=
Like I mentionned in previous email, one way to achieve that is to extend t=
he bootimg.bbclass, but I tried that and it didn't work (and I don't know w=
hy). After talking to some people, I guess that the simple solution is to w=
rite a separate script that does what I need i.e.once I build the hddimg, i=
t just mount the hddimg and copy the required stuff on it. It's just that I=
 would have liked to do that in the Yocto environment, but it's no big prio=
rity.=0A=
=0A=
The resulting real question however is how to extend a .bbclass and why wha=
t I tried before didn't work?=0A=
=0A=
Any idea about that?=0A=
=0A=
Regards,=0A=
Francois=0A=
=0A=
________________________________________=0A=
De : Anders Darander <anders@chargestorm.se>=0A=
Envoy=E9 : 23 juin 2014 08:26=0A=
=C0 : Francois P. Gallichand=0A=
Cc : Paul Eggleton; yocto@yoctoproject.org=0A=
Objet : Re: [yocto] Adding files to the hddimg=0A=
=0A=
* Francois P. Gallichand <francois.p.gallichand@ca.abb.com> [140618 19:22]:=
=0A=
=0A=
> Thanks for the reply. But that's not really what I want to achieve.=0A=
> Really, I just want to copy some files into the .hddimg file that is=0A=
> built as a result of running bitbake. Like I said, I tried to extend=0A=
> the bootimg.bbclass, which is responsible for creating the .hddimg=0A=
> file, but it's not working and I don't know why.=0A=
=0A=
Well, then I guess the question if what kinds of file is it, and how do=0A=
you want to copy them into the .hddimg?=0A=
=0A=
Should they be copied into the rootfs in the .hddimg? If so, I'd suggest=0A=
to create a standard bitbake recipe and just install those files into=0A=
the rootfs.=0A=
=0A=
If it's something else, I think you need to explain it a little bit=0A=
more.=0A=
=0A=
Cheers,=0A=
Anders=0A=
=0A=
> Any suggestions?=0A=
--=0A=
Anders Darander=0A=
ChargeStorm AB / eStorm AB=0A=

