Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5847E00B1A; Fri,  5 Jul 2019 05:28:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (onureser12[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5F8E00994
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2019 05:28:34 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id w20so8130976edd.2
	for <yocto@yoctoproject.org>; Fri, 05 Jul 2019 05:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:thread-topic:thread-index:date:message-id
	:references:in-reply-to:accept-language:content-language
	:mime-version; bh=YXHsP/oNofPTU2fxtVihEFRPJtZtPIBPK4Tr2+0x3uM=;
	b=aYk+LapuJNNxsf+LfWsBtmQD1KgqmI7GFWnxS4y0fMN+DPnP8EkPUNg3wRsQpuhkKn
	dT58PpkUMLZQXsQf+VQMHHf2jXZ/Fjj8vQ+UVqWtHEJfdvT3Zy5HBLtOExKDTO9GXcH1
	pJZGcG7gUK3AA76g6IJUmhrd7JgRYk48uOFu7iZKo4IgNpR/8Za9Y32ho3yXEC0RLmcX
	xTtbso+/FGVOTgVnx1JoLDD3TT6hXCHf4Cj3QrkjciKqHaeKmoBErS5pLsh+sLaZsmNM
	js/co55AASa8oe5CXXM/l7Z0Tq10roQS9WEqf347XZIK0KniPYu0ijBUUpF/JyFrwfGB
	kF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:thread-topic:thread-index:date
	:message-id:references:in-reply-to:accept-language:content-language
	:mime-version;
	bh=YXHsP/oNofPTU2fxtVihEFRPJtZtPIBPK4Tr2+0x3uM=;
	b=skyICi5LYcXpaxqPMCn3RftRwqrAmeg+gN6o2xb+EObmOjVDCspM20TpcXSLjYDvzD
	csj2XHlf0OAyGOynIH28wBhuOuiKg7DFoDqvF40VZsuU69K6BdqJZIglNOGjjYrTrC2G
	jl3ywep4F45apHodSqVXQ4fMK7NZXSYp3Mqfp//kOFeaybqnhbTzKOjZ2LcwPbPSoXTW
	78/25GLVbEV0aPoxxaQaQ13gcW9dGFPzw0EQdlnsCQsy/DBEMryWYUiKdmxT9bWvhykv
	EilCh+eaztcPHPzQiit8TRAWRs+J4IA7f78RSIjU1TH6m8iAw6mWm+ez6zJGFYPPw5Se
	cOEA==
X-Gm-Message-State: APjAAAU0/nvKJueYNKryPE1dZVK5BhwoMnKM4fKhjQj9lYC3PyBh53FY
	Q+xdzhhuJqgjuRbmIp7XzlY=
X-Google-Smtp-Source: APXvYqw7Sda1tGcnhPTytv40vpcXGEOSe5r+j5iZ3Wz05ZsLsriqppJiE6fczHIB8jeAU9S7clv3Ww==
X-Received: by 2002:aa7:d6d3:: with SMTP id x19mr4189517edr.119.1562329713636; 
	Fri, 05 Jul 2019 05:28:33 -0700 (PDT)
Received: from AM0PR0302MB3331.eurprd03.prod.outlook.com ([40.101.80.109])
	by smtp.gmail.com with ESMTPSA id
	p22sm1661827ejm.38.2019.07.05.05.28.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jul 2019 05:28:32 -0700 (PDT)
From: Onur Eser <onureser12@gmail.com>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to extrac rootfs.wic in Ubuntu?
Thread-Index: AUFoaVN08BdkcLjFLp52LsRueGjDEKeVhrki
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Fri, 5 Jul 2019 12:28:31 +0000
Message-ID: <AM0PR0302MB333161A32DD682492D1A962BFAF50@AM0PR0302MB3331.eurprd03.prod.outlook.com>
References: <CAA=hcWRnntFMMmipmOBSw-BrG0p+Fix3u8rGONvh6NUEoi4TSA@mail.gmail.com>
In-Reply-To: <CAA=hcWRnntFMMmipmOBSw-BrG0p+Fix3u8rGONvh6NUEoi4TSA@mail.gmail.com>
Accept-Language: tr-TR, en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
Subject: Re: How to extrac rootfs.wic in Ubuntu?
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
X-List-Received-Date: Fri, 05 Jul 2019 12:28:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR0302MB333161A32DD682492D1A962BFAF50AM0PR0302MB3331_"

--_000_AM0PR0302MB333161A32DD682492D1A962BFAF50AM0PR0302MB3331_
Content-Type: text/plain; charset="iso-8859-3"
Content-Transfer-Encoding: quoted-printable

Hello Jupiter,
I guess you can directly use archieve manager of ubuntu to extract it. And =
then you can tar the files from terminal. Or there should be another image =
ends with .wic (not .rootfs.wic) inside /build/tmp/deploy/image-name
Onur


________________________________
Kimden: JH <jupiter.hce@gmail.com> ad=B9na yocto-bounces@yoctoproject.org
G=F6nderme tarihi: Cuma, Temmuz 5, 2019 3:23 =D6S
Kime: Yocto discussion list
Konu: [yocto] How to extrac rootfs.wic in Ubuntu?

Hi,

I know I can use dd to write wic to a device such as a SD card, but I
need to extract rootfs.wic then repack it by tar.gz in Ubuntu machine.
Is it possible? How can I do it.

Thank you.

- jupiter
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

--_000_AM0PR0302MB333161A32DD682492D1A962BFAF50AM0PR0302MB3331_
Content-Type: text/html; charset="iso-8859-3"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
3">
</head>
<body>
<div>
<div>
<div>
<div style=3D"direction: ltr;">Hello Jupiter,</div>
<div style=3D"direction: ltr;">I guess you can directly use archieve manage=
r of ubuntu to extract it. And then you can tar the files from terminal. Or=
 there should be another image ends with .wic (not .rootfs.wic) inside /bui=
ld/tmp/deploy/image-name</div>
<div style=3D"direction: ltr;">Onur</div>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature"></div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"dir=3D&quot;ltr&quot;"><font face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Kimden:</b> J=
H &lt;jupiter.hce@gmail.com&gt; ad=B9na yocto-bounces@yoctoproject.org<br>
<b>G=F6nderme tarihi:</b> Cuma, Temmuz 5, 2019 3:23 =D6S<br>
<b>Kime:</b> Yocto discussion list<br>
<b>Konu:</b> [yocto] How to extrac rootfs.wic in Ubuntu?
<div>&nbsp;</div>
</font></div>
Hi, <br>
<br>
I know I can use dd to write wic to a device such as a SD card, but I <br>
need to extract rootfs.wic then repack it by tar.gz in Ubuntu machine. <br>
Is it possible? How can I do it. <br>
<br>
Thank you. <br>
<br>
- jupiter <br>
-- <br>
_______________________________________________ <br>
yocto mailing list <br>
yocto@yoctoproject.org <br>
https://lists.yoctoproject.org/listinfo/yocto <br>
</div>
</body>
</html>

--_000_AM0PR0302MB333161A32DD682492D1A962BFAF50AM0PR0302MB3331_--
