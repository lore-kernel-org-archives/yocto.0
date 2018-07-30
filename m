Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38756E009AA; Mon, 30 Jul 2018 11:35:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f180.google.com (mail-ua0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4EB8E0080A
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 11:35:06 -0700 (PDT)
Received: by mail-ua0-f180.google.com with SMTP id c12-v6so8523498uan.3
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 11:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6NB2KHdXyCJW/P7GuLR/ZHGj0pga/T693b+GupnX6qo=;
	b=JVH8JWv+3ga+CxOxTg+DzWhJaBhk8/aY16y0Ih95X/RJ5dwhA1/nGhFN6ttxOWDxkP
	z2ilggG3qzd/nduAJEZKLB1h/xkCcbETfv1BeTyxJiFRwUPgexRYvGEqrHhVEyDR8ZrK
	1QB253KXeDBPbZlaLSA/dhrs5CMpH14CkLmairyPMpGmBp0tGgLLPdAcmpQoCIIQRVpg
	MddG/Ys/TNO7Lbr22Ekj712YJHKR2ewegOzBRHO3o9nBkFsseblgqtcbPT1wRGfKEO+N
	bfssK6gOTi9U41gIjNylPhIQUAHt6Py7OFBVkthNaIVCtgp9jts3yd6KEl4Wd2zQKLOo
	s9KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6NB2KHdXyCJW/P7GuLR/ZHGj0pga/T693b+GupnX6qo=;
	b=Fx2RNaTwPvh45cbEB3/EGTC+rxoWFkUnZMljHopVdMbMA927eJnsC0dFQ3lnj2hXKP
	JdZ8zpLDjfuI9DrPyiDan7kaDqvoCwusDdvlb6sHxocYCo4rggsW4UwXrx/witwJYJ1D
	c5VztR28GdwShtJnlGbpzQ9yoYU3QJCcQfrxAh+qZ6aOq8kr6j0cdM5a7tLEOR42m1Ju
	XJreaAcArzm9+ik1gW6n5B3YkVTCaYup97cJuvlo6pFF2yUsCYbELbBd5CvVVMTL0LPw
	hzrzNr9MCE3OV1Nauf17gvIHQ+XQ5g8HolGcnj+e9CbArj8i9wNFNGwyKWdEKbYXxIjm
	5srQ==
X-Gm-Message-State: AOUpUlH+Rf5NhyqZKvJgNyloOeRUc0+AZyXOgIzMjUKUrema/3/Zcv/K
	lf2TGesihKY7t4Bv04/LxG8gXiwBW4644msUA4c=
X-Google-Smtp-Source: AAOMgpdd2bDN04VUVPMRwaTJBEOjzSzKizjNd/DcUc4FsOiMApCwm86al/fYbMLlZ8/+f4i2FLa3Un6pywS0PVsfr1U=
X-Received: by 2002:a9f:3f8c:: with SMTP id
	k12-v6mr13208584uaj.38.1532975705885; 
	Mon, 30 Jul 2018 11:35:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Mon, 30 Jul 2018 11:35:05 -0700 (PDT)
In-Reply-To: <CANmTPBacpv8Z3-N2jA5EJ7-JmebJELYALY5y1HA18No3bh1gZQ@mail.gmail.com>
References: <CANmTPBZ5G6nVbe+TtddpDsOC=TwqxcEcPEGivbgzPG8YQ_KNhA@mail.gmail.com>
	<CAJ86T=X5L+2ZqDh2P=ODhMB8-eMNiUhAHFZbvRaK=b1g772evg@mail.gmail.com>
	<CANmTPBacpv8Z3-N2jA5EJ7-JmebJELYALY5y1HA18No3bh1gZQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 30 Jul 2018 11:35:05 -0700
Message-ID: <CAJ86T=XQiP-R4ex=RQBVvJ5KJk70h46MzCQyEeZ7H8BJfZetUg@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Removing syslogd form busybox
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jul 2018 18:35:08 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 30, 2018 at 10:53 AM, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> So what you are saying is I need to update busybox to be able to remove
> syslog from it?

Depends on what you mean by "update". Backporting a patch is generally
considered updating, but I guess you could argue either way.

What I'm saying is that upstream oe-core contains a change to the
busybox recipe which makes it easier to disable busybox syslog. It's
up to you whether you try to backport that change or whether you come
up with your own solution. Both ways can be made to work.

> Also I noticed 2 syslogd:
> /sbin/syslogd
> /usr/lib/opkg/alternatives/syslogd
>
> /sbin/syslogd is a link to busybox.
>
> What is /usr/lib/opkg/alternatives/syslogd   ?
>
>
>
> On Fri, Jul 27, 2018 at 4:47 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>> On Fri, Jul 27, 2018 at 1:07 PM, Simon Chamlian <simon.chamlian@mpbc.ca>
>> wrote:
>> > Hi,
>> >
>> > When I removing syslogd from busybox, I can compile with no error
>> >
>> > $ bitbake -c compile busybox
>> > Loading cache: 100% |####################################| Time: 0:00:01
>> > Loaded 3082 entries from dependency cache.
>> > WARNING: No bb files matched BBFILE_PATTERN_phytec
>> > '^/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-phytec/common/'
>> > NOTE: Resolving any missing task queue dependencies
>> >
>> > Build Configuration:
>> > BB_VERSION        = "1.32.0"
>> > BUILD_SYS         = "x86_64-linux"
>> > NATIVELSBSTRING   = "Ubuntu-16.04"
>> > TARGET_SYS        = "arm-poky-linux-gnueabi"
>> > MACHINE           = "imx7d-phyboard-zeta-001"
>> > DISTRO            = "fsl-imx-x11"
>> > DISTRO_VERSION    = "4.9.11-1.0.0"
>> > TUNE_FEATURES     = "arm armv7ve vfp  neon        callconvention-hard
>> > cortexa7"
>> > TARGET_FPU        = "hard"
>> > meta
>> > meta-poky         = "HEAD:78890ea22750804e3e9113e76f7ca3d7234c8342"
>> > meta-oe
>> > meta-multimedia
>> > meta-webserver    = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
>> > meta-freescale    = "HEAD:a398b50b7fc084a9e68cc3000c218d5028522a25"
>> > meta-freescale-3rdparty =
>> > "HEAD:68314612e236cab1da82d72a0da62635a3523f84"
>> > meta-freescale-distro = "HEAD:cd5c7a2539f40004f74126e9fdf08254fd9a6390"
>> > meta-bsp
>> > meta-sdk          = "HEAD:daba3340ecd8b358e0c6c415baeee0fcae95c525"
>> > meta-browser      = "HEAD:10f6e3778d823ee1be106c126216c6f941088fbf"
>> > meta-gnome
>> > meta-networking
>> > meta-python
>> > meta-filesystems  = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
>> > meta-qt5          = "HEAD:ff073f04109900fc07bf81e2f1df63c626caf342"
>> > meta-phytec
>> > meta-phytec-fsl   = "HEAD:f9897a4e06f43184a71d315cec4a412a28baa59b"
>> >
>> > WARNING:
>> >
>> > /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb.do_compile
>> > is tainted from a forced run
>> > | ETA:  0:00:01
>> > Initialising tasks: 100%
>> >
>> > |###########################################################################################################################################################################|
>> > Time: 0:00:01
>> > NOTE: Executing SetScene Tasks
>> > NOTE: Executing RunQueue Tasks
>> > NOTE: Tasks Summary: Attempted 234 tasks of which 232 didn't need to be
>> > rerun and all succeeded.
>> >
>> > Summary: There were 2 WARNING messages shown.
>> >
>> >
>> > When I build my image for my machine, I am getting the following error:
>> >
>> >
>> > WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target
>> > (/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist,
>> > skipping...
>> > WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative
>> > provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist
>> > ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog
>> > value
>> > busybox-syslog.service does not exist
>> > ERROR: busybox-1.24.1-r0 do_package: Function failed:
>> > systemd_populate_packages
>> > ERROR: Logfile of failure stored in:
>> >
>> > /opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.30442
>> > ERROR: Task
>> >
>> > (/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package)
>> > failed with exit code '1'
>> >
>> > Any hints?
>>
>> It looks like you're using morty, which pre-dates busybox syslog
>> "officially" being made optional:
>>
>>
>> http://git.openembedded.org/openembedded-core/commit/?id=9732a2ba2edf2607e61ae4fe0d65a02b7918cfe7
>>
>> If you can't update to a newer release you could try backporting the
>> above commit.
>
>

