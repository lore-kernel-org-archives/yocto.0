Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 562AEE00A4F; Fri, 20 Apr 2018 03:13:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 158214 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Apr 2018 03:13:08 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0114.outbound.protection.outlook.com [104.47.2.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0774DE00843
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 03:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=eozZXkgeHmgpJpiwWmW4HWYZSCvplocdiZc+85jTqes=;
	b=Sl6+To5iDyS6J60dTUhlihfmP9A5A2uGoNZ5oKayrhQR+TEAA3NHbmmh8oOW0MfXEkusozZ3fHrkdmnziUZcndoMdZ7F6f+GOWDoTSLLhSiDsT7q/Kb4ImeSF5uDX8FJ+tWkw/61WHrurV70cYaEPR36XPaf30jCPxXaK4S8Yqs=
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com (10.175.40.143) by
	AM5PR0402MB2833.eurprd04.prod.outlook.com (10.175.41.140) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.696.13; Thu, 19 Apr 2018 18:35:25 +0000
Received: from AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::410b:634a:236b:73d2]) by
	AM5PR0402MB2721.eurprd04.prod.outlook.com
	([fe80::410b:634a:236b:73d2%7]) with mapi id 15.20.0696.013;
	Thu, 19 Apr 2018 18:35:25 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Extensible SDK and DEFAULT_PREFERENCE
Thread-Index: AQHT1xBXFULFPLKSrEmY/QtI0hWd8KQG8X8AgAF6bRw=
Date: Thu, 19 Apr 2018 18:35:25 +0000
Message-ID: <AM5PR0402MB2721E6470EB725A0F1370116C4B50@AM5PR0402MB2721.eurprd04.prod.outlook.com>
References: <AM5PR0402MB2721E721141756999BAAF315C4B60@AM5PR0402MB2721.eurprd04.prod.outlook.com>,
	<CAMKF1soHgmwuaSLKVA3N_LfzDjDRrnJ0Fuk+Xy1d94P2a23fEA@mail.gmail.com>
