Return-Path: <Arun.Biyani@us.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F3A4E00C65; Mon,  7 Mar 2016 06:00:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.243.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 453 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Mar 2016 06:00:32 PST
Received: from imta21.fe.bosch.de (imta21.fe.bosch.de [139.15.243.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD7DE00C60
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 06:00:32 -0800 (PST)
Received: from smtp6-v.fe.bosch.de (imta24.fe.bosch.de [139.15.243.27])
	by imta21.fe.bosch.de (Postfix) with ESMTP id 97FBAC0656
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 14:52:58 +0100 (CET)
Received: from vsmta13.fe.internet.bosch.com (unknown [10.4.98.53])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 33D3AD8009E
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 14:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=us.bosch.com;
	s=2015-01-21; t=1457358774;
	bh=wh8LdGTmae4xf7N1tBI3FFBci7tXF0C0P7sH7Rg00c0=; l=10;
	h=From:From:Reply-To:Sender;
	b=kjg6YevcHidU7lP4aCIJD0GjrW4SsE4asFwjsZz/fv6idfstXg+xb2IHecMQA5Ps0
	2Iopnom5oQkeW9BbvljoBe69yzEDdPag+bmB9Pyyi3JyV6yrMQrA+32xrKSalKeL/9
	fZ8/zGpJVbG9orWBpUGiu/kUPZPFYKdqUqTdAsjI=
Received: from FE-MBX1006.de.bosch.com (vsgw23.fe.internet.bosch.com
	[10.4.98.23])
	by vsmta13.fe.internet.bosch.com (Postfix) with ESMTP id 0E9AD2E4032F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 14:52:54 +0100 (CET)
Received: from FE-MBX1005.de.bosch.com (10.3.230.25) by
	FE-MBX1006.de.bosch.com (10.3.230.19) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Mon, 7 Mar 2016 14:52:53 +0100
Received: from FE-MBX1005.de.bosch.com ([fe80::79fe:41f9:e629:ee17]) by
	FE-MBX1005.de.bosch.com ([fe80::79fe:41f9:e629:ee17%24]) with mapi id
	15.00.1104.000; Mon, 7 Mar 2016 14:52:53 +0100
From: "Biyani Arun (CM/ESC-NA)" <Arun.Biyani@us.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding lxc support to image
Thread-Index: AdF4eAL5ZD+Tb/NKRl2ybZqpWjEFng==
Date: Mon, 7 Mar 2016 13:52:53 +0000
Message-ID: <77ab469bd8b94861935db88f04e9a256@FE-MBX1005.de.bosch.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.225.160.17]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22176.006
X-TMASE-MatchedRID: qojOyvwE2G4gs4c2lNMI4EKcYi5Qw/RV0TSMhl9BEMTVU2WiOk7jaFpq
	2K/Emlk1NZgKuXgLgpMTIM+CgCzqHvZyTDo2IZ6UvHKClHGjjr0cZd/OW4yvKgeLCIX046iBjNL
	xrcxKViUihgJVrNniBX0MvTyUldaf96nKz1YAXzlYKMMlFh4BnXiv6DU+4dNS2vMIK7cENxEVag
	Cy2zgulVSwGvCl8CreN862GpoHoW5wYm+MaMfk2uQYBHVKqgDUfS0Ip2eEHnyvXSmSdlcYmn8ow
	SQ57rVIKrauXd3MZDVyir52KV+djEB3FyuoYMSVZat+fXZ7yMf3WVx7mPSmD2ub7+USXOBX74gp
	+miMPyJ80f6xv5kj2KFsubwK6T7kceXXC3qSduUaFYNa4sreNg==
X-Mailman-Approved-At: Mon, 07 Mar 2016 06:36:12 -0800
Subject: Adding lxc support to image
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
X-List-Received-Date: Mon, 07 Mar 2016 14:00:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_77ab469bd8b94861935db88f04e9a256FEMBX1005deboschcom_"

--_000_77ab469bd8b94861935db88f04e9a256FEMBX1005deboschcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would like to include lxc style container support in poky image. I added =
"meta-virtualization" to my
bblayers.conf. I now get errors when running "bitbake-layers show-recipes".

Parsing recipes..ERROR: No recipes available for:
  /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yoct=
o_4.4.bbappend
  /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yoct=
o_4.1.bbappend

I placed the bbappend files in the appropriate directory but I still get th=
is message. Please help.

What are the changes needed to include lxc support in the image?




--_000_77ab469bd8b94861935db88f04e9a256FEMBX1005deboschcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Arial" size=3D"2"><span style=3D"font-size:10pt;">
<div>I would like to include lxc style container support in poky image. I a=
dded &#8220;meta-virtualization&#8221; to my</div>
<div>bblayers.conf. I now get errors when running &#8220;bitbake-layers sho=
w-recipes&#8221;.</div>
<div>&nbsp;</div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">Pars=
ing recipes..ERROR: No recipes available for:</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p; /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yoc=
to_4.4.bbappend</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p; /home/fcadev/GR_Yocto/meta-virtualization/recipes-kernel/linux/linux-yoc=
to_4.1.bbappend</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">I pl=
aced the bbappend files in the appropriate directory but I still get this m=
essage. Please help.</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">What=
 are the changes needed to include lxc support in the image?</span></font><=
/div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
<div><font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">&nbs=
p;</span></font></div>
</span></font>
</body>
</html>

--_000_77ab469bd8b94861935db88f04e9a256FEMBX1005deboschcom_--
