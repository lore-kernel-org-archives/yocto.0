Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2371C433EF
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 16:10:58 +0000 (UTC)
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
 [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web10.1643.1636647056946440092
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 08:10:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=lvccDhWT;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.26, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 5053E5C011A
	for <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 11:10:56 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute3.internal (MEProxy); Thu, 11 Nov 2021 11:10:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=YGOZmTo1QJuyn4q9HuT+PSIa/K6vEa0NqxsUhyH9Xpo=; b=lvccDhWT
	GEfm1Ueac0YrQAVEbToL1L4yIZ70rH84fOvwEKkydwVdoIlfFeScDuWGMSeCd0Go
	ZMZ2YQn0FoChh3yu7bUPifNDValU7JyIWHoIQNLhrnLQb+pnIX1W98g+X62YM5ql
	lE1qa4y7PATb3HZlECiq0mpsGyRfVpPSvalvulERCJeeBu/PEPDwuRB+JKtzm3iK
	eDWKomQR7uR7GhWTf8S9CU1elGgyMjWOn5Ma88693mvss1c1nlqcyeG4F3WkaQiG
	3qnAaXbb615wSIeGlkxU02xK+SNdaOfuerg41pVA+zEmg9aXCX+Ywca3UxYLNMlc
	Zt0nnw1bN/0CFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=YGOZmTo1QJuyn4q9HuT+PSIa/K6vE
	a0NqxsUhyH9Xpo=; b=hXDQvR9QLtmKISlbOogjjp5hmDVkyuG78vH6tArug3Itb
	/2vAC0PzlSdYThp2M7xy6Pu+xnKAtg9utWwCJekFHYYk7ONwndIrXfZdzE8IcNqv
	N/0RI/CccixP7SNeQsg0XvxHY//1gRqibVsrMbny4prQEIJ00UWAn7xTvFktFDWQ
	GaBaqqpBt4g7bQPqvc4AOWDmBVFPochPHkRrr71NGbspWCpPseU/a9hnEVx8Ks6D
	6n/i1uc/soGTjRKFREqOHJxnJWHiA/rMLDeroVj39SGx0C95i7WGyXOFMQU6bv1b
	3hEg26zCuCLpuOhD/NboshWQn+QjUYuZFjL9MC7Lg==
X-ME-Sender: <xms:kECNYeVgJ9XIAZhZYtmCeJKLgmKXKmQd6NQ19Jil68mMNqjWMaY-_Q>
    <xme:kECNYakb5FMlK4l2Q2TYT_BeXGkh8EVqBtU_0mxYbbfq4aH5eo9LIpaaCjrvYpvLe
    go5cBYrJygewa4L>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrvddugdekhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
    ertdenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoeforghn
    hggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepueegtdeiteduue
    eludegffeggfetteekueetueekfedugfduueekffegleeivdeinecuvehluhhsthgvrhfu
    ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforg
    hilhdrhffo
X-ME-Proxy: <xmx:kECNYSb1Ja6mEPH7SXCnfwKt1HBzaPpE2fD4yio1D2bcZiF0Vc-8Rg>
    <xmx:kECNYVXxVHjgeBhIF7aBcDr8vI-_ZQaXfGp1N95EDoFOIP4dZaaNaw>
    <xmx:kECNYYnjnPljmVW4r252YACI_qnlPjDqBmbpW5g-kitr4IzJPYd5AA>
    <xmx:kECNYUwjq7eis1K0QOr-BOMgzslGOgrCKYHJ5ZTcL-dwG7ArAHCqgw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 169D83C0C6F; Thu, 11 Nov 2021 11:10:56 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1371-g2296cc3491-fm-20211109.003-g2296cc34
Mime-Version: 1.0
Message-Id: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
Date: Thu, 11 Nov 2021 17:10:35 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto suddenly creating directories with 700 instead 755.
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 16:10:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55315

Hello all,

sorry, wall of text incoming.

tl;dr:
If recipes install directories with `install -d path/to/dir`, how is the default mode determined? What can cause it suddenly (that is, without updating metalayers or similar) to change from 755 to 700?


full version:

our CI is throwing "Transaction check errors" of the following form:

```
file /etc conflicts between attempted installs of redactedone-appconfig-1.0-r0.aarch64 and modemmanager-1.12.12-r0.aarch64
file /etc conflicts between attempted installs of tegra-configs-udev-32.4.3-r0.armv8a_tegra and redactedone-appconfig-1.0-r0.aarch64
file /usr conflicts between attempted installs of redactedtwo-scripts-1.0-r0.aarch64 and nvidia-docker-2.2.2-r0.aarch64
file /usr/bin conflicts between attempted installs of redactedtwo-scripts-1.0-r0.aarch64 and nvidia-docker-2.2.2-r0.aarch64
file /usr conflicts between attempted installs of iptables-dev-1.8.4-r0.aarch64 and redactedtwo-scripts-1.0-r0.aarch64
file /usr/bin conflicts between attempted installs of systemd-1:244.5-r0.aarch64 and redactedtwo-scripts-1.0-r0.aarch64
```

I examined/unpacked the .rpms in tmp/work/deploy/rpm/aarch64 and really, they do differ in the mode bits for /etc, /usr and /usr/bin. While these dirs have a mode of 755 in poky/oe packages, they have a mode of 700 in our packages. The puzzling thing is that this issue has arised only recently with a totally independent change in some recipe not mentioned above. The change consisted of changing the URI of a tarball we fetch from AWS S3 and using sha256 instead md5 for checksumming the file.

At first, this issue appeared somewhat reproducible, but I think that was just coincedence. Perhaps there is some cache poisoning at play here. Now builds are also failling which don't have this "bad" commit. Tests are still going on. I'm now testing if deleting the tmp dir changes anything.

So this mail is rather about: Do you know anything which can point me into the right direction? The recipes in question all install the directories with `install -d ${D}/somedir`. I changed some recipes to have `-m 0755` as well, and one build did indeed succeed then, but then builds started to fail with the same symptoms but other packages being the culprit, that is, having the dirs with 700.

I heard the default mode of files/dirs in unix is set with umask, but I have no idea how to check if/how Yocto is fiddling with that.

Also, sometimes we have these errors: They seem to go away with cleaning the tmp dir, while the errors above persist. But the sample size is very small so that might be a wrong lead.

```
INFO     - NOTE: Running task 12010 of 12044 (/opt/buildagent/work/77acccee8c88a2cf/meta-nellie/recipes-nellie/images/our-image.bb:do_rootfs)
INFO     - NOTE: recipe our-image-1.0-r0: task do_rootfs: Started
ERROR    - ERROR: Task (/opt/buildagent/work/77acccee8c88a2cf/meta-nellie/recipes-nellie/images/our-image.bb:do_rootfs) failed with exit code '134'
INFO     - NOTE: Tasks Summary: Attempted 12034 tasks of which 12001 didn't need to be rerun and 1 failed.
INFO     -
INFO     - Summary: 1 task failed:
INFO     - /opt/buildagent/work/77acccee8c88a2cf/meta-nellie/recipes-nellie/images/our-image.bb:do_rootfs
ERROR    - Command "/opt/buildagent/work/77acccee8c88a2cf/build$ /opt/buildagent/work/77acccee8c88a2cf/poky/bitbake/bin/bitbake -c build our-image" failed
--- Error summary ---
ERROR: Task (/opt/buildagent/work/77acccee8c88a2cf/meta-nellie/recipes-nellie/images/our-image.bb:do_rootfs) failed with exit code '134'
```
Google said exit code 134 means the process received a SIGABRT, but... I'm quite sure no-one sent one.


Thank you all,
regards,
Manuel

