Return-Path: <lists@philipp-wagner.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ED0CE0043A; Sun, 18 Jan 2015 16:24:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.67.31.26 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 115 seconds by postgrey-1.32 at yocto-www;
	Sun, 18 Jan 2015 16:24:07 PST
Received: from smtprelay03.ispgateway.de (smtprelay03.ispgateway.de
	[80.67.31.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A02E002F9
	for <yocto@yoctoproject.org>; Sun, 18 Jan 2015 16:24:07 -0800 (PST)
Received: from [188.174.15.205] (helo=[192.168.178.21])
	by smtprelay03.ispgateway.de with esmtpsa
	(TLSv1.2:DHE-RSA-AES128-SHA:128) (Exim 4.84)
	(envelope-from <lists@philipp-wagner.com>) id 1YD06c-0005fc-LZ
	for yocto@yoctoproject.org; Mon, 19 Jan 2015 01:22:10 +0100
Message-ID: <54BC4E32.60603@philipp-wagner.com>
Date: Mon, 19 Jan 2015 01:22:10 +0100
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAOrUntbLEeYVK18nbsnt5Dyiz6wYVJc5GKimwwL1qeD65=tD8w@mail.gmail.com>	<54BAABF4.8000300@jenslucius.de>	<CAK18fxEN7pVqNTTrbvybTdcOUhvRknxMwj1ge0R5wWnxJkQv3A@mail.gmail.com>
	<CAOrUntYKmWch0iQSsm9qxHQNcshxtH20iGrCKE2c0pY6mAW0Hg@mail.gmail.com>
In-Reply-To: <CAOrUntYKmWch0iQSsm9qxHQNcshxtH20iGrCKE2c0pY6mAW0Hg@mail.gmail.com>
X-Df-Sender: bGlzdHNAcGhpbGlwcC13YWduZXIuY29t
Subject: Re: armhf support for meta-raspberrypi
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
X-List-Received-Date: Mon, 19 Jan 2015 00:24:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Am 18.01.2015 um 23:07 schrieb Andrea Benini:
> Thanks folks, and thank you Andrei.
> As suggested by toolmmy and pleasant folks in this thread I'm using
> DEFAULTTUNE option. I had already seen the arm1176jzfshf after a small
> search into the meta-raspberry layer but I didn't know how to use it.
> Now I have recompiled my toolchain with this option enabled and it
> worked fine, I need to compile other tools (C, C++ libs, toolchain,
> binutils) for my own test and I'll put it on a real Pi. It takes a while
> but after this full recompile it seems everything is fine.
> If someone is interested in some benchmarking or other tests please let
> me know, my current image works. I'd like to add other packages useful
> for a real distro (Python 2/3, mc, nano, gcc, ext utils, ...) as I did
> before with the armel build but seems to be working without troubles so
> I'll normally continue my job with yocto and the Pi. My armel image
> works on Pi model A, B (256 and 512) and B+, as soon as I'll have a
> complete armhf image I'll do complete tests on them as well.

I did a comparison between softfp and hardfp a while back (i.e. using
hard float both times, difference is just in the calling convention)
using the standard web benchmarks Octane and sunspider with a full RPI
image and Firefox built with the corresponding compiler options. The
results showed no significant difference between the two, leading me to
the conclusion that the hardfp trouble (breaking the ABI) is not worth
the effort over softfp.

Philipp

