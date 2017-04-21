Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4700DE00A93; Thu, 20 Apr 2017 20:19:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00668E0095F
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 20:19:22 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B53C668A01C; Fri, 21 Apr 2017 04:19:20 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D45FE68A019;
	Fri, 21 Apr 2017 04:19:19 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 2AB016740364;
	Fri, 21 Apr 2017 05:19:19 +0200 (CEST)
To: yocto@yoctoproject.org
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
	<20170420071321.GA25443@linux-uys3>
	<CAMKF1so-rjEmDH54fw4+tv=uECXWu=yH52EecPs0EG6ab+8moQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c3144b36-4f53-cff9-ff0f-f5993b26a5d7@mlbassoc.com>
Date: Fri, 21 Apr 2017 05:19:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1so-rjEmDH54fw4+tv=uECXWu=yH52EecPs0EG6ab+8moQ@mail.gmail.com>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Fri, 21 Apr 2017 03:19:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-04-20 18:55, Khem Raj wrote:
> On Thu, Apr 20, 2017 at 12:13 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>> On Thu 2017-04-20 @ 05:41:44 AM, Herve Jourdain wrote:
>>> Yes, VC4 indeed works for both 32bits and 64bits. It was first introduced  .
>>> for 32bits, actually Regarding why still using userland: at this point in  .
>>> time, we have accelerated HW codec (H.264, MPEG2, some audio) only if using.
>>> userland If one doesn't need that, then VC4 is, in my opinion, the way to  .
>>> go. Otherwise, userland still needs to be used                             .
>>
>> What decoder is needed to play youtube videos?
>>
>> Using Andreas' meta-raspi-light (which removes userland and only uses vc4)
>> I've spent the last hour or so watching youtube videos from my raspberrypi3
>> (32-bit build) in chromium, accelerated, with sound (both via the HDMI and the
>> jack), both on the big monitor and the 7" waveshare touchscreen. Not to
>> mention I can now run openGL and GLESx apps accelerated.
>>
>
> try to play 1080p video and you will see the difference. I use my pi3
> as media center using kodi, I am waiting for vc4 driver to get
> feature/performance parity with userland until then we have to keep
> using it atleast for media centric usecases.

Are you building kodi using meta-multimedia?  If so, could you share
your local.conf?

>
>> I wasn't able to do that with userland. In fact, it was quite a struggle just
>> to get it to build!
>>
>> Maybe I did something wrong with userland, but vc4 is successful, and
>> certainly easier to work with.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

