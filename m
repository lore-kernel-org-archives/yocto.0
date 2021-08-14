Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web10.48880.1628944200778885871
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Aug 2021 05:30:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=qEvmLGp3;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.21, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 86D4B3200902;
	Sat, 14 Aug 2021 08:29:56 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sat, 14 Aug 2021 08:29:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm3; bh=vHfY2L5t2J9Mdjwb8IvTTU5+MS2Xi8+
	mvILRZA0X4H8=; b=qEvmLGp330A2kmdvNMjeDxogGdt2SYzzPOokfyIFba+54C2
	J1r6N7KQEHnIU5hU14pHqcIYMx5OSHqEY8zWvpAHjDlG17VW5/K1o1Xwu7sKGlvP
	mh/7HHDmS/PPkb99CeeyEZ3U5EX9hED1bfT6mG/47InGFeRCW89UUeWa97LHcMto
	tZEnvbIYfpLvGVD2OmpLjPU4dCIvOJULrVMGEpFV5wP+3Y8emv5sFh7Mk8PaajMB
	FpKo81xZDzzes/z8UP00h0dXWTukEuF3PrDdrdQJ4RY6T579Ro7FlvRooU6FWpYw
	EOCN21r5TR7eCrprzxkubwkwDAa+bz+h3350qCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=vHfY2L
	5t2J9Mdjwb8IvTTU5+MS2Xi8+mvILRZA0X4H8=; b=iFUxe7kzIA9vgRfk8EbO34
	BcDlfpfqWfDAsixAO2SyRDVMi4f5bX5//GklAjlc68bLc6kOtiuTQSINwYnu5NzN
	hROSdBD/URcsa3Ro7YjfKgsg7oD+b1+o2d5IEpIf/Y2R8xtvFDvxb8bVd1Rz0QL0
	P3z169tfpMr5ThaYQAQzOltMaMBMRDvqB+frmrFGpmeYls8AwahTrzYISiYxbWSB
	3nDlmfwqtWjkkyHTWDKUDbafOiyosNk4qxWMzHJqsf3rtiAqWTkD7Gsguy93ETCh
	y1GqwJs+OkL2eoSjfbjV1VpcnBjFF72wzjZ9rgBYS9pXFk+U/UD8aOnawabSUSfg
	==
X-ME-Sender: <xms:Q7cXYZr7ImzrM8CCjY-nsIHi4yneoDUOJtsqJq0ZYmdNL0saEaRsJg>
    <xme:Q7cXYbqY3z5KvN_a95ahAOgsiOXibyKkO46ef3GCIVhUjvziK5eUrBE9h-l-bY-fA
    fkPP6GLnzU8_rsj>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkeejgdehgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedfofgrnhhu
    vghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilhdrhf
    foqeenucggtffrrghtthgvrhhnpeetiedvteegtefgfedugfeiteelveeuffffkeefgeeg
    vefglefhgfdvleeuleetudenucffohhmrghinhepghhithhlrggsrdgtohhmpdhgihhthh
    husgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:Q7cXYWN7Q7csSkCHIZ0cYUPbSqlbYEHIbgnsyThQKM9H7DYDQ2UJYQ>
    <xmx:Q7cXYU7nvYbjJlikhoFBam4iHVT3SbhTcykcGLcDAqIrIkT69ZZcCw>
    <xmx:Q7cXYY5U1xhXRkLUd-xyRSWmC7RiHgbE7XDsze0KcKwcq6lqhMVkjQ>
    <xmx:RLcXYdVoVAObiM_-D94Bqzvzt1xFmoyu_BVyeKuj4OdWYp1UPhbPlQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B35663C0453; Sat, 14 Aug 2021 08:29:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1082-gccb13bca62-fm-ubox-20210811.001-gccb13bca
Mime-Version: 1.0
Message-Id: <7949dbde-1a12-4ca2-b71b-fd776c69e16a@www.fastmail.com>
In-Reply-To: 
 <CAOSpxdZkLtjttE=q_uvq=0Tgm5H4KQNW=dvHE5J1fcH0EWg3AQ@mail.gmail.com>
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
 <CAOSpxdZkLtjttE=q_uvq=0Tgm5H4KQNW=dvHE5J1fcH0EWg3AQ@mail.gmail.com>
Date: Sat, 14 Aug 2021 14:29:35 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Steve Sakoman" <steve@sakoman.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
Content-Type: text/plain

Am Fr, 13. Aug 2021, um 23:59, schrieb Steve Sakoman:
> On Fri, Aug 13, 2021 at 11:29 AM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
> >
> > Hello all,
> >
> > I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
> >
> > Since then, the build is failing with the following message:
> > ```
> > ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
> > ```
> >
> > Indeed this line, and even more the one after look strange.
> > https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/conf/layer.conf#L104
> 
> Note that you are using the master branch of meta-oe              ^^^^^^^^
> 
> If you use the dunfell branch you won't have this issue.
> 
> Steve
> 
I feel like an idiot right now. Thank you! With dunfell it builds indeed.

Now I have to deal with the following:
```
ERROR: Layer multimedia-layer is not compatible with the core layer which only supports these series: dunfell (layer is compatible with honister)
```

I guess I'll have to analyze the layers .conf file to see where that comes from.

Thanks, Manuel
