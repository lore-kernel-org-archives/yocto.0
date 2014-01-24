Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EAEEE00804
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 02:27:11 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id q16so1746729vbe.35
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 02:27:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=igGzQD96RQt7yTOOoJ5sV4RBvq94+AkJOJawo2Fpxro=;
	b=EVnBXhzY8yT7ugZlARqPsCHKs3qWiv2wmo3JT6E+s3jteVEkmS5OTSr0jwoJhLItlI
	2fk0vCzs3DHn2m8GFd5V2fpW/9xCYggQ9Q7a5uc/ouoXGHkPRtSAvT0jHiLnzhYah0Qd
	yYxwHSwlnK1T3Io9TgrTAFauDzuMVQPW7DhtAwko/bZQvByaakzsbsK3/n5Nh1YdgHtE
	c0nAqXsDG8UeFhZYUgwGu91Spa5ph+5ZN/yro0hkQhixh6fX7U0DXyFHTYFRJCHY7wWT
	PXUurxLOb8MotY+r+oXYWUbpmeGi/Ba6gi6BbI13NQs3mSRxHs7k4Bzm2ssauV8+htAU
	dynQ==
X-Gm-Message-State: ALoCoQnQ4epw9itI7vvFoRM4d/AhfQkOI000b0SDMaPe9oUDrYZhlYVfF8XP1GB45PpyCD+YLaCa
X-Received: by 10.58.100.100 with SMTP id ex4mr7279320veb.2.1390559230360;
	Fri, 24 Jan 2014 02:27:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.96.84 with HTTP; Fri, 24 Jan 2014 02:26:50 -0800 (PST)
In-Reply-To: <c861263105a79f5049e029ab9fd79e56@webmail.1blu.de>
References: <c861263105a79f5049e029ab9fd79e56@webmail.1blu.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 Jan 2014 10:26:50 +0000
Message-ID: <CAJTo0LZs6rkCsAxKuHkKoRFOY12TYs3WcVU5dmxSv5V+YFZJxA@mail.gmail.com>
To: yoctolist@progserv.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Smart - "Illegal instruction"
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
X-List-Received-Date: Fri, 24 Jan 2014 10:27:18 -0000
Content-Type: text/plain; charset=UTF-8

On 24 January 2014 10:21,  <yoctolist@progserv.de> wrote:
> Do I have to define a new BSP?
>
> Did anyone have a similar problem and could give me some advice?

IIRC, genericx86 targets Atom and higher (the README lists the target
hardware) so it's quite possible that the compiler is emitting
instructions that your CPU doesn't actually have.  You could create a
new BSP, or edit the tune flags from your distro or local
configuration to target your CPU.

Ross

