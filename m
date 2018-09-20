Return-Path: <MohamedYouseif@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F560E00474; Thu, 20 Sep 2018 09:35:05 -0700 (PDT)
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
	*      [40.92.68.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 161003 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Sep 2018 09:35:03 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068095.outbound.protection.outlook.com [40.92.68.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF06E003D7
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 09:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gRatGvdxvFFGMZIewRQIwgr4hroji64Qiq236/5vVmg=;
	b=tHOhuYROK63DtDgKK8JGrP0vY+A0FRmmEYj5CORn5zf7UkKn4eeLZyVeeOiEtBW29Zkeh4iBR6w5gT+j4dnLc+quMB+p2jHHdER/IAgsEq3Gqz7uWANiN15YmwDLQrfBaTlCa027opqe8WDokU+8DjcULj7wi3lXkShE0mUtbCrfl1JzVU1KpFe9AiQhZk+XD19uG1I1JpUPgEtkKQ8JGe7L8s8ZcChlb2CCqN+k6Et+7PU0ScAFksFffiq82hA/kYyRv2OvyeoUxvTsrdp1r2RmgOnP1DWcwgKtgzZaFo1t0qNDHPFsNNTkZYF0Ipvh3INFVEFT7lA5xmTKsLwOIg==
Received: from HE1EUR02FT046.eop-EUR02.prod.protection.outlook.com
	(10.152.10.53) by HE1EUR02HT112.eop-EUR02.prod.protection.outlook.com
	(10.152.10.234) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.1164.13;
	Thu, 20 Sep 2018 11:59:37 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM (10.152.10.56) by
	HE1EUR02FT046.mail.protection.outlook.com (10.152.11.249) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.1164.13 via Frontend Transport; Thu, 20 Sep 2018 11:59:37 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22]) by HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22%5]) with mapi id 15.20.1143.019;
	Thu, 20 Sep 2018 11:59:37 +0000
From: Mohamed Youseif <MohamedYouseif@outlook.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Adding nInvaders game package recipe
Thread-Index: AQHUT2pKxYksjshYKU+ornLG6TttMaT3dBIAgAFrN4uAAApygIAAB/lTgAAM4YCAABUoYg==
Date: Thu, 20 Sep 2018 11:59:37 +0000
Message-ID: <HE1P195MB0362F74523808ED96489C211C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
	<HE1P195MB036230695B60D23AA37F8D95C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
	<CAJTo0LZiVgrVaoaUgEkki8NFKVNa1hN+b0csKkLnQusENEDFrw@mail.gmail.com>
	<HE1P195MB036259A2AA8B02E857F2E4DEC1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>,
	<CAJTo0LYi6OTzfdpH4dCii+ugHhUcAmjmqqt12h-n_N-hLiz3FQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYi6OTzfdpH4dCii+ugHhUcAmjmqqt12h-n_N-hLiz3FQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:5AF45DEBACA656D4611DBC891CFB16A66CA2F9F1FF68CA248E57FC01BB388A6E;
	UpperCasedChecksum:638A2E6CBA366A80ACA6C67E7005FEAB2408ED002C7A419F5C050FAFD5ED0F51;
	SizeAsReceived:7506; Count:46
