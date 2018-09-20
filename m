Return-Path: <MohamedYouseif@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85A0CE00720; Thu, 20 Sep 2018 16:29:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.92.70.12 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mohamedyouseif[at]outlook.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 46667 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Sep 2018 16:29:51 PDT
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092070012.outbound.protection.outlook.com [40.92.70.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16868E00474
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 16:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=GGMFK/A71f7HM6CSE3SP9GmemDQ99RNvUq0XWBAd3g4=;
	b=J3WqMLgRRxc3iuQ4dTi2z30fN7Fn4KgQ7ra0rd9WhfWBozgUmc9H6noqFzpkFya1VOx8RlO4v5N+rO8OYMWKKBXcMmI8Cd5dgagV27DHpG27vPfmx6CUVwhjcXJcxgdryOPRvolH2roTnTQ57qO1eZciwkKDw4JI4Cvk3TcyrQeIOJq6DI2gvDA8UtgI6iXFf3cEFGpo7dYbVQAN99en0uoQF9+2t8eJndcwf9IWndgLIPuX3BZfdpMYcqEw+5HNs1Hj19PfV845C/mjL02ag8uYaQOSXRPXBaxg5+CZfYK57XodIbZzq3PT2k5lpt3ozVe6k3uLn6uZHo06oN6sCQ==
Received: from AM5EUR03FT038.eop-EUR03.prod.protection.outlook.com
	(10.152.16.56) by AM5EUR03HT006.eop-EUR03.prod.protection.outlook.com
	(10.152.16.129) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1164.13;
	Thu, 20 Sep 2018 09:00:12 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM (10.152.16.53) by
	AM5EUR03FT038.mail.protection.outlook.com (10.152.17.118) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1164.13 via Frontend Transport; Thu, 20 Sep 2018 09:00:12 +0000
Received: from HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22]) by HE1P195MB0362.EURP195.PROD.OUTLOOK.COM
	([fe80::a828:9769:8ca9:eb22%5]) with mapi id 15.20.1143.019;
	Thu, 20 Sep 2018 09:00:11 +0000
From: Mohamed Youseif <MohamedYouseif@outlook.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Adding nInvaders game package recipe
Thread-Index: AQHUT2pKxYksjshYKU+ornLG6TttMaT3dBIAgAFrN4s=
Date: Thu, 20 Sep 2018 09:00:11 +0000
Message-ID: <HE1P195MB036230695B60D23AA37F8D95C1130@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>
References: <HE1P195MB03625FB2341F7F8FBD894D2DC11D0@HE1P195MB0362.EURP195.PROD.OUTLOOK.COM>,
	<CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
In-Reply-To: <CAJTo0LYxMCH2BXsMreV=MxHqT4uFNPADHiNqRmxqQDcyzqPDuA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F048A6E22FA9B14FBB7BB9917C09043FECFF84AAD37D5989B1D1F1658738CDD9;
	UpperCasedChecksum:E0FC0A45062A89BB75DD960BCD17A2739242A0B2AA6A12798C8BFE0B9AAD57F7;
	SizeAsReceived:7171; Count:46
