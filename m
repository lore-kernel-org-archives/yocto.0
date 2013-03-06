Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9DC9DE014E6
	for <yocto@yoctoproject.org>; Wed,  6 Mar 2013 10:20:46 -0800 (PST)
Received: by mail-we0-f169.google.com with SMTP id t11so8898872wey.28
	for <yocto@yoctoproject.org>; Wed, 06 Mar 2013 10:20:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=UwvJp+hvBt5peF9TDehe0r4nB6r0/NlVXVWGYk8qN3I=;
	b=Je2mYdbtHYgKYT9zlJdmk0WWkBJN4z8zWwmiuOAHOEF/zc89EkYjJlHccOJyBMWqkD
	hfj73fzQ6Fal63mC9ZnbOCAtQ30kEyU6Dp3X4GQ/e4BBA3gxkUhB0+uYfqKt7BNX9QO8
	mV2+RllRP9t4nIFbJ0FD40s8VuBYNbKdK7QL1O4Jovhh0NXjjr5USMjf/lut5HYCbLrv
	cuETqHLozv6lbmGbyWmhpzEEqYU5jfRLx0hTvrgN8XRn7k8GPNs2vKznv8VDFWaLJsQI
	Sus4an8s/Z0KYrs9g9bZ9RAQ4xrhX9YfAlxmH/bOL/ESx7BND5F8YCbIZTzJv3UPZhZi
	CImw==
MIME-Version: 1.0
X-Received: by 10.181.13.175 with SMTP id ez15mr28054260wid.8.1362594040866;
	Wed, 06 Mar 2013 10:20:40 -0800 (PST)
Received: by 10.194.45.100 with HTTP; Wed, 6 Mar 2013 10:20:40 -0800 (PST)
In-Reply-To: <80BEC9F1B32C495FA608D0DAF85DF5FB@PAULD>
References: <80BEC9F1B32C495FA608D0DAF85DF5FB@PAULD>
Date: Wed, 6 Mar 2013 13:20:40 -0500
Message-ID: <CAHUNapRO3tUygFJp888R3thLDtBUyE7+zH00Wts-kTh4YHppog@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Question about file systems
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Mar 2013 18:20:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Mar 5, 2013 at 9:20 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> So I guess the questions are these: Are ext2, ext3 and ext4 all equally
> likely to need to do an "fsck" after a disorderly shutdown? Do they
> typically take different amounts of time to do an "fsck"? Or is the
> journaling of ext3 and ext4 something that should be avoided on a flash
> drive at all costs, even though my app won't be doing much file access?

With the embedded project I work on, I had started (roughly 7 years
ago) by using ext2 on our flash drive. I too found that my users
always "yanked the cable" instead of trying to perform any sort of
orderly shutdown. Technically this device is meant to run 24/7, but I
found that several of our field reps were convinced they had to
power-cycle after every configuration change (which I still don't
understand... do they do that on their own computers?).

Anyway, with ext2 we would get irrecoverable disk corruption, or at
least enough corruption that the bootup would halt, waiting (forever)
for the user to "run fsck manually" (our device has a total of 4 LEDs
on the front panel as the only feedback, and they don't "come alive"
until user-space starts). So I switched to ext3 around (roughly) 5
years ago and have not once seen an incident of a failed bootup due to
disk corruption/fsck problems.

Yes, it does make the duration of the bootup non-deterministic, but
for our product bootup time is not a priority.

I can't say as to whether ext4 should be used instead of ext3 or which
is better or faster. All I can say is if your users are "yanking the
cable" you may want to stay away from ext2. Also some sort of fsck is
always run on the next bootup when power is cut off unexpectedly.

