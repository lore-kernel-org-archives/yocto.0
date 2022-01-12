Return-Path: <dacav@fastmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41903C433EF
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 14:51:08 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web11.9843.1642085467198885638
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 06:51:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.com header.s=fm1 header.b=iDGWIxeg;
 spf=pass (domain: fastmail.com, ip: 66.111.4.29,
 mailfrom: dacav@fastmail.com)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 800415C0109
	for <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 09:51:06 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 13 Jan 2022 09:51:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	date:from:to:subject:message-id:mime-version:content-type; s=
	fm1; bh=wzi1gv8SpJ6JG/U+sL9tKgSAT79o+/XQbir1EFilzj4=; b=iDGWIxeg
	mmA06PcfzH5AAtiaeAgfJhNOebsTjZ/aRI6yBqeIOk85QpejyskefUEZQx1nBLdw
	/8WV097zIa/wRCar05LGIzI7rFGAsFe0SuswFguCnZZrmC3ZII3CYvNyucHhjI4T
	/9dCMX6pOpCs0cRRrCSjUXfgoqZuc+aTHp0yayJvpcYUb9J3fsmglATC90OSgO5X
	BWI1v2N4OwTpXaYTisNDqpAtXRJjNzd6b8zWXbiwBlBX8YkzSo3XRaeQEbYAE6Bj
	RMcFPx28lsCHS9mY+6YWJgNQjVNyGo1qo0/rTePLtlIJM7Mm6ivpl3gjrLiBQc6Z
	WUsVfJ9b3knmMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=wzi1gv8SpJ6JG/U+sL9tKgSAT79o+
	/XQbir1EFilzj4=; b=S0sP16gaB7e1tkUmLbbPq/QBGWz51tyKIi59SkdBiUY06
	tUct8oIGE0zqnNDLOegQiwpzRrBL1W6Fqpl1hNTU08+nYZgaS5Wvtds//XNC2xcM
	b4Vv2i/c53sUaQGEmTM5n5CoeYaUGNlUDIPe55SNCMmGUvy14vt2voycNuGK8ba/
	HbYdRsAjHS9ADn6YERtXfyb4teu2mIVo84CTTWgo2Wk4T4tFz+K41TAYnJW/thJx
	KhWJ2m/T3L4k2nTvB5iV2sYnTCVpIO96PQHC8AhcUwkLuHDy/Yd2Iv9nkeQbyjDZ
	7Ex4SDZrDs81y96vEQ6lESDoqenkt1M9W2Cx7yHKQ==
X-ME-Sender: <xms:WjzgYfYdjFw3VnaMRXDxJ2C-tmlSp24OS67-gdOiQq7NfF0o2LAF1Q>
    <xme:WjzgYebhUYV86YSbzF0QHOdiV8odJXrwxshOuTn3dUGA_I8451UN0XiJP5NIt1-zo
    fLyA14-4tbtbrCPJMs>
X-ME-Received: 
 <xmr:WjzgYR8rOgDYOJoATYP84ERkEFGBsk5dubWy88AatlyHsYFlKjmffvdV1Euftu4C0EJaXr6mMGdVR5R6nsq1d9r9ooyBrGI>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrtdefgdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtggusehttdertddttd
    ejnecuhfhrohhmpegurggtrghvuceouggrtggrvhesfhgrshhtmhgrihhlrdgtohhmqeen
    ucggtffrrghtthgvrhhnpedtjeejjeeugfeihfeuveekjedvieejheevvedvhefgjefhgf
    dutedtlefggfelgeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepuggrtggrvh
    esfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:WjzgYVqi-UJRTcpcLnqrRtZxcSRCyAcV-RUYoQ_DLV6NkxYDuvmANw>
    <xmx:WjzgYarAYr-qGS23klcurSgp58AMNjj7GB08Be0uHonqMxoPsbE93g>
    <xmx:WjzgYbRgw7-i2MQ0mo-Dv5eTOln2NCgrFCiVZMzzj04xckXxJgmGiQ>
    <xmx:WjzgYYEr3vrbdMUZpWcGut0TJ0KfR6TJUgR1BwsLrp1QnvFg6tx0AA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 09:51:05 -0500 (EST)
Date: Wed, 12 Jan 2022 02:15:35 +0000
From: dacav <dacav@fastmail.com>
To: yocto@lists.yoctoproject.org
Subject: gdb with a broken sdk
Message-ID: <Yd45x2MtXCk7KTRu@whisky.dedyn.io>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 14:51:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55836

Hello!


I'd like debug an application that is running on my target board.
I installed gdbserver on the target, and I'd like to connect to it
from a gdb instance running locally.

Because of a broken 3rd party meta-layer, I'm currently unable to
build the SDK.  In short, the `populate_sdk` task fails, as well as
`meta-toolchain`.

This page[1] of the documentation suggests to run
`bitbake gdb-cross-<architecture>` (where <architecture>=aarch65, in
my case).  The task completes successfully.

I can find my gtb binary:

	$ find $tmp -name aarch64-foobar-gdb

It ends up being in a sysroot:

	$tmp/sysroots-components/x86_64/gdb-cross-aarch64/usr/bin/aarch64-foobar/aarch64-foobar-gdb

Unfortunately, invoking such binary fails because of runtime
dependencies (python) being missing.  It will dump a stack trace
and say:

	AttributeError: module 'sys' has no attribute 'lib'

This is most likely due to some PATH-like environment variable not
being set.  I've asked for advice on #yocto, where I was suggested to
try with `bitbake -c devshell`.

The trick seems to work in that I can find various aarch64-foobar-*
executables, but I can't find aarch64-foobar-gdb.  There are also
a few incompatible binaries, e.g. aarch64-none-elf-gdb, arm-none-...gdb.
None of them seem to be useful agains my target.

How can I include aarch64-foobar-gdb in the devshell's PATH?



Thanks in advance,
- dacav


[1] https://docs.yoctoproject.org/dev-manual/common-tasks.html?highlight=gdb#using-the-gdbserver-method

