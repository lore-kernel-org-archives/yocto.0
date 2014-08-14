Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2835E00781; Thu, 14 Aug 2014 07:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E0ECE0074B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 07:05:16 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id mc6so1107452lab.6
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 07:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=C7Uvi9JoaD+ndgi5pws9+o+RFOwKK3jjJC57j5vdFGU=;
	b=rexaxvj1dMsbCE/AWEglU2WIulDYUhOdNsvDka6xoQpoYCjMTnJoNWAV+7B3R3aLwH
	G6+f07FJXm9uLNXgezdtBI4kJrRKQnqsTOP1j4wr9Oz2bIIFjyE++iTHAMK01kpu24Gh
	A+oNv7YqjorLEXIKD5C2VzEb9EhngXjryDGGxgtZ5XBsnYtSJsBs4hi2CZ+oarXRISRF
	XKsWU5d9lkjHnC10xj6KNa0w5Z27n0DrCaEJ+qaoqETm+//mZvOWH8LXBz1zswXtk91+
	5WN9VmaeVeNkp/GBWnxsXAUw0OWlzUyvTbUe5q9UmTD9nmhQI0q88Z7OeKh7UEdR0iCG
	gnRg==
MIME-Version: 1.0
X-Received: by 10.112.1.136 with SMTP id 8mr5278135lbm.55.1408025115023; Thu,
	14 Aug 2014 07:05:15 -0700 (PDT)
Received: by 10.112.202.67 with HTTP; Thu, 14 Aug 2014 07:05:14 -0700 (PDT)
In-Reply-To: <53EC9DD8.6030207@mindchasers.com>
References: <53EC9DD8.6030207@mindchasers.com>
Date: Thu, 14 Aug 2014 10:05:14 -0400
Message-ID: <CADkTA4NATGAUXgh8YwapLuqgH1Oiod7ik5LkJMYn5mEePOM-6Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: mpc8315e-rdb is probably a poor choice as powerpc example...
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
X-List-Received-Date: Thu, 14 Aug 2014 14:05:22 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 14, 2014 at 7:30 AM, Bob Cochran <yocto@mindchasers.com> wrote:
> As most of you know, the mpc8315e-rdb is the powerpc reference platform in
> meta-yocto-bsp.  This is old technology and not a good representative of
> QorIQ.

We've been working with FSL to find a suitable replacement for some time, and
the discussions were happening in the sprint, but stalled for the summer months.

>
> I suggest something from the P or T family be used.  The P1010RDB is
> probably a good choice, but others may prefer an SMP machine.

The choice is equally about the machine and about the ability to purchase the
target at a reasonable price. We don't use hard to find, or expensive boards.

So if you do have specific suggestions, and purchase information, send it along
and it can be rolled into the ongoing discussions.

Bruce

>
> I'm willing to help to make it happen.
>
> Bob
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

