Return-Path: <ejo@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1D0AE00970; Thu,  6 Apr 2017 00:54:10 -0700 (PDT)
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
X-Greylist: delayed 1044 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 00:54:07 PDT
Received: from metis.ext.4.pengutronix.de (metis.ext.4.pengutronix.de
	[92.198.50.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EFE6E0095F
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 00:54:07 -0700 (PDT)
Received: from mango.hi.pengutronix.de ([2001:67c:670:100:76d4:35ff:fee8:98b3])
	by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
	(envelope-from <ejo@pengutronix.de>)
	id 1cw1yC-0006we-7u; Thu, 06 Apr 2017 09:36:40 +0200
To: "Maier, Chris" <C.Maier@geze.com>
References: <2AA7D088591C49498E92D6491C58159334CCE23F@gcxdb1.corp.geze.com>
	<57e7a906-2501-00cd-395a-1afc5a956834@rsi-elektrotechnik.de>
From: Enrico Joerns <ejo@pengutronix.de>
Message-ID: <e883050a-d35e-4c70-6693-7923d9cc8413@pengutronix.de>
Date: Thu, 6 Apr 2017 09:36:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <57e7a906-2501-00cd-395a-1afc5a956834@rsi-elektrotechnik.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:76d4:35ff:fee8:98b3
X-SA-Exim-Mail-From: ejo@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
	SAEximRunCond expanded to false
X-PTX-Original-Recipient: yocto@yoctoproject.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Thu, 06 Apr 2017 07:54:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Chris,

On 04/06/2017 08:50 AM, Josef Holzmayr wrote:
> Hi,
>
> On 06.04.2017 08:41, Maier, Chris wrote:
>> Hi,
>>
>> I want to create a deployable SD card image. My board (beaglebone
>> based) boots from SD card and runs a script which copies the
>> rootfs.tar.bz2 to the flash memory.
>>
>> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
>>
>> A rootfs in the rootfs, does that make sense?
>
> Partially. Sounds like you want to invent your own update mechanism.
> Have you had a look at the already existing ones, specifically swupdate?

if you intend to build an update system, Josef is right, choose an 
existing (image/archive-based) one. Here is a good overview and 
comparison of update frameworks currently supported by meta layers:

   https://wiki.yoctoproject.org/wiki/System_Update

If you intend to do this for factory bootstrapping your device instead, 
i.e. you also set up the flash partitioning etc. this is partly out of 
the scope of these tools. A typical setup we use for this is a rootfs 
partition on your disk that you start your factory system from, and a 
second data partition where you place your rootfs in.

We use the `genimage` [1] tool for creating such images that also allows 
packing build images into a data partition, but this should be possible 
with Yocto's `wic` [2], too.

Note that you can also do a two-step approach where you set-up the flash 
storage with a script first and then already use an update tool to 
deploy the initial content (from the data partition) to it. Note that 
not all tools will support this by their configuration, currently.


Best regards, Enrico


[1] https://git.pengutronix.de/cgit/meta-ptx/tree/classes/genimage.bbclass
[2] 
http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#creating-partitioned-images

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5080 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


