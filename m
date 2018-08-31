Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9F9BE009AA; Fri, 31 Aug 2018 03:57:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49AAFE007AD
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 03:57:57 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id 8-v6so20967237oip.0
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2018 03:57:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dZ7h59lUYax01OevEH0/bfm+UXyRDnlqQTCGePoGoh8=;
	b=G761TLpSNEySUnZHxISP/uOEMplbcYGmHAs+G6MLKZCzoGWV+MvoC6ybdOSRrcUeUb
	DOIIX4CWTGyID9TInSwMAUbIgAd53SsZTG0gBOVwh8/rxiDGMdmc6PXdnvb2jSIHUPg2
	tPRM9toITPjJLtZVRjebeU8zxLfnmYkwnoQCpQ4h1/xN3ki7mKBkMREqFnMmDp8ceJFB
	hl0W1dr/ml00eHbUa7ru30QcuxYKCORl7mmriRmEyqkRAWW5xjLfEb+zADaEdg1GjqPD
	hK2F+EC6242Kho4YiT6h9kONX9XBrHVkfGo/H16uyDOazHgIyMbdIjkqmSUXh4ikkFAT
	3NFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dZ7h59lUYax01OevEH0/bfm+UXyRDnlqQTCGePoGoh8=;
	b=ML4L/GGXohe4yG4OqnrciufSwuhig4RV1nStg3S32WXsKCfjD+R331NVsohImKyKxs
	tdy3/8WbbN/nP1A99uuKFNeNFcvEFCwUb8mnl/9l3SkdK5SdhhjqAleAz9JNM5o7T0Fx
	PahJ2y4IzkoBgJF6zrAbUEAJRNpIC88c+yizbH/gAGfkODdc/2eBe1PObGPqYKyqJKFy
	Q6DGzWW1/Kn9NjDl4yXhMcoK0v/oNreLBik9CxrhX6s5oyWI5abyLYRDodracC2KxJF8
	w1bZsypYxboE5968n+yjt3BLtThYvmoO3gN4hqZnyUXDdedRSPgXfmgZE8sx3Hu7bJG2
	5FTw==
X-Gm-Message-State: APzg51ChDFN5zhXRX6Q0VgYCOPZY6lRCf82ffr2SUuVxlH0oFH2SdDyD
	oYigxC4EgGvac56PVso78xtWEHRQR603GK62pFg=
X-Google-Smtp-Source: ANB0VdYB0KghPf+OKbCJB98yhQWrlCrA39Vo6PGf7cwVRz3pLBmUpPKzqTgyFjyQ/3v5bGYpRNtnaymXpaZJAWYqy0k=
X-Received: by 2002:aca:a8c1:: with SMTP id
	r184-v6mr6824220oie.215.1535713076806; 
	Fri, 31 Aug 2018 03:57:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:1645:0:0:0:0:0 with HTTP; Fri, 31 Aug 2018 03:57:56
	-0700 (PDT)
In-Reply-To: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
References: <CAOT_U5ZjnsD9O1qrewUAtqBp+0_306Gx1s1nS8MP3upJpuDiLA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 31 Aug 2018 12:57:56 +0200
Message-ID: <CANNYZj_HLD3qC30b32W-hH2n4QaGYsNQ=XP2Xa1EHcMJny1Syw@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: (How) did you script bitbake/set up nightly builds?
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
X-List-Received-Date: Fri, 31 Aug 2018 10:57:57 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-31 12:49 GMT+02:00 Alan Martinovic <alan.martinovic@senic.com>:
> am just in the process of forming a base for automated nightly builds.
> The goal is to have the build process run every night and report what
>  the status was.
>
> I've opted for python for all the conditionals and checks  and then have
> external
> bash scripts that actually sets the environment and invokes bitbake.
>
> Did it like that because I didn't find a clean way so far to deal with
>
>     source oe/oe-init-build-env
>
> from python.
>
>
> Would like to hear how did you script bitbake and how does your setup look
> like?

I guess you should look at what the Yocto project itself is using:

http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder2/about/
http://git.yoctoproject.org/cgit.cgi/yocto-autobuilder-helper/about/

Alex

