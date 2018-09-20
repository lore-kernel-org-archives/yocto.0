Return-Path: <MohamedYouseif@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEF3EE00720; Thu, 20 Sep 2018 14:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohamedyouseif[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.72.33 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 39551 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Sep 2018 14:31:15 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072033.outbound.protection.outlook.com [40.92.72.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E5A1E00474
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 14:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=1sSRVY3AvHevhPGkbIkXAsQlXYfwo4ndIBKscMzs95E=;
	b=Tin4WYux/Rt6BFjRBuQuJcx3TH1IKx7yTLIctHqt4ZhKEEchRv/Oz0p5cydJOmnm9hn31JAm8ZVyzA/xUdMeEb3SC8/CQLPjQNPqfs64lJoRb5eGPzBf/BDn3RUrBCssOy64SG3K9fEzRuyeSAYilMF3BMFr08dSJ+L8jXrcVri6i/FpYDbwAUszbtohi3c6slnCuUYuxsmObeM9WVoayjKjHEU3jbyzT8iRvOS9equOOJEHRqbiV+X9ObWDsupmofEABdudlEhFL0BP3jy3nSXeTwJFaXqeRNYu0sQ7RQ79WqvkQWxLGwsTmhHRmt5wPVixJ92dderfrSvZJtFPyA==
Received: from AM5EUR03FT057.eop-EUR03.prod.protection.outlook.com
	(10.152.16.56) by AM5EUR03HT125.eop-EUR03.prod.protection.outlook.com
	(10.152.17.182) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1164.13;
	Thu, 20 Sep 2018 09:59:57 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM (10.152.16.59) by
	AM5EUR03FT057.mail.protection.outlook.com (10.152.17.44) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1164.13 via Frontend Transport; Thu, 20 Sep 2018 09:59:57 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22]) by HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22%5]) with mapi id 15.20.1143.019;
	Thu, 20 Sep 2018 09:59:57 +0000
From: Mohamed Youseif <MohamedYouseif@outlook.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Adding nInvaders game package recipe
Thread-Index: AQHUT2pKxYksjshYKU+ornLG6TttMaT3dBIAgAFrN4uAAApygIAAB/lT
Date: Thu, 20 Sep 2018 09:59:57 +0000
Message-ID: <HE1P195MB036259A2AA8B02E857F2E4DEC1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
	<HE1P195MB036230695B60D23AA37F8D95C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>,
	<CAJTo0LZiVgrVaoaUgEkki8NFKVNa1hN+b0csKkLnQusENEDFrw@mail.gmail.com>
