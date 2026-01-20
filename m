Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4742BD2ECF7
	for <webhook@archiver.kernel.org>; Tue, 20 Jan 2026 15:03:57 +0000 (UTC)
Received: from fout-a7-smtp.messagingengine.com (fout-a7-smtp.messagingengine.com [103.168.172.150])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8362.1768921435493820367
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jan 2026 07:03:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=mrzuCCj6;
 dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=UJVYquqO;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.150, mailfrom: paul@pbarker.dev)
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailfout.phl.internal (Postfix) with ESMTP id 923A9EC0180
	for <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 10:03:54 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-10.internal (MEProxy); Tue, 20 Jan 2026 10:03:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:subject:subject:to; s=fm1; t=
	1768921434; x=1769007834; bh=T/MbLFGDKd4KUsDueUkbsJLw3fxJDwkCA4I
	gUfHeYLw=; b=mrzuCCj6kjq8NYMi9J8UAzbAEOnRvYTXi8atgzdKHcd28Jlrq5K
	EuCSv2qtXkV5qGszBJCzWX2WI4MLIJWRteJmP/mkLgJZS1qsgXBaZGDy7eDoNLJV
	81lPpsUrXi47vGbd9OTjRDj3VEDa2OAJE7qqCOGfn3E+wgwJ3sy+ak/Z/lwQusvq
	Tmk/ewpc1nMnD0Ciow9ZUNjnJ+hFs2sAVmSD5R22WrH8Vr6iqldkuE64d3uGpCfL
	gK7acQyAf8V70+M2TeQHfBFTkZ5+UxihayouhW5BId0iwkr4MEDrmXyTzdhiLgLS
	5pugUWV8/M6HnBUL8ruuPr5M94lUH+i0q8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:subject:subject:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1768921434; x=1769007834; bh=T
	/MbLFGDKd4KUsDueUkbsJLw3fxJDwkCA4IgUfHeYLw=; b=UJVYquqOnieRlQ3aw
	kfgTMCH5tZ347J8FzK3EKY+LPdl9JFIeaBWB6OD2HmqRrXvJd5/P/wy+q4KqIhuo
	73YHhj9xNcBute2ULNvfnDvHXzvIOWGpMHc/r5uFvgpOdKlSFNQwUEpsQhaJFmjR
	egvGPQ8BT3TawoTfBOv8THUfTy9sZ5BxYuWtGQxQpKx6kd0+fnoVD2n0o9pBtCLy
	hyZyE0BO1v4eboSzI9EjTyk2MEwM1KsM6dSiyqcMsYwGvrCnT5OZjVe7fLBsKDg+
	Ftxjf2OGo9/RYtAhqD4mjYIx/UI2ohEJI8OviRUJ4iCpzajqjUvfEmQN/gThg6nL
	GVH/A==
X-ME-Sender: <xms:WplvaVNXbDEq7Xcf_DlhpEj7Bt1H6hu4Sb754FQ4L7Z8iMWfOs9tUw>
    <xme:Wplvae7UuYIGMZ55c8KsKbBN7pLfrTJQDtZ5-OSQdykQPGVJtLWQd7xg4xHgipXit
    J1c1cxZSlQB391AIAAC5Q3-e_i37hBcUB_-LTDVuL4pGHlIFfz_ItY>
X-ME-Received: <xmr:WplvaZ7o98ka4uvqeA6gs1HZzUfjo4thheTXdhCq3omJTgBEjD23OUCl2IOWWynDUsyWfZPM9ckwfbpuGT4dgcsI9i8hFbrxAeZxkUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddugedtjedvucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucgoufhushhpvggtthffohhmrghinhculdegledmnehmih
    hsshhinhhgucfvqfcufhhivghlugculdeftddmnecujfgurhepkffuhfevffgtfgggsehg
    tderredtreejnecuhfhrohhmpefrrghulhcuuegrrhhkvghruceophgruhhlsehpsggrrh
    hkvghrrdguvghvqeenucggtffrrghtthgvrhhnpefhvedvleeuffevveffveekuedtgfet
    geffieeitdeigfdvkeefffeijeffteevudenucffohhmrghinhephihotghtohhprhhojh
    gvtghtrdhorhhgpdhgohhoghhlvgdrtghomhdpiihoohhmrdhushenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhesphgsrghrkhgvrh
    druggvvhdpnhgspghrtghpthhtohepuddpmhhouggvpehsmhhtphhouhhtpdhrtghpthht
    ohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:WplvaW2AqZdbX96a2bB4v4fwlXB6s8xNYoefSF0w4XtMigPPm5yd9A>
    <xmx:WplvadWRLmjLwuy96SLhq2D2QuXGdw8Qhd9WnOjljk0Xw6xv0CXalw>
    <xmx:WplvaZ5i4BocJLY_teJ-3HtXQ-ngHqJRA-EieThWeOi20Bt6VQjRKw>
    <xmx:WplvacL6ygaQ513v0fXwMtTgCA_laYsAFEJwpzeGAc11l6puWq5WYg>
    <xmx:WplvaRMdjWw8xw8VEbKacS3F2igk6Gi1J3yb-OwHgpXYrl96HYAeg0Is>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 10:03:53 -0500 (EST)
Message-ID: <437e85188e5a2ed00791ea82d5c54b9460f6362b.camel@pbarker.dev>
Subject: Yocto Project AB-INT Bug Squashing
From: Paul Barker <paul@pbarker.dev>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Date: Tue, 20 Jan 2026 15:03:49 +0000
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=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
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-R0yF9iEfZJv+djA6CYGn"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 15:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66161


--=-R0yF9iEfZJv+djA6CYGn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

As discussed in last week's status email [1], we are seeing a high
number of intermittent failures on our autobuilder cluster. This is
currently blocking our ability to make progress on stable releases and
on getting changes in to master.

On this call will triage the issues causing the most impact and decide
what to do with them. We may need to investigate and resolve some
issues, for others we may wish to disable the failing test case.

Help from the wider Yocto Project community would be greatly
appreciated! Please join in and give us help in squashing these bugs if
you can.

Meeting notes are kept in a Google Doc [2].

[1]: https://lists.yoctoproject.org/g/yocto-status/topic/yocto_project_stat=
us_13/117245165
[2]: https://docs.google.com/document/d/1d6YS6iSKTe_djv0VwRs1LXdaSZU-5bI881=
QDW-0Q0-c

---

Yocto Meetings is inviting you to a scheduled Zoom meeting.

Topic: Yocto Project AB-INT Bug Squashing
Time: Jan 21, 2026 09:00 AM Pacific Time (US and Canada)
Join Zoom Meeting
https://zoom.us/j/94105506024

Meeting ID: 941 0550 6024

---

One tap mobile
+15642172000,,94105506024# US
+16465588656,,94105506024# US (New York)

---

Join by SIP
=E2=80=A2 94105506024@zoomcrc.com

Join instructions
https://zoom.us/meetings/94105506024/invitations?signature=3DjYgRIQzApt3eFK=
9YkGK9zgtsDe1yt26KHnG5T6ewR-g

Best regards,

--=20
Paul Barker


--=-R0yF9iEfZJv+djA6CYGn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaW+ZVhEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bok+AQCPK2e9UpavN7Rt4QYh1a5MnYKhA8aDazPm
U9gfZQ072gEA7RSv0JpzPVK6A4K6jZymYFnbvs7M1wzsh2IjZCKqtQE=
=7nuU
-----END PGP SIGNATURE-----

--=-R0yF9iEfZJv+djA6CYGn--