x-tmn: [S7bDIYmI032e3IGTaUjc8Ak4U9I/l5n4uiof0bRP/jw=]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT006;
	6:zRIVfu61ebMor8izXaSOAHkssUKOe9TrtnK555WojQ30UVcEpgajwH4jIbd1h3Z4kud3t1mzK0Y01rscA6MxoKLab2AdpNsCwPQhGATSMqOFNWww3jk7d/kLI8YqRNbQPnSwthrpiqZSbMcuqQkCffiVAsmNenrAk13c31wcoxkTgIh63q2dpprbu2XSlapHN4wDrAlrlGop5murR9z6WgXwZX3l6dOm0pWnMY3UyAk9+AtgGu2L0NDvaNb5q7lOe4RGx1ZeXG+ysbFhuek09nUSemSne6fQfIK/nIpeMrHGnMD7rWe5XnfcsVh+tw47lOUuZJw7OBGR9yrK72/2tjZ9aAOxFxmbCy9i8MEswn9l2n65KSsJtuYDHVy5pL6Xv8yMNc+q1A3jRMWMtOnIi13a0JIExos/CKguhSj9Ln41PKFNF10qEZFWphfQGu6HQMYAgA/WkcnJK3TVF/7Egg==;
	5:D+x4Ap1tfGVo9S/Jrn3icIMcRZ3IHY5a0UcQyGLfnJHeroWtAVgRQ76kVmQWwBAPnd9pQ3/BEA8A5pCQgjZAwJrz2g+lkPH/XVfW5MTUWoi5Yb2of897OUDiqKbdOnzfVF9K9b2gRb2I8K8akuMeACrPa2bli7jiAb1l3nD0lnQ=;
	7:jdHxaOf3qAJrQ4WYFZYaU/YImjUTVf6jZ8CCzkhVnKqMv9EqAndz4OGamiYCV+qWVqbVJcZV376QeEQlSOObpEglYuRsk1o4bo/RcyPtCewnqCMIAItnF7cpwJaJfzoJ9GT5YXR7YNutWF3IN3lCqGJj9AUeSbYweGuyHcWILqiin1WqJygF4EIClL6U3Q1jOt35gHoaMntG/DBaW7+tOdcE7F41mazgEoHmQmemZIzH9FgmmB/3rjyceOlR5Du+
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:AM5EUR03HT006; 
x-ms-traffictypediagnostic: AM5EUR03HT006:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:AM5EUR03HT006; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT006; 
x-forefront-prvs: 0801F2E62B
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(87572001)(76176011)(6306002)(236005)(6916009)(99286004)(54896002)(7696005)(5660300001)(14454004)(229853002)(45080400002)(82202002)(20460500001)(966005)(55016002)(6436002)(72206003)(33656002)(105004)(446003)(11346002)(19627405001)(476003)(426003)(26005)(6346003)(53546011)(102836004)(2900100001)(606006)(4326008)(81156014)(6246003)(486006)(106356001)(25786009)(8676002)(86362001)(80792005)(8936002)(68736007)(5250100002)(14444005)(97736004)(256004)(71190400001)(74316002)(71200400001)(56003)(105586002)(104016004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AM5EUR03HT006;
	H:HE1P195MB0362.EURP195.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: outlook.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=MohamedYouseif@outlook.com; 
x-microsoft-antispam-message-info: 4/LlPNMWeg0FLiBm47AzQJt7ValAN80dhLtlCcu0+DPJYEy6oq0asFAM0Fv3tTs/Lj9O7cuHJPHp2NOjsJVi7080MFxj98XnPGS6gfHkFqswIYL8EGJY1sDlh0/1pVJJilZkuij22FBl5AGPCBfdZk+GfApIUcz5eQUcIRiG7p4FzEiIatihZZDBVPA4evr1lQQFv5IGMiX+Y4Kif0C8iZu3cYnIobz0WXQilMnLbCM=
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-Network-Message-Id: ed673501-dc88-4562-6ee3-08d61ed7792c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: d4d70346-2c10-4f39-8c00-e767963926d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2018 09:00:11.8710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT006
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
X-List-Received-Date: Thu, 20 Sep 2018 23:29:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1P195MB036230695B60D23AA37F8D95C1130HE1P195MB0362EURP_"

--_000_HE1P195MB036230695B60D23AA37F8D95C1130HE1P195MB0362EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I had changed the source of my package, and create a new recipe for my pack=
age so it fetches from SourceForge, the new recipe does not inherit Autotoo=
ls and modify the do_compile, do_install as following:
do_compile () {
      oe_runmake
}

do_install () {
      :
}

but i had modified the do_install task to add it to my image and now it is =
like this
do_install () {

      install -d ${D}${bindir}
      install -m 0755 nInvaders ${D}${bindir}
}

then i run "bitbake ninvaders" to check that all tasks will be passed but i=
 got that error for do_package task

arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/work/cort=
exa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/bin/nIn=
vaders: File format not recognized
ERROR: ninvaders-0.1.1-r0 do_package: Function failed: split_and_strip_file=
s

Yusuf
________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Wednesday, September 19, 2018 1:11 PM
To: MohamedYouseif@outlook.com
Cc: Yocto-mailing-list
Subject: Re: [yocto] Adding nInvaders game package recipe

The problem is most likely that you're not using automake but the
generated recipe (would have been useful to include that) is using the
autotools class, which assumes correct use of both autoconf and
automake.  Specifically, your hand-written Makefile doesn't handle
out-of-tree builds.

Change the inherit from autotools to autotools-brokensep, and I expect
that will fix the build.

Ross
On Wed, 19 Sep 2018 at 12:08, Mohamed Youseif
<MohamedYouseif@outlook.com> wrote:
>
> Hi, I want to add the invaders game package to my image that I had built =
before and tested, so I used the command "recipetool create -V 1.0 https://=
github.com/TheZ3ro/ninvaders.git" to make my custom recipe, then I had to a=
ppend this package to my image by appending the package name to IMAGE_INSTA=
LL variable (like this IMAGE_INSTALL_append =3D "ninvaders", but before I b=
uild the new image I tried to test my recipes' task to be done correctly by=
 running this command
> "bitbake -b ninvaders_git.bb"  but there is an error while executing the =
do_compile task and it prints out that:
>
> ERROR: ninvaders-1.0+gitAUTOINC+c6ab4117ba-r0 do_compile: oe_runmake fail=
ed
> ERROR: ninvaders-1.0+gitAUTOINC+c6ab4117ba-r0 do_compile: Function failed=
: do_compile (log file is located at /home/yusuf/rpi/build/tmp_sumo_RPI/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0+gitAUTOINC+c6ab411=
7ba-r0/temp/log.do_compile.25813)
> ERROR: Logfile of failure stored in: /home/yusuf/rpi/build/tmp_sumo_RPI/w=
ork/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0+gitAUTOINC+c6ab4=
117ba-r0/temp/log.do_compile.25813
> Log data follows:
> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32', '=
common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4
> | make: *** No rule to make target 'globals.o', needed by 'nInvaders'.  S=
top.
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at /home/yusuf/=
rpi/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvad=
ers/1.0+gitAUTOINC+c6ab4117ba-r0/temp/log.do_compile.25813)
> ERROR: Task (/home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_gi=
t.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 8 tasks of which 0 didn't need to be rerun=
 and 1 failed.
>
> Summary: 1 task failed:
>   /home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_git.bb:do_com=
pile
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> so should i modify the do_compile task?
> Thanks,
> Yusuf
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--_000_HE1P195MB036230695B60D23AA37F8D95C1130HE1P195MB0362EURP_
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
I had changed the source of my package, and create a new recipe for my pack=
age so it fetches from SourceForge, the new recipe does not inherit Autotoo=
ls and modify the do_compile, do_install as following:&nbsp;<br>
do_compile () {</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; oe_runmake<br>
}&nbsp;<br>
<br>
do_install () {</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
&nbsp; &nbsp; &nbsp; :</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
}<br>
<br>
but i had modified the do_install task to add it to my image and now it is =
like this&nbsp;<br>
do_install () {<br>
<span><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<span>&nbsp; &nbsp; &nbsp; install -d ${D}${bindir}<br>
</span><span>&nbsp; &nbsp; &nbsp; install -m 0755 nInvaders ${D}${bindir}<b=
r>
</span>}<br>
<br>
then i run &quot;bitbake ninvaders&quot; to check that all tasks will be pa=
ssed but i got that error for do_package task<br>
<br>
<span>arm-poky-linux-gnueabi-objcopy:/home/yusuf/rpi/build/tmp_sumo_RPI/wor=
k/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/0.1.1-r0/package/usr/b=
in/nInvaders: File format not recognized<br>
</span><span>ERROR: ninvaders-0.1.1-r0 do_package: Function failed: split_a=
nd_strip_files<br>
</span><br>
Yusuf</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<b style=3D"font-size: 11pt; color: rgb(0, 0, 0); font-family: Calibri, san=
s-serif; font-style: inherit; font-variant-ligatures: inherit; font-variant=
-caps: inherit; background-color: ;">From:</b><span style=3D"font-size: 11p=
t; color: rgb(0, 0, 0); font-family: Calibri, sans-serif;">
 Burton, Ross &lt;ross.burton@intel.com&gt;</span>
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Sent:</b> Wednesday, September =
19, 2018 1:11 PM<br>
<b>To:</b> MohamedYouseif@outlook.com<br>
<b>Cc:</b> Yocto-mailing-list<br>
<b>Subject:</b> Re: [yocto] Adding nInvaders game package recipe</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">The problem is most likely that you're not using a=
utomake but the<br>
generated recipe (would have been useful to include that) is using the<br>
autotools class, which assumes correct use of both autoconf and<br>
automake.&nbsp; Specifically, your hand-written Makefile doesn't handle<br>
out-of-tree builds.<br>
<br>
Change the inherit from autotools to autotools-brokensep, and I expect<br>
that will fix the build.<br>
<br>
Ross<br>
On Wed, 19 Sep 2018 at 12:08, Mohamed Youseif<br>
&lt;MohamedYouseif@outlook.com&gt; wrote:<br>
&gt;<br>
&gt; Hi, I want to add the invaders game package to my image that I had bui=
lt before and tested, so I used the command &quot;recipetool create -V 1.0
<a href=3D"https://github.com/TheZ3ro/ninvaders.git">https://github.com/The=
Z3ro/ninvaders.git</a>&quot; to make my custom recipe, then I had to append=
 this package to my image by appending the package name to IMAGE_INSTALL va=
riable (like this IMAGE_INSTALL_append
 =3D &quot;ninvaders&quot;, but before I build the new image I tried to tes=
t my recipes' task to be done correctly by running this command<br>
&gt; &quot;bitbake -b ninvaders_git.bb&quot;&nbsp; but there is an error wh=
ile executing the do_compile task and it prints out that:<br>
&gt;<br>
&gt; ERROR: ninvaders-1.0&#43;gitAUTOINC&#43;c6ab4117ba-r0 do_compile: oe_r=
unmake failed<br>
&gt; ERROR: ninvaders-1.0&#43;gitAUTOINC&#43;c6ab4117ba-r0 do_compile: Func=
tion failed: do_compile (log file is located at /home/yusuf/rpi/build/tmp_s=
umo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0&#43;git=
AUTOINC&#43;c6ab4117ba-r0/temp/log.do_compile.25813)<br>
&gt; ERROR: Logfile of failure stored in: /home/yusuf/rpi/build/tmp_sumo_RP=
I/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/ninvaders/1.0&#43;gitAUTOIN=
C&#43;c6ab4117ba-r0/temp/log.do_compile.25813<br>
&gt; Log data follows:<br>
&gt; | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'arm-32'=
, 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common=
']<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: make -j 4<br>
&gt; | make: *** No rule to make target 'globals.o', needed by 'nInvaders'.=
&nbsp; Stop.<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile (log file is located at /home/yus=
uf/rpi/build/tmp_sumo_RPI/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/nin=
vaders/1.0&#43;gitAUTOINC&#43;c6ab4117ba-r0/temp/log.do_compile.25813)<br>
&gt; ERROR: Task (/home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders=
_git.bb:do_compile) failed with exit code '1'<br>
&gt; NOTE: Tasks Summary: Attempted 8 tasks of which 0 didn't need to be re=
run and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;&nbsp;&nbsp; /home/yusuf/rpi/meta-rpi/recipes-misc/nInvaders/ninvaders_=
git.bb:do_compile<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt;<br>
&gt; so should i modify the do_compile task?<br>
&gt; Thanks,<br>
&gt; Yusuf<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1P195MB036230695B60D23AA37F8D95C1130HE1P195MB0362EURP_--
