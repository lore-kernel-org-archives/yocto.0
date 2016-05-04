Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88E02E00C66; Wed,  4 May 2016 07:02:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F951E00C4B
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 07:02:23 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id f63so7950823oig.0
	for <yocto@yoctoproject.org>; Wed, 04 May 2016 07:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=TK2E/eoFfy3E6CECwVils5IPu0N4Awz/8ZB9Z6K4J1Y=;
	b=f8iSm9OTyRmTynpTrMAiMhFud+eorjx3HDR5NxIb1T7KWKlh2xNS9uzSd9uX8eYxUw
	cnVpnbk/kP+OTqvxLutQSKShF9dHcR3FDZcpmVImQrHK2sGvgcrrLnaulxBW5XFP0IJY
	ZzQrZMN0DEySS8tuU+nWGgCYu6IKIQb/OLr7iaLwWoAupnoUJcGypLJ2Cccz+ncuimm1
	j7oCD3h7A+kcmXdAjIfq2tJ/zheg3bDZ4WEessBC0CKnciz6G0XnUrFbyZsN6WjSDtzA
	PwZwuKyEDMcLse5kOko7P6BzXx7O3xNHFuX3CKQRKDi/O2QizU9Hn58OJ1sNOEZqhHfX
	j9BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=TK2E/eoFfy3E6CECwVils5IPu0N4Awz/8ZB9Z6K4J1Y=;
	b=T08wLggPOzGzJjVaFdIa5HmierK/pY419TQPABttVhWeyDypm6xUBcNDCzallFKha0
	I99+fH+U0GqI7AxOkSsx6FUjmeyjbZu9j0Q9ccR+7qguy3M5PWe+9M/J3FhTznAHkTlW
	FHTXf4WT60aoYx2mPVhufgAYuVoa6AGthEfEBOhkzceFeP+SLPsumq9yJyfeVaRx8Kv0
	Ymlii23yzLoJb0przUI5V/2jyrzBiT7ZsTVo2fuGrLxSzeXSjlnXSE5+djV1WNlvsxNl
	gDgbwaT3zaexdJ2Pic9jbAKdoqRrk4963ftRgo/rFt4JcQ6IloJy2N9TC3htduI7E+0A
	M3Ig==
X-Gm-Message-State: AOPr4FWMCotwrwtoOgemnwNCv92f/IB0vI8gIPEuHMAVUfgKJuYzN/R5PPCyHTjrjF20DDMIGetB8LV3OieFPA==
MIME-Version: 1.0
X-Received: by 10.157.13.227 with SMTP id 90mr4433676ots.79.1462370543164;
	Wed, 04 May 2016 07:02:23 -0700 (PDT)
Received: by 10.202.45.65 with HTTP; Wed, 4 May 2016 07:02:23 -0700 (PDT)
Date: Wed, 4 May 2016 08:02:23 -0600
Message-ID: <CALRMKQrH5LpDC5pGK_ef_r2rxPC1t7vTqb=nB=1Go=xx7m3VtA@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Problems building core-minimal-rt on Jethro (2.0.1) and Krogoth (2.1)
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
X-List-Received-Date: Wed, 04 May 2016 14:02:27 -0000
Content-Type: text/plain; charset=UTF-8

My project will need to be real-time (we're probably putting a crystal
controlled clock in), so I'd like to have the real-time kernel.  So,
I've been attempting to build core-minimal-rt on both 2.0.1 and 2.1.
I get errors on both, albeit different errors.

Jethro:

On 2.0.1, the do-patch for linux-yocto-rt-* fails, ultimately with the
message: "Your branch is behind 'origin/standard/preempt-rt/base' by
691 commits, and can be fast-forwarded." followed by "(use "git pull"
to update your local branch)"

I get this error on all distros, including poky-bleeding.  I've not
been successful in disabling the mirrors just for linux-yocto-rt.  I
am now trying a build, albeit on my slow machine (two cores, where if
I don't force bitbake into running one task at a time, it hangs),
after deleting everything except the conf directory to see if that
makes any difference

Krogoth:

On 2.1, the error message occurs very quickly:

ERROR: Nothing PROVIDES 'linux-yocto-rt' (but
/home/ron/yocto_2.1/poky/meta/recipes-rt/images/core-image-rt.bb
DEPENDS on or otherwise requires it)
ERROR: linux-yocto-rt was skipped: PREFERRED_PROVIDER_virtual/kernel
set to linux-yocto, not linux-yocto-rt
ERROR: linux-yocto-rt was skipped: PREFERRED_PROVIDER_virtual/kernel
set to linux-yocto, not linux-yocto-rt
NOTE: Target 'linux-yocto-rt' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['linux-yocto-rt']
NOTE: Target 'core-image-rt' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yocto-rt']
ERROR: Required build target 'core-image-rt' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-rt', 'linux-yocto-rt']

---

Any clues as how to work around either?

Ron Oakes

