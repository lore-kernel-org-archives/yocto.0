Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD873E008D7; Sun,  5 Feb 2017 06:20:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.128 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1946 seconds by postgrey-1.32 at yocto-www;
	Sun, 05 Feb 2017 06:20:32 PST
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0128.outbound.protection.outlook.com
	[104.47.37.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B036E0073C
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2017 06:20:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=u7CacJ0vHf7oVjhZ37ZDx9eW1CSnAunm8d8kD2gBtK0=;
	b=CS9iaNf1JMknMaMx9UyGoG4goxqBH5ar3w5WHRgr3kovEt7HVXqQzkuNliMYDc2k6GDMGA8KopZcprJR0sL/tRrsVHiRUWp7ZQ688P9wuldO+aDBuxgUm9X935paf6BopkYERD5FLHvYOYLX5gVik9c+dyMIdji+1mCYVw7k0EY=
Received: from BN6PR05MB2851.namprd05.prod.outlook.com (10.168.255.136) by
	BN6PR05MB2851.namprd05.prod.outlook.com (10.168.255.136) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.5; Sun, 5 Feb 2017 13:48:04 +0000
Received: from BN6PR05MB2851.namprd05.prod.outlook.com ([10.168.255.136]) by
	BN6PR05MB2851.namprd05.prod.outlook.com ([10.168.255.136]) with mapi id
	15.01.0888.022; Sun, 5 Feb 2017 13:48:04 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: I am getting an error when I try to do a build that includes
	docker. 
Thread-Index: AQHSf7X7BEIvCDuu5EuPuPaDQdy1sg==
Date: Sun, 5 Feb 2017 13:48:04 +0000
Message-ID: <BN6PR05MB2851F21407B50335281BC88C9E410@BN6PR05MB2851.namprd05.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-originating-ip: [71.7.217.59]
x-ms-office365-filtering-correlation-id: 1c345e9f-b83d-4210-402c-08d44dcd9bd8
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BN6PR05MB2851;
x-microsoft-exchange-diagnostics: 1; BN6PR05MB2851;
	7:p49/wO90LapOegqP0IRSO2rBy2ruwa6H8gOi902X5BrxCYTnyVXGAAVTAcQ2oZStnYXNfdCFpychf6r4N7KyzD6ssmNA1C/aViAGuw4GfKHy+Dd+FUhrCHvWPbzDwPInDhdX8m2CjZDQRhAy6ByZDrIEH5EKeVfS/CfDIBUlF31r6NG1RMmslbEXDS0wiIFKRbmXJUXkEpJ18tN/2hGm5yfsEWZLbRC5Zw9pdgkqbSw4aIZYvYskd5exRP/osJ0GH4+Y7i8fY7WyIa/IOGgJbukgOTWZyR+R5g3g7RMv4Oq6Z+Oa1O/rdiQVPpBPAXhC4p0pjQlGyFCb5UZhdfaF4NLPNBldZG1X80L0v37lF1AVWBXEkqR1m9aYJd77NThYyPsGRFrGfby5Nhh3d6xB32GgSZElT4z9metpiYq93/xuEc3otPrNyoGhG3CXd7wUqdYQyAhbg/e1cH8RYSWFpPidDLvSRJ10r0OxGXwYffPg8FoYLqNQfBu7x80wHTrKWE8z9zWJBlNBfXJ7tqize9Di5k3KGpVLD/o7yTWAZOExsWSFNQOJiSG7B9ysfo3l
x-microsoft-antispam-prvs: <BN6PR05MB2851F67653C01D5964F4B4669E410@BN6PR05MB2851.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(20170203043)(5005006)(10201501046)(3002001)(6041248)(20161123560025)(20161123558025)(20161123555025)(20161123562025)(20161123564025)(6072148);
	SRVR:BN6PR05MB2851; BCL:0; PCL:0; RULEID:; SRVR:BN6PR05MB2851; 
x-forefront-prvs: 0209425D0A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(199003)(189002)(5660300001)(3846002)(2906002)(102836003)(6116002)(53936002)(6436002)(6916009)(3280700002)(92566002)(7696004)(189998001)(122556002)(6606003)(68736007)(2900100001)(86362001)(110136003)(50986999)(54356999)(107886002)(2501003)(450100001)(3660700001)(101416001)(9686003)(7736002)(25786008)(33656002)(105586002)(6506006)(55016002)(74316002)(54896002)(66066001)(99286003)(38730400001)(97736004)(19627405001)(77096006)(5640700003)(106356001)(8676002)(2351001)(8936002)(1730700003)(81156014)(81166006)(106116001)(161833001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR05MB2851;
	H:BN6PR05MB2851.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2017 13:48:04.2005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB2851
Subject: I am getting an error when I try to do a build that includes docker.
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
X-List-Received-Date: Sun, 05 Feb 2017 14:20:35 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_BN6PR05MB2851F21407B50335281BC88C9E410BN6PR05MB2851namp_"

--_000_BN6PR05MB2851F21407B50335281BC88C9E410BN6PR05MB2851namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I am trying to build yocto/poky so that it includes docker. However, I get =
the following error. It appears to indicate that i586 is not supported by d=
ocker. Is this the case?

ERROR: docker-1.9.0+git76d6bc9a9f1690e16f3721ba165364688b626de2-r0 do_compi=
le: Function failed: do_compile (log file is located at /home/peter/gaia-qe=
mu-master/poky/build/tmp/work/i586-poky-linux/docker/1.9.0+git76d6bc9a9f169=
0e16f3721ba165364688b626de2-r0/temp/log.do_compile.31224)
ERROR: Logfile of failure stored in: /home/peter/gaia-qemu-master/poky/buil=
d/tmp/work/i586-poky-linux/docker/1.9.0+git76d6bc9a9f1690e16f3721ba16536468=
8b626de2-r0/temp/log.do_compile.31224
Log data follows:
| DEBUG: Executing shell function do_compile
| /home/peter/gaia-qemu-master/poky/build/tmp/work/i586-poky-linux/docker/1=
.9.0+git76d6bc9a9f1690e16f3721ba165364688b626de2-r0/git
| # WARNING! I don't seem to be running in the Docker container.
| # The result of this command might be an incorrect build, and will not be
| #   officially supported.
| #
| # Try this instead: make all
| #
|
| ---> Making bundle: dynbinary (in bundles/1.9.0/dynbinary)
| # runtime/internal/sys
| compile: unknown architecture "i586"
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/peter/ga=
ia-qemu-master/poky/build/tmp/work/i586-poky-linux/docker/1.9.0+git76d6bc9a=
9f1690e16f3721ba165364688b626de2-r0/temp/log.do_compile.31224)
ERROR: Task 263 (/home/peter/gaia-qemu-master/poky/build/../meta-virtualiza=
tion/recipes-containers/docker/docker_git.bb, do_compile) failed with exit =
code '1'
NOTE: Tasks Summary: Attempted 3076 tasks of which 3060 didn't need to be r=
erun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/peter/gaia-qemu-master/poky/build/../meta-virtualization/recipes-co=
ntainers/docker/docker_git.bb, do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


--_000_BN6PR05MB2851F21407B50335281BC88C9E410BN6PR05MB2851namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div>I am trying to build yocto/poky so that it includes docker. However, I=
 get the following error. It appears to indicate that i586 is not supported=
 by docker. Is this the case?</div>
<div><br>
</div>
<div>ERROR: docker-1.9.0&#43;git76d6bc9a9f1690e16f3721ba165364688b626de2-r0=
 do_compile: Function failed: do_compile (log file is located at /home/pete=
r/gaia-qemu-master/poky/build/tmp/work/i586-poky-linux/docker/1.9.0&#43;git=
76d6bc9a9f1690e16f3721ba165364688b626de2-r0/temp/log.do_compile.31224)</div=
>
<div>ERROR: Logfile of failure stored in: /home/peter/gaia-qemu-master/poky=
/build/tmp/work/i586-poky-linux/docker/1.9.0&#43;git76d6bc9a9f1690e16f3721b=
a165364688b626de2-r0/temp/log.do_compile.31224</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| /home/peter/gaia-qemu-master/poky/build/tmp/work/i586-poky-linux/doc=
ker/1.9.0&#43;git76d6bc9a9f1690e16f3721ba165364688b626de2-r0/git</div>
<div>| # WARNING! I don't seem to be running in the Docker container.</div>
<div>| # The result of this command might be an incorrect build, and will n=
ot be</div>
<div>| # &nbsp; officially supported.</div>
<div>| #</div>
<div>| # Try this instead: make all</div>
<div>| #</div>
<div>|&nbsp;</div>
<div>| ---&gt; Making bundle: dynbinary (in bundles/1.9.0/dynbinary)</div>
<div>| # runtime/internal/sys</div>
<div>| compile: unknown architecture &quot;i586&quot;</div>
<div>| WARNING: exit code 2 from a shell command.</div>
<div>| ERROR: Function failed: do_compile (log file is located at /home/pet=
er/gaia-qemu-master/poky/build/tmp/work/i586-poky-linux/docker/1.9.0&#43;gi=
t76d6bc9a9f1690e16f3721ba165364688b626de2-r0/temp/log.do_compile.31224)</di=
v>
<div>ERROR: Task 263 (/home/peter/gaia-qemu-master/poky/build/../meta-virtu=
alization/recipes-containers/docker/docker_git.bb, do_compile) failed with =
exit code '1'</div>
<div>NOTE: Tasks Summary: Attempted 3076 tasks of which 3060 didn't need to=
 be rerun and 1 failed.</div>
<div>Waiting for 0 running tasks to finish:</div>
<div><br>
</div>
<div>Summary: 1 task failed:</div>
<div>&nbsp; /home/peter/gaia-qemu-master/poky/build/../meta-virtualization/=
recipes-containers/docker/docker_git.bb, do_compile</div>
<div>Summary: There was 1 WARNING message shown.</div>
<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_BN6PR05MB2851F21407B50335281BC88C9E410BN6PR05MB2851namp_--
