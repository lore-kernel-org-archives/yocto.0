Return-Path: <EBolton@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C3C2E007A0; Wed,  8 Apr 2015 10:40:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.111.115 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bon0115.outbound.protection.outlook.com [157.56.111.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C036AE003A8
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 10:39:55 -0700 (PDT)
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) by
	DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.17; Wed, 8 Apr 2015 17:39:53 +0000
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) by
	DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) with
	mapi id 15.01.0136.014; Wed, 8 Apr 2015 17:39:53 +0000
From: Erik Bolton <EBolton@agjunction.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Python Error in SDK
Thread-Index: AQHQcP1LwNuP2H/n70WhWxWbA3CVo51DTjUAgAAUkcA=
Date: Wed, 8 Apr 2015 17:39:52 +0000
Message-ID: <DM2PR0201MB108780BAEC93C124DE88B1D0CCFC0@DM2PR0201MB1087.namprd02.prod.outlook.com>
References: <1428389040815.28148@agjunction.com>
	<1488754.2yFrWuZha4@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1488754.2yFrWuZha4@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [208.93.135.69]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0201MB1087;
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(51704005)(13464003)(377454003)(43784003)(24454002)(50986999)(76176999)(74316001)(92566002)(54356999)(77156002)(19580405001)(19580395003)(62966003)(106116001)(66066001)(110136001)(122556002)(102836002)(46102003)(2900100001)(40100003)(33656002)(2656002)(99286002)(87936001)(2950100001)(76576001)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0201MB1087;
	H:DM2PR0201MB1087.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-microsoft-antispam-prvs: <DM2PR0201MB1087594FF6B315F84F6D231ACCFC0@DM2PR0201MB1087.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5002010)(5005006); SRVR:DM2PR0201MB1087; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0201MB1087; 
x-forefront-prvs: 0540846A1D
MIME-Version: 1.0
X-OriginatorOrg: agjunction.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2015 17:39:52.8615 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB1087
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python Error in SDK
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
X-List-Received-Date: Wed, 08 Apr 2015 17:40:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey Paul:

Thanks very much for the help.

I already have a meta-toolchain.bbappend in our project so I added nativesd=
k-python-modules to the TOOLCHAIN_HOST_TASK append line in there.

The system doesn't seem to detect the change, though. If I "bitbake meta-to=
olchain" no tasks are performed. If I "bitbake meta-toolchain -c cleanall" =
and rebuild it just repackages the toolchain...no new packages are added an=
d there's no nativesdk-python-modules dir in the work dir for the SDK.

This is really odd, because I added some jibberish to meta-toolchain.append=
 and tried again. It fails with a parsing error on the lines I added, so I =
know the file is being re-parsed.

Any thoughts?

Thanks again.
-Erik

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Sent: Wednesday, April 08, 2015 9:22 AM
To: Erik Bolton
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Python Error in SDK

Hi Erik,

On Tuesday 07 April 2015 06:44:01 Erik Bolton wrote:
> This has been brought up before (although I think the error was
> different), but I'm having a lot of issues with the version of Python
> included with the SDK.
>
> We use Python for code generation as part of our project. If I source
> the environment script and try to run our Python scripts I get this:
>
> Traceback (most recent call last):
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> py",
> line 569, in <module> main()
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> py", line 551, in main known_paths =3D addusersitepackages(known_paths)
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> py", line 278, in addusersitepackages user_site =3D
> getusersitepackages()
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> py", line 253, in getusersitepackages user_base =3D getuserbase() # this
> will also set USER_BASE
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/site.
> py", line 242, in getuserbase from sysconfig import get_config_var
>   File
> "/opt/poky/1.7.1/sysroots/x86_64-pokysdk-linux/usr/lib/python2.7/sysconfi=
g.
> py", line 10, in <module> 'stdlib':
> '{base}/'+sys.lib+'/python{py_version_short}',
> AttributeError: 'module' object has no attribute 'lib'
>
> If I try running something that doesn't exist I get this:
>
> Fatal Python error: Py_Initialize: Unable to get the locale encoding
> ImportError: No module named 'encodings'
> Aborted (core dumped)
>
> I've tried using update-alternatives to point the SDK python to my
> local python (Ubuntu 14.10, Python 2.7.8), but the errors persist.
>
> I know a few people have simply deleted the python binary from the
> SDK, but I don't think that will help in my case.
>
> I would try to remove it from the SDK in the actual package groups,
> but smartpm and a few other programs depend on it. I'm not sure they
> would play nice with my local version.
>
> Any suggestions on how to fix this "correctly"?

Basically when python (technically, "nativesdk-python" when talking about t=
he
SDK) gets pulled in, that's the minimal python core and not all of the modu=
les in the normal Python distribution, resulting in failures such as these.=
 You can add those however by adding the following either in your image rec=
ipe (if using -c populate_sdk) or in your configuration:

  TOOLCHAIN_HOST_TASK_append =3D " nativesdk-python-modules"

Rebuild and re-install the SDK and things should work a bit better after th=
at.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre
Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized to read, print, retain, copy, dis=
seminate, distribute, or use this message or any part thereof. If you recei=
ve this message in error, please notify the sender immediately and delete a=
ll copies of this message.

