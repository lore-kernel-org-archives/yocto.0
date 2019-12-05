Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web09.6546.1575536051703082133
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 00:54:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=JEYtvB7U;
 spf=pass (domain: betafive.co.uk, ip: 64.147.123.19, mailfrom: paul@betafive.co.uk)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id C8A869A2;
	Thu,  5 Dec 2019 03:54:10 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Thu, 05 Dec 2019 03:54:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type:content-transfer-encoding; s=fm3; bh=iCpER
	PWiX8JYk4x8PFSeTSR0DHlHwIMtgg14Q6O9nDU=; b=JEYtvB7UgsR9NGOMO+Dlm
	EIBH1cmFiR8qU7Z8odsoQrMn9ZHAmZ7sh/EOaNlrN57otzISQEsR8R22z1LM1kTn
	KJ+SIJIGnkxdMHraRqk/sO5SGZzzS5O760d4xrEjPnbvd6YuXBt0BQA3uH50VRN4
	M9IIjlEd/bEKXFsDM/tZzAPC5PWVI1mznTMOCWk3+nvV6tUfdALa6USBDh9KgFoR
	3Xi/5T0Tc0ABl/jCaAZ+nAOaORZ2J+26yMZUXm9WDBBTxBEkx1Nd90E5tZHhZKDk
	644Ac3GhcCAakVMcK1RFupo9HITa901W2u3AShxhBB2bDFOcdUBNyZwOyYqAsLUS
	g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; bh=iCpERPWiX8JYk4x8PFSeTSR0DHlHwIMtgg14Q6O9n
	DU=; b=AQtrTpiJNI7iJ/E3aKmQ0hHJUdn5+2WVJEzt1W5mh/72Futs7OcaGZH+z
	KzFmkQOxKmyFRgZ0J6KyPqXS5ykJ/am5XuSATLL2qBZG63ZyVqjrM+hDA9eHS2+E
	hJwGXD9FwcM/n3gQi/8fDr2IhIBlFd6Au8mdtt8crN+lj+kYnv1ObeaTzp7BGEVv
	mVnfee4SC36AuRMpecoCDoUjtv2HW7x4Nx8hXxPgB8D/PvUhpi5zWqLkFY+y4Jjs
	gY9U6Xfquv6T8GAq+jBJMt+gVoBqx+0U2UODTzyX+I66MThmFuxbIYYq1b2Y5Wfo
	ZuZ/etcGzcUurg1H2iycBuNjwbQRA==
X-ME-Sender: <xms:scXoXUVQtDx6MXSzEhudZPuJ-TmfxLkg8gMVQS6F-hPfNhjrbi9vzA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudektddguddvgecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdfr
    rghulhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenuc
    ffohhmrghinhepshgvrhhvvghrshhfohhrhhgrtghkvghrshdrtghomhdpnhhghhhtthhp
    vddrohhrghenucfrrghrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvg
    drtghordhukhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:ssXoXcWSTtPwp7zpVqAykA4CV94ItWC1E8Tc0dE-hNmcd89SRW-bDg>
    <xmx:ssXoXYJoXI4ivTBXOrL6DfHtBAggnZwHfli0KO-9I0YqnyHbdIiENQ>
    <xmx:ssXoXSpiIFlTVTqRF0expxYZjjqPjJyuXgpuQDIobCc-6DZJKFiiTQ>
    <xmx:ssXoXeDszUhl7ElXHEUL7a0_nvSXwIiBIa9uWij4LjkfqDvRskqJhA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E2FA7E00A2; Thu,  5 Dec 2019 03:54:09 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <51ac1f70-332b-4557-823b-931918fcbbb4@www.fastmail.com>
In-Reply-To: <CLAP.1575531161135737416.olxy@lists.yoctoproject.org>
References: <CLAP.1575531161135737416.olxy@lists.yoctoproject.org>
Date: Thu, 05 Dec 2019 08:53:50 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Uzair Mazhar" <uzair.mazhar@emumba.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] http2 support issue in curl #yocto #raspberrypi
Content-Type: text/plain;charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Thu, 5 Dec 2019, at 07:32, Uzair Mazhar wrote:
> Hi All,=20
>  While testing my image on raspberry pi3b, I found that curl doesn=E2=80=
=99t=20
> have http2 support.
>  $ curl --http2 -I https://nghttp2.org/=20
>  # Unsupported protocol=20
>=20
> I tried to search for the solution and one of the possible answer=20
> [1][2] were adding --with-nghttp2 flag to curl. For that I modified=20=

> curl recipes (curl_7.64.1.bb) and added =E2=80=9CEXTRA_OECONF =3D --wi=
th-nghttp2=20
> =E2=80=9C along with default parameter already set in this block but i=
t again=20
> shows the same error.

Looking at the link you gave [1], you probably need to use "--with-nghtt=
p2=3D<PATH>" and add nghttp2 to DEPENDS. You may need to find or write a=
 recipe for that library.

[1]: https://serversforhackers.com/c/curl-with-http2-support

--=20
Paul Barker
