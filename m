Return-Path: <onureser12@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA093E00920; Thu,  4 Jul 2019 03:21:11 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0976AE00920
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 03:21:10 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id i11so4947991edq.0
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:thread-topic:thread-index:date:message-id
	:references:in-reply-to:accept-language:content-language
	:mime-version; bh=LSFpZki5UBncEWvhU+YQb5V/HCPMrt/nFAcLffBz3nM=;
	b=bA2jXF0fhe/Wq5qLPpdN2q0eYqE9gFHYgSpwqXIoX+H8Psi12ExJqgarN19G98cMSd
	fh70hHR/Qr/rAh0yIBa0p7yDEE6hiC5nH+lWXtFj6XfLzQRDwnKwo6B63x815e4f5Kfr
	QnQN8upWTvrY+bhydhsi0vfmS7xhDx6ZuwkGorB/453ws3T7Q3+wYqpWDXFrc8GkGCy7
	eTxyscRn4cdOUjkFA2Y/aMG/q0FI8NVsooID88hTdp0GHJiaqWelUArUFTaxnXednk7j
	IepnW8sTGxmYcthKjHYrFtrSVy5PLpIu7vurfqKAV9Tjk3mhRlgyokLpEKw1l5bIm8I+
	8AZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:thread-topic:thread-index
	:date:message-id:references:in-reply-to:accept-language
	:content-language:mime-version;
	bh=LSFpZki5UBncEWvhU+YQb5V/HCPMrt/nFAcLffBz3nM=;
	b=unGB5DiRPZLCQDSWU5kenseITn4MitLnULu0tKLycHY1DV24U0jMLPN5otrVFEyCUH
	HiA8CcmoE0uQNis9TEcZvwuWk8dFWIz7H5jD5DZJz3hBtMSXTkZLnEnmy0nrN2hIDYdN
	2BZl98QtPmuVeWrbPh4iI9HLdBQIKXiaWAgOe6K0mq5/D6U55JLRlhaFxmvC+HZqcUp/
	f7ZUWUcKFYLUA8Fq+oa76tnUDFY1ZjtWU0TcQNVQqOPTHJYONVwdQaXlq7bO0uG98vv9
	EstLkAb62+NMk2Sy51iOiRIY97TBOWObVmNcLWj9dUquFm4E9H6XATjkIJwolPqupKhG
	rx4w==
X-Gm-Message-State: APjAAAXonlGOjYqVVp7wpVCkYeorbukS3gLb5Q/yRo+tCwWGkpEQcRSX
	kn5TOoFMk8G76x5umI6FVfE=
X-Google-Smtp-Source: APXvYqzAGw87YhxHVwbQ3KCQemBBvj5m4W8oehciBsvk9vRJlJNVrfnRlVhkl4M3Xn6m4ZMWuhxLFw==
X-Received: by 2002:a17:906:12d7:: with SMTP id
	l23mr36605273ejb.282.1562235669799; 
	Thu, 04 Jul 2019 03:21:09 -0700 (PDT)
Received: from AM0PR0302MB3331.eurprd03.prod.outlook.com ([40.101.80.109])
	by smtp.gmail.com with ESMTPSA id i1sm982288ejo.32.2019.07.04.03.21.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 04 Jul 2019 03:21:09 -0700 (PDT)
From: Onur Eser <onureser12@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, Zoran Stojsavljevic
	<zoran.stojsavljevic@gmail.com>
Thread-Topic: [yocto] Json-Glib failed to build during the building of Weston
	image
Thread-Index: AWd0UFFt9B42bETW7UyT4mg2KxSNK2dXUFc2dzMyVnLUh69JDA==
X-MS-Exchange-MessageSentRepresentingType: 1
Date: Thu, 4 Jul 2019 10:21:07 +0000
Message-ID: <AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0@AM0PR0302MB3331.eurprd03.prod.outlook.com>
References: <CAG+Ob8YjxmmHaEJ-N80QzNKcrP8=5PbMewVApk4tW7J994KfJg@mail.gmail.com>
	<CAGAf8LxzH6BLd43+di7Wy3pRJnNiqPimRW0c6CQWnpTo2X9Xsg@mail.gmail.com>,
	<CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
In-Reply-To: <CAJTo0LYDOruPah4+sHeVMEJwrcpeh2+uP9hpGvw3V+fFtWsUJw@mail.gmail.com>
Accept-Language: tr-TR, en-US
X-MS-Has-Attach: 
X-MS-Exchange-Organization-SCL: -1
X-MS-TNEF-Correlator: 
X-MS-Exchange-Organization-RecordReviewCfmType: 0
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Json-Glib failed to build during the building of Weston image
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
X-List-Received-Date: Thu, 04 Jul 2019 10:21:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0AM0PR0302MB3331_"

--_000_AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0AM0PR0302MB3331_
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

Well, changed my configuration a little bit. Now, compiling again for a cor=
e weston image. I will let you know if anything goes wrong again. And thank=
 you for giving me information about my host system, Zoran.
Onur


________________________________
Kimden: Burton, Ross <ross.burton@intel.com>
G=F6nderme tarihi: Per=BAembe, Temmuz 4, 2019 1:16 =D6S
Kime: Zoran Stojsavljevic
Bilgi: Onur Eser; Yocto Project
Konu: Re: [yocto] Json-Glib failed to build during the building of Weston i=
mage

On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Why Weston protocol? Why not classical X11 Client Server in user
> space? Which DeskTop are U using in Ur YOCTO build?

Weston is arguably superior to X11 in most respects, and for new
platforms which are not tied to a classic X server I entirely
recommend Weston over X.

Ross

--_000_AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0AM0PR0302MB3331_
Content-Type: text/html; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
2">
</head>
<body>
<div>
<div>
<div>
<div style=3D"direction: ltr;">Well, changed my configuration a little bit.=
 Now, compiling again for a core weston image. I will let you know if anyth=
ing goes wrong again. And thank you for giving me information about my host=
 system, Zoran.</div>
<div style=3D"direction: ltr;">Onur</div>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature"></div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"dir=3D&quot;ltr&quot;"><font face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Kimden:</b> B=
urton, Ross &lt;ross.burton@intel.com&gt;<br>
<b>G=F6nderme tarihi:</b> Per=BAembe, Temmuz 4, 2019 1:16 =D6S<br>
<b>Kime:</b> Zoran Stojsavljevic<br>
<b>Bilgi:</b> Onur Eser; Yocto Project<br>
<b>Konu:</b> Re: [yocto] Json-Glib failed to build during the building of W=
eston image
<div>&nbsp;</div>
</font></div>
On Thu, 4 Jul 2019 at 10:43, Zoran Stojsavljevic <br>
&lt;zoran.stojsavljevic@gmail.com&gt; wrote: <br>
&gt; Why Weston protocol? Why not classical X11 Client Server in user <br>
&gt; space? Which DeskTop are U using in Ur YOCTO build? <br>
<br>
Weston is arguably superior to X11 in most respects, and for new <br>
platforms which are not tied to a classic X server I entirely <br>
recommend Weston over X. <br>
<br>
Ross <br>
</div>
</body>
</html>

--_000_AM0PR0302MB33312C4AF1F6A392FDE4FB54FAFA0AM0PR0302MB3331_--
