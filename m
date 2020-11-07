Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web11.5088.1604761481058470228
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Nov 2020 07:04:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=ClbAI0mq;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.20, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 0B7CEF73
	for <yocto@lists.yoctoproject.org>; Sat,  7 Nov 2020 10:04:39 -0500 (EST)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Sat, 07 Nov 2020 10:04:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=8zxovb7WY3C4C4azwmNn3dhpJXKDhrMldckF2p2WF9k=; b=ClbAI0mq
	9qcxH//t7f/f5QEBXXfYzRsjG+SJ/DN3wCQ72f/aNs+xkAHAFqsraJYy+d9Pzo3h
	pg4fBjXxX4WCz5qcz3ZqByqTkuP7La0H9Uq7qFS4FB87rQlv/71Lc4y1g2NwFvaX
	PkMyWvJ7REVpSXnRkXQliPX0Lorp91dBg/RTTXLg0UlYLqKsXGcyR4Pipje7Ddvu
	06yqon8bbJQKnQ1cby55txwVricuZpOclzLVJeWmvxXPtXXmRPTDfwEpIRxmUqkm
	c7/MsPoK2FQwWusbyt85K4XAzcX++G2KTtGkLVylX2Jg3EuBFVQf2BBG/1Ip0RZt
	yekbOy3omP4t+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=8zxovb7WY3C4C4azwmNn3dhpJXKDh
	rMldckF2p2WF9k=; b=HF5VM1t+XKf9+c9WjG6TR2de3/4V2ZjkN9UOOa5SOP9WE
	uSIU7NgF5RekREM6VV5CPmOoHYIMFsoJcE6y8h/tyxRHRp7ml+ll69ptMbNbIx+s
	ECf1uw/w4SDZhsFVxoGnmvd3+HIVByJu8Gr5I8xadqZ9jrgllVq/5N+EMzTWFhM9
	okvzO8gzdgi1Vg4LmDWm4SAFdcYNfJ6rM74JR1heX+EO2yYWx92O4Xrylok3GoYE
	bvObOM4sGg7ITYW3yz1Ilz0LCDkl9JM2cfm3mZuy2ez42nsx/DEeYV/1PhOvWL9m
	9Ja2J/4ezfYt9ZuB9m3QrE4GUetizp3VVLDsZDhhA==
X-ME-Sender: <xms:h7emX-Jf7zhAIiTDbLFbd_nMKw8tn6BgcxPvXbY9X_lEGeApMhgazw>
    <xme:h7emX2L7XvbzKCIv-ouvS2Nogf7P7UsePSffVdlmamhu_bmU_5L7FicUZzwMUocgc
    fg92jF86JSxVjxW>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudduuddgjeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpeegkedvhffhtd
    egleelgfffheehveetleejudeiteejkedthfeihedvhffgleevhfenucffohhmrghinhep
    hihouhhtuhdrsggvpdihohgtthhophhrohhjvggtthdrohhrghenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpeforghnhggrgheshfgrshhtofgr
    ihhlrdfhof
X-ME-Proxy: <xmx:h7emX-tsA-7HEkWAYgG6ZUBqkzSmiL4e-_jHxwAxR1QrfzZO7wWGfw>
    <xmx:h7emXzbu1-LKLXWwPLNPlceUzs4PpSelYiCG8igyBq-eY-STYc-vIw>
    <xmx:h7emX1a1AEApfe8_DoPMD97gdB9fQ3hsL4xBDtnAGC2NPZcF9z1l8Q>
    <xmx:h7emX-kkY8l4Lf3HEOlzFpda2C_eb3BtRDvosUQGRT8Y5kVsu7JGTA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 3F1D41C02A8; Sat,  7 Nov 2020 10:04:39 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-570-gba0a262-fm-20201106.001-gba0a2623
Mime-Version: 1.0
Message-Id: <327508fa-a802-4fe2-b398-fdfa0c608a44@www.fastmail.com>
Date: Sat, 07 Nov 2020 16:04:18 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: Error when building eSDK for a `docker load`able tarball
Content-Type: text/plain

Hello all,

I would like to set up Yocto to build my application and produce
- an tarball fit to get `docker load`ed,
- an image fit to run in qemuarm,
- an image fit to run in qemux86-64,
- an image fit to run in a Raspberry Pi 4,
as well as eSDKs for each of the platforms mentioned.

Creating the tarball and images already works fine, but I'm facing difficulties with the eSDK for the docker-tarball. It fails with the error message noted below. The eSDK build for qemuarm, qemux86-64 and the Raspberry Pi 4 image completes without errors.

For building the tarball I followed the approach presented by Josef a.k.a. The Yocto Jester.

This is my image definition: https://youtu.be/jPbcQEffzJo?t=1028
And this my machine configuration: https://youtu.be/jPbcQEffzJo?t=1338

