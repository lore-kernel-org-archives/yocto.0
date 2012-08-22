Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3202EE01388
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 12:23:19 -0700 (PDT)
Received: by lboi15 with SMTP id i15so1006825lbo.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 12:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JObZvDDS6W5bbGG4rUVzROQlQ9acMVRe6UznUugCWRw=;
	b=Rk/Neqi4YhODw1tuAsVXCdQRzdC7+vN7pJ3BFh+6vB+VB7bh524VXiFHB12MOigbGW
	iEDOAWWJEdPXwRpBALV+wZCH/S1UIYtLW5DVmzSZ6OSHryoc/EEfTwDkXvQpe+oA1qAJ
	pM2Fhg68SDbO33gtw6fczEASK0b5R70FaoOwI5NuXmX9qIHPXaEIUGuiB9jqi5JO0MAM
	0JJjamigwQol9IPhME7l6+1eC3n8UrfsI3YkfyrJQQWaWI0qBBuKFno71gyL6cnfdOZz
	Ny8KmG2Bj+SlKzrphP7IUk+Hf0BD6TlqyUJhgQXJQuSz0KYq7wyHKLrhvtGO6kF5BggD
	9f3g==
MIME-Version: 1.0
Received: by 10.112.25.4 with SMTP id y4mr9825059lbf.61.1345663396357; Wed, 22
	Aug 2012 12:23:16 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Wed, 22 Aug 2012 12:23:16 -0700 (PDT)
In-Reply-To: <CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
Date: Wed, 22 Aug 2012 15:23:16 -0400
Message-ID: <CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Jeff Osier-Mixon <jefro@jefro.net>
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
X-List-Received-Date: Wed, 22 Aug 2012 19:23:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Jeff,

Thanks for your tasty metaphors!

On Wed, Aug 22, 2012 at 1:15 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> In this case, bitbake is looking for the expiration dates on your
> ingredients - the version of the package that each recipe builds.

But your wording would seem to imply _a_ recipe builds _a_ package.
But a recipe doesn't build a package, a recipe potentially builds lots
of packages. For example the "net-snmp" recipe builds the following
packages: "net-snmp-dbg net-snmp-doc net-snmp-dev net-snmp-staticdev
net-snmp-static net-snmp-libs net-snmp-mibs net-snmp-server
net-snmp-client"

"bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev..."
it lists "net-snmp". Therefore couldn't the wording of the bitbake
help be improved to say:

-s, --show-versions   show current and preferred versions of all __recipes__

instead of:

>>   -s, --show-versions   show current and preferred versions of all __packages__

?

> Chris Hallinan wrote up a good description of many of the terms used

Actually I wrote this email after reading his very next blog post:

http://blogs.mentor.com/chrishallinan/blog/2012/04/27/more-on-yocto-terminology-recipes-and-packages/

:-)

