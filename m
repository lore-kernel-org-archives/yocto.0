Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE0CBE00D72; Thu, 16 Jun 2016 06:15:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.123 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0123.outbound.protection.outlook.com [157.56.112.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F96CE00D6E
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 06:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=99NHdwy8QWUUmyw0uflZqVtjaT8mETSI4L71j0wfMDw=;
	b=iBAYJ5QlrH1m8Jc7ruhY5qhoEPtfo0aNKYoCMhhyy3xaazquMkXBCss1RS6aMVik4Ar7yF+QhjmQWDa1Rod8fmbpvz4/1GzFhzC9k7/rvn3JXI9+/CWoOsxMqjXxuRhKN6vctrliyVUpmu8rx+lxWHYntfJC0xjvU6o8y2+S+kc=
Received: from VI1PR07MB1053.eurprd07.prod.outlook.com (10.161.111.145) by
	VI1PR07MB1056.eurprd07.prod.outlook.com (10.161.111.148) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Thu, 16 Jun 2016 13:00:31 +0000
Received: from VI1PR07MB1053.eurprd07.prod.outlook.com ([10.161.111.145]) by
	VI1PR07MB1053.eurprd07.prod.outlook.com ([10.161.111.145]) with mapi id
	15.01.0511.017; Thu, 16 Jun 2016 13:00:31 +0000
From: "Woronicz, Bartosz (Nokia - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Additional layers with class and conf
Thread-Index: AQHRxxVXZzC6ZcZwrEGFbS3fHjV1Lp/q+vSAgAEUhfA=
Date: Thu, 16 Jun 2016 13:00:31 +0000
Message-ID: <VI1PR07MB1053B4DC8702D6E18472936881560@VI1PR07MB1053.eurprd07.prod.outlook.com>
References: <57616B51.7070001@nokia.com>
	<2437618.ZGTpyCUF7t@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2437618.ZGTpyCUF7t@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
x-originating-ip: [131.228.2.8]
x-ms-office365-filtering-correlation-id: b01b94a9-cc79-4380-7b6c-08d395e632b8
x-microsoft-exchange-diagnostics: 1; VI1PR07MB1056;
	6:8alKqywUEYpORXRSlUedx1wZ0gW5CUJXld1BcaLsM/xeR9MDtNj1z2h4OgJ/gb7Cpn1OGZmNaF+O9VJmC1fcEUn7cLWWGTym+71sP35j9UMbAi7fPof7Dh1o47xhxUo7pZBUZIB0m/d45F1h5TlUt2Y9uxUbSYfChTreddm9xW2KTrpOSQMmFPKPe+/uWwlSvSeEinoMAVjVmf9BWR0E+5n+mlBH+bCEkxUtzzfEKvwNb/MPuLAJqzP9u9ZTkQq3S64rEPzvqQ3qO5GNrOdsaXwN+xUUddtshfdowxRTJzw=;
	5:jUiIjPIkemsd8wEhcdppwQLLBfmSi7CVAKd3Nu8ekA25/EguJq7E+dmwtV1/+DwxDHnBD9wNSt5bRInqMYKEsuZzje9LtQDSYc8LqYQevSno6y9QrdFbQ2fCQ3NufqJx/vEZX2QWB2vXBbNcWM6HVg==;
	24:U49A/ii5zauw9aLUXjGRyJCRkuUgifQ53Ksg6JxkMB/nBbxoQXSsgKrcnjN6AYGVjsiyZ793zZcNChZBQXGRPfZEhzSbDVT8vyHxFz5uzdE=;
	7:iTk0q9ucEYVfj2sYXfe+nR+2feFnIYjbRD7B+OAq6TnjR+xdgyreCKtF668uVY5tquKkIlPpLehNkS/rAFSJUxG8DlH8BkEVi8skTnIDxLfGc5lC8q/yp7+7GIU3gjHo0M/Pm8Qku6E9XItbEbI+vvPeq5fix0+WQaeZeHN70riWfjCtBj4s2oT6euPrQz0Icc7z6FtrrBArBVK7UohOEg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR07MB1056;
x-microsoft-antispam-prvs: <VI1PR07MB1056E9B926D8AA26924AE8ED81560@VI1PR07MB1056.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(82608151540597)(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:VI1PR07MB1056; BCL:0; PCL:0; RULEID:; SRVR:VI1PR07MB1056; 
x-forefront-prvs: 09752BC779
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(6009001)(7916002)(199003)(24454002)(13464003)(189002)(71364002)(377454003)(19580395003)(19580405001)(11100500001)(5004730100002)(74316001)(2906002)(9686002)(106116001)(3846002)(50986999)(4326007)(106356001)(105586002)(76176999)(101416001)(3280700002)(10400500002)(5003600100002)(3660700001)(54356999)(189998001)(87936001)(68736007)(5002640100001)(92566002)(122556002)(33656002)(5008740100001)(77096005)(81156014)(2950100001)(8676002)(8936002)(2900100001)(6116002)(76576001)(86362001)(97736004)(66066001)(110136002)(81166006)(586003)(15975445007)(102836003)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB1056;
	H:VI1PR07MB1053.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2016 13:00:31.2995 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB1056
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Additional layers with class and conf
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
X-List-Received-Date: Thu, 16 Jun 2016 13:15:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

That's a good point, I took a look at it. But for now I rather rely on poky=
 distro. Later, possibly I will put my classes in INHERIT to mydistro.conf.

Thanks!

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw


-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Wednesday, June 15, 2016 10:29 PM
To: Woronicz, Bartosz (Nokia - PL/Wroclaw) <bartosz.woronicz@nokia.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Additional layers with class and conf

On Wed, 15 Jun 2016 16:50:57 Woronicz, Bartosz wrote:
> I got two layers, meta-x and meta-y , meta-x got meta-y in
> bblayers.conf.   in meta-y contains conf/layer.conf with BBPATH .=3D
> ":${LAYERDIR}", plus classes/my.bbclass plus local.conf containing
> INHERIT +=3D "my"

Do you mean you put local.conf in a conf subdirectory of a layer? If so,
that's not really expected to work.

> when I ran bitbake -e my-image, the INHERIT doesn't seem to contain "my"
>=20
> When I put it directly in layer.conf it works, but what to add to
> layer.conf to make bitbake to look for other *.conf files in meta-y/conf/=
 ??

You don't, at least not in that way. The correct way to do things like this=
 is
to create a custom distro and then set DISTRO to point to it. Your distro c=
onf=20
file can then set these kinds of things.

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#creatin=
g-your-own-distribution

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