x-tmn: [QDy5E77dwGz/ZXp1zRoCkTnPv0ykkynjNWai9Sqv83w=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT112;
	6:XyLH9owXl7OSOL/Ed1/EmHZXG1EfVyxFDc6LE4rzva98mMpNkQuSfg87XZG1t/T4L0gezE+8aSeMpFpo2OkmKkJgD9h8aDu5rCCCF3TiWuYfhbveFH9kxBX5tp6qJbZyciP9r3koAXdudwgZSuyYHuA/CNcQ9oZcKL2ls5/+NJ7sWTc2NUm9vEz/gscoiYAdiNQRwJ+y7ufpgvz7RzGcA6ko/DTsAgSznv5LOvA7xyFRnUSseCFuBGL4tdV2DeaoYiVDVfkkhCQf9Wb8K1Xaw3toe8nJfp3AZv1AakE4NBBvG9ZGruYUlh58OBw8y1x7w6KiQLUFSreLz5ce3klaFInwLkF2YA66gLkwQxBgHyLtx6dky7WzgryjZQH+98mXFjGis/UBzwvPtqNf8PpEBr9l3AzDl5FzhvE5EvjvKjGljZ68wpLhOrVNyIsZZLf87M7tmbTNy3SwI0PNcZYOAA==;
	5:Lu5x95M/cLxKoUA6OlBN8xzMjCVadSeo0Y8NYe43NxZuGnmAJIsHvsLGWB/CaWIy4bjzIu7YAvfWgs9FcxCVcrODmAEdlhMJ4KPh4PN3brbo36Yz3rHSYMLHiWrn5Z3/hV39Kv27knqSLeythnfHru8g9C1gjG8bPDFwkti0h9w=;
	7:YX6TAmcFaXK0+jaJPvbnZCyCfLy+GjtcO7JdhuHdjvqyzz3WL2dcuSzmZ5U77LJaivnwD8TUPRmdmlADyUwDwOq+Yxpcz3GZkVdY5ftq8eieP/NpSogDTQVe/WwWLKGVB4x95O86dL6/HCQb5zxgJKOYr9W30wMTNtE0t7ib2KSTQ9wJALe2Neoh+ueosGPieClKoMnNUFGQ+XtSpeJvkzxGoi0PjWkx/tucLe1pn1i/nSPibSFdca5NH9xj//9Q
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:HE1EUR02HT112; 
x-ms-traffictypediagnostic: HE1EUR02HT112:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:HE1EUR02HT112; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR02HT112; 
x-forefront-prvs: 0801F2E62B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(6436002)(20460500001)(97736004)(426003)(229853002)(74316002)(87572001)(105004)(26005)(14444005)(86362001)(99286004)(80792005)(11346002)(7696005)(106356001)(71200400001)(71190400001)(76176011)(56003)(55016002)(102836004)(54896002)(256004)(105586002)(486006)(2900100001)(93886005)(5250100002)(19627405001)(6346003)(446003)(53546011)(82202002)(104016004)(8936002)(476003)(5660300001)(45080400002)(4326008)(72206003)(6246003)(81156014)(6916009)(25786009)(14454004)(68736007)(8676002)(33656002);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR02HT112;
	H:HE1P195MB0362.EURP195.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: outlook.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MohamedYouseif@outlook.com; 
x-microsoft-antispam-message-info: 7nTOYDlyIBS+EK3quXwuDeGew1gDhD6kaxci152EiCPqYbaNEWGiS1U+sBjNpeqyKl8x12NzHwPmNnxwHrTLZdUZjP2sG90Hp6ZE0dq7uToMpHRHlYWfC13/jYnCVVYU3HIeBYKuegd9YkeDcr5penF7+DdYSDMBqqx0RUKoT9/kO0DPb0oWF+xxjW5sG5ZduGIjDBcnPyb8O5sJw3Co/dn6ZP/JHw8V8KZh+9ThTXQ=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-Network-Message-Id: f3342929-83f5-4d0b-3c14-08d61ef089fa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2018 11:59:37.4715 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT112
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
X-List-Received-Date: Thu, 20 Sep 2018 16:35:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1P195MB0362F74523808ED96489C211C1130HE1P195MB0362EURP_"

--_000_HE1P195MB0362F74523808ED96489C211C1130HE1P195MB0362EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks, Ross I had modified the makefile like what you said and now it work=
s fine.

Yusuf
________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Thursday, September 20, 2018 12:43 PM
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list
Subject: Re: [yocto] Adding nInvaders game package recipe

So your makefile is explictly saying "ignore the value from the
environment, always use gcc on the host".

Delete that line from the makefile, the default is good and then the
environment value to set CC to the cross compiler will work.

This is why people shouldn't hand-code Makefiles: it is harder than it
looks.  This makefile probably isn't respecting CFLAGS/LD/LDFLAGS
either.

Ross
On Thu, 20 Sep 2018 at 11:00, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
>
> I had run the command and it prints out that:
>
> nInvaders: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamical=
ly linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32, B=
uildID[sha1]=3D73d88937de4f28a243ba40001af8dbd5c1ca3ac8, not stripped
>
> the ${CC} in makefile is defined as
> CC=3Dgcc
> ________________________________
> From: Burton, Ross <ross.burton@intel.com>
> Sent: Thursday, September 20, 2018 11:28 AM
> To: MohamedYouseif@outlook.com
> Cc: Yocto-mailing-list
> Subject: Re: [yocto] Adding nInvaders game package recipe
>
> On Thu, 20 Sep 2018 at 10:01, Mohamed Youseif
> <MohamedYouseif@outlook.com> wrote:
> > I had changed the source of my package, and create a new recipe for my =
package so it fetches from SourceForge, the new recipe does not inherit Aut=
otools and modify the do_compile, do_install as following:
> > do_compile () {
> >       oe_runmake
> > }
> >
> > do_install () {
> >       :
> > }
> >
> > but i had modified the do_install task to add it to my image and now it=
 is like this
> > do_install () {
> >
> >       install -d ${D}${bindir}
> >       install -m 0755 nInvaders ${D}${bindir}
> > }
> >
> > then i run "bitbake ninvaders" to check that all tasks will be passed b=
ut i got that error for do_package task
> >
> > arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/work/=
cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/bin=
/nInvaders: File format not recognized
>
> Run 'file' on that binary.  It's possible that your hand-coded
> makefile isn't respecting $CC and it built using the host native
> compiler.
>
> Ross

--_000_HE1P195MB0362F74523808ED96489C211C1130HE1P195MB0362EURP_
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
Thanks, Ross I had modified the makefile like what you said and now it work=
s fine.<br>
<br>
Yusuf</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Thursday, September 20, 2018 12:43 PM<br>
<b>To:</b> MohamedYouseif@outlook.com<br>
<b>Cc:</b> Yocto-mailing-list<br>
<b>Subject:</b> Re: [yocto] Adding nInvaders game package recipe</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">So your makefile is explictly saying &quot;ignore =
the value from the<br>
environment, always use gcc on the host&quot;.<br>
<br>
Delete that line from the makefile, the default is good and then the<br>
environment value to set CC to the cross compiler will work.<br>
<br>
This is why people shouldn't hand-code Makefiles: it is harder than it<br>
looks.&nbsp; This makefile probably isn't respecting CFLAGS/LD/LDFLAGS<br>
either.<br>
<br>
Ross<br>
On Thu, 20 Sep 2018 at 11:00, Mohamed Youseif<br>
&lt;MohamedYouseif@outlook.com&gt; wrote:<br>
&gt;<br>
&gt; I had run the command and it prints out that:<br>
&gt;<br>
&gt; nInvaders: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynami=
cally linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32=
, BuildID[sha1]=3D73d88937de4f28a243ba40001af8dbd5c1ca3ac8, not stripped<br=
>
&gt;<br>
&gt; the ${CC} in makefile is defined as<br>
&gt; CC=3Dgcc<br>
&gt; ________________________________<br>
&gt; From: Burton, Ross &lt;ross.burton@intel.com&gt;<br>
&gt; Sent: Thursday, September 20, 2018 11:28 AM<br>
&gt; To: MohamedYouseif@outlook.com<br>
&gt; Cc: Yocto-mailing-list<br>
&gt; Subject: Re: [yocto] Adding nInvaders game package recipe<br>
&gt;<br>
&gt; On Thu, 20 Sep 2018 at 10:01, Mohamed Youseif<br>
&gt; &lt;MohamedYouseif@outlook.com&gt; wrote:<br>
&gt; &gt; I had changed the source of my package, and create a new recipe f=
or my package so it fetches from SourceForge, the new recipe does not inher=
it Autotools and modify the do_compile, do_install as following:<br>
&gt; &gt; do_compile () {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake<br>
&gt; &gt; }<br>
&gt; &gt;<br>
&gt; &gt; do_install () {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<br>
&gt; &gt; }<br>
&gt; &gt;<br>
&gt; &gt; but i had modified the do_install task to add it to my image and =
now it is like this<br>
&gt; &gt; do_install () {<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${bindir}<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; install -m 0755 nInvaders ${D=
}${bindir}<br>
&gt; &gt; }<br>
&gt; &gt;<br>
&gt; &gt; then i run &quot;bitbake ninvaders&quot; to check that all tasks =
will be passed but i got that error for do_package task<br>
&gt; &gt;<br>
&gt; &gt; arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI=
/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/u=
sr/bin/nInvaders: File format not recognized<br>
&gt;<br>
&gt; Run 'file' on that binary.&nbsp; It's possible that your hand-coded<br=
>
&gt; makefile isn't respecting $CC and it built using the host native<br>
&gt; compiler.<br>
&gt;<br>
&gt; Ross<br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1P195MB0362F74523808ED96489C211C1130HE1P195MB0362EURP_--
