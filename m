Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web10.343.1618847459749412507
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 08:51:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=xTvAMc47;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.29, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id ED6A15C008F
	for <yocto@lists.yoctoproject.org>; Mon, 19 Apr 2021 11:50:58 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Mon, 19 Apr 2021 11:50:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=Pt7IgrZgV7q3P3wNurlCOS63NKMkvqA
	Ha1lVIMxnQRA=; b=xTvAMc47zaq7XI1jkLbezSGSeL95qRsCWRqk17smq7aHDmZ
	0wTO1HA8QpKhljFrJISvVCqy5u2DfjsHon5Abj8CJmh+7DP+qobncQ92HIGbxA61
	jSRWKEiAE37FCN8xWfG8S2IYzyHvgLieoWbgJ9GBoQRVwogmipTJSTZezEhKyAzc
	JeAZWw2RTgkbrFOpgASQBtAkY3mPTnn9TYBfGI8ZZUW5wf8BlT2WBGMEur6uk+hb
	X5iFi3LtZYrJ2rgpJsangd+MXuFe3SkIntDx+prDb3W6hHmT1iXSN24qDJR2sOMy
	+fVyEoxp3bgeQz4KcoR9SndW1hv2e2RRXuH/JTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Pt7Igr
	ZgV7q3P3wNurlCOS63NKMkvqAHa1lVIMxnQRA=; b=SAuOmbkfDWRxnRLGVayjxq
	iFtyFu/1z0CBaA3VscgLqux5E9J/VKO7QtGPNIzsYmou/2a78Qv1fOwtd2EhLLHR
	9kng2u7UWnd80ZlkNp1UxDPPk+j4hfxfumIjNkfaEQQJJd7VTVdNGTOP/xsoqvGQ
	n1E4CkQzLP480PafpY7vLQWhzUQcFpt7CPtpQn+qReU0kqjAQl39ssyjt2fdOS5D
	Xn7KqV060G1jJM0rNjcvwh3Q8ZA0l7ZH63yldazGZfkkcBv/N+JklFfrMIIbG9dH
	6Bct3SdQ5FMP7bjqw9scBNz3gWy55qtLac8wM2ZS1B8gtcYZD26TDlf4OTqsmY4g
	==
X-ME-Sender: <xms:4qZ9YCQaSl5SHRFzwPDbV4tPHkO0qICGLJMePM8e3CXxss9kD2hsKg>
    <xme:4qZ9YHyVL1K6wLMiIIwyXnvDijfQpqnDaoizlRayKY8-WemLTz_TaXrlIV2ISfLqS
    LZSKpEJ8BGrzD9A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvddtgedgleehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsegrtd
    erreerredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceo
    ofgrnhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpedvffetud
    evkeetudehteevffehiedtleeuffeiheehjeejieekudelueekueevleenucffohhmrghi
    nhepohhpvghnvghmsggvugguvggurdhorhhgpdihohgtthhophhrohhjvggtthdrohhrgh
    enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghn
    hggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:4qZ9YP1lQAxY_9y9j0s5jf4HGsjZeXlrhZ45sI1iZScwbQfozYTspg>
    <xmx:4qZ9YOAmLMMoJ4wgAm0MS29fvvlBQiwpZLCmv9CP-NnFNty2d6eC3g>
    <xmx:4qZ9YLiRfReN0e2qslkQVzTJtVFG_O6GGiRi1PaptfUDGDVQA_ETtg>
    <xmx:4qZ9YGslTt0ii_Wyzk2ujTqze-wRQJ2O9GNgd6Lq06FVi9z9bkCGUw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id A4FC42E0725; Mon, 19 Apr 2021 11:50:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-379-g3e3377039f-fm-20210419.003-g3e337703
Mime-Version: 1.0
Message-Id: <d16c8f10-de62-4321-83c7-7c95776b3d5b@www.fastmail.com>
In-Reply-To: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
References: <60a75986-68f2-94c7-592-99dbb3891e3@crashcourse.ca>
Date: Mon, 19 Apr 2021 17:50:38 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] what to include in a "hardware bringup image"?
Content-Type: multipart/alternative;
 boundary=ea7ac59a77634d38ab77509e4742f80e

