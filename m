Return-Path: <Clement.CHERBEIX@viveris.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13C07E00B5C; Wed, 10 Apr 2019 12:40:04 -0700 (PDT)
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
	*      [40.107.15.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 97570 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Apr 2019 12:39:48 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150090.outbound.protection.outlook.com [40.107.15.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81325E00950
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 12:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=viverislicensing.onmicrosoft.com; s=selector1-viveris-fr;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=nbX7L1iad0o6p6YI/wWtanH8nbrzy/C0cOsikphcLqY=;
	b=KLpF9j+k8E6Ca8Y9tKxDLm4CSxYuVIkFGuCFx/4WF5Q3lFLPY6uFVIk2nYJ64AfDltMsiSL0dvNOwz00aMZMW/tirov7GvpK8+3YuPuZC/kuEhF4w1ONXT457e2wH7v6ZishDLvl40NhKkzZbzPHNxQ9Nhu8/MDJN3zPfAEuDAA=
Received: from DB7PR09MB2348.eurprd09.prod.outlook.com (20.176.239.13) by
	DB7PR09MB2635.eurprd09.prod.outlook.com (20.177.121.25) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1792.15; Wed, 10 Apr 2019 14:05:55 +0000
Received: from DB7PR09MB2348.eurprd09.prod.outlook.com
	([fe80::e143:3be1:1fc1:3e65]) by
	DB7PR09MB2348.eurprd09.prod.outlook.com
	([fe80::e143:3be1:1fc1:3e65%3]) with mapi id 15.20.1792.009;
	Wed, 10 Apr 2019 14:05:55 +0000
From: Clement CHERBEIX <Clement.CHERBEIX@viveris.fr>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] problem with ruby
Thread-Index: AQHU7qHzPDWqDFAK/0CogxfsVrA2+aY0JTKAgAFJtI0=
Date: Wed, 10 Apr 2019 14:05:55 +0000
Message-ID: <DB7PR09MB234833B9392FFF7E1F7DBB03F82E0@DB7PR09MB2348.eurprd09.prod.outlook.com>
References: <DB7PR09MB234844C4AC1070ECD87699FEF82D0@DB7PR09MB2348.eurprd09.prod.outlook.com>,
	<CAMKF1sohvNR6GfLPmArfSvjnuLv-P7wvoEnnnXm8ygovmrS-Gw@mail.gmail.com>
In-Reply-To: <CAMKF1sohvNR6GfLPmArfSvjnuLv-P7wvoEnnnXm8ygovmrS-Gw@mail.gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Clement.CHERBEIX@viveris.fr; 
x-originating-ip: [37.70.206.162]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e58e7a90-bfe0-45be-9859-08d6bdbda652
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600139)(711020)(4605104)(2017052603328)(7193020);
	SRVR:DB7PR09MB2635; 
