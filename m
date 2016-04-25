Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 476BAE00931; Mon, 25 Apr 2016 09:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0088.outbound.protection.outlook.com [65.55.169.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0147E00849
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 09:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=otDfn8FEpLAtiWlbItnLxOYKGNYn0z/g9oUrKWWEG48=;
	b=182dzU4Iw/IHKimAk9RB1jHB37Ncm4MqF+GP7zZLYxQUK0gznjsuP4k9hOstN+FYVTYXgzIHReX7HI1bRmesSr87WtmWaoTCBhgHBslPcY2PLyhnsPYpWs+VcGuxtBd6yBygCWYPw2mAvLPyGSyp10PvRTf/n8j5I8w1BSGIBYE=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1596.namprd07.prod.outlook.com (10.162.110.15) with
	Microsoft SMTP
	Server (TLS) id 15.1.466.19; Mon, 25 Apr 2016 16:10:16 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0466.025; Mon, 25 Apr 2016 16:10:16 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Fetcher failure: Unable to find revision
	2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
	upstream
Thread-Index: AQHRnvYtSwgidqLbqEOk4YMTyaEoK5+aw4aAgAAXEwI=
Date: Mon, 25 Apr 2016 16:10:16 +0000
Message-ID: <BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>,
	<CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
In-Reply-To: <CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [64.2.3.194]
x-ms-office365-filtering-correlation-id: a8f03fb9-5e78-4dff-20b7-08d36d24176f
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1596;
	5:+8rujP3IuXVM5ObVRbTI+Q2BVyKqkJr9/lbXAMgfKw8y0X7RChE7uI5qXfu1zmLduKMXm8IEnP9GZCPCxc0MuhJ3OfBFMlJln7Yd65T6vTJJo4MI9I7rclUmdDGp60cgTkTKL+Q4AbTBIcqA5alZddhJIjWg4vYx2s66X99IvRV9KgjkGAfAcEc9tNiurxnm;
	24:hhoILwg8bdRBN8HLxXAq469pF0M6CcwAsTUW8mXeGJrcI/SGjNvHn1UBq4u95woM5jL/K4Oby1AZAYM9bUgNOXJI6sIADNsAOl3LWvSswPg=;
	7:qkc8yMg0Yfga8eEIJilnKEOtY+b96Tj2df284VHaG0jreQdA6vUt9KF9K4jMHSPUhp6CeNjVY8+sUCrlP+RpF81R0Ix2xOJOqvKss73v0mmOYLtUkw0Fm1lh2Q4ZTuK8tqKnzZ89SYq112IJeQOncVnHhLZauR5eyoakc3Ca32zLW6dJox4Ra7DBYZMry+F20pAEJpAB4ECpI9KixA8cIzftysp51b9Sx169mPZ+TE0=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1596;
x-microsoft-antispam-prvs: <BY1PR0701MB15963C0ACA95AE3D80E8B01BE1620@BY1PR0701MB1596.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521064)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY1PR0701MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1596; 
x-forefront-prvs: 0923977CCA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(377454003)(24454002)(33656002)(5008740100001)(87936001)(81166005)(19580405001)(76176999)(54356999)(189998001)(76576001)(19627405001)(106116001)(50986999)(110136002)(19625215002)(66066001)(10400500002)(4326007)(122556002)(74316001)(3280700002)(3660700001)(11100500001)(5004730100002)(77096005)(1096002)(1220700001)(2900100001)(3900700001)(9686002)(5002640100001)(3846002)(2950100001)(19580395003)(92566002)(16236675004)(586003)(86362001)(6116002)(5003600100002)(102836003)(2906002)(15760500001)(37363001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1596;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2016 16:10:16.5499 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1596
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
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
X-List-Received-Date: Mon, 25 Apr 2016 16:10:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BY1PR0701MB159480B842DF78C33DA2A161E1620BY1PR0701MB1594_"

--_000_BY1PR0701MB159480B842DF78C33DA2A161E1620BY1PR0701MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Monday, April 25, 2016 8:12 PM
To: Jaggi, Manish
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Fetcher failure: Unable to find revision 2134d97aa3a7c=
e38bb51f933f2e20cafde371085 in branch master even from upstream


On 25 April 2016 at 14:30, Jaggi, Manish <Manish.Jaggi@caviumnetworks.com<m=
ailto:Manish.Jaggi@caviumnetworks.com>> wrote:
It seems the revid / tag is not on any branch
git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
returns nothing.

How to fix this issue ?

You probably want to use git branch -r --contains 213... as otherwise git b=
ranch will only list local branches.  The web UI says that this commit exis=
ts on master though...

[Manish] Same output with -r.
Can you please share the link of web ui. As per the error it is not on mast=
er branch.


Ross

--_000_BY1PR0701MB159480B842DF78C33DA2A161E1620BY1PR0701MB1594_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Candara,Sans-Serif;">
<p><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Monday, April 25, 2016 8:12 PM<br>
<b>To:</b> Jaggi, Manish<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Fetcher failure: Unable to find revision 2134d9=
7aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 25 April 2016 at 14:30, Jaggi, Manish <span d=
ir=3D"ltr">
&lt;<a href=3D"mailto:Manish.Jaggi@caviumnetworks.com" target=3D"_blank" ti=
tle=3D"mailto:Manish.Jaggi@caviumnetworks.com=0A=
Ctrl&#43;Click or tap to follow the link">Manish.Jaggi@caviumnetworks.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left-width:1px; border-left-color:rgb(204,204,204); border-left-style:soli=
d; padding-left:1ex">
<div>It seems the revid / tag is not on any branch</div>
<div>git branch &nbsp;--contains 2134d97aa3a7ce38bb51f933f2e20cafde371085&n=
bsp;<br>
</div>
<div>returns nothing.</div>
<div><br>
</div>
<div>How to fix this issue ?</div>
</blockquote>
</div>
<br>
You probably want to use git branch -r --contains 213... as otherwise git b=
ranch will only list local branches.&nbsp; The web UI says that this commit=
 exists on master though...</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">[Manish] Same output with -r.</div>
<div class=3D"gmail_extra">Can you please share the link of web ui. As per =
the error it is not on master branch.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BY1PR0701MB159480B842DF78C33DA2A161E1620BY1PR0701MB1594_--
