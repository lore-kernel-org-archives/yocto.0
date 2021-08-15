Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web12.10731.1629031456160313242
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 05:44:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=m0467cXg;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.26, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 53C0F5C0097;
	Sun, 15 Aug 2021 08:44:15 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sun, 15 Aug 2021 08:44:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to:cc
	:subject:content-type; s=fm3; bh=0Nlu7YZjUHpV3PD5fCzL1/WOXmTBBu2
	C82p2yl5cEDo=; b=m0467cXgAjwyPfkeIRnZJksXmZVaUhLIg8mbn+pZEWjoSkS
	3sBocA+vJxKQJCD4f4goAQD8wHpHR4ZNAf/LTujBnTAIEXH++uTOr1rHgx317dvG
	cBj5DloLFcubPUqUAKaVSk/3zQAZusxgB5FiCUsnV2d4Txsgm1srtNa9hj3frzV+
	ZOObGJ73S5QUa4MJT1nEdYYts8hhMLsiPjU7pR4a+XVuPrYBdxswJouYE6ZWwXhz
	wxkYIRoi1folY6Zthz8YAPOjBgVELQGuN0fhunxHdfBEKRfIpTeMEtJXwViZyeZo
	cSyBQ9pdCmeGp8WHrS1QFjb02xeltFLjOHkQotA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=0Nlu7Y
	ZjUHpV3PD5fCzL1/WOXmTBBu2C82p2yl5cEDo=; b=uQGsmXqF5WF/YPhYB8gyAn
	FK11P5SgChhyVieqjRiQGgtGHOi+eJTScH7ilfQnNB3czWV6W+B/qdcMjOh/bCc9
	X9EzmWP/gzhfw07eCf3A5Nt6g7R6iJLJgOS2Vk20ZCrjveASbT0WszI6jG5M2+ha
	eyXirur0Z2bKBBmaPumhj7i+c6Aqklj4aHtBicF7vJ2e05BgaQrkVJxi0r37rTuR
	bkTUsZnawo0RsMW0lerVqLLiIEXU5A4Or2CglKzxQMqFmcS+O7CgMsBJudFGTCc+
	oqz2tGnbLtt+iwOtb4JG/59ap+gQQ1n9B+13bCyP/4AL2RTD57myfjbs2VKlQNog
	==
X-ME-Sender: <xms:HgwZYUVWJ19JulM9KiOROXtlsANb8xPOixvfx_iNFv6atRLUHfulLQ>
    <xme:HgwZYYnV04AAhT9fJWmJ_eZeZibhcSQBnI6Awq9w0sKMzU9uFYR6G2_Cep5zTlBhv
    M7w8oFLsOHwrKpw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkeelgdehiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedfofgrnhhu
    vghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilhdrhf
    foqeenucggtffrrghtthgvrhhnpeetiedvteegtefgfedugfeiteelveeuffffkeefgeeg
    vefglefhgfdvleeuleetudenucffohhmrghinhepghhithhlrggsrdgtohhmpdhgihhthh
    husgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
    ohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:HgwZYYZZt8sb90BYQ6OzQZhPLZcXpcsYF0vmhHb9ppvOG1aRZtLfpQ>
    <xmx:HgwZYTXu6ncWTcwYGBSVCyLdy2BbII_ZEBTqjJzqnFTnFqATKp-5IQ>
    <xmx:HgwZYenOKuxDueBVp5w-YFJvMrFHU7D2YH4z8JIYRoJjoiE24gOvOw>
    <xmx:HwwZYVvh53UCYxdMvyAP2aU5-ef4R2ZRYgYoWjUmv_XeRCVPs6rd0g>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B17FA3C0453; Sun, 15 Aug 2021 08:44:14 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1082-gccb13bca62-fm-ubox-20210811.001-gccb13bca
Mime-Version: 1.0
Message-Id: <7de3dfb7-e876-42ac-972e-8cf225a457ef@www.fastmail.com>
In-Reply-To: <5e4dac64-bfcd-43f2-87d5-f9d289d8b24c@gmail.com>
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
 <CAOSpxdZkLtjttE=q_uvq=0Tgm5H4KQNW=dvHE5J1fcH0EWg3AQ@mail.gmail.com>
 <7949dbde-1a12-4ca2-b71b-fd776c69e16a@www.fastmail.com>
 <5e4dac64-bfcd-43f2-87d5-f9d289d8b24c@gmail.com>
Date: Sun, 15 Aug 2021 14:43:54 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Khem Raj" <raj.khem@gmail.com>, "Steve Sakoman" <steve@sakoman.com>
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
Content-Type: text/plain

Am So, 15. Aug 2021, um 03:39, schrieb Khem Raj:
> On 8/14/21 5:29 AM, Manuel Wagesreither wrote:
> > Am Fr, 13. Aug 2021, um 23:59, schrieb Steve Sakoman:
> >> On Fri, Aug 13, 2021 at 11:29 AM Manuel Wagesreither <ManWag@fastmail.fm> wrote:
> >>>
> >>> Hello all,
> >>>
> >>> I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
> >>>
> >>> Since then, the build is failing with the following message:
> >>> ```
> >>> ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
> >>> ```
> >>>
> >>> Indeed this line, and even more the one after look strange.
> >>> https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/conf/layer.conf#L104
> >>
> >> Note that you are using the master branch of meta-oe              ^^^^^^^^
> >>
> >> If you use the dunfell branch you won't have this issue.
> >>
> >> Steve
> >>
> > I feel like an idiot right now. Thank you! With dunfell it builds indeed.
> > 
> > Now I have to deal with the following:
> > ```
> > ERROR: Layer multimedia-layer is not compatible with the core layer which only supports these series: dunfell (layer is compatible with honister)
> > ```
> > 
> 
> https://github.com/openembedded/meta-openembedded/blob/dunfell/meta-multimedia/conf/layer.conf#L34
> 
> says it works with dunfell releases and depends on core and meta-python 
> layers. So I wonder what release are you using for core
My bad again. I had the modified layer.conf still in my meta-oe directory, and this prevented kas from switching to the new commit. Fixed this and build now runs.

Manuel
