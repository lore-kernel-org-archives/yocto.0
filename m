Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06A6ED2F34A
	for <webhook@archiver.kernel.org>; Tue, 13 Jan 2026 17:02:44 +0000 (UTC)
Received: from fhigh-a3-smtp.messagingengine.com (fhigh-a3-smtp.messagingengine.com [103.168.172.154])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.63950.1768323759363170479
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Jan 2026 09:02:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=FK+fQDIK;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=YPZ69GKx;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.154, mailfrom: paul@pbarker.dev)
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 5DBCA1400064
	for <yocto@lists.yoctoproject.org>; Tue, 13 Jan 2026 12:02:38 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-05.internal (MEProxy); Tue, 13 Jan 2026 12:02:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to:to; s=fm1;
	 t=1768323758; x=1768410158; bh=GDTXeGLfw3PcKF6y6kckU27ZhzkELEah
	t1QYscZ4c10=; b=FK+fQDIKdsRZS6Nww3WVljpICpRL967Dk9gxQI31foGtD8aL
	gB6a1+GwphgTdQwrF9mnVJ1E07+70aeWAj+brrVvLZh+gN25qK6haXz9woDF1X7Z
	s7T/YyM52WtOYZzaQKn0Y/GgyFIBTmD/DS7NIst2etp/wBCgZ9qz5tA3ycHbZxH3
	tDqO3haj1ofiKgkWCKmRwqfGMAqb7shd/Ca2X/LOFA550IG126d92McfdPAlgqZy
	xP/rh8ZHctlgVSe/ejI8fTA/dQvS1yl0nBR8OP+044NGySaEmzcZdBsoxu+GfAE+
	6lN6Mw4VJppj+sCI77wmETS0D+iCxg/uj0+xXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1768323758; x=
	1768410158; bh=GDTXeGLfw3PcKF6y6kckU27ZhzkELEaht1QYscZ4c10=; b=Y
	PZ69GKxAA26OrlYDj3mCn4YHVMzlqYtQcIl67WALlk16mL7WoAsfD1ethJjzJij6
	UYbC9+kM/n/cmsqhxiDk9UuEFTm+T5ayCkBUUu4imoInA6W+WpH/maHy4qtDPz1G
	tONzAN9p6wtIJI/jNZ92o6+stUuaTuS4L0DjG0m96VCwygakCBXEroO8K/c6bFYG
	0fWdL2iYADiaWIm5ObVy3kRi4eWuvh+kf7x4Lu/fzDYI9+J3VsLMtcKUry2uI3A9
	UvWpDJ8nYMKA5VTziD3HEEHHKZiMc38bmbI9Anr/o/RZFTwpR22KBoZ2oU9fFfrK
	IkKo8hkB71vwcDqYMUTWw==
X-ME-Sender: <xms:rnpmadO1GXUd5C-VPfjFippH0xnqUXqgxy_duY6cNIlgjSjGbdIDOA>
    <xme:rnpmaW4RcjSS1uQuaRCF3kMwf9Yd-DsHa03i8-ebEL0vwfqDnwPCuF4PaoA_0-Lak
    JuVk0Wvw5reHLqk0eykBbqoCXcZiNAWK3o1UXM02ksPvHaqWZ2DHA>
X-ME-Received: <xmr:rnpmaR6rxME3aR6COltXGB0uB035aa1KAMMBua6X3wPAqUVLn8Tm1vdqHEpIv8ktTkpWohfBbUTkSKDiNaIetUXFOWrKQOBRBFIwK-FT4lO8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgdduvddtkeejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucenucfjughrpefkuffhvffftggfggesghdtreertderje
    enucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggv
    vheqnecuggftrfgrthhtvghrnhepvdetfeegleeileevgfdtgfehkefgueevffeifeekvd
    dtieevvefglefhjeejieffnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhr
    ghdpiihoohhmrdhushenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehprghulhesphgsrghrkhgvrhdruggvvhdpnhgspghrtghpthhtohepuddp
    mhhouggvpehsmhhtphhouhhtpdhrtghpthhtohephihotghtoheslhhishhtshdrhihotg
    htohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:rnpmae1Ql14eL3cQmO5GDBycgaMKvEBEcQyHrsMYy_WzZdr4XYXiFg>
    <xmx:rnpmaVVYw_qmoExFzsVwbJ3nFDwA3gNXcBQWceUw-V-YigpEbZFcpQ>
    <xmx:rnpmaR7njywQBcNgofjnA9JdJb446i4aZ6iyMs5tpcl_49AR_d2EPA>
    <xmx:rnpmaUJlkWWJ4LlceZxABqYQYDEn-bYW09bD37TA3yiQat20I6Tyrg>
    <xmx:rnpmaZOV_rFSD-ZvHa_msP57eypf--f4OpC1eIfjlfwMnEKjTiIItMnh>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jan 2026 12:02:37 -0500 (EST)
Message-ID: <e04e428b90dac8146d21fd1db4b2513041fa93a9.camel@pbarker.dev>
Subject: Yocto Project AB-INT Bug Squashing
From: Paul Barker <paul@pbarker.dev>
To: yocto@lists.yoctoproject.org
Date: Tue, 13 Jan 2026 17:02:33 +0000
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 ep0k17xg==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0CigwTzkG92jhrrC7K6W"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jan 2026 17:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66148


--=-0CigwTzkG92jhrrC7K6W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

As discussed in the weekly status email [1], we are seeing a high number
of intermittent failures on our autobuilder cluster. This is currently
blocking our ability to make progress on stable releases and on getting
changes in to master.

On this call will triage the issues causing the most impact and decide
what to do with them. We may need to investigate and resolve some
issues, for others we may wish to disable the failing test case.

Help from the wider Yocto Project community would be greatly
appreciated! Please join in and give us help in squashing these bugs if
you can.

[1]: https://lists.yoctoproject.org/g/yocto-status/topic/yocto_project_stat=
us_13/117245165

---

Yocto Meetings is inviting you to a scheduled Zoom meeting.

Topic: Yocto Project AB-INT Bug Squashing
Time: Jan 14, 2026 08:00 AM Pacific Time (US and Canada)
Join Zoom Meeting
https://zoom.us/j/91948604233

Meeting ID: 919 4860 4233

---

One tap mobile
+15074734847,,91948604233# US
+15642172000,,91948604233# US

---

Join by SIP
=E2=80=A2 91948604233@zoomcrc.com

Join instructions
https://zoom.us/meetings/91948604233/invitations?signature=3DiZJs6eoJGg4Mx5=
yhlNpgAXfC_wJuVQTtbpl9oZxypjI

--=20
Paul Barker


--=-0CigwTzkG92jhrrC7K6W
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaWZ6qREccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bpo/AP4pDYQJ6jzwlP3lWN8fd09N4mtInAPDmgjS
Azgq2mK4HgD/evV4CrwZYuIlOdD3PQWHQFRwBMB8ZL1QF6anZOGtMg4=
=PiIf
-----END PGP SIGNATURE-----

--=-0CigwTzkG92jhrrC7K6W--

