Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F0C9E00B0B; Mon,  2 Jun 2014 03:42:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD83E009C1
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:42:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 7D01A27E024;
	Mon,  2 Jun 2014 10:42:03 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id IjC3IWJTqf1X; Mon,  2 Jun 2014 10:42:02 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9A52C27E019;
	Mon,  2 Jun 2014 10:42:02 +0000 (UTC)
Message-ID: <538C54F7.9080401@dynamicdevices.co.uk>
Date: Mon, 02 Jun 2014 11:41:59 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>	<25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
	<CABwVrCpw7pNvkK71noXVvF8ySiLT4zeOiiMLw12=0VFfYOt=-g@mail.gmail.com>
In-Reply-To: <CABwVrCpw7pNvkK71noXVvF8ySiLT4zeOiiMLw12=0VFfYOt=-g@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:42:09 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 02/06/2014 11:30, Alexandru Vaduva wrote:
> It looks ok to me.
> Waiting for a push on remote.
>

Thanks Alex. Interesting issue. Next time I get a chance I need to turn
back to getting gstreamer-1.0 working with it.

I've pushed the commit up to gherzan. Is there anything else I should be
doing?

> I like the suggestion regarding SRC_URI format but I would have
> suggested it to be another patch.
> The reason would be that when someone wants to do a revert to the
> change the suggestion would still remain,
> but this is only a personal preference.
>

OK, I could do that if it was needed. (I'm pleased you like it. I pushed
a similar change upstream to my fork of 
raspiberrypi/userland  to try to make sure nobody else sinks time on
this. Breaking out the fork and branch
that way helps me to manage the upstream commits and github pull request).

> Good work once again, you really did me a service.
>
>

Cheers,

Alex


