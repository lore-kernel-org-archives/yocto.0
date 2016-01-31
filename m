Return-Path: <kzertsekel@mrv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDF11E00B99; Sun, 31 Jan 2016 04:36:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_IMAGE_ONLY_32, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
X-Greylist: delayed 871 seconds by postgrey-1.32 at yocto-www;
	Sun, 31 Jan 2016 04:36:33 PST
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0139.outbound.protection.outlook.com [157.56.112.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05864E00B88
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 04:36:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mrvil.onmicrosoft.com; 
	s=selector1-mrv-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1m5/nsOFYHLi+jxNydxuYfEjDJXudDBe/OiU2fFvQqY=;
	b=X6sAM6KBii0Sun5w/JdRp3c7lV7OxHEDHaZOcm67Gm9DSipw530plURFpL0ifZC6KfUChrxCNJisA61IAmzb/oY71/fA/vhxx6XRvd92sEUf/oLCMc04yej1VfHryTy3UizafBW7XaRShtq+gMJQpvff4ICNUB2DwvF3/2eme6k=
Received: from VI1PR03MB1567.eurprd03.prod.outlook.com (10.165.233.25) by
	VI1PR03MB1375.eurprd03.prod.outlook.com (10.163.249.141) with Microsoft
	SMTP Server (TLS) id 15.1.396.15; Sun, 31 Jan 2016 12:22:00 +0000
Received: from VI1PR03MB1567.eurprd03.prod.outlook.com ([10.165.233.25]) by
	VI1PR03MB1567.eurprd03.prod.outlook.com ([10.165.233.25]) with mapi id
	15.01.0390.019; Sun, 31 Jan 2016 12:22:00 +0000
From: "Kosta  Zertsekel" <kzertsekel@mrv.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto for NFS/SDN networking product
Thread-Index: AQHRXCGPRLGQAM1iZU+g/woRY0EIew==
Date: Sun, 31 Jan 2016 12:22:00 +0000
Message-ID: <VI1PR03MB15676A1DE3EB2E80783D2D79DADD0@VI1PR03MB1567.eurprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mrv.com; dkim=none (message not signed)
	header.d=none;mrv.com; dmarc=none action=none header.from=mrv.com;
x-originating-ip: [194.90.138.234]
x-microsoft-exchange-diagnostics: 1; VI1PR03MB1375;
	5:CDXUH9pLM6dUAw5eXZsANqFVS1ngfNCbjv6/cV7ky5HsMv+D0JZLdPbZIhxwSRSXPe219/Z3bP0ypcvcYL1iqzU+LmLoNB+6jp2XHhSRZANDj6N1vPKpErWN18nsb/Imub/N/Fqw0QL7oFh3aDc4yw==;
	24:lhv7Oc6rnezg3NYOu5aY3Ucq8gbdxyOPKy6BZpanBll76Jp73H69OZuhGvr8djB8aZWWdXUgVgSM/Cawvpz1rCJEi0DP1mw8gbUTPubZ6jc=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR03MB1375;
x-ms-office365-filtering-correlation-id: 5535828b-098a-4291-1b96-08d32a391e96
x-microsoft-antispam-prvs: <VI1PR03MB1375212C9EED94CA4E770A45DADD0@VI1PR03MB1375.eurprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:VI1PR03MB1375; BCL:0; PCL:0; RULEID:; SRVR:VI1PR03MB1375; 
x-forefront-prvs: 08381C729B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(164054003)(243025005)(3660700001)(1730700002)(40100003)(6116002)(3280700002)(5003600100002)(1096002)(11100500001)(189998001)(450100001)(5008740100001)(102836003)(3846002)(3470700001)(4326007)(5002640100001)(586003)(2906002)(5001960100002)(16601075003)(33656002)(110136002)(19625215002)(19617315012)(16236675004)(66066001)(2501003)(19618635001)(87936001)(15975445007)(77096005)(92566002)(1220700001)(86362001)(50986999)(54356999)(106116001)(74316001)(2900100001)(76576001)(18206015028)(2351001)(19580395003)(19627405001)(229853001)(122556002)(7099028);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR03MB1375;
	H:VI1PR03MB1567.eurprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mrv.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2016 12:22:00.2465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3324ef19-dd38-46a1-8379-2a2bdaace805
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR03MB1375
Cc: Ran Wainstein <rwainstein@mrv.com>
Subject: Yocto for NFS/SDN networking product
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
X-List-Received-Date: Sun, 31 Jan 2016 12:36:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR03MB15676A1DE3EB2E80783D2D79DADD0VI1PR03MB1567eurp_"

--_000_VI1PR03MB15676A1DE3EB2E80783D2D79DADD0VI1PR03MB1567eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi dear Yocto community,


I'm trying to evaluate Yocto as the candidate to create Linux distro

for NFS/SDN networking product. Through Google I get an impression

that there is a race between Yocto, CentOS (RedHat) and 6WIND

Linux distributions to get most of NFV/SDN Linux distro market.


Can you please help to find cons and pros of using Yocto for

NFV/SDN networking product?


I google over NFV/SDN part of www.etsi.org<http://www.etsi.org> but couldn'=
t make up

my mind what specific distro got the traction.


I see that Yocto has NFV/SDN layers (reference<http://events.linuxfoundatio=
n.org/sites/events/files/slides/YP_and_OpenStack_LinuxCon2014.pdf>):

```
git clone git://git.yoctoproject.org/meta-cloud-services
git clone git://git.openembedded.org/meta-openembedded
git clone --branch icehouse git://git.yoctoproject.org/meta-virtualization
git clone git://git.openembedded.org/openembedded-core oe-core
```


Are these layers officially supported by Intel?

Does Intel provide the NFV/SDN support?


Thanks,

--- KostaZ

[E-Banner]<http://www.mrv.com/blog>


MRV Communications is a global supplier of packet and optical solutions tha=
t power the world's largest networks. Our products combine innovative hardw=
are with intelligent software to make networks smarter, faster and more eff=
icient.



The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the sender, delete this message and any attachm=
ents and note that any distribution, or copying of this message, or any att=
achment, is prohibited.

--_000_VI1PR03MB15676A1DE3EB2E80783D2D79DADD0VI1PR03MB1567eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi dear Yocto community,</p>
<p><br>
</p>
<p>I'm trying to evaluate Yocto as the candidate to create&nbsp;Linux distr=
o</p>
<p>for NFS/SDN networking product. Through Google I get an impression</p>
<p>that there is a race between Yocto, CentOS (RedHat) and 6WIND</p>
<p>Linux distributions&nbsp;<span style=3D"font-size: 12pt;">to get most of=
 NFV/SDN Linux distro&nbsp;market.</span></p>
<p><br>
</p>
<p>Can you please help to find cons and pros of using Yocto for</p>
<p>NFV/SDN networking product?</p>
<p><br>
</p>
<p>I google over NFV/SDN part of&nbsp;<a href=3D"http://www.etsi.org" id=3D=
"LPlnk539553" title=3D"http://www.etsi.org=0A=
Ctrl&#43;Click or tap to follow the link">www.etsi.org</a>&nbsp;but couldn'=
t make up</p>
<p>my mind what specific&nbsp;distro got the&nbsp;traction.</p>
<p><br>
</p>
<p>I see that Yocto has NFV/SDN layers (<a href=3D"http://events.linuxfound=
ation.org/sites/events/files/slides/YP_and_OpenStack_LinuxCon2014.pdf" titl=
e=3D"http://events.linuxfoundation.org/sites/events/files/slides/YP_and_Ope=
nStack_LinuxCon2014.pdf=0A=
Ctrl&#43;Click or tap to follow the link">reference</a>):</p>
<p></p>
<div>```<br>
</div>
<div>git clone git://git.yoctoproject.org/meta-cloud-services<br>
</div>
<div>git clone git://git.openembedded.org/meta-openembedded</div>
<div>git clone --branch icehouse git://git.yoctoproject.org/meta-virtualiza=
tion<br>
</div>
<div>git clone git://git.openembedded.org/openembedded-core oe-core<br>
</div>
<div>```<br>
</div>
<br>
<p></p>
<p>Are these layers officially supported by Intel?<br>
</p>
<p>Does Intel provide the NFV/SDN support?<br>
</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- KostaZ</p>
</div>
<a href=3D"http://www.mrv.com/blog"><img src=3D"http://www.mrv.com/images/B=
log_Banner.jpg" alt=3D"E-Banner"></a><br>
&nbsp;<br>
<div style=3D"background-color:#FFFFFF; padding:.8em; ">
<p style=3D"font-size:10pt;color:#b8b9c8; line-height:8pt; font-family:  =
=0A=
'arial','times roman',serif;">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world&#8217;s largest networks. Our products combine innovative=
 hardware with intelligent software to make networks smarter, faster and mo=
re efficient.</p>
</div>
&nbsp;<br>
<div style=3D"background-color:#FFFFFF; padding:.8em; ">
<p style=3D"font-size:8pt;color:#b8b9c8; line-height:8pt; font-family:  =0A=
'arial','times roman',serif;">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</body>
</html>

--_000_VI1PR03MB15676A1DE3EB2E80783D2D79DADD0VI1PR03MB1567eurp_--
