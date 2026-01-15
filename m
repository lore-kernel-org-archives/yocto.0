Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38B39D44C54
	for <webhook@archiver.kernel.org>; Thu, 15 Jan 2026 14:22:54 +0000 (UTC)
Received: from fhigh-b8-smtp.messagingengine.com (fhigh-b8-smtp.messagingengine.com [202.12.124.159])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.36725.1768486973667399289
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jan 2026 06:22:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=bw6sKoa9;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=CSDF94iP;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.159, mailfrom: paul@pbarker.dev)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.stl.internal (Postfix) with ESMTP id CF3117A006B
	for <yocto@lists.yoctoproject.org>; Thu, 15 Jan 2026 09:22:52 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Thu, 15 Jan 2026 09:22:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1768486972; x=1768573372; bh=tE515d9H8A
	M1FxNH0ZtgB05DyeG1VoJwkgVKWTG8VEM=; b=bw6sKoa9yEXrRshmS7SHm/v9J3
	IKl1ex3zDVTt+nPot/34vbpC58j9W1wBYI45PyWfv88woKmnwHpO0ffTfnrz4SuK
	r1X+fLLPkFkhN0Ouh5WWIZnCtcnTbQhQGj6haPz5q3KZOAaWeknKZmCLMHennaOY
	UudllLV7ZXKi7J15hulSTfY5O3EjU6Xvl/Fty48DvCj1dlwfSXPP0hyStQceVeAh
	q28pisLyF+fp7gT82zcsI0kBw4qwLLUkg9aygffKsRCM+I8Q1zd7291OdOxG2300
	WQ/8aeCDWOY/sLE+0+hLKMOggjt7strkl/PFU/QwEyV9wpboIp1s6FX+lEuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1768486972; x=1768573372; bh=tE515d9H8AM1FxNH0ZtgB05DyeG1VoJwkgV
	KWTG8VEM=; b=CSDF94iPLeWKEmBfFskocOaEKTEd3nGWau8IPqnzVtf7n4Tvhc3
	FaQIGTByaUEsbi4XvNTrQ5fYIn4BpScQEWd3pVHP+GQYlfYuDE9LLmlvYneOXJbE
	BKpLsipzMDx34BucZTwHub4Mxesl4BBuNoPm7QKn/P7aW14FZpWK9yG/vzv5twgd
	WZdz/Y0KssFZDGzvfQlnX3RhokFxzUJ8HAfF3o9f1MdUincdR9JqBG+rM/J+RpPS
	429oTMCMd2u7J0RaZJIx3nh5b2/BMrndEHrNluSdgYzY9WAI4XYwNjv3WTGEOTj0
	MK2LoBkTrw5t8qipAxrSnOIvI0Y+tZdV2dA==
X-ME-Sender: <xms:PPhoaWQN844v5jNdlDN5aX9GzzKPs3Xf7qlhASqiix0m-KQLX15Q3Q>
    <xme:PPhoaSugVPIQgdWRO5rsMGxpIP5hYTyxAFN9Kl_RaGwxM8EUJi1EgeSq3ZeerVug2
    3Ov82tyIlDdQu7vC-Hht1JVXBNRfGqVp4PDM_28NvnbM6w2dLzbjFDB>
X-ME-Received: <xmr:PPhoaZc_taPL7irKvk6TEh4YcCdT8fiFXruIhk8wAu_sh79EAlLA0VphnDSzshgIZiCbhibzn_B61ggMEaGaRbn5GxedAefitXMNmlk3gOQY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvdeivdelucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkuffhvfffjghftggfggesghdtreertd
    erjeenucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdr
    uggvvheqnecuggftrfgrthhtvghrnhepteejkeeugefhiedugeeiheeghffgfffghefhud
    dtffefgfdtheelteejgfeiuefhnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdr
    ohhrghdpiihoohhmrdhushenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpehprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthhtohep
    uddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohephihotghtoheslhhishhtshdrhi
    hotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:PPhoaXI-94QPYoJjaGuIeGnYKqlDyc37B4zYSeY9T2t3kUfWD8_Eog>
    <xmx:PPhoafb3nM3db9zZufLrOZxHhRXhzRoWNTMebusKaaYxOv9YayYdxw>
    <xmx:PPhoaauEDz_Fsh6ypqeP0yE61a_V7QHhdgISv9YMjSq4FAnCTExmHw>
    <xmx:PPhoaUsocHHMNEsSo15vH8xlCWEvS8zGHPEXg3jE6rpn_UT7NLqocA>
    <xmx:PPhoaaiV69NwxKc5iaD3X1U411RWY4DeUT6xOJdWsQaLstnfDuR2qzZN>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jan 2026 09:22:52 -0500 (EST)
Message-ID: <a757a32b48912dfa6eb1bbdbbe72eaa4b3294041.camel@pbarker.dev>
Subject: Re: Yocto Project AB-INT Bug Squashing
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org
Date: Thu, 15 Jan 2026 14:22:49 +0000
In-Reply-To: <e04e428b90dac8146d21fd1db4b2513041fa93a9.camel@pbarker.dev>
References: <e04e428b90dac8146d21fd1db4b2513041fa93a9.camel@pbarker.dev>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 ep0k17xg==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-gdQaZy2BvDo/OWYBcmOR"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jan 2026 14:22:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66150


--=-gdQaZy2BvDo/OWYBcmOR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2026-01-13 at 17:02 +0000, Paul Barker wrote:
> Hi all,
>=20
> As discussed in the weekly status email [1], we are seeing a high number
> of intermittent failures on our autobuilder cluster. This is currently
> blocking our ability to make progress on stable releases and on getting
> changes in to master.
>=20
> On this call will triage the issues causing the most impact and decide
> what to do with them. We may need to investigate and resolve some
> issues, for others we may wish to disable the failing test case.
>=20
> Help from the wider Yocto Project community would be greatly
> appreciated! Please join in and give us help in squashing these bugs if
> you can.
>=20
> [1]: https://lists.yoctoproject.org/g/yocto-status/topic/yocto_project_st=
atus_13/117245165

Hi all,

This is a short follow up to yesterday's meeting - a 30 min slot before
the bug triage call - as we still have some more issues to discuss.

We're making good progress, but additional help is needed and greatly
appreciated!

---

Yocto Meetings is inviting you to a scheduled Zoom meeting.

Topic: Yocto Project AB-INT Bug Squashing
Time: Jan 15, 2026 08:00 AM Pacific Time (US and Canada)
Join Zoom Meeting
https://zoom.us/j/95179790558

Meeting ID: 951 7979 0558

---

One tap mobile
+16469313860,,95179790558# US
+16694449171,,95179790558# US

---

Join by SIP
=E2=80=A2 95179790558@zoomcrc.com

Join instructions
https://zoom.us/meetings/95179790558/invitations?signature=3D85qKSa8AFN2VzH=
UlxTyytHPiQRoCzh10YniWYohqQa8

Best regards,

--=20
Paul Barker


--=-gdQaZy2BvDo/OWYBcmOR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaWj4OREccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bgWOAP9n2dmRXOQOG11V5Roge1aCXHpyobqR0d2R
IEobOWjsSQEAoVZwMn0SI4JuhDtDv7onpedtAwGIktJrv7oGzFs5Pg4=
=BJ8Y
-----END PGP SIGNATURE-----

--=-gdQaZy2BvDo/OWYBcmOR--

