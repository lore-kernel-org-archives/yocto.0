Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032FEE00C1E; Sun,  2 Dec 2018 20:41:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC5A1E00B81
	for <yocto@yoctoproject.org>; Sun,  2 Dec 2018 20:41:57 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 437XQX1fNlz1qtFB;
	Mon,  3 Dec 2018 05:41:56 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 437XQX1JXQz1qtfc;
	Mon,  3 Dec 2018 05:41:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id izTxvAa7Wk85; Mon,  3 Dec 2018 05:41:54 +0100 (CET)
X-Auth-Info: 6oAf4T+3e4H05J5Ms8jNmGMYRPvM6UpiqufAsCpJv4I=
Received: from [192.168.1.106] (87.97.57.62.pool.invitel.hu [87.97.57.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon,  3 Dec 2018 05:41:54 +0100 (CET)
To: n.stanisavljevic@polycaptil.fr
References: <9305893f0b3f68a768e8532054b54438@webmail2.sdv.fr>
	<20181128195530.pih7j3s3dinrhhrx@jholzmayr.localdomain>
From: Heiko Schocher <hs@denx.de>
Message-ID: <fe8ddf08-8ae1-4a40-bc35-fd83aad09b77@denx.de>
Date: Mon, 3 Dec 2018 05:41:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20181128195530.pih7j3s3dinrhhrx@jholzmayr.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: am335x evmsk screen init:id"00" respawning too fast disabled for 5 minutes yocto sumo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hs@denx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Dec 2018 04:41:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi n.stanisavljevic,

Am 28.11.2018 um 20:55 schrieb Josef Holzmayr:
> Howdy!
> 
> On Wed, Nov 28, 2018 at 03:50:02PM +0000, n.stanisavljevic@polycaptil.fr wrote:
>> Hello everybody
>>
>> here is an introduction of my situation :
>>
>> I build a custom board from schematic of sitara AM335x-evmsk starter kit.
>> I succeed to make a custom OS with yocto (krogoth version) and to boot this OS (embedded Linux) on my custom board.
>>
>> This custom board contain a touchscreen (same touchscreen like in the AM335x-evmsk starter kit).
>>
>> All worked fine on this board while I used krogoth version on yocto.
>>
>> my problem :
>>
>> Few time ago, I decided to migrate to sumo version of yocto.
>> I build with success the OS (embedded Linux) with yocto sumo version for my custom board, but when I try to boot this OS, it's stop/lock and print the following message :
>>
>> "INIT:Id'00' respawning too fast : disabled for 5 minutes" (I put a screenshot of this message ridden on putty).
>> Every 5 minutes I got this message and I can't acces to the user session on putty and on the touchscreen, all board is locked.
> 
> This is probably because you are basing off something that sets
> SERIAL_CONSOLES for the yocto-kernel, like
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-yocto/tree/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf?h=master#n23
> 
> If you are using a custom tree which does not use the special driver for
> the uart, then you should be fine by setting
> SERIAL_CONSOLES ?= "115200;ttyS0"
> in your MACHINE config

Yep, see also my patch:

https://www.mail-archive.com/yocto@yoctoproject.org/msg42383.html

may it help you ...

bye,
Heiko

> 
>>
>> I don't understand why this problem appear when I build a OS with the sumo version on Yocto.
>> I have not this problem when I build a OS with the krogoth version on yocto.
>>
>> Somebody can help me to solve this problem ?
>> what can I do ?
>>
> 
> Greetz
> 

-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

