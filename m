Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 139C1CCD1BF
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 11:37:38 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.web10.9171.1761651450490023422
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Oct 2025 04:37:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=dp2yo0qH;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=LlZUFyFk95OmzKPljGuXYa9Yvgjacy7qbyjxx3FeGmY=; b=dp2yo0qHymSLRVmbUvdktxS0qT
	Gt7gSxa0P6qBYVjMAoBlrQyQeJf8zaRBvCeqTTyI/tfQwDiLvXD+yEmdKo6DJNQ5Ydj+kw1SxwrOu
	39hNLdx7jZkyt/jjbJft1e+zeKf/fBL1xntQn1m5u+b07Mo1uQgnQweNb2DpnMoNzlYZNHjSVXsmh
	txph94nHUxFYMXicAnLy0L9UMQ/Vtuqcdps8ISZhz5K8oac7NPKIuIX90N+Ol8r9OX5j7gPdVBYht
	GpfRooxDEtpY8GtoOT4dk5hmBsB4zffX3WKWlFUkhSWXUzMV8RsFiljSZgvhj7cpsU5dC/85dU1wJ
	P7pplnZQ==;
Received: from [147.129.179.166] (port=53366 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vDi10-0000000CYLw-3eMl
	for yocto@lists.yoctoproject.org;
	Tue, 28 Oct 2025 07:37:29 -0400
Date: Tue, 28 Oct 2025 07:40:11 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: pedantic nitpickery: coding style with "FILESEXTRAPATHS:prepend"
Message-ID: <253a0731-97d0-10ef-aef8-2f56328a81f9@crashcourse.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 11:37:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65974


  (spoiler: turns out this is fine, but it's non-intuitive)

while checking for any other syntactically incorrect assignments to
FILESEXTRAPATHS, i ran across this in
meta-arm/meta-arm/recipes-kernel/linux:

arm-ffa-transport.inc:FILESEXTRAPATHS:prepend := "${ARMFILESPATHS}"

  "aha," i thought, that's clearly another error as it is missing the
trailing colon. turns out, not so, if you examine the contents of that
directory more closely:

arm-ffa-transport.inc:FILESEXTRAPATHS:prepend := "${ARMFILESPATHS}"
linux-yocto%.bbappend:ARMFILESPATHS := "${THISDIR}/files:"
linux-yocto%.bbappend:FILESEXTRAPATHS:prepend:qemuarm64-secureboot = "${ARMFILESPATHS}"
linux-yocto%.bbappend:FILESEXTRAPATHS:prepend:qemuarm-secureboot = "${ARMFILESPATHS}"
linux-yocto%.bbappend:FILESEXTRAPATHS:prepend:qemuarm64 = "${ARMFILESPATHS}"
linux-yocto%.bbappend:FILESEXTRAPATHS:prepend:qemuarm = "${ARMFILESPATHS}"

because the variable ARMFILESPATHS is defined with the trailing colon
already built in.

  yuck. so while this works, i'm not a big fan of adding delimiters to
the value of variables like this.

rday

