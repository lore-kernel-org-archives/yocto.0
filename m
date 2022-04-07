Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BF1C38161
	for <webhook@archiver.kernel.org>; Thu,  7 Apr 2022 15:41:15 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web10.6682.1649339060624876447
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 06:44:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=LUniSwRy;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.19,
 mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 050EE3200A6A
	for <yocto@lists.yoctoproject.org>; Thu,  7 Apr 2022 09:44:19 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute3.internal (MEProxy); Thu, 07 Apr 2022 09:44:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; bh=y
	X3AmpBNb7mUSWj4eCAcU1hG+VM/lY3ykbYuRQsVuyo=; b=LUniSwRyMbp3a1C6E
	Q9QVrYPD6zX4X2qc6AyIVyI0NYiehGRoQ7srnojb0VivVnhA/6a5ckqGE8Sh8/S0
	9vq3ISEpsRSXxcJsVFmuHkt+fI2i1jJVMK7055AB2b9471VNAe9ZNiuh+6yzn39U
	ekcoznDQdVXSmeSC8QzI669MNkSb62iVHR6CCc1W/Kj8XGl2htl0JXRi1vZs3mfK
	nrvhYYwjSNl582489iMxCxeDBMkdPx27hjyDTjwfqONJbBvaaybFLgCkiNK5ORir
	SZDURXLmTr/h0PpgTTkidUhvqq5shEeJ4HavHx/sM6qy4fpimf71fOUveXHS68iU
	l+kQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=yX3AmpBNb7mUSWj4eCAcU1hG+VM/lY3ykbYuRQsVu
	yo=; b=AsJAcwy3RMyfIoQ7atgFBJL58Fwi1P+7Zl82GW8pHI2iIJUlN3WpUVqHQ
	iUzzudQoL1PsOfRgXL8S3A+jucJod1xuym0+ks9axZ+M1bGH8ZLHv/G3CNiADVUG
	BNbR9mc1xbaIMjFBtGwOmSkV6dYlUsrey4/br+iHdZToRnPLdOerV+lX+pIJxb3x
	FdGYGMNGUO9BeEdMo/DnQJesEr+0Xwv6XfDmD2N6kXJDfcmmi+QdiWXqZrSWgyTE
	/lFwiRYqBDomJaAC8yDeIUkFaS96bushdB5XiQCnoH6ILzCST164cgL2JXY37oAT
	zYnkeitvuB8d+/fVM8zedXJVgxmlQ==
X-ME-Sender: <xms:s-pOYrvzou7sxZPe8FbDlgNC2H6lHmoFQqHTlDdDOuFnjmqnwaD4Wg>
    <xme:s-pOYsfktSRCuR2j_h8KZXU8fDO42GMN7DBHiwmsZ-GVhlsYgd2eqA8HMcSgMsv1Y
    C1xNC5MJbhaEFH->
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudejkedgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeeugedtieetud
    euledugeffgefgteetkeeuteeukeefudfgudeukeffgeeliedvieenucevlhhushhtvghr
    ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtof
    grihhlrdfhof
X-ME-Proxy: <xmx:s-pOYuyK0X0Eqx4PRyYowJySqmkHlrubZwyvPM2VRciJNhtj_juuQg>
    <xmx:s-pOYqOae9O-p2AorsQGpIfaMUPp7-1z_e9Q9QdMgVn2y-CRJsGOQQ>
    <xmx:s-pOYr8NFz0VhbdBEXIBcfUQExSkesY_hL_9zIvSJPoZHPuQAUk1yw>
    <xmx:s-pOYuL6ueN6UWr7mP_OkX-CPZx9_kwWzYp8W3ZNCQWcQrQwRlV0NQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 65B8EAC0EAD; Thu,  7 Apr 2022 09:44:19 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-386-g4174665229-fm-20220406.001-g41746652
Mime-Version: 1.0
Message-Id: <b5e4d87f-6dfb-44d8-992a-44aa6c95923a@www.fastmail.com>
Date: Thu, 07 Apr 2022 15:43:58 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Cannot build go-runtime on dunfell based image
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Apr 2022 15:41:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56681

Hi all,

Currently I cannot recreate my dunfell based image because bitbake fails building go-runtime.

I think this commit did build successfully in the past, though. If I recall correctly, the problems only started when I cleaned go-runtimes sstate cache: `bitbake -c cleansstate go-runtime`.

Our CI also seems to be able to build images fine from scratch, that is, with an empty sstate cache. But the CI is building inside a docker container. I'll check that fixes things.

I'm wondering if there are some changes on my development host which affect building of go. Does the error message look familiar to someone?

```
ERROR: go-runtime-1.14.15-r0 do_compile: Execution of '/home/manuel/vps/repos/yoc/meta-viewpointsystem/build/tmp/work/aarch64-poky-linux/go-runtime/1.14.15-r0/temp/run.do_compile.18073' failed with exit code 1:
Building Go cmd/dist using /home/manuel/vps/repos/yoc/meta-viewpointsystem/build/tmp/work/aarch64-poky-linux/go-runtime/1.14.15-r0/recipe-sysroot-native/usr/lib/go. (go1.14.15 linux/amd64)
Building Go toolchain1 using /home/manuel/vps/repos/yoc/meta-viewpointsystem/build/tmp/work/aarch64-poky-linux/go-runtime/1.14.15-r0/recipe-sysroot-native/usr/lib/go.
Building Go bootstrap cmd/go (go_bootstrap) using Go toolchain1.
Building Go toolchain2 using go_bootstrap and Go toolchain1.
Building Go toolchain3 using go_bootstrap and Go toolchain2.
Building std for target, linux/arm64.
missing $GOPATH
WARNING: exit code 1 from a shell command.
```

Thanks,
Manuel

