Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 034E8E00955; Wed,  4 Jan 2017 05:42:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F406E007BA
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 05:42:05 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id n85so33428818ioi.1
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2017 05:42:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=M4xcRgS/H6TN6jIOvlsgSL+eUzJ52eCAszWoBlDkGjg=;
	b=esJfSPeEyDACuiAI54nDfpNuGvEIDxYGtizPeOgSEUVbqf+yKwkWex1rvrldAmccUD
	yI0qafabbK0nkg7kJBksa78iZUtUK3EeRw57CU9F/1e9/BDEBYh7NQwE6NXmGAYlYMy9
	k9Nkiv7EUXmAg5IWVW/fj2vaRN/RIDNpXhL/lmHTRifMLF1KPfDQo7q4a+QUYlUYN8aX
	+pS3BxmAy6hxIyNE9HSo/6DjQO7her8kO3q1FiB06dOGOqd4R0YzmsP6xAtsyhj6SSpF
	gutuu/KXT6tgRkN77janHM4dLVep8vYOTSm+zX1w7LDsBtgxhSMLJYNrC6DQ1+bNurcR
	CUxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=M4xcRgS/H6TN6jIOvlsgSL+eUzJ52eCAszWoBlDkGjg=;
	b=ppRjaEumJb70IH8fbUx3sYqglS2OzPBLDN9dAKRfL9h+JkOL+Mp2nYuWuYH44+4hyi
	o2ZiPJODq+PL72Kn5Q0qVmqln+xVkGxpGgTuWL3C6/nndZLMlFrULc4HgJ8V6ofGlKC2
	AT2322Ti2oIRgFpeEllpqHvpxQsqFORDR9dHWR0Azo9ul2/gycQHlz/QBshdHHpJO09/
	Xq3j4AGcpERP0mqXv8gicfG1p4/qmQR7+19SuR3hmw7WJcLvWnxYj8FkTMyJFu5hNvZ6
	3a4B5du6kdcEwKu05nwWy50QP703cTfPZrC6+Iu6ugKFNTen33dL3SgWeToPYThRFmxa
	HwXw==
X-Gm-Message-State: AIkVDXJaWngzeJvNWBIaFxV8YG43ay37gWxnc4vHSGCRtrTk08fyNyvgoVuSPfUIkvmqnA==
X-Received: by 10.107.168.27 with SMTP id r27mr44728634ioe.133.1483537325548; 
	Wed, 04 Jan 2017 05:42:05 -0800 (PST)
Received: from openSUSE-i7.site (76-10-182-217.dsl.teksavvy.com.
	[76.10.182.217]) by smtp.gmail.com with ESMTPSA id
	k205sm34216989ita.15.2017.01.04.05.42.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Jan 2017 05:42:05 -0800 (PST)
Date: Wed, 4 Jan 2017 08:42:03 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170104134203.GB11738@openSUSE-i7.site>
References: <20170103193831.16829-1-twoerner@gmail.com>
	<20170103193831.16829-2-twoerner@gmail.com>
	<CALbNGRTSd1DWt_kK6esOjBT0HFqRVjcgwvJ+RRyXKs6q1vX83g@mail.gmail.com>
	<CALbNGRSjfwYLCMAgzFHbezZ49or4G6pELoE_jRrJDE0Gk94O=w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRSjfwYLCMAgzFHbezZ49or4G6pELoE_jRrJDE0Gk94O=w@mail.gmail.com>
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
X-List-Received-Date: Wed, 04 Jan 2017 13:42:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed 2017-01-04 @ 04:01:36 AM, Andreas Müller wrote:
> On Wed, Jan 4, 2017 at 1:05 AM, Andreas Müller
> <schnitzeltony@googlemail.com> wrote:
> > On Tue, Jan 3, 2017 at 8:38 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> >> Add an -rt kernel option for Raspberry Pi that includes the FIQ patch which
> >> adds stability to the -rt kernel (with full preemption enabled) and is an
> >> improvement to simply disabling FIQ on the kernel cmdline.
> >>
> >> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> > I played around with rt-kernel too but had no solution for the crashes
> > so far. Will test soon and hope you are my hero..
> >
> Have a rt-kernel on raspi without crashes. FIQ patch is it: Thanks so
> much for sorting this out!

The real thanks should go to Oussama Ghorbel at the OSADL who is the person
who investigated this problem deeply, discovered the root cause, and created
the fix.

I just simply took that work, tweaked the patch so it would apply to the
raspi-4.4.35 kernel, and made a recipe for it :-)

