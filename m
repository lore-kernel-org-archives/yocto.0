Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web08.8175.1604776050956065807
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Nov 2020 11:07:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=V6wSFXM6;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 2C1C95C0053
	for <yocto@lists.yoctoproject.org>; Sat,  7 Nov 2020 14:07:30 -0500 (EST)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Sat, 07 Nov 2020 14:07:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=UWD1VrsM0eH7RWM3hmIGiwsCKcQJxqj
	l5VRHFox5RUc=; b=V6wSFXM6BiLj2tYTfBGTgE6DtptQsqyeJ1d72GiCk5rIYZw
	44gilxQENSwrjQO+gaqXpGx6A0gd9MnSOYeQE7OviUORsBj9dv3bQ9Zgh+XpKxKt
	pzhz0ZMXsjISkkoITv5ZjqDfm9jkmLago0CBoLpJwZC6YlQ9nbtQmyJ/UN0bD6G5
	mV0JfNNYR9gY3lokS8FatOBnKX4VIFDIhiw1CFLNQzUgVFP9/mxVyqfn+MUalYAZ
	KjOQPu6KfMhyG3cu/nXrkxQgLwD+JSMYZoUxRS9nF6XYRljfSHg2AO4R7P0JqZEc
	/YwToPcmPOqvvQXqs6EJPBaPJ0jfwxmT6QivnPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=UWD1Vr
	sM0eH7RWM3hmIGiwsCKcQJxqjl5VRHFox5RUc=; b=dpoyM6RAO/HO86ixKXjEep
	sKtgJHjZzWw9Glzr92M9HnMrMKgcTRq4FpFsgnyaf+kb7sYtL3RRq/gWcTTQKTpx
	eg/v0RrFnsGapFMnQjM3HXXQsT01jnDH658/Yhrtl4u6OpRGU+X+qOlrWhIfFXM/
	WJ5JyySRveSgZ+qxXfJheTBPcBvFU4nRMu412cjyUmhXZA1w7SGJ2uf1fslLIC/h
	YxG4usxtaNG3PoJyXox93vpbeWc9DCf1ok45ooRegKMGO1Rti021Awk58sPli7Dw
	5wiEyqLm8P+ybT2oBNztYFJ24Od6yGay9Ne6XpQkG1QwMBY7ygOB37hNkPlck5PQ
	==
X-ME-Sender: <xms:cfCmXwZF5MNymjG4eUWOz3kIDg0lMCjN9ByfmWapFvwdYam5rbQ2BQ>
    <xme:cfCmX7bjspscgiep2rKY1UZZRDJj5TnISgoTYZkeEcBUomqRHN8rEx7zASvJ9bYrC
    lrF1zGEuINdKkes>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudduuddguddvfecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrg
    dtreerreertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcu
    oeforghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepheegud
    dvueeffeffjeevffdthfeijefgieetudeuueefueeiteeileejleehvedtnecuffhomhgr
    ihhnpeihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:cfCmX6_Q6LrxLglnC2s9L49G4NMkoM4NN8hMF89U9zfxlzOpPpxsZg>
    <xmx:cfCmX6qA1SiIT_chqj9ProMA4pyvX-PVg8zsoTiCtpnJ7U7MY0JqQA>
    <xmx:cfCmX7pIfHkTw6Z1ACjrY_Kr_aFXrVqS1eUXz4nWVMPYgl_rzZOypQ>
    <xmx:cvCmX40Kekfnf8hp5hQI8YhXsA_kVav_iUzP5KFf-boPJXABDC9wuw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id C1F741C02FD; Sat,  7 Nov 2020 14:07:29 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-570-gba0a262-fm-20201106.001-gba0a2623
Mime-Version: 1.0
Message-Id: <5b57486a-da0e-4bab-a45d-f934c9ee9fff@www.fastmail.com>
In-Reply-To: <16453E324DF04BDB.30366@lists.yoctoproject.org>
References: <16453E324DF04BDB.30366@lists.yoctoproject.org>
Date: Sat, 07 Nov 2020 20:07:09 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Syntax of multiconfig
Content-Type: multipart/alternative;
 boundary=18d4ea2b26444db39f583ffcc47ca342

--18d4ea2b26444db39f583ffcc47ca342
Content-Type: text/plain

Anwering my own post now.

Am Sa, 7. Nov 2020, um 14:53, schrieb Manuel Wagesreither:
> 3.)
> The links above are using `target_1` and `target_2` for as configuration names. I think this is misleading, as target already refers to the recipe/package or image bitbake is building. How can I contribute to the BitBake documentation?
> 
> I checked [3] but couldn't see anything referencing the documentation.
> 
> [3] https://wiki.yoctoproject.org/wiki/Newcomers#How_to_Contribute

I just realized there is 'poky/documentation' which holds the documentation source code. Didn't see that before.

--18d4ea2b26444db39f583ffcc47ca342
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div>Anwering my own=
 post now.</div><div><br></div><div>Am Sa, 7. Nov 2020, um 14:53, schrie=
b Manuel Wagesreither:<br></div><blockquote type=3D"cite" id=3D"qt" styl=
e=3D""><div>3.)<br></div><div>The links above are using `target_1` and `=
target_2` for as configuration names. I think this is misleading, as tar=
get already refers to the recipe/package or image bitbake is building. H=
ow can I contribute to the BitBake documentation?<br></div><div><br></di=
v><div>I checked [3] but couldn't see anything referencing the documenta=
tion.<br></div><div><br></div><div>[3]&nbsp;<a href=3D"https://wiki.yoct=
oproject.org/wiki/Newcomers#How_to_Contribute">https://wiki.yoctoproject=
.org/wiki/Newcomers#How_to_Contribute</a><br></div></blockquote><div><br=
></div><div>I just realized there is 'poky/documentation' which holds th=
e documentation source code. Didn't see that before.<br></div></body></h=
tml>

--18d4ea2b26444db39f583ffcc47ca342--
