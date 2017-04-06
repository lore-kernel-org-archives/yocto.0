Return-Path: <ejo@pengutronix.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3118E00992; Thu,  6 Apr 2017 06:17:37 -0700 (PDT)
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
Received: from metis.ext.4.pengutronix.de (metis.ext.4.pengutronix.de
	[92.198.50.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 203AEE00961
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 06:17:35 -0700 (PDT)
Received: from mango.hi.pengutronix.de ([2001:67c:670:100:76d4:35ff:fee8:98b3])
	by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
	(envelope-from <ejo@pengutronix.de>)
	id 1cw7I6-00028Q-Gg; Thu, 06 Apr 2017 15:17:34 +0200
To: "Maier, Chris" <C.Maier@geze.com>
References: <2AA7D088591C49498E92D6491C58159334CCE6D9@gcxdb1.corp.geze.com>
	<dcbcedba-22b1-1747-a588-cb20f3370d6c@rsi-elektrotechnik.de>
From: Enrico Joerns <ejo@pengutronix.de>
Message-ID: <f9d5e8b5-b6fa-35ce-56f9-181738caa0fc@pengutronix.de>
Date: Thu, 6 Apr 2017 15:17:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <dcbcedba-22b1-1747-a588-cb20f3370d6c@rsi-elektrotechnik.de>
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
X-List-Received-Date: Thu, 06 Apr 2017 13:17:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/06/2017 10:37 AM, Josef Holzmayr wrote:
> On 06.04.2017 10:31, Maier, Chris wrote:
>> Hi,
>>
>> I want to create a deployable SD card image. My board (beaglebone
>> based) boots from SD card and runs a script which copies the
>> rootfs.tar.bz2 to the flash memory.
>> So how can I deploy a copy of the whole rootfs to ${D}/home/root?
>> A rootfs in the rootfs, does that make sense?
>>
>> Any help is appreciated.
>>
>> Chris
>>     *i.A. **Chris Maier *
>> *Software-Entwicklungsingenieur *
>>
>> Phone: +49 7152 203 6741 | Fax: +49 7152 203 76741 | C.Maier@geze.com
>> GEZE GmbH, Reinhold-Vöster-Straße 21-29, 71229 Leonberg | www.geze.com
>>
>> SAVE PAPER - THINK BEFORE YOU PRINT

SAVE MAILS - THINK BEFORE YOU SEND

>> YouTube <https://www.youtube.com/user/BewegungmitSystem> Facebook
>> <https://de-de.facebook.com/pages/GEZE-GmbH/733688069983321> LinkedIn
>> <https://www.linkedin.com/company/geze-gmbh> Twitter
>> <https://twitter.com/geze_gmbh> Xing
>> <https://www.xing.com/companies/gezegmbh>     Geschäftsführung:
>> Brigitte Vöster-Alber (Vorsitzende), Andrea Alexandra Alber, Marc
>> Alber, Florian Birkenmayer
>> Vorsitzender des Aufsichtsrates: Prof. Dr. Dr. Ulli Arnold,
>> Amtsgericht Stuttgart HRB 250329, Tel: +49 7152 203 0
>> GEZE GmbH, Reinhold-Vöster-Straße 21-29, 71229 Leonberg, Germany
>>
>
> Why are you asking the exact same question the third time now?

Maybe your IT allows only outgoing mail transport?.. haha

Or its a misconfiguration of some sort of nodupes settings and you 
assume you have not sent it, yet?.. Just look at the answers, you have!


Enrico

-- 
Pengutronix e.K.                           | Enrico Jörns                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5080 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


