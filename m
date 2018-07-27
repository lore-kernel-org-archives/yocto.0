Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2BE2E0086B; Fri, 27 Jul 2018 13:47:10 -0700 (PDT)
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
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F8E7E0049F
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 13:47:09 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id g18-v6so4184860uam.6
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2018 13:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Q9cgE51jk7ubvSbc8E0dAQTsyFWOVEy7lOW3paHKv58=;
	b=BGyIRk6I6Iz7UFCSYKQvpmoWFWZQ5AF51tL6RsZWvN6CPSSZFZaXQHGhrFlKl/juVb
	bwjnzobK39ZQrEsut0Z4j3PWvfirXb2R6srfHGHd+GlDI2fq+qoaZLQc4313QOqumUa+
	HuSaL9c1/OKF77/P/+EJyvYJrHXo0ZROVdqarMz9eBW5M3/3VeYadFIRVywJfej+IyGA
	pnNgKT70AbVYg0VmoHqbYGnRuTzYuxJXmPXloAGYdY8QqMV+2tVdurGw2Za+p7QMOEf5
	5QAMskhxHl9dhaIM1i8WaO6G/EIsLUxnSmX6eoRGEA0H9h3EVjhIroXlPjopwhv+FaMb
	6Ebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Q9cgE51jk7ubvSbc8E0dAQTsyFWOVEy7lOW3paHKv58=;
	b=nNUJo7OCLCh2nJWZmfzQ8NjYaEZIPVxIR9SmRQk/+guADfVWTstOlr47LP8Lac2oFx
	hY17hQRfKe4ybDCkmHmxvdVXN6fgDiDZiUqfspwZF2KzZtoSDka+6XzjkU8TFbbb46W2
	+BUfciQdUBW6LRG6Zqbs0FmOvi98b/K3JakeVenxSco0GVeKcyeFyOx8Hky8QWWu+q6u
	AQgDmhXKQRJCStyHxy3GjD7U6y60Mk7osuVHpsC4kj3FhmFI3WEWelkg9hEA6Itj5opr
	lhztF/0B1Ng57MUrEtBJnpZ3dUIanmioKDmS6g/I60Es1xhn4u0MbJIhMo1zgGck+m0Z
	niXQ==
X-Gm-Message-State: AOUpUlEl1eFI6gVlKJaAtwwecf6Z56stvCwJd1dcM+3KHm5RKvqJNrC8
	COsXDgsWHhcngZcCtcNqb740L5yj0cxVOeJ9OIg=
X-Google-Smtp-Source: AAOMgpdYZkOMJ5tGALivYaArZ7uAsqIWcCrRL+vMOBucWtwftaymCWZ0FY+y+FERWjiO5LRzCe0KGQjGA63drSRDgQA=
X-Received: by 2002:ab0:52f1:: with SMTP id
	w46-v6mr4254474uaw.52.1532724429190; 
	Fri, 27 Jul 2018 13:47:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Fri, 27 Jul 2018 13:47:08 -0700 (PDT)
In-Reply-To: <CANmTPBZ5G6nVbe+TtddpDsOC=TwqxcEcPEGivbgzPG8YQ_KNhA@mail.gmail.com>
References: <CANmTPBZ5G6nVbe+TtddpDsOC=TwqxcEcPEGivbgzPG8YQ_KNhA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 27 Jul 2018 13:47:08 -0700
Message-ID: <CAJ86T=X5L+2ZqDh2P=ODhMB8-eMNiUhAHFZbvRaK=b1g772evg@mail.gmail.com>
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
X-List-Received-Date: Fri, 27 Jul 2018 20:47:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 27, 2018 at 1:07 PM, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Hi,
>
> When I removing syslogd from busybox, I can compile with no error
>
> $ bitbake -c compile busybox
> Loading cache: 100% |####################################| Time: 0:00:01
> Loaded 3082 entries from dependency cache.
> WARNING: No bb files matched BBFILE_PATTERN_phytec
> '^/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-phytec/common/'
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-16.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "imx7d-phyboard-zeta-001"
> DISTRO            = "fsl-imx-x11"
> DISTRO_VERSION    = "4.9.11-1.0.0"
> TUNE_FEATURES     = "arm armv7ve vfp  neon        callconvention-hard
> cortexa7"
> TARGET_FPU        = "hard"
> meta
> meta-poky         = "HEAD:78890ea22750804e3e9113e76f7ca3d7234c8342"
> meta-oe
> meta-multimedia
> meta-webserver    = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
> meta-freescale    = "HEAD:a398b50b7fc084a9e68cc3000c218d5028522a25"
> meta-freescale-3rdparty = "HEAD:68314612e236cab1da82d72a0da62635a3523f84"
> meta-freescale-distro = "HEAD:cd5c7a2539f40004f74126e9fdf08254fd9a6390"
> meta-bsp
> meta-sdk          = "HEAD:daba3340ecd8b358e0c6c415baeee0fcae95c525"
> meta-browser      = "HEAD:10f6e3778d823ee1be106c126216c6f941088fbf"
> meta-gnome
> meta-networking
> meta-python
> meta-filesystems  = "HEAD:fe5c83312de11e80b85680ef237f8acb04b4b26e"
> meta-qt5          = "HEAD:ff073f04109900fc07bf81e2f1df63c626caf342"
> meta-phytec
> meta-phytec-fsl   = "HEAD:f9897a4e06f43184a71d315cec4a412a28baa59b"
>
> WARNING:
> /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb.do_compile
> is tainted from a forced run
> | ETA:  0:00:01
> Initialising tasks: 100%
> |###########################################################################################################################################################################|
> Time: 0:00:01
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Tasks Summary: Attempted 234 tasks of which 232 didn't need to be
> rerun and all succeeded.
>
> Summary: There were 2 WARNING messages shown.
>
>
> When I build my image for my machine, I am getting the following error:
>
>
> WARNING: busybox-1.24.1-r0 do_package: busybox: alternative target
> (/etc/syslog.conf or /etc/syslog.conf.busybox) does not exist, skipping...
> WARNING: busybox-1.24.1-r0 do_package: busybox: NOT adding alternative
> provide /etc/syslog.conf: /etc/syslog.conf.busybox does not exist
> ERROR: busybox-1.24.1-r0 do_package: SYSTEMD_SERVICE_busybox-syslog value
> busybox-syslog.service does not exist
> ERROR: busybox-1.24.1-r0 do_package: Function failed:
> systemd_populate_packages
> ERROR: Logfile of failure stored in:
> /opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.30442
> ERROR: Task
> (/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/recipes-core/busybox/busybox_1.24.1.bb:do_package)
> failed with exit code '1'
>
> Any hints?

It looks like you're using morty, which pre-dates busybox syslog
"officially" being made optional:

  http://git.openembedded.org/openembedded-core/commit/?id=9732a2ba2edf2607e61ae4fe0d65a02b7918cfe7

If you can't update to a newer release you could try backporting the
above commit.

