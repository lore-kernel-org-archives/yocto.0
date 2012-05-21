Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71AE7E00747
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 00:47:11 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-71-0.range86-170.btcentralplus.com
	[86.170.71.0]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 5EE429ADB
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 08:47:10 +0100 (BST)
Message-ID: <4FB9F2FD.3060200@r-finger.com>
Date: Mon, 21 May 2012 08:47:09 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
In-Reply-To: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
Subject: Re: [poky] RaspberryPi Layer
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
X-List-Received-Date: Mon, 21 May 2012 07:47:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 19/05/12 22:51, Andrei Gherzan wrote:
> After an exchange of messages with Richard, Saul and John Willis (he
> already started a layer for oe and did a good job in it) i want to
> announce that i started start a fork from his layer and with Florin
> Sarbu will prepare a layer for RaspberryPi to work upon poky. 

Why a fork? This is a bsp layer so it should be sufficiently generic to
work both with Poky and OE, it is really undesirable that there should
be more than one m-rpi layers in circulation.

> Until a stable version of this layer we will keep this layer on
> bitbucket: https://bitbucket.org/agherzan/meta-raspberrypi. 

Considering that John Willis's work is on github, where a number of
people follow it already, why move this somewhere else? This just makes
it harder for anyone interested in this work to track what is going on.

My suggestion is to set up a github project for this, move John's repo
under that as the master, and then any temporary tweaking for poky and
otherwise can be done branches rather than separate repositories.

> I don't know if a mailing list is needed but if there are any others who
> want to contribute on this, we can adopt meta-fsl-arm's solution of a
> google group and use it as a way of communicating. 

I think mailing list is needed; please do not use a group for this, and
certainly not one that requires a google login. Perhaps Yocto could let
us have a meta-rpi list?

Tomas

