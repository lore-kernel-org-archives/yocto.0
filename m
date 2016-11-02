Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A31E007D3; Wed,  2 Nov 2016 05:33:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.79 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC2S5.hotmail.com (col004-omc2s5.hotmail.com
	[65.55.34.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D1E9E0070F
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 05:33:05 -0700 (PDT)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com ([65.55.34.73])
	by COL004-OMC2S5.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Wed, 2 Nov 2016 05:33:04 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=iclSNaUrdnp7vu5siYyvjuvRDdfiy01QmfrdpGRImbk=;
	b=qRHY+P2keIOKU0k4hBn2/AxHoR0KRlWZxQ2CkNxNa1XP0io/oKw1BGGMzUQscUYPdGqfqwuaBdBOjLaeYoyLJS6R6mwMfL2+C/PDQbszqeKbucCvk7RvBm6kxj1T3TOXYDBns+4tyxzVVsjsvqcrugXT1usNY3xFlX2y5Fmlv2sUSw88HUVUaclJMHKv7rdUporhGmykZ2CkcXZ7q308DKi2VORd+lisbip/yWN9r6riNp+djIdseLf6rzCdPptruCxx4SjBtZLxJFZSA1gYNjr7vpPlx0og0y0mMCdicHpFiEA2D14v2WUWGXgg0BReP1rbk2Pr2ONkOUy3xi1VNw==
Received: from VE1EUR02FT047.eop-EUR02.prod.protection.outlook.com
	(10.152.12.53) by VE1EUR02HT232.eop-EUR02.prod.protection.outlook.com
	(10.152.13.58) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.693.6;
	Wed, 2 Nov 2016 12:33:02 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.12.55) by
	VE1EUR02FT047.mail.protection.outlook.com (10.152.13.237) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.693.6 via Frontend Transport; Wed, 2 Nov 2016 12:33:02 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0693.009; Wed, 2 Nov 2016 12:33:01 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Ionel Badisor <ionelbadisor@gmail.com>
Thread-Topic: [yocto] [raspberrypi3][meta-qt5] Failed to build
	meta-toolchain-qt5
Thread-Index: AQHSLF9yRZyzpaMIaUqAHJgUBbdCu6C0lPiBgAADhACAAA8SAYAQ8TGAgAAYpwo=
Date: Wed, 2 Nov 2016 12:33:01 +0000
Message-ID: <HE1PR01MB18834ADEF34C4EDAD2FF695192A00@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161022162610.28a9d1ed@nuc.betafive.co.uk>
	<HE1PR01MB1883F449B33898FC6A3C826D92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<c9233842-ae6d-1dd2-a90d-f0d60b4fdb24@gmail.com>
In-Reply-To: <c9233842-ae6d-1dd2-a90d-f0d60b4fdb24@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [up7dwS8lL95V45AIIuP2rRW68UmlS5eP]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT232;
	7:XOJTe8r3/uABioiJoaG8ugGdnaKzPxo5BzHOrWS6TEj9/j76qzEZ4naD7ecmtAW6KZA05NVOi5WGMTu86OVeAgqlZQNBzGvKk27lchzUUnB0Aqll+cuDZ1lSyFUxHmbQ30pTxkwNeK9s26sTweBzP3KauJjIt5y+1Vp8M7B43k7wKLruem8FRmy4n2QiQrJQnE19NFFozJwzy4fB8GRxCffAyCVR6xdaPZ9O9QSkJ628jbbm+LBPgtowjMvkpVVSkd2pPrAje5dsFkphDyvRo9KAKAvsgwon0A0AYuLFrcuXZtWeAS4TJlkaIPQqsr/XmDEaYVGhfNp0xfNadWFLXWqp38uHxq4zHiA7TetRV2A=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR02HT232;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: b5cdf506-d643-41d9-271f-08d4031c6297
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR02HT232;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR02HT232; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT232; 
x-forefront-prvs: 0114FF88F6
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2016 12:33:01.2451 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT232
X-OriginalArrivalTime: 02 Nov 2016 12:33:04.0572 (UTC)
	FILETIME=[420247C0:01D23505]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Wed, 02 Nov 2016 12:33:08 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB18834ADEF34C4EDAD2FF695192A00HE1PR01MB1883eurp_"

--_000_HE1PR01MB18834ADEF34C4EDAD2FF695192A00HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Ionel,


I filed a bug-report for this concern.

Thanks for your feedback, I'll try it this afternoon..


Karim.


________________________________
De : Ionel Badisor <ionelbadisor@gmail.com>
Envoy=E9 : mercredi 2 novembre 2016 12:03
=C0 : Karim ATIKI; Paul Barker
Cc : yocto
Objet : Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain=
-qt5

On 10/22/2016 07:21 PM, Karim ATIKI wrote:
> Hi Paul,
>
>
> the compile log file is attached with this mail.
>
>
>
>
> ------------------------------------------------------------------------
> *De :* Paul Barker <paul@paulbarker.me.uk>
> *Envoy=E9 :* samedi 22 octobre 2016 17:26
> *=C0 :* Karim ATIKI
> *Cc :* yocto
> *Objet :* Re: [yocto] [raspberrypi3][meta-qt5] Failed to build
> meta-toolchain-qt5
>
> On Sat, 22 Oct 2016 15:16:18 +0000
> Karim ATIKI <karim_atiki@hotmail.com> wrote:
>
>> Actually, it looks like the issue comes from gstreamer1.0-plugins-bad
>> recipe.
>>
>>
>> This function, graphics_get_display_size, comes from libbcm_host
>> which seems to be present in sysroot.
>>
>>
>> In log.doconfigure i found:
>>
>>
>> checking for bcm_host_init in -lbcm_host... yes
>> checking bcm_host.h usability... yes
>> checking bcm_host.h presence... yes
>> checking for bcm_host.h... yes
>>
>> So it seems that it found the necessary library.
>>
>>
>> However, in the logfile of the compile error, there is no
>> "-lbcm_host" dependency at all.
>>
>>
>> Any idea to solve it ?
>>
>
> Could you post more of the compile log? It would be good to see the
> full set of arguments being used for compiling/linking.
>
> Thanks,
> Paul
>
>

I stumble upon this issue before. My solution was to add
LDFLAGS +=3D " -lbcm_host"
In a bbappend to gstreamer1.0-plugins-bad_%.bbappend in my layer





--_000_HE1PR01MB18834ADEF34C4EDAD2FF695192A00HE1PR01MB1883eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Ionel,</p>
<p><br>
</p>
<p>I filed a bug-report for this concern.</p>
<p>Thanks for your feedback, I'll try it this afternoon..</p>
<p><br>
</p>
<p>Karim.</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Ionel Badisor &lt;io=
nelbadisor@gmail.com&gt;<br>
<b>Envoy=E9 :</b> mercredi 2 novembre 2016 12:03<br>
<b>=C0 :</b> Karim ATIKI; Paul Barker<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-to=
olchain-qt5</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On 10/22/2016 07:21 PM, Karim ATIKI wrote:<br>
&gt; Hi Paul,<br>
&gt;<br>
&gt;<br>
&gt; the compile log file is attached with this mail.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *De :* Paul Barker &lt;paul@paulbarker.me.uk&gt;<br>
&gt; *Envoy=E9 :* samedi 22 octobre 2016 17:26<br>
&gt; *=C0 :* Karim ATIKI<br>
&gt; *Cc :* yocto<br>
&gt; *Objet :* Re: [yocto] [raspberrypi3][meta-qt5] Failed to build<br>
&gt; meta-toolchain-qt5<br>
&gt;<br>
&gt; On Sat, 22 Oct 2016 15:16:18 &#43;0000<br>
&gt; Karim ATIKI &lt;karim_atiki@hotmail.com&gt; wrote:<br>
&gt;<br>
&gt;&gt; Actually, it looks like the issue comes from gstreamer1.0-plugins-=
bad<br>
&gt;&gt; recipe.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; This function, graphics_get_display_size, comes from libbcm_host<b=
r>
&gt;&gt; which seems to be present in sysroot.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; In log.doconfigure i found:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; checking for bcm_host_init in -lbcm_host... yes<br>
&gt;&gt; checking bcm_host.h usability... yes<br>
&gt;&gt; checking bcm_host.h presence... yes<br>
&gt;&gt; checking for bcm_host.h... yes<br>
&gt;&gt;<br>
&gt;&gt; So it seems that it found the necessary library.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; However, in the logfile of the compile error, there is no<br>
&gt;&gt; &quot;-lbcm_host&quot; dependency at all.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Any idea to solve it ?<br>
&gt;&gt;<br>
&gt;<br>
&gt; Could you post more of the compile log? It would be good to see the<br=
>
&gt; full set of arguments being used for compiling/linking.<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Paul<br>
&gt;<br>
&gt;<br>
<br>
I stumble upon this issue before. My solution was to add<br>
LDFLAGS &#43;=3D &quot; -lbcm_host&quot;<br>
In a bbappend to gstreamer1.0-plugins-bad_%.bbappend in my layer<br>
<br>
<br>
<br>
<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR01MB18834ADEF34C4EDAD2FF695192A00HE1PR01MB1883eurp_--
