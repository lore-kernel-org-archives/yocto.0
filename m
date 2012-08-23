Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F34DE002A6
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 11:02:13 -0700 (PDT)
Received: by lagr15 with SMTP id r15so697598lag.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 11:02:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iwtdjhQSfqf+vbiI44IHnpxeMCSRfjXtzImr1SjQmxQ=;
	b=m7HNjkCPuhDFvfQupKk9dXZKyzGQPVOYXLSHUCTI248R6y2zmgoGn4mxQfqfARi5Jv
	x3JQK6dKJ1TpYLH+u/t3C5Vk4VU944rYPpjS4aXLysffnunyTpp62fs3c8VKNhqdpFCM
	LS/7J39bkqLjv8BMSM5xBZTi9O3BzbPnBvhJjpGwD7nXb9fwZRWdwjo7iNueQ7J6UE9P
	dPeAM7xY334Vn6q/Qs/8hyqhcswVg6ueUnsdVo18I/d3ccxikHsNJP3IAcqEIJb7mbeS
	bTfDy6JMJ245NFH4OzkVTpMuOY3YuKF5hVzzR6sewqzZ0mFVhbdqqITaelAZSr73xBUu
	xQXw==
MIME-Version: 1.0
Received: by 10.152.114.3 with SMTP id jc3mr2709856lab.11.1345744930078; Thu,
	23 Aug 2012 11:02:10 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Thu, 23 Aug 2012 11:02:10 -0700 (PDT)
In-Reply-To: <11217021.C8RtDxiqPt@helios>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<11217021.C8RtDxiqPt@helios>
Date: Thu, 23 Aug 2012 14:02:10 -0400
Message-ID: <CAHUNapRKAxV85L8Aix-YF5yV4-sqN5QR_J5L0O3KWRkw1Eq74g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: of recipes and packages
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
X-List-Received-Date: Thu, 23 Aug 2012 18:02:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 23, 2012 at 3:14 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> In this
> instance we can change it very easily in the BitBake help text and we should
> do so.

So should I send in a patch against the Yocto Project's
poky/bitbake/bin/bitbake or try to have it accepted upstream?