In-Reply-To: <CAMKF1soHgmwuaSLKVA3N_LfzDjDRrnJ0Fuk+Xy1d94P2a23fEA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-originating-ip: [85.191.189.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5PR0402MB2833;
	7:0M7u5YgSUcXzhFMJOSTRhCDPAEGn38juZDYQxO/jHH5L7uGqbVTra7hXGubEmUr2g2qgM1e316BNGxUrbKlH2Yv9yJ8fSjkwZP5iHEQDArTM9xClB/dWhgVmahhXhC7D52r210OmySjkO+/hmao1JV3XkWdcWDKq2L0kiqWrOEsnJB1BlnzPx1goCJ4/5sy2EI3D5LOBOQeEItnR6rS0cyCBvCiMJdY5KIH4hi+zg+BxyO5ZCATS87AduGgXusHG
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:AM5PR0402MB2833; 
x-ms-traffictypediagnostic: AM5PR0402MB2833:
x-microsoft-antispam-prvs: <AM5PR0402MB2833F90F3F972322ED2F4BEEC4B50@AM5PR0402MB2833.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(3231232)(944501385)(52105095)(6041310)(20161123560045)(20161123562045)(20161123558120)(2016111802025)(20161123564045)(6072148)(6043046)(201708071742011);
	SRVR:AM5PR0402MB2833; BCL:0; PCL:0; RULEID:;
	SRVR:AM5PR0402MB2833; 
x-forefront-prvs: 0647963F84
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(376002)(366004)(396003)(39380400002)(346002)(76176011)(14454004)(25786009)(7696005)(606006)(5250100002)(59450400001)(4326008)(81166006)(8936002)(86362001)(8676002)(5660300001)(19627405001)(478600001)(39060400002)(966005)(99286004)(3846002)(6116002)(186003)(66066001)(53936002)(476003)(7736002)(33656002)(6246003)(236005)(6306002)(54896002)(55016002)(9686003)(3280700002)(3660700001)(74316002)(316002)(11346002)(2906002)(102836004)(26005)(229853002)(6916009)(53546011)(446003)(6506007)(6606003)(2900100001)(6436002)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0402MB2833;
	H:AM5PR0402MB2721.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; MLV:ovrnspm; PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: rlG1I2nfza1U5d0LQ9B87+4FxAl+HL0JgOi5nGqlFCenxXbowfQFOxim1JHKj6NZrGfxK5h59XaIpBq2rLxh9DAfhrCxsGiWl0piI9Rigldyrs+IiqVMp689ufKf8ETU5fQbJ5DtoWAk8ADGCNfMlUfnghvcKOyECliCL47ySfEgmcGlxGxkjzvZHnwJn9BT
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: d0e05e41-82ee-4e03-d425-08d5a624513f
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0e05e41-82ee-4e03-d425-08d5a624513f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2018 18:35:25.2241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2833
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Extensible SDK and DEFAULT_PREFERENCE
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
X-List-Received-Date: Fri, 20 Apr 2018 10:13:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0402MB2721E6470EB725A0F1370116C4B50AM5PR0402MB2721_"

--_000_AM5PR0402MB2721E6470EB725A0F1370116C4B50AM5PR0402MB2721_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


On Wed, Apr 18, 2018 at 5:41 AM, Martin Siegumfeldt <mns@gomspace.com> wrot=
e:
> Hi,
>
> I am having a number of recipes residing in two versions, some (developme=
nt versions) being down-prioritized using:
>
> DEFAULT_PREFERENCE =3D "-1"
>
>
> The source code is hosted at a private git repository, and the git versio=
n is selected using 'AUTOREV'. The extensible SDK renders successfully, how=
ever the installation (by third party) fails:
>
> Traceback (most recent call last):
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 412, in DataSmart.expandWithRefs(s=3D'dev+git${SRCPV}', varname=3D=
'PV'):
>                  try:
>     >                s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
>                      try:
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 111, in VariableParse.var_sub(match=3D<_sre.SRE_Match object; span=
=3D(7, 15), match=3D'${SRCPV}'>):
>                  else:
>     >                var =3D self.d.getVarFlag(key, "_content")
>                  self.references.add(key)
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 794, in DataSmart.getVarFlag(var=3D'SRCPV', flag=3D'_content', exp=
and=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):
>                      cachename =3D var + "[" + flag + "]"
>     >            value =3D self.expand(value, cachename)
>
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 436, in DataSmart.expand(s=3D'${@bb.fetch2.get_srcrev(d)}', varnam=
e=3D'SRCPV'):
>          def expand(self, s, varname =3D None):
>     >        return self.expandWithRefs(s, varname).value
>
>   File "/home/martin/gomspace_sdk/layers/poky/bitbake/lib/bb/data_smart.p=
y", line 426, in DataSmart.expandWithRefs(s=3D'${@bb.fetch2.get_srcrev(d)}'=
, varname=3D'SRCPV'):
>                  except Exception as exc:
>     >                raise ExpansionError(varname, s, exc) from exc
>
> bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expressio=
n was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: Fet=
cher failure: Fetch command export GIT_SSL_CAINFO=3D"/home
> /martin/gomspace_sdk/buildtools/sysroots/x86_64-gomspacesdk-linux/etc/ssl=
/certs/ca-certificates.crt"; export PATH=3D"/home/martin/gomspace_sdk/tmp/w=
ork/aarch64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0
> /recipe-sysroot-native/usr/bin/python-native:/home/martin/gomspace_sdk/la=
yers/poky/scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux=
/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/u
> sr/bin/aarch64-gomspace-linux:/home/martin/gomspace_sdk/tmp/work/aarch64-=
gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/cross=
scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomsp
> ace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sbin:=
/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetchera=
voidrecurse-r0/recipe-sysroot-native/usr/bin:/home/marti
> n/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravoidrecur=
se-r0/recipe-sysroot-native/sbin:/home/martin/gomspace_sdk/tmp/work/aarch64=
-gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-s
> ysroot-native/bin:/home/martin/gomspace_sdk/layers/poky/bitbake/bin:/home=
/martin/gomspace_sdk/tmp/hosttools"; export HOME=3D"/home/martin"; git -c c=
ore.fsyncobjectfiles=3D0 ls-remote ssh://git@github.com/GomS
> pace/libisl  failed with exit code 128, output:
> Host key verification failed.
> fatal: Could not read from remote repository.
>
>
> Please make sure you have the correct access rights
> and the repository exists.
>
> It is not the intention that third party will ever need access to the dev=
elopment version, and I don't see why the version information is fetched gi=
ven the reduced priority. Have I encountered an 'undocumented bug' or is th=
ere an alternate approach to achieve this?

AUTOREV is floating dependency, fetcher has to ensure to get a value
for it to populate version strings
before comparing which one to use. you might be able to use BBMASK
effectively to eliminate these
recips from parsers visibility completely.

Thanks, BBMASK seems to do the trick...

