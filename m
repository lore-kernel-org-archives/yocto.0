Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50AD0E00C9E; Wed,  2 Aug 2017 04:36:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.37.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-cys01nam02on0056.outbound.protection.outlook.com
	[104.47.37.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD8FE00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 04:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=SmuUYybldWpzaiCD20zMGSOakMBkJKy/7WKTHHnFtyM=;
	b=bBeMxWZj/q9x2640WpTCePhdwuUGDwtVXl3b2/tg+S1OQVJ3L+qQQxNIXbBb1IAdHklIo2zrjwsxEwOPhRKW/l1iG5pKFcNEKH407YaouxmpmEEqXGuqQ9y3iKJGiSL1iXlJMfaYqw4XPa0264r5FmlG3DTVllYcTOweSunhqc8=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1304.22; Wed, 2 Aug 2017 11:03:08 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.01.1304.023; Wed, 2 Aug 2017 11:03:08 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] local file update vs rebuild
Thread-Index: AQHTCfGbP/Qv+xMmlkyawVYpcAWfoKJuRYGAgAKjUDU=
Date: Wed, 2 Aug 2017 11:03:08 +0000
Message-ID: <MWHPR01MB3293F9C5E19470A956237D8DB6B00@MWHPR01MB3293.prod.exchangelabs.com>
References: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>,
	<38c1a8ab-2ad8-f1e1-c56c-13ec8ace1dd0@gmail.com>
In-Reply-To: <38c1a8ab-2ad8-f1e1-c56c-13ec8ace1dd0@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [118.238.252.194]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB3293;
	7:uIGaOOSOa488NBF21C/JZH2obDTHvBAcfJdGo6MkmV4ZO1Iz5yMvrM3aDX0ZuOIPXOoe4HpQyN+WBbMRC/7kEwJTnzaVvO9H/mP9B72XMFuOZxOw8wgYU283h5Lj/ET48+nEv8Y3qZxw7O3VmGtnLFJU18Nh/by4ZTNyGrb96fcWLUXsdsV7QZCn1inP0RReWnd0drOFTBf994/ijTdacuFxrHCClf7rQ4gmbNbQx2SYY8N0rdd/HlYun20p5Mt5ss7mbZ8QFqSeHB8dmdQm99QdJ6apOkE6adHSBPvkAXcU5H++2YgWp/Ok02AYEqFZiGBF7igNXsRn2fRHge50ds0P7MMjT8zUCFsEZvyKsX4xLGyOes/2ZCgy2VYFQNZ8rgjxjaaYErWgjzOtIVvJAX7LFhyW3No+UGiJtd47kBmpMK2x84LuLPsDrKEpmAOax1FKulkFfYWP+VSNgUSGsFZd5ClBAvwewtiZXAlz0bomlHQICLFfsYPJmAeaMCgIt4tVzjn95gJidAkd82U/vmAXQJXIfuWW2EIwDSLD4HQcfCf57cK2Ijr+TM4fWZirA9SWO63cWVK3GQDPlp0GAGhlTQUKYXAHoCTPk/oPZeb+oIZDtzb9ZTDE2FQqARgfhmro2VxkB1WQK7IkMWy/+43bIXYDRGYQMDu7va80H0ovyI84zJNNLXxjYtxj5qzcbwVKpkv7VsBWdE6XXsbqHdmZ9X1l6ZbXPZEVmCT2ieaFgcXgKIS3BF98Vtj3O5eK6v+W/dNgFPSSV4aM0RyjaOIIR0SNsbbyLTKRJkGUdtQ=
x-ms-office365-filtering-correlation-id: 7f2147d5-b647-40e0-4796-08d4d9960f2c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB3293; 
x-ms-traffictypediagnostic: MWHPR01MB3293:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <MWHPR01MB32935FF34D9A196DB3277C04B6B00@MWHPR01MB3293.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(10201501046)(3002001)(93006095)(93001095)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123555025)(20161123558100)(20161123560025)(20161123564025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB3293; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB3293; 
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39450400003)(39830400002)(39400400002)(39410400002)(189002)(24454002)(57704003)(377454003)(199003)(3660700001)(77096006)(2906002)(53936002)(53546010)(3846002)(2900100001)(6506006)(97736004)(189998001)(6116002)(229853002)(102836003)(6246003)(3280700002)(33656002)(2950100002)(106356001)(15650500001)(68736007)(54896002)(81156014)(9686003)(81166006)(236005)(478600001)(38730400002)(14454004)(6606003)(105586002)(8936002)(99286003)(8676002)(55016002)(7696004)(50986999)(19627405001)(54356999)(76176999)(6436002)(101416001)(7736002)(66066001)(39060400002)(345774005)(5660300001)(25786009)(74316002)(86362001)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB3293;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2017 11:03:08.7089 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3293
Subject: Re: local file update vs rebuild
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
X-List-Received-Date: Wed, 02 Aug 2017 11:36:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR01MB3293F9C5E19470A956237D8DB6B00MWHPR01MB3293prod_"

--_000_MWHPR01MB3293F9C5E19470A956237D8DB6B00MWHPR01MB3293prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.

Thank you for your comment.


