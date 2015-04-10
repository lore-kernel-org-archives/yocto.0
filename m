Return-Path: <EBolton@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48B95E009A5; Fri, 10 Apr 2015 09:41:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 942 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Apr 2015 09:41:04 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0108.outbound.protection.outlook.com [207.46.100.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEF98E00993
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 09:41:04 -0700 (PDT)
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) by
	DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.17; Fri, 10 Apr 2015 16:25:20 +0000
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) by
	DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) with
	mapi id 15.01.0136.014; Fri, 10 Apr 2015 16:25:20 +0000
From: Erik Bolton <EBolton@agjunction.com>
To: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-raspberrypi] mesa & gl problems
Thread-Index: AQHQc6C6nu4nC7N03ECGbsM+uz10q51GbaUQ
Date: Fri, 10 Apr 2015 16:25:19 +0000
Message-ID: <DM2PR0201MB108770242C2114A0D12F29CBCCFA0@DM2PR0201MB1087.namprd02.prod.outlook.com>
References: <5527E83B.6030006@mlbassoc.com>
In-Reply-To: <5527E83B.6030006@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mlbassoc.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [208.93.135.69]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0201MB1087;
x-microsoft-antispam-prvs: <DM2PR0201MB1087290AC93591CCAC8063AFCCFA0@DM2PR0201MB1087.namprd02.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(13464003)(74316001)(106116001)(2656002)(86362001)(107886001)(87936001)(80792005)(122556002)(99286002)(66066001)(92566002)(76576001)(62966003)(77156002)(19580395003)(19580405001)(2900100001)(46102003)(2950100001)(76176999)(33656002)(15975445007)(54356999)(102836002)(50986999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0201MB1087;
	H:DM2PR0201MB1087.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:DM2PR0201MB1087; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0201MB1087; 
x-forefront-prvs: 054231DC40
MIME-Version: 1.0
X-OriginatorOrg: agjunction.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2015 16:25:19.6411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB1087
Subject: Re: [meta-raspberrypi] mesa & gl problems
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
X-List-Received-Date: Fri, 10 Apr 2015 16:41:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gary:

Something is still pulling in libjpeg. It's possible you've got a recipe th=
at depends on libjpeg directly. Check any modified recipes or custom stuff =
you've added.

The mesa errors are a little more interesting. Typically that means a graph=
ics driver is being included that provides GL/GLES along with mesa (which a=
lso provides the same functionality).

Are you sure the mesa errors only started after you tried to make libjpeg-t=
urbo the preferred jpeg provider?

-Erik

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Gary Thomas
Sent: Friday, April 10, 2015 8:12 AM
To: Yocto Project
Subject: [yocto] [meta-raspberrypi] mesa & gl problems

If I try to use the 'libjpeg-turbo' package from meta-oe (required to build=
 'vlc'), I get these errors:

ERROR: Multiple .bb files are due to be built which each provide virtual/li=
bgles2 (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.=
4.bb
/home/local/poky-cutting-edge/meta-raspberrypi/recipes-graphics/userland/us=
erland_git.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide virtual/me=
sa (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa-gl_10.4.4=
.bb
/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide jpeg (/hom=
e/local/poky-cutting-edge/meta-oe/recipes-core/jpeg/libjpeg-turbo_8d+1.4.0.=
bb
/home/local/poky-cutting-edge/meta/recipes-core/jpeg/jpeg_8d.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide virtual/li=
bgl (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa-gl_10.4.=
4.bb
/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb).
  This usually means one provides something the other doesn't and should.
ERROR: Multiple .bb files are due to be built which each provide virtual/eg=
l (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb
/home/local/poky-cutting-edge/meta-raspberrypi/recipes-graphics/userland/us=
erland_git.bb).
  This usually means one provides something the other doesn't and should.

This happens when I add these lines to my local.conf:
   PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"
   PREFERRED_PROVIDER_jpeg-native =3D "libjpeg-turbo-native"

How do I fix this?

Note: I've successfully done this on many other targets (qemuXXX,
i.MX6) - it's only failing on RaspberryPi

Thanks for any pointers

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized to read, print, retain, copy, dis=
seminate, distribute, or use this message or any part thereof. If you recei=
ve this message in error, please notify the sender immediately and delete a=
ll copies of this message.

