Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E952E00C10; Fri,  2 Nov 2018 01:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94776E00A10
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 01:01:38 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 42mZKD48DHz1qvvQ;
	Fri,  2 Nov 2018 09:01:36 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 42mZKD3tKNz1qsJd;
	Fri,  2 Nov 2018 09:01:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id Jp37AKtwnDPu; Fri,  2 Nov 2018 09:01:34 +0100 (CET)
X-Auth-Info: GlcIKSznTijwTxfZe6A1k03fMfmFRPbo5/hz1kn6X+I=
Received: from [192.168.1.106] (82.131.204.185.pool.invitel.hu
	[82.131.204.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Fri,  2 Nov 2018 09:01:34 +0100 (CET)
To: Kevin Hao <kexin.hao@windriver.com>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
From: Heiko Schocher <hs@denx.de>
Message-ID: <13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
Date: Fri, 2 Nov 2018 09:01:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <20181101021854.GT24227@pek-khao-d2>
Cc: yocto@yoctoproject.org
Subject: Re: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
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
X-List-Received-Date: Fri, 02 Nov 2018 08:01:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello Kevin,

Am 01.11.2018 um 03:18 schrieb Kevin Hao:
> On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
>> Hello all,
>>
>> just builded core-image-minimal with current head of thud branch for
>> the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.14.78",
>> installed the resulting sd card image and boot it, and get:
>>
>> INIT: Id "O0" respawning too fast: disabled for
>> 5 minutes
>>
>> Reason seems to be:
>>
>> meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>>
>> SERIAL_CONSOLES = "115200;ttyO0"
>>
>> shouldn't this be
>>
>> SERIAL_CONSOLES = "115200;ttyS0"
>>
>> With this fix, sd card image boot fine ... may I oversee seomthing
>> obvious ?
> 
> No, it should be 'ttyO0'. It is set by the omap serial driver. You can
> refer the following in platform_data/serial-omap.h:
>    #define OMAP_SERIAL_NAME        "ttyO"

Yes, you are right, but I see with linux kernel 4.14.78 from

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-4.14.y&id=e7405910ca5553eae8744af4e5c03e64ee048cb1

and I see:

[    0.000000] Linux version 4.14.78 (oe-user@oe-host) (gcc version 8.2.0 (GCC)) #1 Thu Nov 1 
10:51:09 UTC 2018
[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
[...]
[    0.362878] Serial: 8250/16550 driver, 6 ports, IRQ sharing disabled
[    0.365758] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq = 30, base_baud = 3000000) is a 8250
[    1.030465] console [ttyS0] enabled

So definitely a ttyS0 ...

bye,
Heiko
> 
> Thanks,
> Kevin
> 
>>
>> bye,
>> Heiko
>> -- 
>> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>> Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