x-ms-traffictypediagnostic: DB7PR09MB2635:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB7PR09MB2635FDA73FBB80D6D565BFC5F82E0@DB7PR09MB2635.eurprd09.prod.outlook.com>
x-forefront-prvs: 00032065B2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(136003)(396003)(366004)(346002)(376002)(39840400004)(53754006)(189003)(199004)(51874003)(174874002)(71200400001)(74316002)(6606003)(52536014)(9686003)(74482002)(229853002)(14454004)(54896002)(6306002)(6916009)(6436002)(86362001)(5660300002)(66066001)(72206003)(99286004)(316002)(19627405001)(7696005)(55016002)(71190400001)(76176011)(966005)(81166006)(53546011)(8676002)(478600001)(6506007)(7736002)(81156014)(66574012)(256004)(26005)(8936002)(102836004)(3846002)(236005)(486006)(476003)(14444005)(6116002)(186003)(11346002)(68736007)(606006)(446003)(25786009)(53936002)(33656002)(105586002)(6246003)(97736004)(4326008)(2906002)(106356001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR09MB2635;
	H:DB7PR09MB2348.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: viveris.fr does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0c79UvEDlvqRw2bw5NwIGLuvn4PKA4kCoUIZHSDbShPV729Hi9Agqh5xgkmwUhuHwJy3loEDLWY1lzUvvH83HitQsPK9SHdDn+xYqZGmmSrEzIi9fyATxIxVDqXZgYQeBhwg3DtEOte8VPiknOfOazUvxbAsEH9mwme5jnKWcHIoA8Dz312zvpwN4APCnRRJeSgetKjwzkkD+fX/yN/aT+Q4dFvk+Fxx7hculj7e/cx608dF2xi8VyuMFnls7vOJ3fGYY4Q48awS/A1AG91wkOoEPrN7HatoEMoAb1T1mSHHO54VhGiU7OuwjuLMtWylq1uigqC0xL/Ns980iLC7t9In86Zr/7WOzFS8+mX+nZZoyniUIif+VXFYB5tXkcHLnA5FuGoqT1J5p1NBfEPfQr36vBr8vjs1gaTOlWW7FqQ=
MIME-Version: 1.0
X-OriginatorOrg: viveris.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: e58e7a90-bfe0-45be-9859-08d6bdbda652
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2019 14:05:55.4271 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 34bab81c-945c-43f1-ad13-592b97e11b40
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR09MB2635
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
X-List-Received-Date: Wed, 10 Apr 2019 19:40:04 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB7PR09MB234833B9392FFF7E1F7DBB03F82E0DB7PR09MB2348eurp_"

--_000_DB7PR09MB234833B9392FFF7E1F7DBB03F82E0DB7PR09MB2348eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I've try that and doesn't change anything...
I think the problem is from the gem zlib who is not build / take by Yocto s=
o it can't be use.
When i try to use it with a simple ruby program i can't find zlib in the en=
vironment of the devshell.

________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : mardi 9 avril 2019 20:22:47
=C0 : Clement CHERBEIX
Cc : Yocto Project
Objet : Re: [yocto] problem with ruby

probably it has to be added to linker flags explicitly.

On Tue, Apr 9, 2019 at 12:00 AM Clement CHERBEIX
<Clement.CHERBEIX@viveris.fr> wrote:
>
> It's done but I keep the same problem, I've add zlib in the PACKAGECONFIG=
 too without any result...
>
>
>
> ________________________________
> De : Khem Raj <raj.khem@gmail.com>
> Envoy=E9 : lundi 8 avril 2019 20:04
> =C0 : Clement CHERBEIX
> Cc : Yocto Project
> Objet : Re: [yocto] problem with ruby
>
> On Mon, Apr 8, 2019 at 9:44 AM Cl=E9ment Cherbeix
> <clement.cherbeix@viveris.fr> wrote:
> >
> > Hello all,
> >
> > I=92m trying to add the MIB mechanics in my yocto project, for that I u=
se dadi (ruby depenedent) but I get an error when bitbake try to compile :
> >
> > DEBUG: Executing shell function do_compile
> >
> > ERROR:  Loading command: build (LoadError)
> >
> >                 cannot load such file -- zlib
> >
> > ERROR:  While executing gem ... (NoMethodError)
> >
> >     undefined method `invoke_with_build_args' for nil:NilClass
> >
> > WARNING: /home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-native=
/2.8.0-r0/temp/run.do_compile.567:1 exit 1 from 'LANG=3D"en_US.UTF-8" LC_AL=
L=3D"en_US.UTF-8" gem build $gem'
> >
> >
> >
> > I have tried to build the gem in an environment outside of Yocto and it=
 was correct but when I try to do it in Yocto, I get my error.
> > Did someone have an idea on what to do ?
> > what is the recommended way of building ruby via gem in yocto ?
> >
> >
>
> It seems that it is using ruby-native but does not have zlib-native
> and it cant find this library. Can you add zlib to DEPENDS in ruby
> recipe and see if that helps.
>
> >
> > Here is my build environment :
> >
> > BB_VERSION           =3D "1.40.0"
> >
> > BUILD_SYS            =3D "x86_64-linux"
> >
> > NATIVELSBSTRING      =3D "universal"
> >
> > TARGET_SYS           =3D "x86_64-poky-linux"
> >
> > DISTRO               =3D "poky"
> >
> > DISTRO_VERSION       =3D "2.6.1"
> >
> > TUNE_FEATURES        =3D "m64 corei7"
> >
> >
> >
> > Thanks in advance !
> >
> >
> >
> > Cl=E9ment C.
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

--_000_DB7PR09MB234833B9392FFF7E1F7DBB03F82E0DB7PR09MB2348eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">I've try that and doesn't change =
anything...<br>
I think the problem is from the&nbsp;gem zlib who is not build / take by Yo=
cto so it can't be use.<br>
When i try to use it with a simple ruby&nbsp;program i can't find zlib&nbsp=
;in the environment of the devshell.</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> mardi 9 avril 2019 20:22:47<br>
<b>=C0 :</b> Clement CHERBEIX<br>
<b>Cc&nbsp;:</b> Yocto Project<br>
<b>Objet :</b> Re: [yocto] problem with ruby</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">probably it has to be added to linker flags explic=
itly.<br>
<br>
On Tue, Apr 9, 2019 at 12:00 AM Clement CHERBEIX<br>
&lt;Clement.CHERBEIX@viveris.fr&gt; wrote:<br>
&gt;<br>
&gt; It's done but I keep the same problem, I've add zlib in the PACKAGECON=
FIG too without any result...<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ________________________________<br>
&gt; De : Khem Raj &lt;raj.khem@gmail.com&gt;<br>
&gt; Envoy=E9 : lundi 8 avril 2019 20:04<br>
&gt; =C0 : Clement CHERBEIX<br>
&gt; Cc : Yocto Project<br>
&gt; Objet : Re: [yocto] problem with ruby<br>
&gt;<br>
&gt; On Mon, Apr 8, 2019 at 9:44 AM Cl=E9ment Cherbeix<br>
&gt; &lt;clement.cherbeix@viveris.fr&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hello all,<br>
&gt; &gt;<br>
&gt; &gt; I=92m trying to add the MIB mechanics in my yocto project, for th=
at I use dadi (ruby depenedent) but I get an error when bitbake try to comp=
ile :<br>
&gt; &gt;<br>
&gt; &gt; DEBUG: Executing shell function do_compile<br>
&gt; &gt;<br>
&gt; &gt; ERROR:&nbsp; Loading command: build (LoadError)<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cannot load such file -- zlib<br>
&gt; &gt;<br>
&gt; &gt; ERROR:&nbsp; While executing gem ... (NoMethodError)<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; undefined method `invoke_with_build_args'=
 for nil:NilClass<br>
&gt; &gt;<br>
&gt; &gt; WARNING: /home/modem/tkh/build/tmp/work/x86_64-linux/libxml-ruby-=
native/2.8.0-r0/temp/run.do_compile.567:1 exit 1 from 'LANG=3D&quot;en_US.U=
TF-8&quot; LC_ALL=3D&quot;en_US.UTF-8&quot; gem build $gem'<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I have tried to build the gem in an environment outside of Yocto =
and it was correct but when I try to do it in Yocto, I get my error.<br>
&gt; &gt; Did someone have an idea on what to do ?<br>
&gt; &gt; what is the recommended way of building ruby via gem in yocto ?<b=
r>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; It seems that it is using ruby-native but does not have zlib-native<br=
>
&gt; and it cant find this library. Can you add zlib to DEPENDS in ruby<br>
&gt; recipe and see if that helps.<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Here is my build environment :<br>
&gt; &gt;<br>
&gt; &gt; BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;1.40.0&quot;<br>
&gt; &gt;<br>
&gt; &gt; BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; =3D &quot;x86_64-linux&quot;<br>
&gt; &gt;<br>
&gt; &gt; NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;universal=
&quot;<br>
&gt; &gt;<br>
&gt; &gt; TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D &quot;x86_64-poky-linux&quot;<br>
&gt; &gt;<br>
&gt; &gt; DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<br>
&gt; &gt;<br>
&gt; &gt; DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;2.6.=
1&quot;<br>
&gt; &gt;<br>
&gt; &gt; TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot=
;m64 corei7&quot;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Thanks in advance !<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Cl=E9ment C.<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; yocto@yoctoproject.org<br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https:/=
/lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_DB7PR09MB234833B9392FFF7E1F7DBB03F82E0DB7PR09MB2348eurp_--