This is the distro configuration:
```
require conf/distro/poky.conf

DISTRO = "bora"
DISTRO_NAME = "Bora Horza Gobuchul (Poky-based)"
DISTRO_VERSION = "1.0.0"
DISTRO_CODENAME = "dunfell"

# Override these in poky-based distros
POKY_DEFAULT_DISTRO_FEATURES = ""
POKY_DEFAULT_EXTRA_RDEPENDS = "packagegroup-core-boot"
POKY_DEFAULT_EXTRA_RRECOMMENDS = ""

# Simply copy these lines from the manual
# DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = ""
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = ""
```
It is a duplicate of to the distro config I use for qemu and Raspberry Pi targets, but has the `DISTRO_FEATURES_append = " systemd"` commented-out. This is because initially, the tarball included some systemd units which I felt there is no need for in a docker container.


This is the error message I get when building an eSDK: (Sorry for the lengthy paste, but I really don't know which part is the important one. The "Shell environment set up for builds" really shows up AFTER the first error message, otherwise I would have skipped it.)
```
ERROR: bora-container-1.0-r0 do_populate_sdk_ext: Failed to generate filtered task list for extensible SDK:

### Shell environment set up for builds. ###

You can now run 'bitbake <target>'

Common targets are:
    core-image-minimal
    core-image-sato
    meta-toolchain
    meta-ide-support

You can also run generated qemu images with a command like 'runqemu qemux86'

Other commonly useful commands are:
 - 'devtool' and 'recipetool' handle common recipe tasks
 - 'bitbake-layers' handles common layer tasks
 - 'oe-pkgdata-util' handles common target package tasks
ERROR: bitbake failed:
Parsing recipes...done.
Parsing of 2201 .bb files complete (0 cached, 2201 parsed). 3288 targets, 157 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.org/releases/uninative/2.8/x86_64-nativesdk-libc.tar.xz;sha256sum=a09922172c3a439105e0ae6b943daad2d83505b17da0aba97961ff433b8c21ab
Initialising tasks...done.
Sstate summary: Wanted 503 Found 501 Missed 2 Current 0 (99% match, 0% complete)
WARNING: The glibc:do_prepare_recipe_sysroot sig is computed to be e7647c2eecc7480b4072cc50e9a999ccd161d45d6862342de994ae93e8f306e4, but the sig is locked to b6c303c7ead3bc98509abd2db62cef88b1ee8a08a760646963adfa910a0ea78d in SIGGEN_LOCKEDSIGS_t-core2-64
The glibc:do_configure sig is computed to be a32c9df42d2aae537e79f1b94e5b1448e978c8e1ff904bb35cb55e9241d80cb0, but the sig is locked to d4df7745109eca8d320cdfa97a2d9ec4512e71c15ccbbd9dfd96edfb110a8d32 in SIGGEN_LOCKEDSIGS_t-core2-64
The glibc:do_compile sig is computed to be 8061b4dcee2786866c843c636733dbcb7aec747751613fbb0c98cdbcd68e246b, but the sig is locked to 633aa602880e141d7a0f776971199f9f594295107ef9e4384e3dbb35a85c7ebe in SIGGEN_LOCKEDSIGS_t-core2-64

[...]

ERROR: Task linux-dummy.do_fetch attempted to execute unexpectedly
Task /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manwag/recipes-core/images/bora-container.bb:do_image_qa, unihash d18d2179024bc6595110c2f10112e7a8e2bd6021d3ea754af30ad9b68ebd9844, taskhash d18d2179024bc6595110c2f10112e7a8e2bd6021d3ea754af30ad9b68ebd9844
Task /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manwag/recipes-core/images/bora-container.bb:do_image_complete, unihash c2d86d42a7fc84df5f6ad94b3ed65f6991b3e680d99d40e07ee631aedee9970b, taskhash c2d86d42a7fc84df5f6ad94b3ed65f6991b3e680d99d40e07ee631aedee9970b
This is usually due to missing setscene tasks. Those missing in this build were: {'/data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manwag/recipes-core/images/bora-container.bb:do_image_complete',
 '/data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta-manwag/recipes-core/images/bora-container.bb:do_image_qa'}
ERROR: Task (/data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta/recipes-kernel/linux/linux-dummy.bb:do_fetch) failed with exit code 'setscene whitelist'
NOTE: Tasks Summary: Attempted 142 tasks of which 141 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/sdk-ext/image/tmp-renamed-sdk/layers/poky/meta/recipes-kernel/linux/linux-dummy.bb:do_fetch
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
ERROR: Logfile of failure stored in: /data/proj/poky/build-bora-docker/tmp/work/containerx86_64-poky-linux/bora-container/1.0-r0/temp/log.do_populate_sdk_ext.8096
ERROR: Task (/data/proj/poky/build-bora-docker/../meta-manwag/recipes-core/images/bora-container.bb:do_populate_sdk_ext) failed with exit code '1'
NOTE: Tasks Summary: Attempted 2358 tasks of which 2356 didn't need to be rerun and 1 failed.

Summary: 1 task failed:
  /data/proj/poky/build-bora-docker/../meta-manwag/recipes-core/images/bora-container.bb:do_populate_sdk_ext
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
```

Thank you!
Best regards,
Manuel
