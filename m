Return-Path: <info@benjaminmarty.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C198C19F2E
	for <webhook@archiver.kernel.org>; Thu, 27 Feb 2025 15:19:20 +0000 (UTC)
Received: from kiwi.benhosting.org (kiwi.benhosting.org [109.230.227.26])
 by mx.groups.io with SMTP id smtpd.web11.12969.1740669552245261380
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Feb 2025 07:19:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@benjaminmarty.ch header.s=2021 header.b=Azk+fDwc;
 dkim=pass header.i=@benjaminmarty.ch header.s=2021 header.b=Azk+fDwc;
 spf=pass (domain: benjaminmarty.ch, ip: 109.230.227.26, mailfrom: info@benjaminmarty.ch)
Received: from kiwi.benhosting.org (unknown [127.0.0.1])
	by kiwi.benhosting.org (Postfix) with SMTP id 17549ABAAF0
	for <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 16:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=benjaminmarty.ch;
	s=2021; t=1740669550;
	bh=eZui/zgP8e9CPgy5S3q8vTpeOkuQTL85aD1BdS7v/Lo=;
	h=From:Subject:To:Date:From;
	b=Azk+fDwcKbfez6iiQo0162gNR/EOdamOQLYCzZy1rsnpO6sMb3kva6FZUnj0dmtK+
	 NP5eKy1H2e9RSO+9Mqm8n8Mp+a7Aeuq+M0/vcF3dtCAb9b73espkyunfY7gtHjStUt
	 p+uB+cEjliRKii5T6iW5gHBTkzeAuGUafyvSimvj2Hx6QM/xtxYNWwoDn/fqzm6K2H
	 M9BQOvJtRRqYzPBMalYGPALMKsQYS2lfLNnOgJL8IfE0WDPz91uvtvb2jrEcDIUpZa
	 bAr15tVwj8KqPZwg9l2xdPxgbO1DmpZ+b2ZbQWn+MW8bi7GK4z0lu0ulpCi3qzekHF
	 r6CtGT74NZXWA==
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=benjaminmarty.ch;
	s=2021; t=1740669550;
	bh=eZui/zgP8e9CPgy5S3q8vTpeOkuQTL85aD1BdS7v/Lo=;
	h=From:Subject:To:Date:From;
	b=Azk+fDwcKbfez6iiQo0162gNR/EOdamOQLYCzZy1rsnpO6sMb3kva6FZUnj0dmtK+
	 NP5eKy1H2e9RSO+9Mqm8n8Mp+a7Aeuq+M0/vcF3dtCAb9b73espkyunfY7gtHjStUt
	 p+uB+cEjliRKii5T6iW5gHBTkzeAuGUafyvSimvj2Hx6QM/xtxYNWwoDn/fqzm6K2H
	 M9BQOvJtRRqYzPBMalYGPALMKsQYS2lfLNnOgJL8IfE0WDPz91uvtvb2jrEcDIUpZa
	 bAr15tVwj8KqPZwg9l2xdPxgbO1DmpZ+b2ZbQWn+MW8bi7GK4z0lu0ulpCi3qzekHF
	 r6CtGT74NZXWA==
From: info@benjaminmarty.ch
Subject: ifupdown with systemd
To: yocto@lists.yoctoproject.org
Message-Id: <1740669549.8992@benjaminmarty.ch>
X-Mailer: Usermin 2.005
Date: Thu, 27 Feb 2025 16:19:09 +0100 (CET)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1740669550"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Feb 2025 15:19:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64887

This is a multi-part message in MIME format.

--bound1740669550
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello

I'm using Yocto (Scarthgap) on a Raspberry Pi CM4 with ifupdown and init-ifupdown included in my image. The system uses systemd as the init manager.

It seems that the init scripts for ifupdown are not executed in a systemd environment. My /etc/network/interfaces file is as follows:
# cat /etc/network/interfaces
auto lo
iface lo inet loopback

auto eth0
iface eth0 inet dhcp

However, after a reboot, eth0 remains down:
# ip a show eth0
2: eth0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group
default qlen 1000
    link/ether d8:3a:dd:a8:b6:52 brd ff:ff:ff:ff:ff:ff
    altname end0

Checking systemctl shows:
# systemctl status networking
* networking.service - LSB: Raise network interfaces.
     Loaded: loaded (/etc/init.d/networking; generated)
     Active: inactive (dead)
       Docs: man:systemd-sysv-generator(8)

I have to manually run ifup eth0 to bring up the interface. Is this expected behavior, or is there a service I need to enable to automate this?

Maybe also any other recommendation for a Network Manager, best with a high-level API?

Thanks

Benjamin

--bound1740669550--


