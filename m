Return-Path: <EBolton@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F0E7E008CA; Wed, 18 Mar 2015 23:38:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.56.111.109 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bbn0109.outbound.protection.outlook.com [157.56.111.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20A9E00718
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 23:38:22 -0700 (PDT)
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) by
	DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) with
	Microsoft
	SMTP Server (TLS) id 15.1.125.14; Thu, 19 Mar 2015 06:22:46 +0000
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) by
	DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) with
	mapi id 15.01.0125.002; Thu, 19 Mar 2015 06:22:46 +0000
From: Erik Bolton <EBolton@agjunction.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Local YUM Repo
Thread-Index: AQHQYgxi24Cv2vq5E0iaK5nm11pKDQ==
Date: Thu, 19 Mar 2015 06:22:45 +0000
Message-ID: <1426746167337.64077@agjunction.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [72.201.254.213]
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0201MB1087;
x-microsoft-antispam-prvs: <DM2PR0201MB108756CD98D73939D31DCD25CC010@DM2PR0201MB1087.namprd02.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(53754006)(69234005)(106116001)(2351001)(110136001)(16236675004)(87936001)(2656002)(66066001)(36756003)(19625215002)(107886001)(19627405001)(229853001)(117636001)(2900100001)(19580395003)(92566002)(77156002)(450100001)(62966003)(86362001)(50986999)(40100003)(122556002)(99286002)(54356999)(102836002)(46102003)(2501003)(80792004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0201MB1087;
	H:DM2PR0201MB1087.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:DM2PR0201MB1087; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0201MB1087; 
x-forefront-prvs: 052017CAF1
MIME-Version: 1.0
X-OriginatorOrg: agjunction.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Mar 2015 06:22:45.9670 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB1087
Subject: Local YUM Repo
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
X-List-Received-Date: Thu, 19 Mar 2015 06:38:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_142674616733764077agjunctioncom_"

--_000_142674616733764077agjunctioncom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hey All:


I'm trying to setup a local YUM repo using the RPMs in <project>/tmp/deploy=
/rpm/<arch>


I've added a .repo file to /etc/yum/repos.d with the following lines:


[local]
name=3Dyocto-core2_32
baseurl=3Dfile:///home/ebolton/yocto/poky/build-max/tmp/deploy/rpm/core2_32
enabled=3D1
gpgcheck=3D0


and setup my main yum.conf file with:


[main]
cachedir=3D/var/cache/yum
keepcache=3D1
debuglevel=3D10
logfile=3D/var/log/yum.log
obsoletes=3D1
exactarch=3D0
multilib_policy=3Dall
protected_multilib=3D0

# PUT YOUR REPOS HERE OR IN separate files named file.repo
# in /etc/yum/repos.d

Yum parses the repodata dir just fine and counts the number of packages cor=
rectly, but it's excluding them all for some reason. This is the output fro=
m "yum repolist":

Config time: 0.010
Yum Version: 3.4.3
COMMAND: yum repolist
Installroot: /
Setting up Package Sacks
pkgsack time: 0.001
Repo-id      : local
Repo-name    : yocto-core2_32
Repo-updated : Wed Mar 18 21:54:18 2015
Repo-pkgs    : 0
Repo-size    : 0
Repo-baseurl : file:///home/ebolton/yocto/poky/build-max/tmp/deploy/rpm/cor=
e2_32
Repo-expire  : 21,600 second(s) (last: Wed Mar 18 23:01:51 2015)
Repo-excluded: 4,599
Repo-filename: ///etc/yum/repos.d/local.repo

repolist: 0

Any thoughts as to why all my packages are being excluded? FYI, using "--di=
sableexcludes=3D[repo]?" with yum doesn't help.

Thanks.
-Erik



Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized to read, print, retain, copy, dis=
seminate, distribute, or use this message or any part thereof. If you recei=
ve this message in error, please notify the sender immediately and delete a=
ll copies of this message.

--_000_142674616733764077agjunctioncom_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hey All:<br>
</p>
<p><br>
</p>
<p>I'm trying to setup a local YUM repo using the RPMs in &lt;project&gt;/t=
mp/deploy/rpm/&lt;arch&gt;<br>
</p>
<p><br>
</p>
<p>I've added a&nbsp;.repo file to /etc/yum/repos.d with the following line=
s:<br>
</p>
<p><br>
</p>
<div>[local]<br>
</div>
<div>name=3Dyocto-core2_32</div>
<div>baseurl=3Dfile:///home/ebolton/yocto/poky/build-max/tmp/deploy/rpm/cor=
e2_32</div>
<div>enabled=3D1</div>
<div>gpgcheck=3D0<br>
</div>
<p><br>
</p>
<p>and setup my main&nbsp;yum.conf file with:<br>
</p>
<p><br>
</p>
<div>[main]</div>
<div>cachedir=3D/var/cache/yum</div>
<div>keepcache=3D1</div>
<div>debuglevel=3D10</div>
<div>logfile=3D/var/log/yum.log</div>
<div>obsoletes=3D1</div>
<div>exactarch=3D0</div>
<div>multilib_policy=3Dall</div>
<div>protected_multilib=3D0</div>
<div><br>
</div>
<div># PUT YOUR REPOS HERE OR IN separate files named file.repo</div>
<div># in /etc/yum/repos.d</div>
<div><br>
Yum parses the repodata dir just fine and counts the number of packages cor=
rectly, but it's excluding them all for some reason. This is the output fro=
m &quot;yum repolist&quot;:<br>
</div>
<div><br>
</div>
<div>
<div>Config time: 0.010</div>
<div>Yum Version: 3.4.3</div>
<div>COMMAND: yum repolist&nbsp;</div>
<div>Installroot: /</div>
<div>Setting up Package Sacks</div>
<div>pkgsack time: 0.001</div>
<div>Repo-id &nbsp; &nbsp; &nbsp;: local</div>
<div>Repo-name &nbsp; &nbsp;: yocto-core2_32</div>
<div>Repo-updated : Wed Mar 18 21:54:18 2015</div>
<div>Repo-pkgs &nbsp; &nbsp;: 0</div>
<div>Repo-size &nbsp; &nbsp;: 0</div>
<div>Repo-baseurl : file:///home/ebolton/yocto/poky/build-max/tmp/deploy/rp=
m/core2_32</div>
<div>Repo-expire &nbsp;: 21,600 second(s) (last: Wed Mar 18 23:01:51 2015)<=
/div>
<div>Repo-excluded: 4,599</div>
<div>Repo-filename: ///etc/yum/repos.d/local.repo</div>
<div><br>
</div>
<div>repolist: 0</div>
<div><br>
Any thoughts as to why all my packages are being excluded? FYI, using &quot=
;--disableexcludes=3D[repo]&#8203;&quot; with yum doesn't help.<br>
</div>
<div><br>
</div>
<div>Thanks.<br>
</div>
<div>-Erik<br>
</div>
<br>
</div>
<p><br>
</p>
</div>
Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized
 to read, print, retain, copy, disseminate, distribute, or use this message=
 or any part thereof. If you receive this message in error, please notify t=
he sender immediately and delete all copies of this message.
</body>
</html>

--_000_142674616733764077agjunctioncom_--
