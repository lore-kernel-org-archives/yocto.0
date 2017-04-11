Return-Path: <ejo@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F190BE00AF0; Mon, 10 Apr 2017 23:40:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [92.198.50.35 listed in list.dnswl.org]
Received: from metis.ext.4.pengutronix.de (metis.ext.4.pengutronix.de
	[92.198.50.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91E37E00A9B
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 23:40:29 -0700 (PDT)
Received: from mango.hi.pengutronix.de ([2001:67c:670:100:76d4:35ff:fee8:98b3])
	by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
	(envelope-from <ejo@pengutronix.de>)
	id 1cxpTX-0004T4-CU; Tue, 11 Apr 2017 08:40:27 +0200
To: "Maier, Chris" <C.Maier@geze.com>
References: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
	<79711def-3ac3-1506-8fa5-ba874c1a830b@gmail.com>
From: Enrico Joerns <ejo@pengutronix.de>
Message-ID: <6ade8738-8147-fdb4-b604-c23bd0e3225d@pengutronix.de>
Date: Tue, 11 Apr 2017 08:40:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <79711def-3ac3-1506-8fa5-ba874c1a830b@gmail.com>
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
X-List-Received-Date: Tue, 11 Apr 2017 06:40:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/10/2017 09:53 PM, Khem Raj wrote:
> On 4/10/17 4:28 AM, Maier, Chris wrote:
>> Hi,
>>
>> I want to create a deployable SD card image. My board (beaglebone based) boots from SD card and runs a script which copies the rootfs.tar.bz2 to the flash memory.
>> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
>> A rootfs in the rootfs, does that make sense?
>>
>
> you could write a image post processing function to do it.
>
>> Any help is appreciated.
>>
>> Chris Maier

This is now the 4th! time you post this exact same question without 
reacting on any reply!

Stop that!!

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5080 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


