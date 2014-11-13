Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FEB0E008CC; Thu, 13 Nov 2014 05:09:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 666DBE00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 05:09:15 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 30D4DF811D9; Thu, 13 Nov 2014 06:09:15 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7A73EF81188;
	Thu, 13 Nov 2014 06:09:14 -0700 (MST)
Message-ID: <5464AD8C.8030100@mlbassoc.com>
Date: Thu, 13 Nov 2014 06:09:32 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5464AB4D.8020409@topic.nl>
In-Reply-To: <5464AB4D.8020409@topic.nl>
Subject: Re: Sato image runs, but doesn't start its GUI
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
X-List-Received-Date: Thu, 13 Nov 2014 13:09:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-11-13 05:59, Mike Looijmans wrote:
> I finally got around to trying to use our custom board's BSP with Yocto images.
>
> Since the board has a touchscreen (well, actually it has two) I built the core-image-sato.
>
> I had to tweak the startup a bit, because our framebuffer is in the FPGA it won't be available until after programming it and loading the modules.
>
> Setting psplash to S05 instead of S00, and modutils to load at S04 fixes the initialization order problems I saw.
>
> What I get now is a nice Yocto logo on the screen, and a progress bar that almost fills up. But nothing else happens. I'd expect the GUI to start then, but apparently there's
> nothing to trigger that?
>
> Display works, touch works, everything seems in perfect working order.
>
> I can't find anything that attempts to start anything. There's nothing in inittab, and there's nothing in rc3.d that resembles an attempt at starting something desktop GUI
> application or so.
>
> Am I missing something, is this a bug, or is this expected behaviour and am I supposed to type some magic command first?

If you are running the stock core-image-sato, X is started
by /etc/rc5.d/S09xserver-nodm

Do you have a serial console?  You can learn a lot from that.
Also try looking at /var/log/Xorg.0.log

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

