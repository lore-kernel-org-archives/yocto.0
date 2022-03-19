Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A9EAC433EF
	for <webhook@archiver.kernel.org>; Sat, 19 Mar 2022 00:13:47 +0000 (UTC)
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web10.2281.1647648826609825400
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Mar 2022 17:13:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=FfP91t8s;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.25,
 mailfrom: manwag@fastmail.fm)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 254243201D2D
	for <yocto@lists.yoctoproject.org>; Fri, 18 Mar 2022 20:13:44 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute2.internal (MEProxy); Fri, 18 Mar 2022 20:13:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; bh=j
	LcKl8OYw4vxG2/Yj8V1P1hwby9OPoM8VXSdO+6dhnI=; b=FfP91t8se33FlICbo
	FvATWPsAv9WmltY9o6J9kt7LLpqrD8/1P7Ye8OD8unZHQjIez8eTCOYiQ6CHC7JB
	MR7yiCvwfeWl39uKUtWMtVhlWkI2WDnO1Ka6WHc5aI1Hw5Jv2SgAsJ7meyClAya8
	OOozthTp5XANEnq8db9YIZ6HEvmVhySV0ruPgLtCBxlybkQIjgnP3j4ZKWqq6DCH
	OBKXnx7Wfoc2cNdCNI86ZKB/t6ju0TYhv/+fh/1aHi7p0fFd3T1wu43UgPLNSObi
	UayqTN+Z+Vk4aoJKfpjxQc0YK9nKNA5ACp40BTeOcbsi9JCY/XvaVTz8aTSF4kU7
	tRHIw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; bh=jLcKl8OYw4vxG2/Yj8V1P1hwby9OPoM8VXSdO+6dh
	nI=; b=f8zj4OcTeP+tdGa0x+ZI2zuW4sOXWOhpw317drL7yrSxnG4WfZyHzIkOf
	eMPnSC+YbURSJ2B7XKhi+V6qb2oFAxjL3NNrIdneP1f+GfHV28PO/TECg2AccHdf
	9FHt0nHirRq9dHKiPW7g1xw4AlpuI3grLAnPWhF1P4Mo8VlXXsS8EvmDYaYgM3wX
	WgosF76iwEJoEwLiscPQTUWVJmqn/wdskH4Q1V1QJ2ltTAJbJuMvaL/ojqKKV56b
	+JH6D2LBgr4lip938lgJQaqfDDi6CWv0HkKJ1ht+bWEhmAGcQF+pgiBcWsCBqj5l
	bSF6+eXZuwg736rzP3f4usG8Ohcag==
X-ME-Sender: <xms:NyA1Yq7osxFQZ6SfJhFyxul4e91M8TyiKz1NO_F2rzuWq2hAJoR2TA>
    <xme:NyA1Yj6CBNm2Sbu9j8mIqqXugXDFUzUSJUv1RYejyGpoPBZkDNwoHSIIQ5fGkBISt
    LArbxBI5wqqoGbS>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudefjedgudejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeetkeeiffetie
    fhffdvgeefudeviefhfedtueegffffieehjeehjeeifeefgeffteenucffohhmrghinhep
    lhhinhhugidqkhhvmhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:NyA1YpeAd0DfmSWHKR3QpfJtQbn9kARzw8Oz6QoP-g2ve4kejP4Dlg>
    <xmx:NyA1YnLWgJIK-7rvP0dR6yCVtdzGCM-MyTeeRLOq8Y56CHOfEuEV-A>
    <xmx:NyA1YuJ-4ep5QoefYBJLZRnAix7WIlbLyTntn7vcyHAv7QTbCdvzlg>
    <xmx:NyA1YjV7K0UrjUBY-5DlQ_OLtk_d7GyfhtMQz88HNO6iJvnhoBLkkQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 7C7A63C00CF; Fri, 18 Mar 2022 20:13:43 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4907-g25ce6f34a9-fm-20220311.001-g25ce6f34
Mime-Version: 1.0
Message-Id: <ecb915d5-3d42-40a7-bae9-268455e9fd5a@www.fastmail.com>
Date: Sat, 19 Mar 2022 01:13:06 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: qemu: Enable guest access to the internet
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Mar 2022 00:13:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56500

Hi all,

I would like to configure my host to allow the yocto-built qemu guest access the internet. I'm running qemu with kvm virtualization and slirp, and according to [1] it should just work. I'd like to find out why it doesn't.

[1] https://www.linux-kvm.org/page/Networking#User_Networking

Here's the current situation:

* The guest has ip 10.0.2.15 and can ping my host with `ping 10.0.2.2`.
* The host has no ip 10.0.0.0/16.
* The guest cannot ping my hosts only ipv4 interface (besides lo) `ping 192.168.178.24`.
* The guest cannot ping devices in the same LAN as my host: `ping 192.168.178.101`.
* The host has sysctl configured like so:

    net.ipv4.conf.all.accept_source_route = 1
    net.ipv4.conf.all.send_redirects = 1
    net.ipv4.ip_forward = 1
    net.ipv6.conf.all.accept_source_route = 1
    net.ipv6.conf.all.forwarding = 1

* The hosts routing table:

    Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
    0.0.0.0         192.168.178.1   0.0.0.0         UG    600    0        0 wlp3s0
    169.254.0.0     0.0.0.0         255.255.0.0     U     1000   0        0 wlp3s0
    192.168.178.0   0.0.0.0         255.255.255.0   U     600    0        0 wlp3s0

* runqemu starts qemu with hostfwd=tcp::2222-:22. That is, qemu is instructed to on the host listen on port 2222 and forward packets to port 22 of the guest.
* From the host I can ssh into the guest with `ssh root@localhost -p2222`.

When the ssh connection is up, `netstat -tupen` on the host prints

    Proto Recv-Q Send-Q Local Address           Foreign Address         State       User       Inode      PID/Program name
    tcp        0      0 127.0.0.1:2222          127.0.0.1:37548         ESTABLISHED 1000       34788      2301/qemu-system-x8 
    tcp        0      0 127.0.0.1:37548         127.0.0.1:2222          ESTABLISHED 1000       40091      2331/ssh

`netstat -tuen` inside the guest prints

    Proto Recv-Q Send-Q Local Address           Foreign Address         State       
    tcp        0      0 ::ffff:10.0.2.15:22     ::ffff:10.0.2.2:37548   ESTABLISHED


Has anyone any ideas?

Thanks, regards,
Manuel

