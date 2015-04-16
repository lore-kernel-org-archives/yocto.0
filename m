Return-Path: <EBolton@agjunction.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69CCAE008F6; Thu, 16 Apr 2015 08:05:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0133.outbound.protection.outlook.com [157.56.110.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43258E00306
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 08:05:26 -0700 (PDT)
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) by
	DM2PR0201MB1087.namprd02.prod.outlook.com (25.160.221.144) with
	Microsoft
	SMTP Server (TLS) id 15.1.136.17; Thu, 16 Apr 2015 15:05:25 +0000
Received: from DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) by
	DM2PR0201MB1087.namprd02.prod.outlook.com ([25.160.221.144]) with
	mapi id 15.01.0136.026; Thu, 16 Apr 2015 15:05:25 +0000
From: Erik Bolton <EBolton@agjunction.com>
To: Laurent Eschenauer <laurent@eschenauer.be>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] A simpler way to apply custom config files to an image ?
Thread-Index: AQHQeFAvilLC/4nS1Eu9slMjkMZXFp1PvOc0
Date: Thu, 16 Apr 2015 15:05:24 +0000
Message-ID: <DM2PR0201MB1087F0C18454B8863D9BD2BFCCE40@DM2PR0201MB1087.namprd02.prod.outlook.com>
References: <552FAFAF.30005@eschenauer.be>
In-Reply-To: <552FAFAF.30005@eschenauer.be>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: eschenauer.be; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [72.201.0.208]
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM2PR0201MB1087;
x-microsoft-antispam-prvs: <DM2PR0201MB10877E26F7A94CDD27EA78C7CCE40@DM2PR0201MB1087.namprd02.prod.outlook.com>
x-forefront-antispam-report: BMV:1; SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(40764003)(19580395003)(74316001)(19580405001)(122556002)(2900100001)(76176999)(50986999)(54356999)(106116001)(102836002)(86362001)(62966003)(77156002)(19625215002)(16236675004)(33656002)(40100003)(2950100001)(2501003)(2656002)(87936001)(66066001)(99286002)(46102003)(107886001)(92566002)(4001410100001)(76576001)(80792005)(43043002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0201MB1087;
	H:DM2PR0201MB1087.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(5002010); SRVR:DM2PR0201MB1087; BCL:0;
	PCL:0; RULEID:; SRVR:DM2PR0201MB1087; 
x-forefront-prvs: 0548586081
MIME-Version: 1.0
X-OriginatorOrg: agjunction.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2015 15:05:24.5423 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f7bd4f9-3eab-4e10-b6c3-fdfbbaf69f20
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB1087
Subject: Re: A simpler way to apply custom config files to an image ?
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
X-List-Received-Date: Thu, 16 Apr 2015 15:05:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM2PR0201MB1087F0C18454B8863D9BD2BFCCE40DM2PR0201MB1087_"

--_000_DM2PR0201MB1087F0C18454B8863D9BD2BFCCE40DM2PR0201MB1087_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey Laurent:

Is your config recipe being built before all the recipes with the default c=
onfig files and overriding your config files?

In that case I would make anything with a config file that you want to over=
ride a dependency of your config recipe.

What's the actual error?

-Erik

Sent from my Verizon 4G LTE Smartphone

----- Reply message -----
From: "Laurent Eschenauer" <laurent@eschenauer.be>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] A simpler way to apply custom config files to an image ?
Date: Thu, Apr 16, 2015 7:18 AM

Hello,

I'm stuck on something that I would have assumed trivial and can't
managed to do and hope someone can point me to a best practice.

I want to customize various config file of an image I'm building (e.g.
network interfaces, sshd banner, hostapd, etc..).

To make this simple, I wrote my own recipe called 'custom-config' and
bundled in there all my config files. Then copying them in the on_install.

do_install () {
   install -m 0755 -d ${D}${sysconfdir}
   install -b -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}
   install -b -m 0644 ${WORKDIR}/hostapd.conf ${D}${sysconfdir}
   ....
}

It works great for files that are not provided by packages (e.g.
udhcpd.conf), however it does not work for files already provided by
another package (e.g. hostapd.conf). I've tried adding the backup flag
to install but this did not help.

It seems the recommended way to do this is by extending each individual
recipe with bbappend and provide an updated config file. This works
great, although quite heavy for just updating a single config file.

More over, this does not work when the config file is not in the recipe
but coming from sources archive. This is the case with hostapd.conf from
recipe hostapd.

Questions:

- Is my idea of a single 'config' recipe completely stupid ? is there
any way to make it work ? It seems the simpler approach.

