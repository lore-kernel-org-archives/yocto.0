Return-Path: <dacav@fastmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E436CC433F5
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 12:01:48 +0000 (UTC)
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by mx.groups.io with SMTP id smtpd.web09.11653.1642507304862112883
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 04:01:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.com header.s=fm2 header.b=XI5ZX2qJ;
 spf=pass (domain: fastmail.com, ip: 64.147.123.19,
 mailfrom: dacav@fastmail.com)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 6E37C3201DD2
	for <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 07:01:40 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Tue, 18 Jan 2022 07:01:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	date:from:to:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=9Tzn0Cnr/SbRnp+/r5S760z+j9e
	48WK4Lp9O2be3+B8=; b=XI5ZX2qJvXq+0O3PBD/EkdlZ7PnKBMXB+xPiCMCsVQy
	K7of/6wfLQLtxpgLD4yqPz8SdwrtmutdjI0Emu5hJD5qrzha/9t+itAxBNlKvUL5
	XO5McViOEQ0zlpsq4ToqWbuMt5QnWJnRf1/PZQUR29uGkJIgLuBjZeKOQ8c92bma
	moLdMPc0ZoPntrBfQRG+8RvRRRyjgcDuYB1NfbStbweEsUeUcIVnzeAPbzKy4Gze
	UTIxP/AcJ4AMN2LIblMtwiv8E8bYUyCwpHc/r4wEW/itiD7HASZBGxtm65PZ4cuv
	0wziVcEkDrAAQd5jmBxrK/ZFCEi4DE6TMM0/0+jiPLw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=9Tzn0C
	nr/SbRnp+/r5S760z+j9e48WK4Lp9O2be3+B8=; b=VgOsS7XjHlDV8mD2+5kE3t
	xWFIfOZuJb+utneCtfwcx65s7OeDhDX/OxSXUbDSmJ9+qtXt6QRxpN+DemcJ5TAm
	TIjA0TulslGEMLQtmuMYPa/i/gQxgQELo34qefejgQX0iYWyh8gGwTuOvXn3QvD/
	mJiWVnWp5WP2zGtldp+QJQ1EGcUcR+dw5PRgrm06bhZC/9Q6IzYJ/2/Xlo68kTR/
	s8baorxes0vuO+vc0kYDIS+lOMkt2E9DEale0QZo8LzGJPeppIJ1seqGc6ilTK/K
	o2IiuZDGwafigQXLEvyjbweydcdpEXEJwz0yQXzAYcNyltNZKvKmOJ1UxQmEdvEA
	==
X-ME-Sender: <xms:I6zmYdSZaJ-aP6BP3BVyufWc5tuhDX33q5UrfYXKKB1Ml-IfIq-NdQ>
    <xme:I6zmYWwTJMnTuNQyHc8399XlWWuaZxaEjmqHxhh1owsXcclcPyFWSdNdwohInPk-y
    ACCRU3qpA3RquAxYNI>
X-ME-Received: 
 <xmr:I6zmYS2lv5Rrghh8Y7SzvwdMmmu1N_GQgW_k3o9r3CubzKJ6FXe8v7DHPa68PuWCkQmNH6dWev9s-WQnwr_sitUC_4gLQ-4>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudefgdefgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttdertd
    dttdejnecuhfhrohhmpegurggtrghvuceouggrtggrvhesfhgrshhtmhgrihhlrdgtohhm
    qeenucggtffrrghtthgvrhhnpeeihedvleehffeulefgteduieehffevieeugefhiefgfe
    euffeujeefveffjeehhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgr
    ihhlfhhrohhmpegurggtrghvsehfrghsthhmrghilhdrtghomh
X-ME-Proxy: <xmx:I6zmYVAuXxRJIUmA3YabYA17FgV8S45D4JB2tmryN8LNyeP3uRnFuw>
    <xmx:I6zmYWhcJn421bY3U9Q0CfjjDKtiwAG6eZqLjtlrwLLrJWG724_hPQ>
    <xmx:I6zmYZpkIQ7bnPqrhRyRaQ_WxZqAaftJJIojKBWnD4mRIb9d-V8VMw>
    <xmx:JKzmYcfHFqhOUjzNH37y8vffWXiD_P7__LAhkdBU0PlEWSLw5uha_g>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 07:01:39 -0500 (EST)
Date: Sun, 16 Jan 2022 23:26:10 +0000
From: dacav <dacav@fastmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: gdb with a broken sdk
Message-ID: <YeSpkoC+s5SpWYHI@whisky.dedyn.io>
References: <Yd45x2MtXCk7KTRu@whisky.dedyn.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Yd45x2MtXCk7KTRu@whisky.dedyn.io>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 12:01:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55899

On Wed, Jan 12, 2022 at 02:15:38AM +0000, dacav wrote:
> How can I include aarch64-foobar-gdb in the devshell's PATH?

Follow up on this thread: I've been kindly helped by kroon on #yocto.
The trick consists in adding a build-time dependency to gdb-cross-aarch64
in my recipe:

	DEPEND = "gdb-cross-aarch64"

At this point I can just use `bitbake -c devshell $myrecipe` and the
debugger is available.

Bonus: the devshell turns out to be very useful as a replacement
for the SDK: the environment allows me to do the cross-compilation
with just a `make`, while earlier I needed to run `bitbake $myrecipe`
and wait several seconds.


- dacav

