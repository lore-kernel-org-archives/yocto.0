Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C87D9E00443; Wed,  4 Jan 2017 05:37:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99929E003DB
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 05:37:36 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id n85so33419303ioi.1
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2017 05:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=4EiwMtBriMWP3sKY31gycpajXTw5MrZYOYT+xipWHhs=;
	b=fcJRx81HSU//w5xWMBizSdzcBYIGqEI3DdRRu1HHuDw1UOqeHu3gaEE4gByfJZXH9V
	bZuP1YztQveAHMSYtfVeHNj55+bxYBpXbFLUONDHbr6PG3IWjJME5zNUoSUq77h2cJ8U
	p3Svf3Unm6jcyvc9cLXIw1+PX6Y2M2h+0HTwtgh2QCkjtDGk2AbLJy9z7YBSj6U4Y0UD
	jVrqz2bPM1FYQhZm5mFC8FbpJ1APJeb8uQOLbxfj8J6jwTNY3+qwLtCFDazwOHXk7RmF
	8nQWb5Q2rdcoeCoU6OJ5an51iNABPjKkzLZ16InqSIIudcO/i05Eimh+8JLonSkPoCab
	Bsgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=4EiwMtBriMWP3sKY31gycpajXTw5MrZYOYT+xipWHhs=;
	b=NbWscxNE2ba0esHLS2GVekB5eHkQ3klQHYrSfmNfeG9hCGVU2I5gEt+1cQLtM2rTXi
	g6nSNbWFE+5SvWmo5HHTJBj7RKB47JsL2eznByIm1q0L7AWKGMQkYK5ehDTwIiWa+L6X
	n/wMAuJ5KPYOoVXYKJBsTFnC1nASgTt9iCNekCL4nyvzYkkLHgla49Sc93TvzyvW14YL
	X9YR0BDRKbLXy+nodQtdW3RxVl4s4P1yMGXjYEjaRTlZIBMmGpfkzPp2Z9JGR3ZhwUKH
	9BgLHg3W6QClsgQsqW7SgqOvup6cUOLf48/73qXlVhMJYxNc6TqhQXyIINRrR68Oig9l
	rTng==
X-Gm-Message-State: AIkVDXK2hRBtOZF4thjh9XCKvfnnLFlcaJjBy4awc/l5a4CxCKOYmhYPow5Q2ohEKyQhDw==
X-Received: by 10.107.161.78 with SMTP id k75mr63152868ioe.39.1483537055620;
	Wed, 04 Jan 2017 05:37:35 -0800 (PST)
Received: from openSUSE-i7.site (76-10-182-217.dsl.teksavvy.com.
	[76.10.182.217]) by smtp.gmail.com with ESMTPSA id
	l74sm34198931ita.15.2017.01.04.05.37.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Jan 2017 05:37:34 -0800 (PST)
Date: Wed, 4 Jan 2017 08:37:32 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170104133732.GA11738@openSUSE-i7.site>
References: <20170103193831.16829-1-twoerner@gmail.com>
	<20170103193831.16829-2-twoerner@gmail.com>
	<CALbNGRTSd1DWt_kK6esOjBT0HFqRVjcgwvJ+RRyXKs6q1vX83g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRTSd1DWt_kK6esOjBT0HFqRVjcgwvJ+RRyXKs6q1vX83g@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-rt: add
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
X-List-Received-Date: Wed, 04 Jan 2017 13:37:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed 2017-01-04 @ 01:05:27 AM, Andreas Müller wrote:
> On Tue, Jan 3, 2017 at 8:38 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > Add an -rt kernel option for Raspberry Pi that includes the FIQ patch which
> > adds stability to the -rt kernel (with full preemption enabled) and is an
> > improvement to simply disabling FIQ on the kernel cmdline.
> >
> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> I played around with rt-kernel too but had no solution for the crashes
> so far. Will test soon and hope you are my hero..

Without any tweak I couldn't get a kernel with CONFIG_PREEMPT_RT_FULL=y
enabled to run for more than 10 minutes before failing.

Simply adding the two kernel cmdline options to disable the FIQ completely
also works, but (compared to using the FIQ patch) simply disabling the FIQ
gives results from cyclictest that aren't as good as the results from using
the FIQ patch.

I ran one test on a raspi3 with the -rt kernel, with CONFIG_PREEMPT_RT_FULL=y,
with the FIQ disabled from the kernel cmdline, running both:

	# stress --cpu 5 --io 4 --vm 2 --vm-bytes 128M&
	# cyclictest -p 80 -t5 -n

It ran for 3 days successfully before I shut it down.

I then ran another test with everything the same, but instead of a disabled
FIQ, I updated the FIQ patch for raspi-4.4.35 and applied it. The above
stress/cyclictest ran for 6 days successfully before I stopped it.

So I have pretty good confidence in this recipe ;-)