--ea7ac59a77634d38ab77509e4742f80e
Content-Type: text/plain

Hi,

ethtool can be used to check the network cable connection status and the autonegotiated link speed. That way you can make sure the port was soldered on correctly.

Regards,
Manuel


Am Do, 15. Apr 2021, um 10:24, schrieb Robert P. J. Day:
> 
>   for a current project (and subsequent projects), i want to define a
> hardware bringup image; that is, a really basic image chock-full of
> low-level utilities for debugging initial board bringup. this means
> precious little unnecessary userspace crud that has no value in that
> context. (at the moment, the target is aarch64 but, naturally, the
> ideal image would be maximally applicable no matter the target.)
> 
>   i'm thinking of recipes that allow probing/configuration of memory
> and busses and that sort of thing. off the top of my head:
> 
>   * pciutils
>   * usbutils
>   * libgpiod
>   * phytool (or other MDIO probe/debug tools)
>   * devmem2
>   * spidev-test/spitools
>   * i2c-tools
> 
> the list can go on and on, and i just ran across this which i had
> never seen before:
> 
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/c-periphery/c-periphery_2.3.1.bb?h=master
> 
>   suggestions? i suspect numerous folks on this list have already done
> something like this.
> 
> rday
> 
> 
> 
> 
> 

--ea7ac59a77634d38ab77509e4742f80e
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.MsoNor=
mal,p.MsoNoSpacing{margin:0}</style></head><body><div>Hi,<br></div><div><br=
></div><div>ethtool can be used to check the network cable connection statu=
s and the autonegotiated link speed. That way you can make sure the port wa=
s soldered on correctly.<br></div><div><br></div><div>Regards,<br></div><di=
v>Manuel<br></div><div><br></div><div><br></div><div>Am Do, 15. Apr 2021, u=
m 10:24, schrieb Robert P. J. Day:<br></div><blockquote type=3D"cite" id=3D=
"qt" style=3D""><div><br></div><div>&nbsp; for a current project (and subse=
quent projects), i want to define a<br></div><div>hardware bringup image; t=
hat is, a really basic image chock-full of<br></div><div>low-level utilitie=
s for debugging initial board bringup. this means<br></div><div>precious li=
ttle unnecessary userspace crud that has no value in that<br></div><div>con=
text. (at the moment, the target is aarch64 but, naturally, the<br></div><d=
iv>ideal image would be maximally applicable no matter the target.)<br></di=
v><div><br></div><div>&nbsp; i'm thinking of recipes that allow probing/con=
figuration of memory<br></div><div>and busses and that sort of thing. off t=
he top of my head:<br></div><div><br></div><div>&nbsp; * pciutils<br></div>=
<div>&nbsp; * usbutils<br></div><div>&nbsp; * libgpiod<br></div><div>&nbsp;=
 * phytool (or other MDIO probe/debug tools)<br></div><div>&nbsp; * devmem2=
<br></div><div>&nbsp; * spidev-test/spitools<br></div><div>&nbsp; * i2c-too=
ls<br></div><div><br></div><div>the list can go on and on, and i just ran a=
cross this which i had<br></div><div>never seen before:<br></div><div><br><=
/div><div><a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/me=
ta-oe/recipes-support/c-periphery/c-periphery_2.3.1.bb?h=3Dmaster">http://c=
git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/c-perip=
hery/c-periphery_2.3.1.bb?h=3Dmaster</a><br></div><div><br></div><div>&nbsp=
; suggestions? i suspect numerous folks on this list have already done<br><=
/div><div>something like this.<br></div><div><br></div><div>rday<br></div><=
div><br></div><div><br></div><div><br></div><div><br></div><div><br></div><=
/blockquote><div><br></div></body></html>

--ea7ac59a77634d38ab77509e4742f80e--
