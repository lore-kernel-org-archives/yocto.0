Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB987E00BA2; Sat, 13 Oct 2018 02:01:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.217.199.72 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA272E00A0C
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2018 02:01:53 -0700 (PDT)
Received: from MUC-S-EX16C.advaoptical.com ([172.20.1.27])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w9D91omo017012
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=FAIL); Sat, 13 Oct 2018 11:01:51 +0200
Received: from MGN-S-EX19B.advaoptical.com (172.25.1.194) by
	MUC-S-EX16C.advaoptical.com (172.20.1.27) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
	15.1.1591.10; Sat, 13 Oct 2018 11:01:50 +0200
Received: from MUC-S-EX19A.advaoptical.com (172.20.1.58) by
	MGN-S-EX19B.advaoptical.com (172.25.1.194) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.2.221.12; Sat, 13 Oct 2018 11:01:50 +0200
Received: from MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c]) by
	MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c%9]) with mapi
	id 15.02.0221.012; Sat, 13 Oct 2018 11:01:50 +0200
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Force rebuild to regenerate .ko
Thread-Index: AQHUYdvR5gAR/XyIlkKR803FN/gS06Uc4qR2
Date: Sat, 13 Oct 2018 09:01:49 +0000
Message-ID: <78ae629ee3b44d61a411030b8c95daa8@advaoptical.com>
References: <mailman.9.1539284401.19322.yocto@yoctoproject.org>,
	<CY4PR19MB1093B99F41A1F2F97E1427A3C5E20@CY4PR19MB1093.namprd19.prod.outlook.com>
In-Reply-To: <CY4PR19MB1093B99F41A1F2F97E1427A3C5E20@CY4PR19MB1093.namprd19.prod.outlook.com>
Accept-Language: en-IL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.1.231]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-13_05:, , signatures=0
Subject: Re: Force rebuild to regenerate .ko
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
X-List-Received-Date: Sat, 13 Oct 2018 09:01:55 -0000
Content-Language: aa
Content-Type: multipart/alternative;
	boundary="_000_78ae629ee3b44d61a411030b8c95daa8advaopticalcom_"

--_000_78ae629ee3b44d61a411030b8c95daa8advaopticalcom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Please add more details.


For example, where ixgbe.ko resides (what layer)?

If it is in Linux kernel (linux-yocto package), then just:

$ bitbake linux-yocto -c cleanall

$ bitbake linux-yocto


--- Kosta Z.


________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Raymond Yeung <rksyeung@hotmail.com>
Sent: Friday, 12 October 2018 6:29:44
To: yocto@yoctoproject.org
Subject: [yocto] Force rebuild to regenerate .ko

I've a Intel Ethernet driver, ixgbe.ko.  I made some changes (debug logs) t=
o the source file.  How do I force the .ko to be regenerated within yocto e=
nvironment, without rebuilding the entire yocto code base?

I tried to do bitbake of the image name earlier, but bitbake decides that t=
here's nothing to be done.  This is even after I'd removed the cache and ss=
tate directories.

Thanks,
Raymond

--_000_78ae629ee3b44d61a411030b8c95daa8advaopticalcom_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Please add more details.</p>
<p><br>
</p>
<p>For example, where ixgbe.ko resides (what layer)?</p>
<p>If it is in Linux kernel (linux-yocto package), then just:</p>
<p>$&nbsp;bitbake linux-yocto -c cleanall</p>
<p><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 16px;">$&nbsp;bitbake linux-yocto</span><br>
</p>
<p><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &=
quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &=
quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-s=
ize: 16px;">--- Kosta Z.</span></p>
<p><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Raymond Yeung=
 &lt;rksyeung@hotmail.com&gt;<br>
<b>Sent:</b> Friday, 12 October 2018 6:29:44<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Force rebuild to regenerate .ko</font>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I've a Intel Ethernet driver, ixgbe.ko. &nbsp;I made some changes (debug lo=
gs) to the source file. &nbsp;How do I force the .ko to be regenerated with=
in yocto environment, without rebuilding the entire yocto code base?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I tried to do bitbake of the image name earlier, but bitbake decides that t=
here's nothing to be done. &nbsp;This is even after I'd removed the cache a=
nd sstate directories.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Raymond</div>
</div>
</body>
</html>

--_000_78ae629ee3b44d61a411030b8c95daa8advaopticalcom_--
