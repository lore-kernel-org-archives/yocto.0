Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 740F1E002AC
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 06:59:19 -0700 (PDT)
Received: from localhost ([127.0.0.1]:41787 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T0vAs-0002ga-Dn
	for yocto@yoctoproject.org; Mon, 13 Aug 2012 13:59:18 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=lGhBgTlLeAGspNIIQPCxPjVLqVI=; b=jUeQJnuh3KqMzL+3S0gJSs99W3Rv
	Il3uiDMYTJ19zC3wrWNyzBB4s0xZsR3JLNlWxCXK8QXzSzTIfPqTFRCm88Vc9XGZ
	cgs7CUyEBfUejzWle5CMXO16nslo08a38EZDWq3PNOAoxMWcuoGhLksej40bgDzj
	vaau1nXHf8fHRSQ=
Received: from [195.171.99.130] (port=54265 helo=[192.168.0.47])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T0vAs-0002gW-7L
	for yocto@yoctoproject.org; Mon, 13 Aug 2012 13:59:18 +0000
Message-ID: <5029088A.4030909@communistcode.co.uk>
Date: Mon, 13 Aug 2012 15:00:42 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5029026B.90602@communistcode.co.uk>
	<CAK18fxEWCkDGeG=TWnS-YKUQdwp+bQLkFGDD3cPwWp96ghRt6w@mail.gmail.com>
In-Reply-To: <CAK18fxEWCkDGeG=TWnS-YKUQdwp+bQLkFGDD3cPwWp96ghRt6w@mail.gmail.com>
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
X-List-Received-Date: Mon, 13 Aug 2012 13:59:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 13/08/12 14:51, Andrei Gherzan wrote:
>
> On Mon, Aug 13, 2012 at 4:34 PM, Jack Mitchell <ml@communistcode.co.uk 
> <mailto:ml@communistcode.co.uk>> wrote:
>
>     Good afternoon everyone,
>
>     I am trying (yet again) to get yocto to build for the Raspberry Pi
>     and I am falling at the do_fetch hurdle on the RasPi kernel.
>
>        ERROR: Fetcher failure: Fetch command export HOME="/home/jack";
>        export SSH_AGENT_PID="1350"; export
>        SSH_AUTH_SOCK="/home/jack/.cache/keyring-fjEm9a/ssh"; export
>      
>      GIT_CONFIG="/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/etc/gitconfig";
>        export
>      
>      PATH="/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/bin/armv6-vfp-poky-linux-gnueabi:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/raspberrypi/usr/bin/crossscripts:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/usr/bin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux/sbin:/home/jack/Projects/poky-rasp/raspberry/tmp/sysroots/x86_64-linux//bin:/home/jack/Projects/poky-rasp/scripts:/home/jack/Projects/poky-rasp/bitbake/bin/:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl";
>        git clone --bare --mirror
>     git://github.com/raspberrypi/linux.git
>     <http://github.com/raspberrypi/linux.git>
>
>
> Does this work in a shell? Just try to clone it on your computer.
>
> ag

Yes, cloning it now without issues - it took a while to get going and 
someone has suggested that it might be timing out within bitbake...

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


