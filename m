Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64EEC4332F
	for <webhook@archiver.kernel.org>; Fri,  8 Oct 2021 08:26:44 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web11.6585.1633681593270973785
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Oct 2021 01:26:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=bfxAgSq5;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.29, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 4F2E85C010E
	for <yocto@lists.yoctoproject.org>; Fri,  8 Oct 2021 04:26:31 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Fri, 08 Oct 2021 04:26:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=LRKoY7/dfJn3M/OjSszlliACWm1zPjku83BUaWUkuQ0=; b=bfxAgSq5
	WKpGkDgYpTlcFAp7YLC0oBqPDu6fiMJnmzetcT7hl6FwlZ/TdIIaON+5sdrmfEVO
	ggK6AqxvyL3PNsXdcOBEqVGaW+DPQv+dEHImxxyuiojvu0+IKysB2P0g1PntMZDG
	UhQRHF9DfL4rlixkYtVkYxg8zIY2EFlBx1LjhNlDkZfxU7a6xbHUKyKp4DYjm6EV
	vn7kCcdxrQxrIv5z438woZMFfhsoHwtxY5V78K8s1v8bA30gIOq6Or8fxw35oezF
	JmGihpinQxchmLyPiY8F7KVQFpdYxTNoqh9+R213Zg2eM1A4SOxqSYDGicjodmr+
	1n4whp8ie5//qQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=LRKoY7/dfJn3M/OjSszlliACWm1zP
	jku83BUaWUkuQ0=; b=emm/NMedg3qUv1KQm9B2ggn/+JxzMOqYS3sSvzL57Oz5z
	UiCYjqbiiAY/2HOGofkuO4ue88sR87CM9eFsx1iutY+eaNHBIxTDPa/hk9q5R07M
	WZFVsGCWV4PwNT5bTft3IOVpPznqkjYa9L0BmwzsfN50qFeZuQk0Tqo3id064Lxq
	MXgnQUbvcs09XCv0vDmPZhn82sOqaTm6NmfxDctx0osv5g3YFAFU0QB80mJwL3dz
	rQUrtrMmMpaN3U8tqcjoIgdV28ef3qKMNK+c0n/z85OBY97c7x/N2Z/Rx7wRz6hV
	4cXgmlN6IqhabsNkB7DuhMDWl1rtAr4oOOBdkHTCw==
X-ME-Sender: <xms:twBgYV4rBOGJjxvsRuThDlV2l77lBFeB1uSHnPwzjqK78lBBLVI2ug>
    <xme:twBgYS4HW1QEGDBrY5qY0tCzszQm4gwgu6d-MB1MbOZ19sSrKCA2bW4d8vTvvLve7
    32fmalIgBHfBkqP>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvtddrvddttddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeugedtieetud
    euledugeffgefgteetkeeuteeukeefudfgudeukeffgeeliedvieenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtof
    grihhlrdfhof
X-ME-Proxy: <xmx:twBgYce6_Sx7r9pAOZiPKTzr3CtV-EJ3cKAYS_sYwnaGhj_zKOiQEw>
    <xmx:twBgYeK8LiSOFOqzxFbMd65XjCrkLetWgkq3OeVRHF0Yq4KZH3nHFg>
    <xmx:twBgYZI8Nb40IhUWJCEKYUKO1cOb9CjQk5QDEjnZ2-uT0F18LF6kQA>
    <xmx:twBgYeVjX8ujqxHp74_Bzqn08WnevfxVR7YHT1lbWE4UDxbGISYHow>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 34E953C0246; Fri,  8 Oct 2021 04:26:31 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1331-g5ae342296a-fm-20211005.001-g5ae34229
Mime-Version: 1.0
Message-Id: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
Date: Fri, 08 Oct 2021 10:26:06 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to enable graphics acceleration on qemux86-64?
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Oct 2021 08:26:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54992

Hello all,

How can I enable graphics acceleration on qemux86-64? My image is using wayland with weston and the GUI is not exactly fast.

* When I do `runqemu slirp kvm gtk`, it throws the following error: `runqemu - ERROR - Failed to run qemu: qemu-system-x86_64: Display 'gtk' is not available.`
* `runqemu slirp kvm sdl` works, but the weston GUI does not seem to be accelerated.
* `runqemu slirp kvm sdl gl` emits the following: `runqemu - ERROR - Failed to run qemu: qemu-system-x86_64: OpenGL support is disabled`

Below I'm posting a snippet of `poky/scripts/runqemu` to have at hand the qemu options enabled by the runqemu options mentioned above:
```
            elif arg == 'sdl':
                if 'gl' in sys.argv[1:]:
                    self.qemu_opt_script += ' -vga virtio -display sdl,gl=on'
                elif 'gl-es' in sys.argv[1:]:
                    self.qemu_opt_script += ' -vga virtio -display sdl,gl=es'
                else:
                    self.qemu_opt_script += ' -display sdl'
            elif arg == 'gtk':
                if 'gl' in sys.argv[1:]:
                    self.qemu_opt_script += ' -vga virtio -display gtk,gl=on'
                elif 'gl-es' in sys.argv[1:]:
                    self.qemu_opt_script += ' -vga virtio -display gtk,gl=es'
                else:
                    self.qemu_opt_script += ' -display gtk'
```

Kind regards,
Manuel

