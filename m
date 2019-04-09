Return-Path: <Clement.CHERBEIX@viveris.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9641AE00AD5; Tue,  9 Apr 2019 16:33:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.5.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 28792 seconds by postgrey-1.32 at yocto-www;
	Tue, 09 Apr 2019 16:33:50 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr50135.outbound.protection.outlook.com [40.107.5.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACF3DE00A54
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 16:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=viverislicensing.onmicrosoft.com; s=selector1-viveris-fr;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=sBL5nIh9/QKSa4LNblTeKTaa7oWczTiuPBSC7Mx+2OM=;
	b=HtAqpGYZ5HMOsdsvZKKmZgIc7CkyJa5nwlkWVTaUlQNSrc6+byQMpVz97q6CeRnWyCfkysZAGQvMe2dHBSnkNCQvTrvwdoB0MZRR4toOFMk+ma8LzkT/AKeBJV7+Y0GBiFAFfohMUNbsS4aQRP73J/b2MpUK7bfsB6LEQWI8AS4=
Received: from DB7PR09MB2348.eurprd09.prod.outlook.com (20.176.239.13) by
	DB7PR09MB2394.eurprd09.prod.outlook.com (20.176.239.23) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1792.14; Tue, 9 Apr 2019 07:00:43 +0000
Received: from DB7PR09MB2348.eurprd09.prod.outlook.com
	([fe80::e143:3be1:1fc1:3e65]) by
	DB7PR09MB2348.eurprd09.prod.outlook.com
	([fe80::e143:3be1:1fc1:3e65%3]) with mapi id 15.20.1792.009;
	Tue, 9 Apr 2019 07:00:43 +0000
From: Clement CHERBEIX <Clement.CHERBEIX@viveris.fr>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] problem with ruby
Thread-Index: AQHU7qHzPDWqDFAK/0CogxfsVrA2+Q==
Date: Tue, 9 Apr 2019 07:00:43 +0000
Message-ID: <DB7PR09MB234844C4AC1070ECD87699FEF82D0@DB7PR09MB2348.eurprd09.prod.outlook.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Clement.CHERBEIX@viveris.fr; 
x-originating-ip: [37.70.206.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4fae55ae-66dc-4bc1-0964-08d6bcb915bb
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600139)(711020)(4605104)(2017052603328)(7193020);
	SRVR:DB7PR09MB2394; 
