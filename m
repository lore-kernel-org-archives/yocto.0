Return-Path: <marco.garzola@tecniplast.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 786CBE00D7E; Fri, 17 Jun 2016 03:59:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.115 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0115.outbound.protection.outlook.com [157.55.234.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 252AEE009BF
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tecniplastgroup.onmicrosoft.com; s=selector1-Tecniplast-it;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=j8v7VfrfFz2LIHEyoTtvg8FvI6mJawPTcb4IddLnkDk=;
	b=QOmPItssDcp9XwDA5r1APp6TdQC3ZUSlo+6NR81h8FXEpIi6CkpboYxOzNFHIbcGA1R8Um3f6K38dgTiRt/CTISTOFLX6hNRtB6IIo8G76Je+RgurfnJ++0BxRGy9a3hLE7rcjEtZGUcxDErZF16zfiXFaN/zK44f4BHDKKBBUE=
Received: from AM2PR07MB0594.eurprd07.prod.outlook.com (10.160.33.16) by
	AM2PR07MB0596.eurprd07.prod.outlook.com (10.160.33.18) with Microsoft
	SMTP Server (TLS) id 15.1.517.8; Fri, 17 Jun 2016 10:59:32 +0000
Received: from AM2PR07MB0594.eurprd07.prod.outlook.com ([10.160.33.16]) by
	AM2PR07MB0594.eurprd07.prod.outlook.com ([10.160.33.16]) with mapi id
	15.01.0517.014; Fri, 17 Jun 2016 10:59:32 +0000
From: Marco Garzola <marco.garzola@tecniplast.it>
To: Christopher Larson <clarson@kergoth.com>
Thread-Topic: [yocto] Dynamic PV version in recipe
Thread-Index: AQHRx+D0Y22Q2tx2UEuJqdtW/wr225/sgS0AgAADrcuAAPnsyA==
Date: Fri, 17 Jun 2016 10:59:32 +0000
Message-ID: <AM2PR07MB0594EBC6EFD26F2C346C1062F6570@AM2PR07MB0594.eurprd07.prod.outlook.com>
References: <AM2PR07MB05941BF374AFE7DBF45733D4F6560@AM2PR07MB0594.eurprd07.prod.outlook.com>,
	<CABcZAN=exJ+ygtAHB3uwHnzv4L9Nv713DbJu8AtrS8zqmoK93w@mail.gmail.com>,
	<AM2PR07MB05943A5F1778FABD1D830E43F6560@AM2PR07MB0594.eurprd07.prod.outlook.com>
In-Reply-To: <AM2PR07MB05943A5F1778FABD1D830E43F6560@AM2PR07MB0594.eurprd07.prod.outlook.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=marco.garzola@tecniplast.it; 
x-originating-ip: [25.160.207.4]
x-ms-office365-filtering-correlation-id: d989ce04-a008-48e7-fb5b-08d3969e7696
x-microsoft-exchange-diagnostics: 1; AM2PR07MB0596;
	6:yHImodeNY7CQe4dDweMmlsHmVw12tFYy/70WHG8o53ynrQ9I9NHDcAYDIxJc9W3OVWthqTLkjiIyLu/PDlx+4XSPrrEeNUj+1baSsIOLYC3dhEgDJJIhAHLqDGnhREKPE3HSwlYZ1c++SazNpaDjFqHWd2dArVajUXWVDTCBeY5dlhOJAn8pkzqfBuECPpG8ILTFihmvwHBnCLxA4D6mqIAbA1YswVlbjhEQqIB0ZOD3FNW0n3XEvukqpo3tIRBORtmbOAf7MmJ8+NjrNcB/0h5X1U5jea7/OizwRv/8gwM=;
	5:lRDL9zpXSzLgBzq4YhthJ+5oPtnSJWTjA56BdRVza0TdbVncYn+96xrv5q9++4dykFgsNMDvt8avBFZ5qoLXpoU0QCU/eVhG1iaUDGYeMUZgUc2LAKNen4odHIIb1Kzb6V3aZ0U12dgri7hq9EeZsw==;
	24:g/Y0OcKVqPV4987Jy6dysE32PdmoX834HuDvR3NWyI2TdYvyQu0HGYd7X653uhfYCx4TY2JvYYTS6TqjQ+k3BKIfz2qHTsZDkobw0c687HE=;
	7:ucuR50oJTHx3sOBPlGaCrLfB1oIXCHVn3ZzBYGSFRiN8kSPiG5P7c3+lrkRlHnLcIyx/cr2LgnKewTsSBOugMJQ0+C1mnBlW07ribP5COcB0qh46f5izlMrxZaDBRMBHUBYNUCjzN2PFHmLQt8Ky8/C+k+FSnVA4WL6eqsmkc3ogbjSgR11iOKHQD9si66w+J95VLBd2bNfX9Xgt14EaUg==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR07MB0596;
x-microsoft-antispam-prvs: <AM2PR07MB0596BAF232EC5A301ABCAF00F6570@AM2PR07MB0596.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(158342451672863);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:AM2PR07MB0596; BCL:0; PCL:0; RULEID:; SRVR:AM2PR07MB0596; 
x-forefront-prvs: 09760A0505
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(377454003)(51884002)(199003)(24454002)(189002)(77096005)(2900100001)(2950100001)(11100500001)(87936001)(3280700002)(10400500002)(19580395003)(19580405001)(74316001)(86362001)(122556002)(3660700001)(76576001)(68736007)(5008740100001)(105586002)(54356999)(4326007)(3846002)(19627405001)(101416001)(81156014)(81166006)(106116001)(33656002)(2906002)(19625215002)(50986999)(106356001)(97736004)(8676002)(5002640100001)(16236675004)(110136002)(6116002)(74482002)(189998001)(5004730100002)(102836003)(9686002)(586003)(76176999)(5003600100002)(66066001)(92566002)(8936002)(579124003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM2PR07MB0596;
	H:AM2PR07MB0594.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; CAT:NONE; LANG:en; CAT:NONE; 
received-spf: None (protection.outlook.com: tecniplast.it does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: Tecniplast.it
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2016 10:59:32.6876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a6dc2a1-fc45-40bf-915c-346e96a2837b
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR07MB0596
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dynamic PV version in recipe
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
X-List-Received-Date: Fri, 17 Jun 2016 10:59:39 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_AM2PR07MB0594EBC6EFD26F2C346C1062F6570AM2PR07MB0594eurp_"

--_000_AM2PR07MB0594EBC6EFD26F2C346C1062F6570AM2PR07MB0594eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

hello again,


I tried adding :



python do_package_prepend() {

d.setVar('PKGV', d.getVar("JENKINS_VERSION", True)) print d.getVar('PKGV',T=
rue)

________________________________
Da: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> per con=
to di Marco Garzola <marco.garzola@tecniplast.it>
Inviato: gioved=EC 16 giugno 2016 22.11.25
A: Christopher Larson
Cc: yocto@yoctoproject.org
Oggetto: Re: [yocto] Dynamic PV version in recipe


Hi Christopher,

PKGV seems very interesting to me. is there out there any example to follow=
 ?

if I add something like that at the end of do_compile task should it work?

do_compile(){
#..... do stuff and get in myVersion the revision

{@setVar("PKGV","${myVersion}")}

}


Thanks .

Marco
________________________________
Da: kergoth@gmail.com <kergoth@gmail.com> per conto di Christopher Larson <=
clarson@kergoth.com>
Inviato: gioved=EC 16 giugno 2016 21.51.26
A: Marco Garzola
Cc: yocto@yoctoproject.org
Oggetto: Re: [yocto] Dynamic PV version in recipe

On Thu, Jun 16, 2016 at 8:11 AM, Marco Garzola <marco.garzola@tecniplast.it=
<mailto:marco.garzola@tecniplast.it>> wrote:
I got a problem, maybe someone could help me.I have a recipe that takes fro=
m a jenkins server via json API a binary file with a version that i know on=
ly after do_compile task. the question is : is there any way to tell bitbak=
e that $PV should change dynamically  , maybe in do_install task ? My goal =
is  to create the package with  the revision read from jenkins.

PV has to be set at parse time, up front, so bitbake can use it in stamps t=
o help determine when tasks need to be run, as well as including it in WORK=
DIR and whatnot.

If all you want is to change the version in the emitted binary packages, yo=
u can dynamically set PKGV, i.e. add a prefunc before do_package which read=
s the PKGV. Of course, making sure it re-runs the appropriate tasks when th=
at value changes is rather less trivial, since bitbake generates signatures=
/checksums at parse time.

Alternatively, would it be possible to contact the server via the json API =
at parse time as long as BB_NO_NETWORK isn't set? Of course, unless there's=
 a way to support the BB_NO_NETWORK case, that would be problematic as well=
.
--
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--_000_AM2PR07MB0594EBC6EFD26F2C346C1062F6570AM2PR07MB0594eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><span>hello again,</span></p>
<p><span><br>
</span></p>
<p><span>I tried adding :<br>
</span></p>
<p><br>
<span></span></p>
<p><span><br>
</span></p>
<p><span>python do_package_prepend() { <br>
</span></p>
<p><span>d.setVar('PKGV', d.getVar(&quot;JENKINS_VERSION&quot;, True)) prin=
t d.getVar('PKGV',True)
</span><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Da:</b> yocto-bounces@yoctoproj=
ect.org &lt;yocto-bounces@yoctoproject.org&gt; per conto di Marco Garzola &=
lt;marco.garzola@tecniplast.it&gt;<br>
<b>Inviato:</b> gioved=EC 16 giugno 2016 22.11.25<br>
<b>A:</b> Christopher Larson<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Oggetto:</b> Re: [yocto] Dynamic PV version in recipe</font>
<div>&nbsp;</div>
</div>
<div><style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;=
margin-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<div><br>
</div>
<div>Hi&nbsp;<span style=3D"color: rgb(33, 33, 33); font-size: 15px;">Chris=
topher,</span></div>
<div><span style=3D"color: rgb(33, 33, 33); font-size: 15px;"><br>
</span></div>
<div>PKGV seems very interesting to me. is there out there&nbsp;any example=
 to follow ?</div>
<div><br>
</div>
<div>if I add something like that at the end of do_compile task should it w=
ork?</div>
<div><br>
</div>
<div>do_compile(){</div>
<div>#..... do stuff and get in myVersion the revision&nbsp;</div>
<div><br>
</div>
<div>{@setVar(&quot;PKGV&quot;,&quot;${myVersion}&quot;)}</div>
<div><br>
</div>
<div>}</div>
<div><br>
</div>
<div><br>
</div>
<div>Thanks .</div>
<div><br>
</div>
<div>Marco</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Da:</b> kergoth@gmail.com &lt;k=
ergoth@gmail.com&gt; per conto di Christopher Larson &lt;clarson@kergoth.co=
m&gt;<br>
<b>Inviato:</b> gioved=EC 16 giugno 2016 21.51.26<br>
<b>A:</b> Marco Garzola<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Oggetto:</b> Re: [yocto] Dynamic PV version in recipe</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra">
<div class=3D"gmail_quote">On Thu, Jun 16, 2016 at 8:11 AM, Marco Garzola <=
span dir=3D"ltr">
&lt;<a href=3D"mailto:marco.garzola@tecniplast.it" target=3D"_blank">marco.=
garzola@tecniplast.it</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I got a problem, maybe someone could help me.I have a recipe that takes fro=
m a jenkins server via json API a binary file with a version that i know on=
ly after do_compile task. the question is : is there any way to tell bitbak=
e that $PV should change dynamically&nbsp;
 , maybe in do_install task ? My goal is&nbsp; to create the package with&n=
bsp; the revision read from jenkins.</blockquote>
</div>
<br>
<div>PV has to be set at parse time, up front, so bitbake can use it in sta=
mps to help determine when tasks need to be run, as well as including it in=
 WORKDIR and whatnot.</div>
<div><br>
</div>
<div>If all you want is to change the version in the emitted binary package=
s, you can dynamically set PKGV, i.e. add a prefunc before do_package which=
 reads the PKGV. Of course, making sure it re-runs the appropriate tasks wh=
en that value changes is rather
 less trivial, since bitbake generates signatures/checksums at parse time.<=
/div>
<div><br>
</div>
<div>Alternatively, would it be possible to contact the server via the json=
 API at parse time as long as BB_NO_NETWORK isn't set? Of course, unless th=
ere's a way to support the BB_NO_NETWORK case, that would be problematic as=
 well.</div>
-- <br>
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Christoph=
er Larson<br>
clarson at kergoth dot com<br>
Founder - BitBake, OpenEmbedded, OpenZaurus<br>
Maintainer - Tslib<br>
Senior Software Engineer, Mentor Graphics</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_AM2PR07MB0594EBC6EFD26F2C346C1062F6570AM2PR07MB0594eurp_--
