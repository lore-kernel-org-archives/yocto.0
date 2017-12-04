Return-Path: <ejo@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 352FDE00D00; Mon,  4 Dec 2017 06:38:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [92.198.50.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 961 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Dec 2017 06:38:37 PST
Received: from metis.ext.4.pengutronix.de (metis.ext.4.pengutronix.de
	[92.198.50.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF6D6E00CBE
	for <yocto@yoctoproject.org>; Mon,  4 Dec 2017 06:38:37 -0800 (PST)
Received: from mango.hi.pengutronix.de ([2001:67c:670:100:76d4:35ff:fee8:98b3])
	by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
	(envelope-from <ejo@pengutronix.de>)
	id 1eLrdj-0001G8-Df; Mon, 04 Dec 2017 15:22:35 +0100
To: Dennis Menschel <menschel-d@posteo.de>, yocto@yoctoproject.org
References: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
	<558509cb-5d67-fa25-29c8-2725bad6b592@gmail.com>
From: Enrico Joerns <ejo@pengutronix.de>
Message-ID: <423fd5be-5867-fd62-89f6-aa7c0d5b2f57@pengutronix.de>
Date: Mon, 4 Dec 2017 15:22:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <558509cb-5d67-fa25-29c8-2725bad6b592@gmail.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:76d4:35ff:fee8:98b3
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
	SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@yoctoproject.org
Subject: Re: New software layer for the barebox bootloader
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
X-List-Received-Date: Mon, 04 Dec 2017 14:38:39 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

I would like to pick this thread up to start a discussion on it.

On 07/10/2017 07:30 PM, Khem Raj wrote:
> On 7/10/17 9:51 AM, Dennis Menschel wrote:
>> Hi all!
>>
>> I have created a new software layer named meta-barebox that provides
>> support for the barebox bootloader.
>>
> 
> Thanks, I see there are many other layers providing barebox of their
> own. Next step is to coverge them so that they are can use meta-barebox.
> 
>> The layer has already been added to the OpenEmbedded Layer Index:
>> https://layers.openembedded.org/layerindex/branch/master/layer/meta-barebox/
>>
>> The layer features its own reference manual that describes the interface
>> of meta-barebox and provides a usage example.
>> Last but not least, it also answers the question why I have created a
>> separate layer for the barebox bootloader.
>> The reference manual can be found here:
>> https://github.com/menschel-d/meta-barebox/blob/master/doc/ref-manual.md
>>
>> Have fun!

First of all, I also have thank you and say that it's great work you've 
done there! At the moment there are some recipes around and it is really 
worth concentrating the efforts. You did quite a lot work on writing and 
documenting recipes.

Barebox as a bootloader is a really fundamental piece of software to 
bring up a board. Thus, from my point of view, we should push the 
recipes forward to oe-core or at least meta-oe.

People that currently have their own layers providing barebox might tend 
to keep their own layers as long as they do not see any advantages in 
using the meta-barebox layer.
Because each added meta-layer also means a bit more complexity, having a 
layer for more or less a single component (that is also supported by 
other layers) might retain people from using it and this also increases 
the threshold for using barebox at all.

Having barebox support in oe-core will allow people to throw away all 
their custom solutions, will concentrate efforts on a single (set of) 
recipes, will allow tighter integration with other components, and the 
most important; it will ease using it and give the developers the 
opportunity to choose their bootloader more freely, depending on their 
individual hardware and software requirements.

What do you think about that?


Best regards

Enrico


FTR: 'Our' version of the barebox recipe is

https://git.pengutronix.de/cgit/meta-ptx/tree/recipes-bsp/barebox/barebox.inc

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5080 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


