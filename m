Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDEABE01432
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 03:12:53 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-71-0.range86-170.btcentralplus.com
	[86.170.71.0]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 00ECC9ADB
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 11:12:52 +0100 (BST)
Message-ID: <4FBA1523.30307@r-finger.com>
Date: Mon, 21 May 2012 11:12:51 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<4FB9F2FD.3060200@r-finger.com>
	<CAK18fxHoxdznsSbeSybm3QAym-YQa=_fzsMgOr2QHqFUH5ygiw@mail.gmail.com>
In-Reply-To: <CAK18fxHoxdznsSbeSybm3QAym-YQa=_fzsMgOr2QHqFUH5ygiw@mail.gmail.com>
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
X-List-Received-Date: Mon, 21 May 2012 10:12:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 21/05/12 09:47, Andrei Gherzan wrote:
> There are issues that cannot be solved with just one layer. A distro is
> a workaround but still. More about this, rpi layer will be included in
> yocto project repos as  Richard plans so it makes sense to have a yocto
> specific layer. It could be a discussion here about using a core layer
> and above that some distro specific layers but in my opinion this would
> be a little too complicated for this. Right now i use a distro file
> which inherits poky distro in order to BBMASK some bbappends which we
> don't have in poky. Clear now?

This really needs to be a BSP layer, not a distro, so that people can
build a custom distros with it; i.e., the fact that you currently BBMASK
packages in the BSP configuration means it will not be useable as an
independent layer.

>     > Until a stable version of this layer we will keep this layer on
>     > bitbucket: https://bitbucket.org/agherzan/meta-raspberrypi.
> 
>     Considering that John Willis's work is on github, where a number of
>     people follow it already, why move this somewhere else? This just makes
>     it harder for anyone interested in this work to track what is going on.
> 
> 
> I'm not a github user. But this wouldn't be a problem. I find bitbucket
> a better place to hold any kind of git repo: it has collaborative
> options, you can have private repos (free) and a bunch of other stuff.
> And after all it is a git. You can clone it, fetch and pull anywhere on
> your computer. So i don't find this a problem.

It should be easy for people interested in the m-rpi effort to track
what is happening, splitting it over multiple online services does
facilitate that; more so it implicitly turns this into two separate
projects simply because someone wanting to contribute will have to
choose where to send the contributions to.

Tomas

