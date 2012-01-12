Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE166E01376
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:20:30 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkvi18 with SMTP id i18so2065672bkv.35
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 08:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=uLEBZOBkvKm2H/SyuNKmytMLAHYE5keH5sNF3bVceHg=;
	b=bFeuJwp57B5/G72U2ev+iRFc26yM0S15LWY4tFUxAIOscZbGXtNFma7wZXTsgjp6xJ
	gYbijp2WJo/vF2cpD0myNmM41fTR365pH/2G0HeqwWBhocfL3mP1Ut86uPDVcGbt6u5w
	BN/A0KETcCwO/8IlXU51RNrUVrE1vUexvELmw=
MIME-Version: 1.0
Received: by 10.204.136.215 with SMTP id s23mr1405835bkt.31.1326385229549;
	Thu, 12 Jan 2012 08:20:29 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 12 Jan 2012 08:20:29 -0800 (PST)
In-Reply-To: <4F0F03AB.1010808@windriver.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
	<CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
	<CAFZh4h8CtWD3q7_bWQoH9X1j=J=irW05Mhvbqvv5h_fp-oFn+A@mail.gmail.com>
	<4F0F03AB.1010808@windriver.com>
Date: Thu, 12 Jan 2012 11:20:29 -0500
Message-ID: <CAFZh4h8Z3GW8mrsgpHVQCQgHpg1CpmwmP=xMXcitA=h4A1L52A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Thu, 12 Jan 2012 16:20:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jan 12, 2012 at 11:00 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> The bitbake AUTOREV code should take care of updating the clone
> of your local repo in downloads/git2. I take it that this isn't
> happening ?

... haven't tried ... was just sticking to the example in the
documentation which says to push changes and do a cleanall.  The spin
time on my dev machine wasn't too bad but long enough to get old quick
if I had to do it often.

> It should be (largely) as simple as that. We could create something
> simple and throw it in with the meta-kernel-dev layer if there's any
> interest in adding it.

Just wanting to know what the "best practice" is as I have lots of
platforms to support.

Regards,

Brian

