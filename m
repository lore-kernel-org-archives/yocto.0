Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74A0CE00887; Sat,  6 May 2017 10:15:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB04E0050E
	for <yocto@yoctoproject.org>; Sat,  6 May 2017 10:15:25 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id m123so28828133wma.0
	for <yocto@yoctoproject.org>; Sat, 06 May 2017 10:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5tudpFxvoYLCuKxY44jTXkDopDq3GoDMltAqRHNDbPQ=;
	b=reEcgmNp+UjmaY8jKVQS6vmU8jw/vR0MPR+5vAn9XU8xNhqTfxiwPdcWV8w+aSOQ3d
	AhwvpDOmiuPMNBXF+Zs+JRCClUilwM0Kn+WXTTf+1ikNxrXAOBsKcU1lb8u3avUMSbLP
	M5wgAJwh6o76yHOZ47hu7xpWWC4YE8FhBrHSTNXxZkPJE55fusoUd0HmJbMxamU5lhwQ
	rgXNjqMuHUkpTu6UkqaikU1639dynXJcVIxk7C9BoK3dloW0hDDBdOIVBGc9tZFQDd45
	hIpSBwV4j5BT+ZQEEywSJ4WzNNy61AOWxNXd1ejWJtoFGH9mPa9UovGwfntneAf3JS/V
	dXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5tudpFxvoYLCuKxY44jTXkDopDq3GoDMltAqRHNDbPQ=;
	b=e/NXhOoIs3F8hBds7lNJCNlNsxs0o3qD52JSepzyeRjfv72EL9FgUWJBmKoDLaa+0l
	P/fX4XE4VhLLpUp7s687LE08PIhRzUv6UHaJ3A5/6bEgO/h5FyylLwRAoWOIia+RuHZt
	he85kXAzkXIM1ZkHgoHJJmPDASUdWs/kqYNytzHOsSvO8MEpWnzVSlYGFy6McuuglrgK
	erZ6rulg1Wnop3xkaICKS0qaMt7vWGkmw41lMKW4sd/zdb5sd0CQY8zjHJfJleS9Z2HP
	W8LNLWaaJ3rM5/kDRbX2A4seGLVjp30P1daF4XNctJ+2YupS1B7wYuYbbGJZag+RQgp6
	d1hg==
X-Gm-Message-State: AN3rC/6YHyhvmo/UdSwOADtu5D6szDq3m+YIE4LnyvxGsXdO3gK6OJJI
	jZzs25P9d1yf/XZzYluLtsPcPQNjNw==
X-Received: by 10.80.147.195 with SMTP id o61mr6551829eda.178.1494090924495;
	Sat, 06 May 2017 10:15:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.139 with HTTP; Sat, 6 May 2017 10:14:54 -0700 (PDT)
In-Reply-To: <CAC+thW1Ehz4_s6pFYmNPPtfbtwoxVQXer-FR5YKEYgFP07KUPA@mail.gmail.com>
References: <CAC+thW1Ehz4_s6pFYmNPPtfbtwoxVQXer-FR5YKEYgFP07KUPA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 6 May 2017 10:14:54 -0700
Message-ID: <CAMKF1srwj+dQ-Mwf3L1g7C_osaKUazBezP-fmzknOWJVbOTh+A@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] how to apply custom kernel configuration?
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
X-List-Received-Date: Sat, 06 May 2017 17:15:29 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 6, 2017 at 9:45 AM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi!
>
> I was wondering how to apply some extra kernel configuration from a custom
> layer via a bbappend. I know that with meta-raspberrypi there exist some
> variables you can define in local.conf that will drive how the kernel is
> configured: but what about some very specific device driver nobody than me
> is interest in? To me it seems it doesn't deserve a dedicated global oe
> variable.
>
> Some investigation showed this topic already came up on the list from time
> to time in the past (most recently in [1]). To me it looks like there is
> some common desire to get rid of the current "magic" carried out by
> linux-rpi.inc by moving the linux-raspberrypi recipes into the configuration
> fragments style.
>
> In the short term, my question are: how do you guys manage to add your
> custom kernel configurations? Do you rely on full blown static defconfigs?
> Have you found any reliable way to do "differential" configurations with the
> current state of metadata?
>
> In a longer term, I'd really like to help moving towards supporting
> configuration fragments for linux-raspberrypi, but I suspect it'd be a too
> much hard task for my current understanding of the whole kernel
> configuration workflow. Do you know of anyone already working on this or
> does anyone have a clear idea of what is needed to get the work done? Some
> times ago I tried to resurrect [2], but with no luck, probably due to some
> changes that happened in the linux-yocto files in the meanwhile.
>
> Comments from gurus are welcome! ;-)

I have been hinting at using yocto kernel tooling. Idea is worth a pull request
care sending one ?

>
> [1] https://lists.yoctoproject.org/pipermail/yocto/2016-December/033559.html
> [2] https://lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

