Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CFCCE00CC2; Thu, 21 Sep 2017 06:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A471E00C14
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 06:29:42 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id t127so4037606ywg.4
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 06:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kucnLSdZJvnAG67wcSdFE8bEC2M2McDnB50u90tCu6k=;
	b=RP06W+JF4Tg+4vw97kb54C5W9vudkG5FgxHppB16LosEtGzLYsMsuSUBDlKLA2Bmcn
	Xtrm9fTp3TztjJWY/3fAfwrBtVucI1QJguul3btSFXcDj5FR4c3ClSljbDQ4+36EM+pJ
	WT53ShB/Tlhui22otdmM/ycdfcrq3zZGF3DJ2f1LQtBKdCliSJgxLI+hwOU5ag3I1KX+
	85Aw1y5R1BJxXfrL+k0chRG8r6pQDNXOsviVbwEx1vyH7mnfWv9v/88F9ApI5RJ3uAke
	jogoPJWLQQtO2CS/j3IJ7g4p+7ql3qfq4HN7s1b8844uFgp+cIsBjn6ftiF9dQ3O7piN
	RKWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kucnLSdZJvnAG67wcSdFE8bEC2M2McDnB50u90tCu6k=;
	b=cLQl80bi3Glfz7vhqtguwsKNX0YjlpXyArjf4bkvLjbpvDqvs4zFXq27Jg01qUssxs
	ShJQ9ZeNWNvGZwmXRI2HO4WvC6YWRs32M62o02zry9dapytbpaVP4gOeglyNC9/lA3RP
	QyDpaOpe8cGj38NbNczuu0G7VQq4UrAEUf1PxUFADhm3AddmjFwbnad0+diXa6byy5z9
	zjoAHAKKkIIrLbLfn/rDuHXb4aKTZqDVFF6VfpPfMZ8akn9N896cYtnb6GCgnltenjtl
	Zc7v4T6Xu566TEKCUMauVWKO+OVYaUOeXdonqGkqedAlrUYOeWDDvzQA85syG0hW76dB
	xSpw==
X-Gm-Message-State: AHPjjUi7jxw3meOsXMd3hlHUF+1TWxNWYOg/6yusn8lN3xTK6CS3CDZk
	SUCoDmQq20VOQ1dEmdS1I823MWQm9MBzWiLW4hE=
X-Google-Smtp-Source: AOwi7QBogotiaYC+xsqyEfCI+Ftd4SC88N3geTYC84tYLb3xHr/dUevVILjIyYOFFwc8gm2T6PyaW6wcjBRj9E97m0w=
X-Received: by 10.129.178.69 with SMTP id q66mr1608809ywh.290.1506000581184;
	Thu, 21 Sep 2017 06:29:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.216.86 with HTTP; Thu, 21 Sep 2017 06:29:40 -0700 (PDT)
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Thu, 21 Sep 2017 18:59:40 +0530
Message-ID: <CAGsrAHcGAo=L8Oy3aWRwUD8QL=iQ-Hw7bc21X8HX-sOGVL31RA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
X-Mailman-Approved-At: Wed, 27 Sep 2017 08:04:27 -0700
Subject: do_configure error
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
X-List-Received-Date: Thu, 21 Sep 2017 13:29:43 -0000
Content-Type: text/plain; charset="UTF-8"

Hi all,
i was trying to build rpi-test-image for my rpi3.

i'm getting the following error...

root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k rpi-test-image
Loading cache: 100%
|#####################################################################################################################################|
Time: 0:00:01
Loaded 3160 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
meta-raspberrypi  = "pyro:8ba2d6fc80b31c87d25c87c863e2a77752b07c3c"
meta-qt5          = "pyro:c6aa602d0640040b470ee81de39726276ddc0ea3"
meta-qt5-extra    = "master:05d63591612623ce7751f5536690c40998188ad2"
meta-oe
meta-networking
meta-python
meta-multimedia   = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"

Initialising tasks: 100%
|################################################################################################################################|
Time: 0:00:11
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
 configure: error: you should not run configure as root (set
FORCE_UNSAFE_CONFIGURE=1 in environment to bypass this check)
| See `config.log' for more details
| ERROR: Function failed: do_configure (log file is located at
/u/my_poky/poky-2/poky/build/tmp/work/x86_64-linux/coreutils-native/8.26-r0/temp/log.do_configure.17147)
ERROR: Task (virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/coreutils/coreutils_8.26.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 4168 tasks of which 4167 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  virtual:native:/u/my_poky/poky-2/poky/meta/recipes-core/coreutils/coreutils_8.26.bb:do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

i checked for same branch while cloning the data, except for the
qt5-extra layer all are pyro.

what is that i'm missing?

