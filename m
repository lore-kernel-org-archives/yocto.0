Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F301FE00E36; Sun, 18 Dec 2016 08:43:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1032 seconds by postgrey-1.32 at yocto-www;
	Sun, 18 Dec 2016 08:43:18 PST
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABC96E00B9E
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 08:43:18 -0800 (PST)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 10D9947E7AE
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 17:26:04 +0100 (CET)
Received: from mfilter45-d.gandi.net (mfilter45-d.gandi.net [217.70.178.176])
	by relay4-d.mail.gandi.net (Postfix) with ESMTP id 509031720A4;
	Sun, 18 Dec 2016 17:26:01 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter45-d.gandi.net
Received: from relay4-d.mail.gandi.net ([IPv6:::ffff:217.70.183.196])
	by mfilter45-d.gandi.net (mfilter45-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id lQaTmEv4fIcU; Sun, 18 Dec 2016 17:25:59 +0100 (CET)
X-Originating-IP: 86.27.96.131
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@paulbarker.me.uk)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 8955C17209A;
	Sun, 18 Dec 2016 17:25:59 +0100 (CET)
Date: Sun, 18 Dec 2016 16:25:54 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Mirza Krak <mirza.krak@gmail.com>
Message-ID: <20161218162554.2dab9f39@nuc.betafive.co.uk>
In-Reply-To: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting up autobuilder on local machine
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
X-List-Received-Date: Sun, 18 Dec 2016 16:43:23 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 18 Dec 2016 15:46:19 +0100
Mirza Krak <mirza.krak@gmail.com> wrote:

> Hi.
> 
> I have been looking in to the possibility to utilize yocto autobuilder
> for one of my own projects.
> 
> But I am having some problems setting this up and hopefully someone
> here can provide some pointers.
> 
> I did the "quickstart part":
> 
> git clone git://git.yoctoproject.org/yocto-autobuilder
> cd yocto-autobuilder
> . ./yocto-autobuilder-setup
> yocto-start-autobuilder both
> 
> Above succeeds without any issues. But now what? :)
> 
> I went to https://localhost:8010. I tried to login using the
> information that is in the .htpasswd file but that did not work. Where
> are the credentials to login setup?

You'll need to create the .htpasswd file yourself. I think the
"htpasswd" tool can do this for you, I can't remember the exact
commands I used to make mine though sorry.

> 
> I also made an attempt to remove all un-wanted buildsets and now
> buildset-config contains (all other directories are removed)
> 
> nightly-mender-rpi.conf  yoctoAB.conf
> 
> Above is parsed correctly on start-up but build is never triggered. I
> probably removed to much :). Looking in to nigthly.conf it seem that
> is the one that trigger all other nightly builds?
> 
> My fork can be found at [1].
> 
> [1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi

This looks good, you just need to setup the scheduler with something
like this in nightly-mender-rpi.conf:

    scheduler:
    [{'nightly-build':{'type':'Nightly','hour':23,'minute':0}}]

You should only need a separate nightly.conf when you want that to
trigger multiple builds.

I've recently setup an autobuilder for meta-raspberrypi which I'll be
publishing once I've got the last bits of setup done. If you're still
struggling to get the nightly triggering working let me know and I'll
put up the configurations I've used as a git repository.

Thanks,
Paul Barker