I want to double check.


xxxx =3D image name

yyyy =3D recipe within xxxx


Then, I am not sure if doing below will rebuild yyyy from scratch.


$ bitbake xxxx -c cleansstate

$ bitbake xxxx


Especially, I am doing things like below within my yyyy.


SRC_URI +=3D "file://src/*;subdir=3Dlocal"


I want to be sure that, if I make modification to the local files (referred=
 to as file://... path within SRC_URI variable of xxxx recipe), the changes=
 are reflected to the final image.

(Not explicitly specifying -c cleansstate to xxxx).

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Tuesday, August 1, 2017 3:42 AM
To: Takashi Matsuzawa; yocto@yoctoproject.org
Subject: Re: [yocto] local file update vs rebuild



On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:
> Hello.
> I am uncertain about do_clean behavior with local files.
>
>
> Say, I have local files referred by my recipe, and I have made changes to=
 the files referred.
> (Note, there is no change in my xxxx.bb file itself.)
>
>
>> SRC_URI +=3D "file://src/*;subdir=3Dlocal"
>
>
> What makes those changed files reflected to the build?
> Do I need do_cleanall?  do_cleansstate or maybe do_clean is enough?
>
>
> According to the document
>
>
>> do_clean
>> do_unpack task forward (i.e. do_unpack, do_configure, do_compile, do_ins=
tall, and do_package).
>> if no changes have been made and the recipe is rebuilt after cleaning, o=
utput files are simply restored from the sstate cache.
>
>
> I want to avoid doing do_cleanall often, and I would like to tell bitbake=
 that my recipe needs rebuild at the same time not rebuilding others.
> But at the same time I want to avoid building my single explicity.
> I just want to build the image name as target.

I think ccleansstate should be good.

>
>


--_000_MWHPR01MB3293F9C5E19470A956237D8DB6B00MWHPR01MB3293prod_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello.</p>
<p>Thank you for your comment.</p>
<p><br>
</p>
<p>I want to double check.</p>
<p><br>
</p>
<p>xxxx =3D image name</p>
<p>yyyy =3D recipe within xxxx</p>
<p><br>
</p>
<p>Then, I am not sure if doing below will rebuild yyyy from scratch.</p>
<p><br>
</p>
<p>$ bitbake xxxx -c cleansstate</p>
<p>$ bitbake xxxx</p>
<p><br>
</p>
<p>Especially, I am doing things like below within my yyyy.</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 13.3333px;">SRC_URI &#43;=3D &quot;</span><a href=3D"file://src/*;subd=
ir=3Dlocal" style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont=
, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji=
, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; fon=
t-size: 13.3333px;">file://src/*;subdir=3Dlocal</a><span style=3D"font-fami=
ly: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot=
;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;,=
 &quot;Android Emoji&quot;, EmojiSymbols; font-size: 13.3333px;">&quot;</sp=
an><br style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &qu=
ot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &qu=
ot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-siz=
e: 13.3333px;">
<br>
</p>
<p>I want to be sure that, if I make modification to the local files (refer=
red to as
<a href=3D"file://" class=3D"OWAAutoLink">file://</a>... path within SRC_UR=
I variable of xxxx recipe), the changes are reflected to the final image.</=
p>
<p>(Not explicitly specifying -c cleansstate to xxxx).</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Tuesday, August 1, 2017 3:42 AM<br>
<b>To:</b> Takashi Matsuzawa; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] local file update vs rebuild</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
<br>
On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:<br>
&gt; Hello.<br>
&gt; I am uncertain about do_clean behavior with local files.<br>
&gt; <br>
&gt; <br>
&gt; Say, I have local files referred by my recipe, and I have made changes=
 to the files referred.<br>
&gt; (Note, there is no change in my xxxx.bb file itself.)<br>
&gt; <br>
&gt; <br>
&gt;&gt; SRC_URI &#43;=3D &quot;<a href=3D"file://src/*;subdir=3Dlocal">fil=
e://src/*;subdir=3Dlocal</a>&quot;<br>
&gt; <br>
&gt; <br>
&gt; What makes those changed files reflected to the build?<br>
&gt; Do I need do_cleanall? &nbsp;do_cleansstate or maybe do_clean is enoug=
h?<br>
&gt; <br>
&gt; <br>
&gt; According to the document<br>
&gt; <br>
&gt; <br>
&gt;&gt; do_clean<br>
&gt;&gt; do_unpack task forward (i.e. do_unpack, do_configure, do_compile, =
do_install, and do_package).<br>
&gt;&gt; if no changes have been made and the recipe is rebuilt after clean=
ing, output files are simply restored from the sstate cache.&nbsp;<br>
&gt; <br>
&gt; <br>
&gt; I want to avoid doing do_cleanall often, and I would like to tell bitb=
ake that my recipe needs rebuild at the same time not rebuilding others.<br=
>
&gt; But at the same time I want to avoid building my single explicity.<br>
&gt; I just want to build the image name as target.<br>
<br>
I think ccleansstate should be good.<br>
<br>
&gt; <br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_MWHPR01MB3293F9C5E19470A956237D8DB6B00MWHPR01MB3293prod_--
