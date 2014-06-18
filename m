Return-Path: <francois.p.gallichand@ca.abb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF4E8E00985; Wed, 18 Jun 2014 10:21:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.199.154.11 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1lp0011.outbound.protection.outlook.com [213.199.154.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B507E006EF
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 10:21:01 -0700 (PDT)
Received: from AM3PR06MB195.eurprd06.prod.outlook.com (10.242.244.145) by
	AM3PR06MB196.eurprd06.prod.outlook.com (10.242.244.147) with Microsoft
	SMTP Server (TLS) id 15.0.959.24; Wed, 18 Jun 2014 17:20:59 +0000
Received: from AM3PR06MB195.eurprd06.prod.outlook.com ([169.254.3.96]) by
	AM3PR06MB195.eurprd06.prod.outlook.com ([169.254.3.96]) with mapi id
	15.00.0959.000; Wed, 18 Jun 2014 17:20:58 +0000
From: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Adding files to the hddimg
Thread-Index: Ac+HDyg4D0UyDiGwSqOwoU+fegyOnAD/JOwgAAIsQAAAASycQA==
Date: Wed, 18 Jun 2014 17:20:57 +0000
Message-ID: <2ea31a38a69545438c772962d47c792d@AM3PR06MB195.eurprd06.prod.outlook.com>
References: <d57f9ee937d1459388fbd840265567ea@AM3PR06MB195.eurprd06.prod.outlook.com>
	<da5185e814af4fd8830f3de7896e453d@AM3PR06MB195.eurprd06.prod.outlook.com>
	<4294568.gQz8zEimiU@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4294568.gQz8zEimiU@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: fr-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [207.164.125.250]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(6009001)(428001)(377454003)(24454002)(51704005)(189002)(199002)(13464003)(19580405001)(74662001)(85306003)(46102001)(50986999)(76176999)(81342001)(85852003)(87936001)(86362001)(2656002)(19580395003)(74502001)(54356999)(74316001)(101416001)(20776003)(99396002)(4396001)(77982001)(80022001)(77096002)(83322001)(21056001)(33646001)(83072002)(92566001)(76576001)(64706001)(79102001)(81542001)(66066001)(31966008)(76482001)(95666004)(105586002)(24736002);
	DIR:OUT; SFP:; SCL:1; SRVR:AM3PR06MB196;
	H:AM3PR06MB195.eurprd06.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (: ca.abb.com does not designate permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=francois.p.gallichand@ca.abb.com; 
MIME-Version: 1.0
X-OriginatorOrg: ca.abb.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 18 Jun 2014 17:21:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Paul,

Thanks for the reply. But that's not really what I want to achieve. Really,=
 I just want to copy some files into the .hddimg file that is built as a re=
sult of running bitbake. Like I said, I tried to extend the bootimg.bbclass=
, which is responsible for creating the .hddimg file, but it's not working =
and I don't know why.

Any suggestions?

Regards,
Francois

Fran=E7ois Gallichand
Engineer - Software Group
ABB Group
Analytical Business
(418)877-2944 x268



-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, June 18, 2014 12:43 PM
To: Francois P. Gallichand
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Adding files to the hddimg

Hi Francois,

On Wednesday 18 June 2014 15:42:08 Francois P. Gallichand wrote:
> I realized that I may not have been specific enough on my problem=20
> since I haven't had any reply or found a solution yet.
>=20
> Essentially, I need to be able to add some files to the image file=20
> itself (.hddimg, not the rootfs) and be able to do that automatically=20
> (and ideally from a custom recipe).
>=20
> What I have tried so far is to extend the bootimg.bbclass. So I=20
> created my own class, myclass.bbclass, with the following content:
>=20
> Inherit bootimg
>=20
> myclass_do_bootimg() {
>                 do_bootimg
>                 cp <some files> ${HDDDIR} }
>=20
> EXPORT_FUNCTIONS do_bootimg
>=20
> And I patched image-live.bbclass to replace the "inherit bootimg" by=20
> "inherit myclass" (I don't know if there is a better way to do that?).=20
> But it seems that myclass_do_bootimg is never called, but do_bootimg is.
>=20
> I also tried the following myclass.bbclass without any more success.
>=20
> Inherit bootimg
>=20
> do_some_function() {
>                 cp <some files> ${HDDDIR} }
>=20
> addtask some_function after do_booimg
>=20
> Can someone tell me what I'm doing wrong?

I might be wrong here but it seems to me that what you want to modify is th=
e initramfs - is that right? In which case, that is constructed from an ima=
ge recipe pointed to by INITRD_IMAGE - by default this is core-image-minima=
l- initramfs, but you can point to your own modified image by setting INITR=
D_IMAGE within the image recipe (or at the configuration level).

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

