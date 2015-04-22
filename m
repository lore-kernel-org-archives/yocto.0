Return-Path: <briank@RUSSOUND.COM>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8C15E009AA; Wed, 22 Apr 2015 13:51:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.111.132 listed in list.dnswl.org]
X-Greylist: delayed 18178 seconds by postgrey-1.32 at yocto-www;
	Wed, 22 Apr 2015 13:51:11 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0132.outbound.protection.outlook.com [157.56.111.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDC4E00994
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 13:51:11 -0700 (PDT)
Received: from BLUPR0501MB1028.namprd05.prod.outlook.com (25.160.35.139) by
	BLUPR0501MB1027.namprd05.prod.outlook.com (25.160.34.141) with
	Microsoft SMTP
	Server (TLS) id 15.1.136.25; Wed, 22 Apr 2015 20:51:09 +0000
Received: from BLUPR0501MB1028.namprd05.prod.outlook.com ([25.160.35.139]) by
	BLUPR0501MB1028.namprd05.prod.outlook.com ([25.160.35.139]) with
	mapi id 15.01.0136.026; Wed, 22 Apr 2015 20:51:09 +0000
From: Brian Karcz <briank@RUSSOUND.COM>
To: "'Paul Eggleton (paul.eggleton@linux.intel.com)'"
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] creating images which include actively developed
	applications
Thread-Index: AdB9C6Xg2AUJ1s8lR+6w/hRPMmncvQAGkYYAAAR1gvA=
Date: Wed, 22 Apr 2015 20:51:08 +0000
Message-ID: <BLUPR0501MB102866C5EB58E5A59367E3D8BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [64.223.142.66]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0501MB1027;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(52604005)(377454003)(13464003)(51704005)(24454002)(87936001)(2656002)(33656002)(62966003)(110136001)(54356999)(76176999)(102836002)(15975445007)(86362001)(50986999)(77156002)(74316001)(76576001)(99286002)(46102003)(122556002)(2950100001)(40100003)(19580405001)(19580395003)(2900100001)(92566002)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR0501MB1027;
	H:BLUPR0501MB1028.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <BLUPR0501MB10278CCAFC66BD58E39ADE8EBFEE0@BLUPR0501MB1027.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:BLUPR0501MB1027; BCL:0;
	PCL:0; RULEID:; SRVR:BLUPR0501MB1027; 
x-forefront-prvs: 0554B1F54F
MIME-Version: 1.0
X-OriginatorOrg: russound.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2015 20:51:08.5899 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0a73fa72-2b76-4a4d-8e8c-f8bb38fc0fb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0501MB1027
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Wed, 22 Apr 2015 20:51:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Thanks for pointing me to that. It sounds like exactly what I need. I can't=
 believe that I've not come across that in my searches. I suppose its a mat=
ter of using the right search criteria.

It looks like I can add those lines to either local.conf or the package rec=
ipe. Once I do that I have a couple question on how it works:

1) does the version of the recipe become moot? Does it still need dummy ver=
sions in PV and PR to be valid?
2) can the SRC_URI now be omitted in the recipe since there is nothing to f=
etch?
3) can the "S" variable be used to drive into the source tree to find the a=
pplications top level makefile or should I just point the EXTERNALSRC varia=
ble right there and it will be fine navigating above that base?
4) can the recipe still inherit autotools to perform the build on the exter=
nal source directory?

I'm now envisioning a package recipe that looks something like:

PV =3D "1.0"
PR =3D "r1"
DESCRIPTION =3D "abc package located outside build tree"
INHERIT +=3D "externalsrc"
EXTERNALSRC_abc =3D "../../../../../abc"
S =3D "../../../../../abc/apps/build"
inherit autotools

Its propably unlikely, since this lends itself to being very custom, but do=
 you know of any examples of a recipe implementation that use this mechanis=
m?

Thanks,
Brian

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, April 22, 2015 1:58 PM
To: Brian Karcz
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] creating images which include actively developed appli=
cations

Hi Brian,

On Wednesday 22 April 2015 15:32:06 Brian Karcz wrote:
> I'm attempting to create a recipe for some custom applications that we=20
> want to include in our target image. The applications are actively=20
> developed and it's often desired to generate images without versioning=20
> the application code. It's also desired to be able to work in a source=20
> tree that is external to the build tree. I'm trying to determine if=20
> Yocto has a mechanism similar to the "source directory override" in=20
> Buildroot that allows you to point a package/recipe at an external=20
> directory to locate the source code.
>
> We have been using Poky for a couple years, but so far, have had to=20
> build the applications externally and use some magic in the image=20
> recipes to bring in the pre-built executables explicitly. We=20
> accomplished this by using some relative pathing in the SRC_URI and=20
> then placing the files in the rootfs by adding some commands to the image=
 preprocess command.
>=20
> Is there a way to create a recipe to build actively developed code=20
> located in an external source directory? Basically skip the fetch and=20
> unpack steps and always execute the compile and populate steps each=20
> time and image is built?

Indeed there is:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#buildin=
g-software-from-an-external-source

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

