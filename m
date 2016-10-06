Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1896DE00503; Thu,  6 Oct 2016 03:28:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f68.google.com (mail-it0-f68.google.com
	[209.85.214.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E262BE0043B
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 03:28:41 -0700 (PDT)
Received: by mail-it0-f68.google.com with SMTP id o21so1534829itb.0
	for <yocto@yoctoproject.org>; Thu, 06 Oct 2016 03:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I8A+STd5Gk0mqS7+D0xebyJ0MkdBI3EYDrJ9vwXAV18=;
	b=Yzzu33dYtOCWxD6dyBON16xmU9mk68PJA8/DcoU9vsysEeVKBLDDhofC+HSZ/BdiGc
	ynnDgtakcXhXK987ILT/mn/duWEfBpIE5x7W/KzltH2rVhzheraayj99buoSPUWE+N5H
	nOwIQq99keVZUUQTVGYvOgPMcgxNIHlfNIlrhEszjO+pbfYbaKNr1j0pW7d/v1h5HJGr
	Iej1RvaXVfMfREppizC/VDNspnvy7tbPEgtH/w7qB9aJpYPjuOcGNCzufNuxEGM08o/W
	8D76xtnVMcDsFfwKdHRqP5W6E0/6QrEVIEQmDsYjWGinqIzdKvAwxlfQLMRKrlzYZLu5
	eoow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I8A+STd5Gk0mqS7+D0xebyJ0MkdBI3EYDrJ9vwXAV18=;
	b=JgXDGtTggdJ1SDY1WedwbovMfIY18EICBnZNOOKRP9AVqdhALgz1WuH+qnM/rYjCCv
	mS349I2SI0novhPdeUBc8hrTBnkwV4+Nrz4oDWt7LFnL6Cc/Ds0vZyYgUhc8Gwsaj1UW
	8ozJcD/EmMZ3FV+aLQ+6ikzWqgGLwE3ZZd+LVcCN74NozmtliHZqebZNrkYAfM1P3RAU
	s5suyhgoScybeljZpzzxGjpBDo77iXLn+2uOCLmQL6X4YRFTYGY9JQwiNXsHIXwftSqG
	hDh/R7qp5xf6ivJ6Y4kC6A0awRE5K92L5/cWZvpLiyVjaVFmAHN9rrWoYZHCJME7a3Pv
	vRdQ==
X-Gm-Message-State: AA6/9RkgdUfI8C9l4xnZf2iUkWNw0T5QvcqySQ2WggJnkT80/UTRTIRzXzj+a9Ta5yUAxaaHL/4Z5V8p0ABfkw==
X-Received: by 10.36.220.193 with SMTP id q184mr33905844itg.17.1475749720747; 
	Thu, 06 Oct 2016 03:28:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.60.73 with HTTP; Thu, 6 Oct 2016 03:28:40 -0700 (PDT)
In-Reply-To: <20161005150044.GA18711@openSUSE-i7.site>
References: <20160913020611.9265-1-net147@gmail.com>
	<20160916172859.GA27043@resin>
	<CAHUNapRt_6puKt9Pfj1Km-RHxJgqJ94XfYjKZUDkDHMRrDhCAQ@mail.gmail.com>
	<CANwerB1SA6=J2D+NKazpAScs5kymU4WJoADtc6ios=ywgwkk5Q@mail.gmail.com>
	<20161005150044.GA18711@openSUSE-i7.site>
From: Jonathan Liu <net147@gmail.com>
Date: Thu, 6 Oct 2016 21:28:40 +1100
Message-ID: <CANwerB1U1apu+kR+LbKM_-8oLuGqyEYChdCwwbnKt+ToWid37A@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Thu, 06 Oct 2016 10:28:46 -0000
Content-Type: text/plain; charset=UTF-8

On 6 October 2016 at 02:00, Trevor Woerner <twoerner@gmail.com> wrote:
> On Wed 2016-10-05 @ 11:01:15 AM, Jonathan Liu wrote:
>> See if the following helps:
>> bitbake -c cleanall core-image-minimal && bitbake core-image-minimal
>
> Odd. I had started this email to say that this wasn't working (since this is
> exactly what I had tried a couple times over the last several days) and I find
> I can't reproduce the issue.
>
> I was able to reproduce the issue a couple times earlier today, but to write
> this email I updates all repositories. There was no change (since yesterday)
> to meta-raspberrypi but openembedded-core had updates, and some of those
> updates required an update to bitbake. Now everything seems to work.
>
> I'll keep an eye on it ;-)
>
> Thanks and best regards,
>         Trevor

I ran into this issue again after wiping my build directory.
I suspect it may be the kernel version checking logic causing the issue.

For a clean build directory:
$ bitbake -e core-image-minimal | grep ^RPI_KERNEL_VERSION
RPI_KERNEL_VERSION="None"

For a used build directory:
$ bitbake -e core-image-minimal | grep ^RPI_KERNEL_VERSION
RPI_KERNEL_VERSION="4.4.16"

Regards,
Jonathan