- If not possible and I have to stick with bbappend to every recipe
concerned, then how could I do it in the case of a config file coming
from the source package instead of the recipe ?

Thanks for your help !

Best,

Laurent





Disclaimer: This message contains information that may be privileged or con=
fidential and is the property of AgJunction Inc and its subsidiaries. It is=
 intended only for the person to whom it is addressed. If you are not the i=
ntended recipient, you are not authorized to read, print, retain, copy, dis=
seminate, distribute, or use this message or any part thereof. If you recei=
ve this message in error, please notify the sender immediately and delete a=
ll copies of this message.

--_000_DM2PR0201MB1087F0C18454B8863D9BD2BFCCE40DM2PR0201MB1087_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta name=3D"x_Generator" content=3D"Microsoft Exchange Server">
<style>
<!--
.x_EmailQuote
	{margin-left:1pt;
	padding-left:4pt;
	border-left:#800000 2px solid}
-->
</style>
<div>
<div style=3D"font-family:'Calibri','sans-serif'">
<div>Hey Laurent:</div>
<div><br>
</div>
<div>Is your config recipe being built before all the recipes with&nbsp;the=
 default config files and overriding your config files?</div>
<div><br>
</div>
<div>In that case I would make anything with a config file that you want to=
 override a dependency of your config recipe.&nbsp;</div>
<div><br>
</div>
<div>What's the actual error?&nbsp;</div>
<div><br>
</div>
<div>-Erik</div>
<div><br>
</div>
<div>Sent from my Verizon 4G LTE Smartphone</div>
<br>
<div id=3D"x_htc_header">----- Reply message -----<br>
From: &quot;Laurent Eschenauer&quot; &lt;laurent@eschenauer.be&gt;<br>
To: &quot;yocto@yoctoproject.org&quot; &lt;yocto@yoctoproject.org&gt;<br>
Subject: [yocto] A simpler way to apply custom config files to an image ?<b=
r>
Date: Thu, Apr 16, 2015 7:18 AM</div>
</div>
<br>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hello,<br>
<br>
I'm stuck on something that I would have assumed trivial and can't<br>
managed to do and hope someone can point me to a best practice.<br>
<br>
I want to customize various config file of an image I'm building (e.g.<br>
network interfaces, sshd banner, hostapd, etc..).<br>
<br>
To make this simple, I wrote my own recipe called 'custom-config' and<br>
bundled in there all my config files. Then copying them in the on_install.<=
br>
<br>
do_install () {<br>
&nbsp;&nbsp; install -m 0755 -d ${D}${sysconfdir}<br>
&nbsp;&nbsp; install -b -m 0644 ${WORKDIR}/udhcpd.conf ${D}${sysconfdir}<br=
>
&nbsp;&nbsp; install -b -m 0644 ${WORKDIR}/hostapd.conf ${D}${sysconfdir}<b=
r>
&nbsp;&nbsp; ....<br>
}<br>
<br>
It works great for files that are not provided by packages (e.g.<br>
udhcpd.conf), however it does not work for files already provided by<br>
another package (e.g. hostapd.conf). I've tried adding the backup flag<br>
to install but this did not help.<br>
<br>
It seems the recommended way to do this is by extending each individual<br>
recipe with bbappend and provide an updated config file. This works<br>
great, although quite heavy for just updating a single config file.<br>
<br>
More over, this does not work when the config file is not in the recipe<br>
but coming from sources archive. This is the case with hostapd.conf from<br=
>
recipe hostapd.<br>
<br>
Questions:<br>
<br>
- Is my idea of a single 'config' recipe completely stupid ? is there<br>
any way to make it work ? It seems the simpler approach.<br>
<br>
- If not possible and I have to stick with bbappend to every recipe<br>
concerned, then how could I do it in the case of a config file coming<br>
from the source package instead of the recipe ?<br>
<br>
Thanks for your help !<br>
<br>
Best,<br>
<br>
Laurent<br>
<br>
<br>
<br>
<br>
<br>
</div>
</span></font>Disclaimer: This message contains information that may be pri=
vileged or confidential and is the property of AgJunction Inc and its subsi=
diaries. It is intended only for the person to whom it is addressed. If you=
 are not the intended recipient,
 you are not authorized to read, print, retain, copy, disseminate, distribu=
te, or use this message or any part thereof. If you receive this message in=
 error, please notify the sender immediately and delete all copies of this =
message.
</body>
</html>

--_000_DM2PR0201MB1087F0C18454B8863D9BD2BFCCE40DM2PR0201MB1087_--
