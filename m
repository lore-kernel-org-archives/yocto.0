Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web10.19485.1619956777835281583
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 May 2021 04:59:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=eDfYX0DL;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 38F905C0143
	for <yocto@lists.yoctoproject.org>; Sun,  2 May 2021 07:59:37 -0400 (EDT)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Sun, 02 May 2021 07:59:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=k7sKrzwe0n8o3E0o2K3Vt4vKTzlU/OF8kIybcsChpf4=; b=eDfYX0DL
	mKFc5ILWrErjMf7PJnay8LETRzTE+FZR7prxpXJgbAn+7VURF6PbO34DV5fXJLOM
	UDsFqmxaW/vJ0oKvpmTLu/wUvFlRr8BBMkPIoEe6SolUE5HMQqATmidy/mDh1aVP
	+ia4yHwm77JuT0y2d/EEl3pShq5Du8CWNVGNoq27gGsvPlT8v93yCQz9ydQBWRPM
	tZuYWexly3OLDihnJoqtTo4M0mC58lRB5k+858e3bxwjsd2YvzJjMA8kc5VBkwPH
	PV3SmpT/KYiee7VPgFNMxLD8Qr5gHKPBE0b7VPlxT1yey5F+xNB0aZ04arbbAwpQ
	38eHMZbO4rgVqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; bh=k7sKrzwe0n8o3E0o2K3Vt4vKTzlU/
	OF8kIybcsChpf4=; b=j5YtgmUIWlk7iDZKpIUxTMBwowXDQOkKyIIgC0jOsqiyu
	6b3fSV55x2W/UzImugBnrUVZ6ZWnRVuAjGu3iR/4QObVyQQt3CQ9BeoIXYjs4WLq
	mwsI3cYYGCfYHwjuqDnWzHkkAvF+qIZ1DICwH/wBFoKn6+UlDCZmY2KgWdvl1qsK
	oCK/AKQHFKEFLvfrCuV3T4e1/TSLq4uaHcEvpn/E0M9ATjyTv6Bl25RZ4TlND8/W
	aHCh2cX6bbNLNfpWDYgFYQr0ItE4DLzWG0906GbvYruHU/xZeaxl3qSkhxN7diVJ
	bWhuGYc4mSgQ/YGo6HS4yfLrxllmetoWN8A5nQzsQ==
X-ME-Sender: <xms:KZSOYIsEW7Yx_vConcClGlA5Ic2i-wv7dKUOdNq--cDPpeu0UN_X9Q>
    <xme:KZSOYFft72xt_xom6Hh1BlkVxEnAOKpeDuA8m-cpc3p1dQOcWCoGxm4tUbel61vEG
    0I5lfJRyjkkCGJH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrvdefuddgleejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeugedtieetud
    euledugeffgefgteetkeeuteeukeefudfgudeukeffgeeliedvieenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtof
    grihhlrdfhof
X-ME-Proxy: <xmx:KZSOYDyQ-CZ11hlZgPVAeQWSCxdnAPKTyRKI502NeWtjOpoipgOGeQ>
    <xmx:KZSOYLO9ni0l8yVksMfC9Miw7As_RPb0GsH1onUKSe5wvSH53QD9FA>
    <xmx:KZSOYI9bTWJQzWL9PdT6alz5ysz-SisRFRcefwtZ2CA4erynXkr1fA>
    <xmx:KZSOYLJV9ZIJzgFIZd69CWSZS1NCWVp7xDf4uglXoM541OspfHtJPA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id F27832E0062; Sun,  2 May 2021 07:59:36 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-403-gbc3c488b23-fm-20210419.005-gbc3c488b
Mime-Version: 1.0
Message-Id: <1f69bfc7-5f29-46ce-8c3f-5a67413aa704@www.fastmail.com>
Date: Sun, 02 May 2021 13:59:15 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: [meta-raspberrypi] Booting a Raspberry Pi 4 using PXE
Content-Type: text/plain

Hello all!

Since a certain eeprom version, the Raspberry Pi 4 can directly boot from network. Has anyone experience on this?

I already managed to to have the Raspi to load the kernel and all the device tree stuff over network. I then exported `build/tmp/work/raspberrypi4_64-poky-linux/bora-image/1.0-r0/rootfs/` as via nfs and changed the linux kernel commandline so it would use this share as nfsroot. At boot many failing services get reported and and the boot progress stops somewhere along the way. It tells me the system is in emergency mode and asks me for the root password for maintenance. I have an empty root password. When I press Control-D to continue, the same prompt reappears. Same when I simply press enter.

Has onyone any input for me? I guess I'll need to monitor what gets written to the serial port.

Regards,
Manuel