In-Reply-To: <CAJTo0LZiVgrVaoaUgEkki8NFKVNa1hN+b0csKkLnQusENEDFrw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:915BC411BC6F7BF19B5710DADB29171AB3FC272BEF55DF1FD30CA8EFFF3CBC3E;
	UpperCasedChecksum:775057934A8E173D837EE7DB1D479786476006E13659961B93CC8522B749B5E5;
	SizeAsReceived:7398; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [TB1aDq5E3CNLLRwRM6KABle0X6p8aatmLIYqBvb3YNU=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT125;
	6:lGCbTKmFr0c30f50k6SEJPd370Sxv54X2lCX5ojIOrpZlzaATmkbgTOyueZ/OZlUiQlUqpuTQNGWFO8Sy8Y1E8cvj6EXB2A6Tj7iOhk4Ro8eH2G5yVA3uq4FGbn6DbtnlPgVDI4lWd/Cbx1AbFcLRR+Q/12CF/M1WFcNjKbsR7D45oS/sJyF3zShUmxBErXpfkXkuQtWw1KKOD+T4iWnT2y2SPg7oGsrR5oUMYHGNlBeWenEh/iqRSpx7+dwiD4jHyR3cNdbayAovPgH0MtWtpC9J8KxRvNT/Z9J2nDrZo8ONBHRFo0IlwVDzncMZ4X68rZTQ20fGNarna7XX7ZGUvylf+h6XzHEQiPM6aLOVz1w2b6qrcUhkT+m1MsXeORs5GpyfK51YrntnqOLGnKl24MuvNh0DiIeWa1wHKDLN81WIRXW2kejyGhQg2WJFVpex3/2gaByXprW43tc6nQ7eA==;
	5:gH/SU1To62s4vqqa0eOI3PO55s7uk3HIdgPdIxvqLV78v8J4U8rxBdZp2burdPfkU9eZisIeZKlR14J9wFupiR5VieYfC/YNa5SRWCidMdA1rlX+sPPR8Un3PPx44BR85z6xKvez6MGzq19VTj23IE9Mhxa4Tof8YrmF6s5NenY=;
	7:r/92FtAnDtotd4A0zwa/nyfa5yoTU35QABY13Vmey3xOvjHwtOtbLA0lMBi0b9px7SoCU6mied57GrjpRUho6Y108FGtEwibtjeRkfE6bU0xrHLb0dCr/FygvIfdPSGGL2eW9jlKNP06zK5zDtXiepJQQM3tw1WKlJitUsEU7/t3Dm6FKBAmjc63pNs8uK6WzkngSOTNRk4kAIKnYuujpNH3dx0sGRi6U84wWkykmmxAO9Yh5dDgZAvlBE7tHQFN
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:AM5EUR03HT125; 
x-ms-traffictypediagnostic: AM5EUR03HT125:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:AM5EUR03HT125; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT125; 
x-forefront-prvs: 0801F2E62B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(446003)(93886005)(106356001)(56003)(5660300001)(105586002)(104016004)(426003)(87572001)(71190400001)(71200400001)(80792005)(72206003)(19627405001)(2900100001)(97736004)(476003)(33656002)(6436002)(81156014)(8936002)(54896002)(256004)(486006)(74316002)(55016002)(8676002)(45080400002)(82202002)(68736007)(6916009)(11346002)(20460500001)(229853002)(6246003)(25786009)(105004)(7696005)(76176011)(99286004)(86362001)(4326008)(53546011)(102836004)(26005)(6346003)(5250100002)(14454004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AM5EUR03HT125;
	H:HE1P195MB0362.EURP195.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: outlook.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MohamedYouseif@outlook.com; 
x-microsoft-antispam-message-info: lvrfWWt4Y7FgjBF5ai1SCI/ia2e9hYHwG0wjpPE5PjNcdMBUXvi3V+ptEz9RbPaeQJUry0xCeC+p1m+3IPZbJ+WhmFze3+QFrcq3o3my/83twrBY47uUPTyDmllyv6TZS0phGFzHpmM5OoEsgRS9j7UHnOsIEdPnUehvs0zEWkd609e1X9qAG20aYKwygzXg2klDlvjzcyivKMyY3kC2m8j0PrW5Mz6r+d6Nioz0GKU=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-Network-Message-Id: e2a50b53-7181-4179-6521-08d61edfd234
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2018 09:59:57.1572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT125
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding nInvaders game package recipe
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
X-List-Received-Date: Thu, 20 Sep 2018 21:31:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1P195MB036259A2AA8B02E857F2E4DEC1130HE1P195MB0362EURP_"

--_000_HE1P195MB036259A2AA8B02E857F2E4DEC1130HE1P195MB0362EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I had run the command and it prints out that:

nInvaders: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically=
 linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, Bui=
ldID[sha1]=3D73d88937de4f28a243ba40001af8dbd5c1ca3ac8, not stripped

the ${CC} in makefile is defined as
CC=3Dgcc
________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Thursday, September 20, 2018 11:28 AM
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list
Subject: Re: [yocto] Adding nInvaders game package recipe

On Thu, 20 Sep 2018 at 10:01, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
> I had changed the source of my package, and create a new recipe for my pa=
ckage so it fetches from SourceForge, the new recipe does not inherit Autot=
ools and modify the do_compile, do_install as following:
> do_compile () {
>       oe_runmake
> }
>
> do_install () {
>       :
> }
>
> but i had modified the do_install task to add it to my image and now it i=
s like this
> do_install () {
>
>       install -d ${D}${bindir}
>       install -m 0755 nInvaders ${D}${bindir}
> }
>
> then i run "bitbake ninvaders" to check that all tasks will be passed but=
 i got that error for do_package task
>
> arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/work/co=
rtexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/bin/n=
Invaders: File format not recognized

Run 'file' on that binary.  It's possible that your hand-coded
makefile isn't respecting $CC and it built using the host native
compiler.

Ross

--_000_HE1P195MB036259A2AA8B02E857F2E4DEC1130HE1P195MB0362EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I had run the command and it prints out that:<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
<span>nInvaders: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynam=
ically linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.3=
2, BuildID[sha1]=3D73d88937de4f28a243ba40001af8dbd5c1ca3ac8, not stripped<b=
r>
</span><span></span><br>
the ${CC} in makefile is defined as&nbsp;<br>
CC=3Dgcc</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Thursday, September 20, 2018 11:28 AM<br>
<b>To:</b> MohamedYouseif@outlook.com<br>
<b>Cc:</b> Yocto-mailing-list<br>
<b>Subject:</b> Re: [yocto] Adding nInvaders game package recipe</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Thu, 20 Sep 2018 at 10:01, Mohamed Youseif<br>
&lt;MohamedYouseif@outlook.com&gt; wrote:<br>
&gt; I had changed the source of my package, and create a new recipe for my=
 package so it fetches from SourceForge, the new recipe does not inherit Au=
totools and modify the do_compile, do_install as following:<br>
&gt; do_compile () {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake<br>
&gt; }<br>
&gt;<br>
&gt; do_install () {<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br>
&gt; }<br>
&gt;<br>
&gt; but i had modified the do_install task to add it to my image and now i=
t is like this<br>
&gt; do_install () {<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0755 nInvaders ${D}${bi=
ndir}<br>
&gt; }<br>
&gt;<br>
&gt; then i run &quot;bitbake ninvaders&quot; to check that all tasks will =
be passed but i got that error for do_package task<br>
&gt;<br>
&gt; arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/work=
/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/bi=
n/nInvaders: File format not recognized<br>
<br>
Run 'file' on that binary.&nbsp; It's possible that your hand-coded<br>
makefile isn't respecting $CC and it built using the host native<br>
compiler.<br>
<br>
Ross<br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1P195MB036259A2AA8B02E857F2E4DEC1130HE1P195MB0362EURP_--
