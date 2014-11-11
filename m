Return-Path: <richard.schmitt@freescale.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CD8DE008DB; Tue, 11 Nov 2014 05:31:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS, URIBL_DBL_ABUSE_REDIR,
	URIBL_DBL_REDIR autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.148 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.0 URIBL_DBL_ABUSE_REDIR Contains an abused redirector URL listed in
	*      the DBL blocklist *      [URIs: goo.gl]
	*  0.0 URIBL_DBL_REDIR Contains a URL listed in the DBL as a spammed
	*      redirector domain *      [URIs: goo.gl]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1975 seconds by postgrey-1.32 at yocto-www;
	Tue, 11 Nov 2014 05:31:41 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0148.outbound.protection.outlook.com [207.46.100.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F257E008B4
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 05:31:41 -0800 (PST)
Received: from BN1PR0301MB0641.namprd03.prod.outlook.com (25.160.171.14) by
	BN1PR0301MB0642.namprd03.prod.outlook.com (25.160.171.15) with
	Microsoft SMTP
	Server (TLS) id 15.1.11.14; Tue, 11 Nov 2014 12:58:43 +0000
Received: from BN1PR0301MB0641.namprd03.prod.outlook.com ([25.160.171.14]) by
	BN1PR0301MB0641.namprd03.prod.outlook.com ([25.160.171.14]) with
	mapi id 15.01.0011.000; Tue, 11 Nov 2014 12:58:43 +0000
From: Richard Schmitt <richard.schmitt@freescale.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>, John Unland
	<opensourcejohn2112@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Making Hob better.
Thread-Index: AQHP/UJOJR1Rce8bGkKCbrukzzTA4ZxbPFyAgAAnTfA=
Date: Tue, 11 Nov 2014 12:58:43 +0000
Message-ID: <4b71e65f9d0949928a7575be01750a68@BN1PR0301MB0641.namprd03.prod.outlook.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D08793BD.4DAD5%belen.barros.pena@intel.com>
In-Reply-To: <D08793BD.4DAD5%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.88.168.50]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BN1PR0301MB0642;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa: BCL:0;PCL:0;RULEID:;SRVR:BN1PR0301MB0642;
x-forefront-prvs: 0392679D18
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(189002)(479174003)(24454002)(13464003)(51704005)(377454003)(20776003)(64706001)(108616004)(66066001)(15395725005)(33646002)(40100003)(101416001)(76576001)(15202345003)(15198665003)(74316001)(4396001)(15975445006)(2501002)(105586002)(107046002)(19580395003)(19580405001)(95666004)(21056001)(107886001)(2656002)(87936001)(77096003)(62966003)(122556002)(92566001)(46102003)(77156002)(99396003)(97736003)(31966008)(54356999)(99286002)(106356001)(120916001)(50986999)(76176999)(106116001)(86362001)(24736002)(4068875011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN1PR0301MB0642;
	H:BN1PR0301MB0641.namprd03.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: Re: Making Hob better.
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
X-List-Received-Date: Tue, 11 Nov 2014 13:31:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

We also are looking to update Hob.  In particular, adding kernel feature su=
pport.  Branding would be nice too. =20

Rich

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Barros Pena, Belen
Sent: Tuesday, November 11, 2014 4:37 AM
To: John Unland; yocto@yoctoproject.org
Subject: Re: [yocto] Making Hob better.

Hi John,

Thanks for your feedback on Hob: I agree with everything you said.

We are currently moving towards web-based interfaces for the Yocto Project =
tools, and are working on something called Toaster that eventually will do =
what Hob does. You can get more information on Toaster at

https://www.yoctoproject.org/documentation/toaster-manual-17

On 10/11/2014 23:58, "John Unland" <opensourcejohn2112@gmail.com> wrote:

>Lastly, I would really love to help with development as well.
> I
>haven't really gotten into programming that much but I have worked with=20
>the Fedora Server Special Interest Group doing QA for Alpha and Beta=20
>release. So if anyone can put me in the right direction I can certainly=20
>help YP out.

Contributions are very welcome! :) You can get involved in both development=
 and QA work. To get started, you can subscribe to the Toaster mailing list=
:

https://lists.yoctoproject.org/listinfo/toaster

You can have a look at the features we are currently working on in the Yoct=
o Project Bugzilla instance

http://goo.gl/KncliQ

There is information on how to contribute at

https://wiki.yoctoproject.org/wiki/Contribute_to_Toaster

We also have a weekly call that happens on Wednesdays at 4pm GMT. If you wo=
uld like to join the call, let me know.

All the best,

Bel=E9n


>
>Thank you.
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

