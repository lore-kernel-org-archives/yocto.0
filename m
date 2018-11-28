Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE27AE00C75; Wed, 28 Nov 2018 01:17:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95AFCE00C58
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 01:17:56 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id d19so25007327qtq.9
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 01:17:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gTLnbWsScLl7S19hQTRqu9qIMx6tY5TZr/U5Yy2CST0=;
	b=csyYxIORcTIYIAXa5CCrC+5J7bTAKXuWsM+YOGUQQWSP56ZIPoqplrM2ijuMD7AC4U
	4FINsewbYCWf/5gZEvsYKDgMXS2Tc025mEzLI6HaghAfxGiLWISgYdvlBgBKX0eQVSnO
	AEI96OfUwr8Xyxjn5Ys+FAUbtG5dS5ZyWB3dkZTD1eeWLR702cHdlecBYTILxAVHg3+Z
	zbqgmv6zUYfJ3g9+mYaEgMIpxzuAEYguXQQoeCXMcQL1au4BuJnpRtgUhCnlyixtMp3v
	/vTv2vLBUdPKeG3ebtHapLcGyKvf49L72/ERGgDUHoiItTE4l2Jv0fNjQIBa5Jd883kt
	LkNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gTLnbWsScLl7S19hQTRqu9qIMx6tY5TZr/U5Yy2CST0=;
	b=hFj3SHlYMoi97vONayIhTSGr1qwiQVhbaFwf7AupJX/2R3gtuboqlCdw2S4vpX1VFm
	RiiyEyqnJh5FeD+aR36kN54mTR6VhCgpM3UVKq21MNVZCyO4IUANOccsxAiRFpEoMePy
	TgjRNWkd6y89S5V157d0wdt63Dm0kH6MP2WJKU7MKChXTwjisG3E9gBmO3BNF3qWlvyR
	53NPYGsuMxTd/oQuzirQZvgwvR+vnxvNtZtOwnpE12+P3xY2nJWRrNDFL4tfCFX0RsZ4
	sB6PW09Kp4ukC9UIV/2FDC+GHcr6iqW0A3lEE2jt8xJJVyVL25E+SjttELXR0qKK1mmB
	z9Eg==
X-Gm-Message-State: AGRZ1gJYgUcn2HXOgPMRkXQEh3ZNpHZ3b3oqkEk1xoohltmj9Gb5QAmf
	Bg/2a2IzHZLBAzeBdLDhHnpDsL45riwj12msv7aosLpO2sM=
X-Google-Smtp-Source: AJdET5f32R1K14kO7pmGTKPa349rmdWkda+Vw0t00jKXjj4H8QIbGne7gP24tHJ6mtYuyIcxvcFrDFWl3MuA+UiI8jE=
X-Received: by 2002:aed:3f71:: with SMTP id q46mr34642455qtf.347.1543396675512;
	Wed, 28 Nov 2018 01:17:55 -0800 (PST)
MIME-Version: 1.0
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 28 Nov 2018 10:17:44 +0100
Message-ID: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 09:17:58 -0000
Content-Type: text/plain; charset="UTF-8"

Hello YOCTO people,

I would like to use standard git tool while using all the Yocto
layers. NOT only Poky repository (which, I believe, works all the way
with git tools), but as much as possible with other github proprietary
repos and layers. Since I am not able to execute git commands using
some number of proprietary repos over github.

As example, I'll use meta-bbb repository.
https://github.com/jumpnow/meta-bbb.git, after cloning the following
happens (chosen, since it has at least dozen of branches):

After cloning, I did not get anything from the following commands,
being in the root of the meta-bbb repo, namely:

[user@fedora28-ssd meta-bbb]$ pwd
/home/user/projects2/beaglebone-black/yocto-master/meta-bbb
[user@fedora28-ssd meta-bbb]$ git describe
fatal: No names found, cannot describe anything.
[user@fedora28-ssd meta-bbb]$ git tag
[user@fedora28-ssd meta-bbb]$ git checkout thud
Branch 'thud' set up to track remote branch 'thud' from 'origin'.
Switched to a new branch 'thud'
[user@fedora28-ssd meta-bbb]$ git checkout sumo
Switched to branch 'sumo'
Your branch is up to date with 'origin/sumo'.
[user@fedora28-ssd meta-bbb]$ git describe
fatal: No names found, cannot describe anything.
[user@fedora28-ssd meta-bbb]$

The rationale behind this request: git is the powerful tool which
should work and be solely used for YOCTO layers' synchronization. In
other words, YOCTO should give some tools' (namely git) unification
guidelines in some way. :-)

Thank you,
Zoran Stojsavljevic

