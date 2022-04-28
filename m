Return-Path: <mac@mcrowe.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE05C433EF
	for <webhook@archiver.kernel.org>; Thu, 28 Apr 2022 13:33:47 +0000 (UTC)
Received: from avasout-peh-004.plus.net (avasout-peh-004.plus.net
 [212.159.14.20])
 by mx.groups.io with SMTP id smtpd.web08.10374.1651152824523553961
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Apr 2022 06:33:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mcrowe.com header.s=20191005 header.b=patsUtkf;
 spf=pass (domain: mcrowe.com, ip: 212.159.14.20, mailfrom: mac@mcrowe.com)
Received: from deneb.mcrowe.com ([80.229.24.9])
	by smtp with ESMTP
	id k4H6nYZw3uTE0k4H7nxdbk; Thu, 28 Apr 2022 14:33:42 +0100
X-Clacks-Overhead: "GNU Terry Pratchett"
X-CM-Score: 0.00
X-CNFS-Analysis: v=2.4 cv=DfIEF9hW c=1 sm=1 tr=0 ts=626a97b6
 a=E/9URZZQ5L3bK/voZ0g0HQ==:117 a=E/9URZZQ5L3bK/voZ0g0HQ==:17
 a=kj9zAlcOel0A:10 a=z0gMJWrwH1QA:10 a=P3NSeJC_3vI3A2DFuAwA:9
 a=CjuIK1q_8ugA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mcrowe.com;
	s=20191005; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description; bh=DY41yLuLjliNoMr9hQaUTCEf0I6swO02bqLURgBZEHM=; b=patsU
	tkfBwi5tP1tQ0hJQ/Y58tanlWfR9TSPpV6GjFWyB8rxnlHDCLpSKpN1qcxyZzlIPb/Gt4CS55z8hg
	3J+cdmpgnC67pO0XV4M/Zqda6Ul5Stu5mQPhrKBygEmzdpHa9A7pNYZu1oH56z6fl4i25IRmOI0DW
	rAF88o/p7xzcHqobQA/lZJhP4O7zXDSykpVFuDvJih5YdBcBtXGaaGXvshzFxEoS+GB1uJZWJWbVn
	ZgNIHr80XrutCt4dHguUHhBsQ/E0UwDzONGvKMMT7JH4stWXXA3EzXWthLP3mORDWKY0YhhG4fjs9
	W5/Hoyr6Xxn4bGQvc7/7S7JQ/ZgeA==;
Received: from mac by deneb.mcrowe.com with local (Exim 4.94.2)
	(envelope-from <mac@mcrowe.com>)
	id 1nk4H6-001QDz-2c; Thu, 28 Apr 2022 14:33:40 +0100
Date: Thu, 28 Apr 2022 14:33:40 +0100
From: Mike Crowe <mac@mcrowe.com>
To: Martin Weber <martin.weber@br-automation.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Building recipes in multiple flavors for differing images
Message-ID: <YmqXtI6lYlUEXaDb@mcrowe.com>
References: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: 
 <VI1PR0602MB3549F83AC93A53785DE48677D3FD9@VI1PR0602MB3549.eurprd06.prod.outlook.com>
X-CMAE-Envelope: 
 MS4xfBPms0O7IjxBsDtkVxpTJMs8fccYINkuAv/ytOCiumGXTQgCtBa34TCOU0OD8dDUEtNwzs2k/6WzP9WQQQiL2PU7/r8deN9C/oRCW17Hboa9/6XoESdY
 xVUKi3mN5vfDOwhpookCwf8FcPDXwSFEjF1m+04gdXeFFQcJ7JO0A5PC+umJqIF6hkVzOTPQ84PSrw==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Apr 2022 13:33:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56939

On Thursday 28 April 2022 at 09:09:33 +0000, Martin Weber wrote:
> The software we use (machine/bsp layer level; software level) in
> principal is the same (same upstream, internal or 3rd party), but we need
> to build them in different ways (e.g., one uses system V init, one uses
> systemd init; one uses optimized-non-logging versions of the software,
> another ships debug symbols and enables logging during buildtime; one
> installs and enables various systemd units, another doesn't, etc.).

We do switching between debug/release (and in the past one other similar
configuration option) by changing PACKAGE_ARCH. We set OUR_DEBUG in the
build environment, then have:

 DISTROOVERRIDES = "${DISTRO}:${@['ourdebug0', 'ourdebug1'][d.getVar('OUR_DEBUG') == '1']}"
 OUR_DEBUG_SUFFIX = "${@oe.utils.conditional('OUR_DEBUG', '1', '-debug', '', d)}"
 MACHINE_ARCH_DEBUG = "${MACHINE_ARCH}${OUR_DEBUG_SUFFIX}"
 PACKAGE_EXTRA_ARCHS_append_ourdebug1 = " ${MACHINE_ARCH_DEBUG}"

and then in any recipes that behave differently between debug and release
we have something like:

 PACKAGE_ARCH = "${MACHINE_ARCH_DEBUG}"
 RECIPE_SPECIFIC_VARIABLE_ourdebug1 = "-DENABLE_DEBUG_STUFF"
 RECIPE_SPECIFIC_VARIABLE_ourdebug0 = "-DNDEBUG"

(You may find that you need to create a parallel set of infrastructure
using an equivalent TUNE_PKGARCH_DEBUG too if you have non-MACHINE-specific
packages that conditionally enable debug.)

This mostly works, and it works a lot better now than it did when we first
started doing it about a decade ago. I still think there's a risk of
getting the non-debug package in a "debug" rootfs if things go a bit wrong,
but this isn't something we've seen for a long time. If it comes back then
I'd try using a "-nodebug" alternative in OUR_DEBUG_SUFFIX too in order to
avoid that possibility. (That way, a package would either have a
PACKAGE_ARCH that matched ${MACHINE_ARCH} or ${MACHINE_ARCH_DEBUG}, but
not both.)

This method was originally created by Phil Blundell. I don't necessarily
recommend doing it, but it does seem to have worked for us. We started with
something simpler, and when we ran into problems I ended up learning a lot
more about how Bitbake worked in order to solve them which was beneficial
in the long run. :)

In theory it ought to be possible to use multiconfig to build both debug
and non-debug variants at the same time, but this isn't something we've
tried.

HTH.

Mike.

