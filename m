Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7051E0074B
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 02:00:04 -0700 (PDT)
Received: from localhost ([127.0.0.1]:45996 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T3kJe-0007iU-R2
	for yocto@yoctoproject.org; Tue, 21 Aug 2012 09:00:03 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=Jrfd2nIj2bozBXMmelQvO4VJ5sw=; b=rVcN3CJJxw+g9U3jrW9wYylq/VMk
	oEbBCq0SZbHrjwjYaL94mdHWJwJBIyf6V8beX6Ke3SPQs7vtZ8L6RHoQJwd859vG
	fOwR8ZNPadcfxSpj/poem5WRfbQE9sO48RTgHwQTOxN31cGtUHhupdc5iGJLeBbB
	q5fWkgxgtg3/CDQ=
Received: from [195.171.99.130] (port=28926 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T3kJe-0007hV-CM
	for yocto@yoctoproject.org; Tue, 21 Aug 2012 09:00:02 +0000
Message-ID: <50334E66.2020905@communistcode.co.uk>
Date: Tue, 21 Aug 2012 10:01:26 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5029026B.90602@communistcode.co.uk>
	<CAK18fxEWCkDGeG=TWnS-YKUQdwp+bQLkFGDD3cPwWp96ghRt6w@mail.gmail.com>
	<5029088A.4030909@communistcode.co.uk>
	<7CF86E24-B6F0-4B99-BBB2-7E9BB4C96F0B@keylevel.com>
	<CAK18fxHooAxhXxLBgytn5RuyxT2_UqoVoyMk6v+3uO73_xBrwg@mail.gmail.com>
	<CAK18fxE98rqHo+F2SO63_4oHLHThsiQHw9Pf-9hMKvaa3UQCXQ@mail.gmail.com>
In-Reply-To: <CAK18fxE98rqHo+F2SO63_4oHLHThsiQHw9Pf-9hMKvaa3UQCXQ@mail.gmail.com>
Subject: Re: Raspberry Pi do_fetch failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 09:00:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 20/08/12 18:23, Andrei Gherzan wrote:
> It seems like even if i got no feedback from github, this issue is not 
> reproducible anymore. Fetch is working as it should now. Could you 
> please confirm?
>
> Si it could have been a temporary bug or this was solved meanwhile.
>
> ag
>
>
>
>
> On Mon, Aug 13, 2012 at 9:58 PM, Andrei Gherzan <andrei@gherzan.ro 
> <mailto:andrei@gherzan.ro>> wrote:
>
>
>     On Mon, Aug 13, 2012 at 7:38 PM, Chris Tapp
>     <opensource@keylevel.com <mailto:opensource@keylevel.com>> wrote:
>
>         On 13 Aug 2012, at 15:00, Jack Mitchell wrote:
>
>         > On 13/08/12 14:51, Andrei Gherzan wrote:
>         >>
>         >> On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitchell
>         <ml@communistcode.co.uk <mailto:ml@communistcode.co.uk>
>         <mailto:ml@communistcode.co.uk
>         <mailto:ml@communistcode.co.uk>>> wrote:
>         >>
>         >>    Good afternoon everyone,
>         >>
>         >>    I am trying (yet again) to get yocto to build for the
>         Raspberry Pi
>         >>    and I am falling at the do_fetch hurdle on the RasPi kernel.
>         >>
>         >>       ERROR: Fetcher failure: Fetch command export
>         HOME="/home/jack";
>         >>       export SSH_AGENT_PID="1350"; export
>         >> SSH_AUTH_SOCK="/home/jack/.cache/keyring-fjEm9a/ssh"; export
>         >>
>          GIT_CONFIG="/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/etc/gitconfig";
>         >>       export
>         >>
>          PATH="/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/bin/armv6-vfp-poky-linux-gnueabi:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/raspberrypi/usr/bin/crossscripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/bin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux//bin:/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl";
>         >>       git clone --bare --mirror
>         >>    git://github.com/raspberrypi/linux.git
>         <http://github.com/raspberrypi/linux.git>
>         >>    <http://github.com/raspberrypi/linux.git>
>         >>
>         >>
>         >> Does this work in a shell? Just try to clone it on your
>         computer.
>         >>
>         >> ag
>         >
>         > Yes, cloning it now without issues - it took a while to get
>         going and someone has suggested that it might be timing out
>         within bitbake...
>
>
>         I've had similar issues in the past that seemed to be caused
>         by Github. If I ran a manual fetch I could see errors relating
>         to compressed folders (I think - was a while back) that
>         couldn't be found. It sorted itself after a day or so.
>
>     I sent an email to github. Will keep you posted.
>
>     ag
>
>

Working fine for me now.

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


