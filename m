Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E726DE009BC; Mon, 23 Apr 2018 16:20:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 11pmail.ess.barracuda.com (11pmail.ess.barracuda.com
	[64.235.150.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05ACAE008D7
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 16:20:29 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx26.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Mon, 23 Apr 2018 23:20:27 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Mon, 23 Apr 2018 16:20:22 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Mon, 23 Apr 2018 16:20:22 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: where is useradd-example.bb
Thread-Index: AQHT21iPGe6EZP8ciEe9ZUGplvd0faQO/ASi
Date: Mon, 23 Apr 2018 23:20:22 +0000
Message-ID: <1077ee15f82342028d4c50649e150b50@sakuraus.com>
References: <703b82f7eb8c40bdacf7903ffcd919fa@sakuraus.com>
In-Reply-To: <703b82f7eb8c40bdacf7903ffcd919fa@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1524525626-853316-20004-1085-1
X-BESS-VER: 2018.5-r1804232011
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.192304
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: Re: where is useradd-example.bb
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
X-List-Received-Date: Mon, 23 Apr 2018 23:20:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1077ee15f82342028d4c50649e150b50sakurauscom_"

--_000_1077ee15f82342028d4c50649e150b50sakurauscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Well this is embarrassing, apparently my searches of the Yocto source tree =
weren't very good. I tried again after sending out my question and found it=
 under sources/poky/meta-skeleton.


Sorry for the noise,

Greg

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Greg Wilson-Lindberg <GWilson@sakuraus.com>
Sent: Monday, April 23, 2018 4:15:47 PM
To: yocto@yoctoproject.org
Subject: [yocto] where is useradd-example.bb


I'm trying to understand adding a user in a recipe and in the documentation=
 it says to consult meta-skeleton/recipes-skeleton/useradd/useradd-example.=
bb. the meta-skeleton directory doesn't exist and I can't find the file any=
where else. I've done a search on the net and I don't get any hits on the f=
ile either, lots of references in the manuals, bot not the file.


Can anyone tell me where to find it?


Regards,

Greg

--_000_1077ee15f82342028d4c50649e150b50sakurauscom_
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
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Well this is embarrassing, apparently my searches of the Yocto source tr=
ee weren't very good. I tried again after sending out my question and found=
 it under sources/poky/meta-skeleton.</p>
<p><br>
</p>
<p>Sorry for the noise,</p>
<p>Greg</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto-bounces@yoctopr=
oject.org &lt;yocto-bounces@yoctoproject.org&gt; on behalf of Greg Wilson-L=
indberg &lt;GWilson@sakuraus.com&gt;<br>
<b>Sent:</b> Monday, April 23, 2018 4:15:47 PM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] where is useradd-example.bb</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>I'm trying to understand adding a user in a recipe and in the documentat=
ion it says to consult&nbsp;<span style=3D"color: rgb(51, 51, 51); font-fam=
ily: Calibri, Arial, Helvetica, sans-serif;">meta-skeleton/recipes-skeleton=
/useradd/</span><span><span style=3D"font-family: Calibri, Arial, Helvetica=
, sans-serif;">u</span>seradd-example.bb.
 the meta-skeleton directory doesn't exist and I can't find the file anywhe=
re else. I've done a search on the net and I don't get any hits on the file=
 either, lots of references in the manuals, bot not the file.</span></p>
<p><span><br>
</span></p>
<p><span>Can anyone tell me where to find it?</span></p>
<p><span><br>
</span></p>
<p><span>Regards,</span></p>
<p><span>Greg</span></p>
</div>
</div>
</body>
</html>

--_000_1077ee15f82342028d4c50649e150b50sakurauscom_--