>
> Thanks,
> Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--_000_AM5PR0402MB2721E6470EB725A0F1370116C4B50AM5PR0402MB2721_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Co=
lor Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI=
 Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div style=3D"color: rgb(0, 0, 0);">
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On Wed, Apr 18, 2018 at 5:41 AM, Martin Siegumfeld=
t &lt;mns@gomspace.com&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I am having a number of recipes residing in two versions, some (develo=
pment versions) being down-prioritized using:<br>
&gt;<br>
&gt; DEFAULT_PREFERENCE =3D &quot;-1&quot;<br>
&gt;<br>
&gt;<br>
&gt; The source code is hosted at a private git repository, and the git ver=
sion is selected using 'AUTOREV'. The extensible SDK renders successfully, =
however the installation (by third party) fails:<br>
&gt;<br>
&gt; Traceback (most recent call last):<br>
&gt;&nbsp;&nbsp; File &quot;/home/martin/gomspace_sdk/layers/poky/bitbake/l=
ib/bb/data_smart.py&quot;, line 412, in DataSmart.expandWithRefs(s=3D'dev&#=
43;git${SRCPV}', varname=3D'PV'):<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; s =3D __expand_var_regexp_=
_.sub(varparse.var_sub, s)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
&gt;&nbsp;&nbsp; File &quot;/home/martin/gomspace_sdk/layers/poky/bitbake/l=
ib/bb/data_smart.py&quot;, line 111, in VariableParse.var_sub(match=3D&lt;_=
sre.SRE_Match object; span=3D(7, 15), match=3D'${SRCPV}'&gt;):<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; else:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; var =3D self.d.getVarFlag(=
key, &quot;_content&quot;)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.references.add(key)<br>
&gt;&nbsp;&nbsp; File &quot;/home/martin/gomspace_sdk/layers/poky/bitbake/l=
ib/bb/data_smart.py&quot;, line 794, in DataSmart.getVarFlag(var=3D'SRCPV',=
 flag=3D'_content', expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):=
<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cachename =3D var &=
#43; &quot;[&quot; &#43; flag &#43; &quot;]&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; value =3D self.expand(value, cachename)<br>
&gt;<br>
&gt;&nbsp;&nbsp; File &quot;/home/martin/gomspace_sdk/layers/poky/bitbake/l=
ib/bb/data_smart.py&quot;, line 436, in DataSmart.expand(s=3D'${@bb.fetch2.=
get_srcrev(d)}', varname=3D'SRCPV'):<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; def expand(self,=
 s, varname =3D None):<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 return self.expandWithRefs(s, varname).value<br>
&gt;<br>
&gt;&nbsp;&nbsp; File &quot;/home/martin/gomspace_sdk/layers/poky/bitbake/l=
ib/bb/data_smart.py&quot;, line 426, in DataSmart.expandWithRefs(s=3D'${@bb=
.fetch2.get_srcrev(d)}', varname=3D'SRCPV'):<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except Exception as exc:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise ExpansionError(varna=
me, s, exc) from exc<br>
&gt;<br>
&gt; bb.data_smart.ExpansionError: Failure expanding variable SRCPV, expres=
sion was ${@bb.fetch2.get_srcrev(d)} which triggered exception FetchError: =
Fetcher failure: Fetch command export GIT_SSL_CAINFO=3D&quot;/home<br>
&gt; /martin/gomspace_sdk/buildtools/sysroots/x86_64-gomspacesdk-linux/etc/=
ssl/certs/ca-certificates.crt&quot;; export PATH=3D&quot;/home/martin/gomsp=
ace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0<br>
&gt; /recipe-sysroot-native/usr/bin/python-native:/home/martin/gomspace_sdk=
/layers/poky/scripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-li=
nux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/u<br>
&gt; sr/bin/aarch64-gomspace-linux:/home/martin/gomspace_sdk/tmp/work/aarch=
64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot/usr/bin/cr=
ossscripts:/home/martin/gomspace_sdk/tmp/work/aarch64-gomsp<br>
&gt; ace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-sysroot-native/usr/sb=
in:/home/martin/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetch=
eravoidrecurse-r0/recipe-sysroot-native/usr/bin:/home/marti<br>
&gt; n/gomspace_sdk/tmp/work/aarch64-gomspace-linux/libgsisl/fetcheravoidre=
curse-r0/recipe-sysroot-native/sbin:/home/martin/gomspace_sdk/tmp/work/aarc=
h64-gomspace-linux/libgsisl/fetcheravoidrecurse-r0/recipe-s<br>
&gt; ysroot-native/bin:/home/martin/gomspace_sdk/layers/poky/bitbake/bin:/h=
ome/martin/gomspace_sdk/tmp/hosttools&quot;; export HOME=3D&quot;/home/mart=
in&quot;; git -c core.fsyncobjectfiles=3D0 ls-remote ssh://git@github.com/G=
omS<br>
&gt; pace/libisl&nbsp; failed with exit code 128, output:<br>
&gt; Host key verification failed.<br>
&gt; fatal: Could not read from remote repository.<br>
&gt;<br>
&gt;<br>
&gt; Please make sure you have the correct access rights<br>
&gt; and the repository exists.<br>
&gt;<br>
&gt; It is not the intention that third party will ever need access to the =
development version, and I don't see why the version information is fetched=
 given the reduced priority. Have I encountered an 'undocumented bug' or is=
 there an alternate approach to achieve
 this?<br>
<br>
AUTOREV is floating dependency, fetcher has to ensure to get a value<br>
for it to populate version strings<br>
before comparing which one to use. you might be able to use BBMASK<br>
effectively to eliminate these<br>
recips from parsers visibility completely.<br>
<br>
Thanks, BBMASK seems to do the trick...<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Martin<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk2=
33785" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_AM5PR0402MB2721E6470EB725A0F1370116C4B50AM5PR0402MB2721_--
