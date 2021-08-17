Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com [66.111.4.25])
 by mx.groups.io with SMTP id smtpd.web08.41026.1629215574382048747
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Aug 2021 08:52:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=cXA8cvy2;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.25, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id AEED55C00FE
	for <yocto@lists.yoctoproject.org>; Tue, 17 Aug 2021 11:52:53 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Tue, 17 Aug 2021 11:52:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=3ANqAVy0LQFy5NUoNRcbxUhpp+SEyCApafgby2oMOM8=; b=cXA8cvy2
	Ky+ZxX8Pl3asqRw2voJl6/iwlzZP/qK5Q4pNdP4MU3pj9l8MUVWqNcLXxrwmeDZ+
	U0LyApd+AIm2zDcOBlTL9sOIlEsBjAoGqGIlJAN5EwyB1G/WJD0AcplX6vTsuJqc
	LDfwEDKhRMWb1vXIi/qsly+S2Jeny0D6sECb+YhvdOPklAqyWh6uZJmVwYW1cZve
	wYptQDxy9BqeHfAm6eB+E3iqqyyww3wLdQLG5pOnxIIYEzBtdjtjok62YW3Mh3JH
	awwfHoM6hLNOJISDpdjbL1WrfnDEYZXNnJezVxd1RVFxHjU0FVFazznFoBXEg/Ep
	N1QlzOmJO7NYfA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=3ANqAVy0LQFy5NUoNRcbxUhpp+SEy
	CApafgby2oMOM8=; b=Ieq/U4xortvZDHAp9hkAT1RGn8WCJMgk5t1eCrj5IhdSm
	Y+3jT0BXS6HeeA3AAHg81niXF81j2mIvrq2UnL4YvwaMR0Ejgff9PrbJJpikMbZp
	6UH93O/twp8zUNeLHg23MNH07RAe57uT6neXBqxBXed8JZFad2M1L1BXuJm4Vk+v
	g4+415OfUWMMQ7WfiCNx2+n0QT/2jvWXDcPvdYZB4soHirYTtb8ed4T0R6EInNpI
	WtRzXnIXWAvlwincKFVRpLr3mmvCpj3J/nuoGju5XqZsvt0WLSNkHCc2OpBhQxgR
	nJNyj26uiDXQwb25iliYg1Z2niTpCs80Rb123Usjw==
X-ME-Sender: <xms:VdsbYSmSOANsFIEZ-fa6DTgYDtMujeYhBBIjHvgqthODMMJEadMEEA>
    <xme:VdsbYZ0tKcZ8chdsIF3MrHS6sHnqg05K8lz0OorszSZGmk_ree9XJVMGPMSzC2UMB
    -GCSNt2_JDaLV1j>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrleefgdelgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
    ertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghn
    hggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepueduffelueeiud
    fhgfffhffggeehfeeujeelgfehvdffieetgeekgeffteeihfehnecuffhomhgrihhnpeih
    ohgtthhophhrohhjvggtthdrohhrghdpghhithhhuhgsrdgtohhmnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthfo
    rghilhdrhffo
X-ME-Proxy: <xmx:VdsbYQrSn4i0kDeMOZ-W8WCLy_Q4PD7wwgBV_kXZWAhhaxgfxBkdfw>
    <xmx:VdsbYWnW3FTA8PUFBlDvlyn71VMJlke3cwnEy2MiDobxdCN3x12Uhw>
    <xmx:VdsbYQ1luX1G0qQPQaesezeecnFf5RSD4OS2jDvscvnTPxK5vL5R4g>
    <xmx:VdsbYRC5T7CH54P6v1Ej77irX8CgLERzAvsa1TH65WTFsert3x7C4Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 725DD3C0453; Tue, 17 Aug 2021 11:52:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1118-g75eff666e5-fm-20210816.002-g75eff666
Mime-Version: 1.0
Message-Id: <d8353869-6136-45f7-a2eb-a1397cf05693@www.fastmail.com>
Date: Tue, 17 Aug 2021 17:52:17 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto <yocto@lists.yoctoproject.org>
Subject: ZFS/ZoL on Yocto
Content-Type: text/plain

Hello all,

I would like to know if anyone has experiences with equipping Yocto created images with ZFS support.

If I'm not mistaken, the main problems of using ZFS in linux are of legal nature. ZFS can not go into the linux kernel source tree, as it conflicts with the GPL. Hence, the linux version of ZFS called ZoL (ZFS-On-Linux) must be compiled as kernel module and recompiled at every kernel bump. On normal machines, that's a bit cumbersome, but for Yocto this shouldn't be a problem at all.

So, given the large fanbase ZFS has, I'm wondering why there are no recipes around?

I googled a bit, and these are the only meaningful results I found:
* https://lists.yoctoproject.org/g/yocto/message/29331
* https://gist.github.com/cveilleux/54961ccc41071e8aee8c19b69fcba78f

Regards,
Manuel