x-ms-traffictypediagnostic: DB7PR09MB2394:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB7PR09MB2394E8B0E8A24F08D3929A90F82D0@DB7PR09MB2394.eurprd09.prod.outlook.com>
x-forefront-prvs: 000227DA0C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(39850400004)(136003)(346002)(396003)(366004)(199004)(51874003)(53754006)(174874002)(189003)(71200400001)(71190400001)(1015004)(229853002)(486006)(7736002)(476003)(2906002)(102836004)(6436002)(14444005)(256004)(8936002)(6506007)(53546011)(25786009)(74482002)(68736007)(186003)(26005)(33656002)(97736004)(74316002)(7696005)(81166006)(81156014)(8676002)(99286004)(86362001)(966005)(52536014)(5660300002)(478600001)(14454004)(72206003)(236005)(6246003)(316002)(6116002)(53936002)(3846002)(4326008)(66066001)(66574012)(105586002)(606006)(6916009)(6606003)(9686003)(6306002)(54896002)(106356001)(55016002)(19627405001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR09MB2394;
	H:DB7PR09MB2348.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: viveris.fr does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: N0dRY0o9ROx6MgU0ERGVOMVrI+bq+w7Aro+CoGJ7JacfihWxxZE4/zMh3TLoTeO3iFSoGqGc109VDzeqUM+YmSg2DOt1x4g7DYpRoNLyGtPxop/3Dr6fVFWzEv3achcKS7ELuDrcA6CHzX37y5DNSYnU8AnyUc9A99nJAj/UZzEF6NJ+Dl3NhJldD2xNKezkLKe4mSkFJyxcY30a0/UV2Ycc3VWMq47Q/P/niQ1XAZ4n9EFO67eI/lMFhfKEbBFY9JgZXYbfLg5FWBRrbR1k9LkJ3UNyKHNzPUYSTxSLLtXIT7DvZMHPnf+2iR1golI33OAtKzBbk6YX45Uv2IypvHFWDY4dbhOEnAfmAVK6UIHvN1jSbdfmrMcuI5TqTN4eeue0hT5FAYA3YYqbL0bC86PVw96XZ4OgGDVePcNRKZw=
MIME-Version: 1.0
X-OriginatorOrg: viveris.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fae55ae-66dc-4bc1-0964-08d6bcb915bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Apr 2019 07:00:43.6963 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 34bab81c-945c-43f1-ad13-592b97e11b40
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR09MB2394
X-Mailman-Approved-At: Thu, 11 Apr 2019 15:05:32 -0700
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: problem with ruby
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
X-List-Received-Date: Tue, 09 Apr 2019 23:33:52 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB7PR09MB234844C4AC1070ECD87699FEF82D0DB7PR09MB2348eurp_"

--_000_DB7PR09MB234844C4AC1070ECD87699FEF82D0DB7PR09MB2348eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

It's done but I keep the same problem, I've add zlib in the PACKAGECONFIG t=
oo without any result...


________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : lundi 8 avril 2019 20:04
=C0 : Clement CHERBEIX
Cc : Yocto Project
Objet : Re: [yocto] problem with ruby

On Mon, Apr 8, 2019 at 9:44 AM Cl=E9ment Cherbeix
<clement.cherbeix@viveris.fr> wrote:
>
> Hello all,
>
> I=92m trying to add the MIB mechanics in my yocto project, for that I use=
 dadi (ruby depenedent) but I get an error when bitbake try to compile :
>
> DEBUG: Executing shell function do_compile
>
> ERROR:  Loading command: build (LoadError)
>
>                 cannot load such file -- zlib
>
> ERROR:  While executing gem ... (NoMethodError)
>
>     undefined method `invoke_with_build_args' for nil:NilClass
>
> WARNING: /home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-native/2=
.8.0-r0/temp/run.do_compile.567:1 exit 1 from 'LANG=3D"en_US.UTF-8" LC_ALL=
=3D"en_US.UTF-8" gem build $gem'
>
>
>
> I have tried to build the gem in an environment outside of Yocto and it w=
as correct but when I try to do it in Yocto, I get my error.
> Did someone have an idea on what to do ?
> what is the recommended way of building ruby via gem in yocto ?
>
>

It seems that it is using ruby-native but does not have zlib-native
and it cant find this library. Can you add zlib to DEPENDS in ruby
recipe and see if that helps.

>
> Here is my build environment :
>
> BB_VERSION           =3D "1.40.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "universal"
>
> TARGET_SYS           =3D "x86_64-poky-linux"
>
> DISTRO               =3D "poky"
>
> DISTRO_VERSION       =3D "2.6.1"
>
> TUNE_FEATURES        =3D "m64 corei7"
>
>
>
> Thanks in advance !
>
>
>
> Cl=E9ment C.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--_000_DB7PR09MB234844C4AC1070ECD87699FEF82D0DB7PR09MB2348eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">It's done but I keep the same pro=
blem, I've add zlib in the PACKAGECONFIG too without any result...</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 8 avril 2019 20:04<br>
<b>=C0 :</b> Clement CHERBEIX<br>
<b>Cc&nbsp;:</b> Yocto Project<br>
<b>Objet :</b> Re: [yocto] problem with ruby</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Mon, Apr 8, 2019 at 9:44 AM Cl=E9ment Cherbeix<=
br>
&lt;clement.cherbeix@viveris.fr&gt; wrote:<br>
&gt;<br>
&gt; Hello all,<br>
&gt;<br>
&gt; I=92m trying to add the MIB mechanics in my yocto project, for that I =
use dadi (ruby depenedent) but I get an error when bitbake try to compile :=
<br>
&gt;<br>
&gt; DEBUG: Executing shell function do_compile<br>
&gt;<br>
&gt; ERROR:&nbsp; Loading command: build (LoadError)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; cannot load such file -- zlib<br>
&gt;<br>
&gt; ERROR:&nbsp; While executing gem ... (NoMethodError)<br>
&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; undefined method `invoke_with_build_args' for =
nil:NilClass<br>
&gt;<br>
&gt; WARNING: /home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-nativ=
e/2.8.0-r0/temp/run.do_compile.567:1 exit 1 from 'LANG=3D&quot;en_US.UTF-8&=
quot; LC_ALL=3D&quot;en_US.UTF-8&quot; gem build $gem'<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I have tried to build the gem in an environment outside of Yocto and i=
t was correct but when I try to do it in Yocto, I get my error.<br>
&gt; Did someone have an idea on what to do ?<br>
&gt; what is the recommended way of building ruby via gem in yocto ?<br>
&gt;<br>
&gt;<br>
<br>
It seems that it is using ruby-native but does not have zlib-native<br>
and it cant find this library. Can you add zlib to DEPENDS in ruby<br>
recipe and see if that helps.<br>
<br>
&gt;<br>
&gt; Here is my build environment :<br>
&gt;<br>
&gt; BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;1.40.0&quot;<br>
&gt;<br>
&gt; BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;x86_64-linux&quot;<br>
&gt;<br>
&gt; NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;universal&quot=
;<br>
&gt;<br>
&gt; TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 =3D &quot;x86_64-poky-linux&quot;<br>
&gt;<br>
&gt; DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<br>
&gt;<br>
&gt; DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;2.6.1&quo=
t;<br>
&gt;<br>
&gt; TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m64 =
corei7&quot;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks in advance !<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Cl=E9ment C.<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk3=
78036" class=3D"OWAAutoLink" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_DB7PR09MB234844C4AC1070ECD87699FEF82D0DB7PR09MB2348eurp_--
