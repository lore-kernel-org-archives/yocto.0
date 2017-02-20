Return-Path: <peter.spierenburg@nautel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E09BAE00480; Mon, 20 Feb 2017 15:29:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3625 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Feb 2017 15:29:51 PST
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0108.outbound.protection.outlook.com [104.47.33.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B4B4E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Feb 2017 15:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nautel.onmicrosoft.com; s=selector1-nautel-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=aXRqYehj1P4mnAmE5dUH7K6YCNIQtFyC2QN6OidT6u0=;
	b=an9L5medYOU1KkOnlMmD/4MUuLvavhocQSUl+pjiB9ekhJiNqaJA1IZcd4mKhUJZk5Nlxb00/sgOU+rBH/zXXuwHIdD9ZyvG4WcMRB94AvQub1xBKbASOUWAjWW/gP7yIiXLSnbrXRSFhhkgKLBGXC0xUYBy8AuLlZWFhDyRrvo=
Received: from BN6PR05MB2851.namprd05.prod.outlook.com (10.168.255.136) by
	BN6PR05MB2850.namprd05.prod.outlook.com (10.168.255.135) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.933.7; Mon, 20 Feb 2017 20:54:15 +0000
Received: from BN6PR05MB2851.namprd05.prod.outlook.com ([10.168.255.136]) by
	BN6PR05MB2851.namprd05.prod.outlook.com ([10.168.255.136]) with mapi id
	15.01.0933.010; Mon, 20 Feb 2017 20:54:15 +0000
From: Peter Spierenburg <peter.spierenburg@nautel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trying to set up a debian package repository for yocto.
Thread-Index: AQHSi7mikz266VA7wE+mtYIiL7Fjew==
Date: Mon, 20 Feb 2017 20:54:15 +0000
Message-ID: <BN6PR05MB2851112DD499FF32B76977489E5E0@BN6PR05MB2851.namprd05.prod.outlook.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=peter.spierenburg@nautel.com; 
x-originating-ip: [25.171.172.4]
x-ms-office365-filtering-correlation-id: 5fccd508-94bc-4e3f-88e2-08d459d2a182
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:BN6PR05MB2850;
x-microsoft-exchange-diagnostics: 1; BN6PR05MB2850;
	7:wjdbFxuSP+Yh4UpBGivvmdIih3OWTZGhyPI3CkSv6igmPsewL05QV8u5o6ulAGj8chBI3I3dIrNYFI9VA0Cs5cT6j4ukuup26wU/90DOhib9qdG5+wHoX79jVCR/ccbASNve45vqxbwjLqPKH13b7yvKOBWzjrNY0/APzcF/WpsElgLdwTcD7z5MYiJvRiJCel34my7/DvKHLRx3PcVSDwQSHBoGeTzxQFLocCJV05HlLLHGpc7EyGXDAucf5oCxjW5eN8rLTvI79gicPHrB3c/nJ59tsb+wEdhPVGuvh1KPYjl7rZ9cbtoJ0qRaovzwvmAkZCcfj0VJlNAQaIbqxw==
x-microsoft-antispam-prvs: <BN6PR05MB28505224D31065E58CAB09F19E5E0@BN6PR05MB2850.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(20161123558025)(6072148);
	SRVR:BN6PR05MB2850; BCL:0; PCL:0; RULEID:; SRVR:BN6PR05MB2850; 
x-forefront-prvs: 02243C58C6
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6019001)(7916002)(39450400003)(269900001)(199003)(189002)(189998001)(122556002)(105586002)(106356001)(966004)(1720100001)(81166006)(97736004)(74316002)(86362001)(101416001)(2351001)(81156014)(450100001)(7736002)(19627405001)(1730700003)(8936002)(50986999)(7906003)(68736007)(8676002)(2900100001)(38730400002)(53936002)(110136004)(106116001)(77096006)(54356999)(606005)(6436002)(6606003)(25786008)(3846002)(102836003)(6116002)(5660300001)(2501003)(6916009)(6506006)(236005)(55016002)(5640700003)(99286003)(6306002)(9686003)(54896002)(66066001)(3660700001)(92566002)(33656002)(3280700002)(2906002)(7696004)(10721665003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR05MB2850;
	H:BN6PR05MB2851.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nautel.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nautel.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2017 20:54:15.1951 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 656f830c-eb88-49fe-90f1-433363ec7ccf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB2850
Subject: Trying to set up a debian package repository for yocto.
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
X-List-Received-Date: Mon, 20 Feb 2017 23:29:55 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_BN6PR05MB2851112DD499FF32B76977489E5E0BN6PR05MB2851namp_"

--_000_BN6PR05MB2851112DD499FF32B76977489E5E0BN6PR05MB2851namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to construct a debian package repository to deploy packages from=
.


I took all the packages from poky/build/tmp/deploy/deb and followed the ins=
tructions at: https://wiki.debian.org/SettingUpSignedAptRepositoryWithRepre=
pro

SettingUpSignedAptRepositoryWithReprepro - Debian Wiki<https://wiki.debian.=
org/SettingUpSignedAptRepositoryWithReprepro>
wiki.debian.org
Introduction. It can be quite useful to be able to distribute your own Debi=
an packages using apt, without having to push them to the Debian project it=
self.

I think I've added all the magic to my yocto build including:

PREFERRED_VERSION_gnupg ?=3D "1.4.7"
PACKAGE_CLASSES ?=3D "package_deb"
IMAGE_INSTALL_append =3D " gpgv"
IMAGE_FEATURES +=3D "package-management"

I've installed my sources.list file which includes

deb http://192.168.7.1/repos/apt/debian stable main

and I've installed my public key with:

$ wget -O - http://192.168.7.1/repos/apt/conf/nautel.gpg.key | apt-key add =
-

however, after all that, I still get:

root@qemuarm:~# apt-get update
Get:1 http://192.168.7.1 stable InRelease [1417 B]
Ign http://192.168.7.1 stable InReleaseg installed in /etc/apt/trusted.gpg.=
d/.
Ign http://192.168.7.1 stable/main armel Packages/DiffIndex
Hit http://192.168.7.1 stable/main armel Packages
Ign http://192.168.7.1 stable/main Translation-en
Fetched 1417 B in 2s (538 B/s)
Reading package lists... Done
W: GPG error: http://192.168.7.1 stable InRelease: Could not execute 'gpgv'=
 to verify signature (is gpgv installed?)

but I'm sure that gpgv is installed:

root@qemuarm:~# which gpgv
/usr/bin/gpgv

When I run it though, it just hangs:

root@qemuarm:~# gpgv -v
gpgv: directory `/home/root/.gnupg' created
gpgv: can't open `/usr/share/gnupg/options.skel': No such file or directory
gpgv: can't allocate lock for `/home/root/.gnupg/trustedkeys.gpg'
gpgv: keyblock resource `/home/root/.gnupg/trustedkeys.gpg': general error

Has anyone else run up against this?

Peter.



--_000_BN6PR05MB2851112DD499FF32B76977489E5E0BN6PR05MB2851namp_
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
<p>I'm trying to construct a debian package repository to deploy packages f=
rom.</p>
<p><br>
</p>
<p>I took all the packages from poky/build/tmp/deploy/deb and followed the =
instructions at:&nbsp;<a href=3D"https://wiki.debian.org/SettingUpSignedApt=
RepositoryWithReprepro" class=3D"OWAAutoLink" id=3D"LPlnk79644" previewremo=
ved=3D"true">https://wiki.debian.org/SettingUpSignedAptRepositoryWithReprep=
ro</a></p>
<div id=3D"LPBorder_GT_14876234378290.7589109444848818" style=3D"margin-bot=
tom: 20px; overflow: auto; width: 100%; text-indent: 0px;">
<table id=3D"LPContainer_14876234378250.4592026039877919" cellspacing=3D"0"=
 style=3D"width: 90%; background-color: rgb(255, 255, 255); position: relat=
ive; overflow: auto; padding-top: 20px; padding-bottom: 20px; margin-top: 2=
0px; border-top: 1px dotted rgb(200, 200, 200); border-bottom: 1px dotted r=
gb(200, 200, 200);">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td id=3D"TextCell_14876234378260.5254006249992771" colspan=3D"2" style=3D"=
vertical-align: top; position: relative; padding: 0px; display: table-cell;=
">
<div id=3D"LPRemovePreviewContainer_14876234378260.11273002230553852"></div=
>
<div id=3D"LPTitle_14876234378260.09788638223875568" style=3D"top: 0px; col=
or: rgb(0, 120, 215); font-weight: normal; font-size: 21px; font-family: wf=
_segoe-ui_light, &quot;Segoe UI Light&quot;, &quot;Segoe WP Light&quot;, &q=
uot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; line-h=
eight: 21px;">
<a id=3D"LPUrlAnchor_14876234378270.9151571142978989" href=3D"https://wiki.=
debian.org/SettingUpSignedAptRepositoryWithReprepro" target=3D"_blank" styl=
e=3D"text-decoration: none;">SettingUpSignedAptRepositoryWithReprepro - Deb=
ian Wiki</a></div>
<div id=3D"LPMetadata_14876234378270.8617771925805409" style=3D"margin: 10p=
x 0px 16px; color: rgb(102, 102, 102); font-weight: normal; font-family: wf=
_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial=
, sans-serif; font-size: 14px; line-height: 14px;">
wiki.debian.org</div>
<div id=3D"LPDescription_14876234378280.08783102645477991" style=3D"display=
: block; color: rgb(102, 102, 102); font-weight: normal; font-family: wf_se=
goe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, s=
ans-serif; font-size: 14px; line-height: 20px; max-height: 100px; overflow:=
 hidden;">
Introduction. It can be quite useful to be able to distribute your own Debi=
an packages using apt, without having to push them to the Debian project it=
self.</div>
</td>
</tr>
</tbody>
</table>
</div>
I think I've added all the magic to my yocto build including:
<div><br>
</div>
<div><span>PREFERRED_VERSION_gnupg ?=3D &quot;1.4.7&quot;</span><br>
</div>
<div><span><span>PACKAGE_CLASSES ?=3D &quot;package_deb&quot;</span><br>
</span></div>
<div><span><span>
<div>IMAGE_INSTALL_append =3D &quot; gpgv&quot;</div>
<div><span style=3D"font-size: 12pt;">IMAGE_FEATURES &#43;=3D &quot;package=
-management&quot;</span><br>
</div>
<div><br>
</div>
<div>I've installed my sources.list file which includes</div>
<div><br>
</div>
<div><span style=3D"font-size: 12pt;">deb http://192.168.7.1/repos/apt/debi=
an stable main</span><br>
</div>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<div><span style=3D"font-size: 12pt;">and I've installed my public key with=
:</span></div>
<div><span style=3D"font-size: 12pt;"><br>
</span></div>
<div><span style=3D"font-size: 12pt;"><span>$&nbsp;wget -O - http://192.168=
.7.1/repos/apt/conf/nautel.gpg.key | apt-key add -</span><br>
</span></div>
<div><span style=3D"font-size: 12pt;"><span><br>
</span></span></div>
<div><span style=3D"font-size: 12pt;"><span>however, after all that, I stil=
l get:</span></span></div>
<div><span style=3D"font-size: 12pt;"><span><br>
</span></span></div>
<div><span style=3D"font-size: 12pt;"><span>
<div>root@qemuarm:~# apt-get update</div>
<div>Get:1 http://192.168.7.1 stable InRelease [1417 B]</div>
<div>Ign http://192.168.7.1 stable InReleaseg installed in /etc/apt/trusted=
.gpg.d/.</div>
<div>Ign http://192.168.7.1 stable/main armel Packages/DiffIndex</div>
<div>Hit http://192.168.7.1 stable/main armel Packages</div>
<div>Ign http://192.168.7.1 stable/main Translation-en</div>
<div>Fetched 1417 B in 2s (538 B/s)</div>
<div>Reading package lists... Done</div>
<div>W: GPG error: http://192.168.7.1 stable InRelease: Could not execute '=
gpgv' to verify signature (is gpgv installed?)</div>
<div><br>
</div>
<div>but I'm sure that gpgv is installed:</div>
<div><br>
</div>
<div>
<div>root@qemuarm:~# which gpgv</div>
<div>/usr/bin/gpgv</div>
<div><br>
</div>
When I run it though, it just hangs:</div>
<div><br>
</div>
<div>
<div>root@qemuarm:~# gpgv -v</div>
<div>gpgv: directory `/home/root/.gnupg' created</div>
<div>gpgv: can't open `/usr/share/gnupg/options.skel': No such file or dire=
ctory</div>
<div>gpgv: can't allocate lock for `/home/root/.gnupg/trustedkeys.gpg'</div=
>
<div>gpgv: keyblock resource `/home/root/.gnupg/trustedkeys.gpg': general e=
rror</div>
<div><br>
</div>
</div>
<div>Has anyone else run up against this?</div>
<div><br>
</div>
<div>Peter.</div>
<div><br>
</div>
<br>
</span></span></div>
</span></span></div>
</div>
</body>
</html>

--_000_BN6PR05MB2851112DD499FF32B76977489E5E0BN6PR05MB2851namp_--
