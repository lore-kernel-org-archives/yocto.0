Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D70A0E00A4F; Fri,  2 Nov 2018 06:53:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C1F5E00901
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 06:53:04 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wA2Dqu3O021819
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Nov 2018 06:52:58 -0700 (PDT)
Received: from server.local (128.224.22.203) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Fri, 2 Nov 2018 06:52:55 -0700
To: Kevin Hao <kexin.hao@windriver.com>, Heiko Schocher <hs@denx.de>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <37f65ff6-628b-2d27-88f7-a22dab607398@windriver.com>
Date: Fri, 2 Nov 2018 09:52:54 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181102085916.GA31329@pek-khao-d2>
Cc: yocto@yoctoproject.org
Subject: Re: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
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
X-List-Received-Date: Fri, 02 Nov 2018 13:53:06 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-11-02 4:59 AM, Kevin Hao wrote:
> On Fri, Nov 02, 2018 at 09:01:34AM +0100, Heiko Schocher wrote:
>> Hello Kevin,
>>
>> Am 01.11.2018 um 03:18 schrieb Kevin Hao:
>>> On Wed, Oct 31, 2018 at 02:23:00PM +0100, Heiko Schocher wrote:
>>>> Hello all,
>>>>
>>>> just builded core-image-minimal with current head of thud branch for
>>>> the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.14.78",
>>>> installed the resulting sd card image and boot it, and get:
>>>>
>>>> INIT: Id "O0" respawning too fast: disabled for
>>>> 5 minutes
>>>>
>>>> Reason seems to be:
>>>>
>>>> meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
>>>>
>>>> SERIAL_CONSOLES = "115200;ttyO0"
>>>>
>>>> shouldn't this be
>>>>
>>>> SERIAL_CONSOLES = "115200;ttyS0"
>>>>
>>>> With this fix, sd card image boot fine ... may I oversee seomthing
>>>> obvious ?
>>>
>>> No, it should be 'ttyO0'. It is set by the omap serial driver. You can
>>> refer the following in platform_data/serial-omap.h:
>>>     #define OMAP_SERIAL_NAME        "ttyO"
>>
>> Yes, you are right, but I see with linux kernel 4.14.78 from
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=linux-4.14.y&id=e7405910ca5553eae8744af4e5c03e64ee048cb1
>>
>> and I see:
>>
>> [    0.000000] Linux version 4.14.78 (oe-user@oe-host) (gcc version 8.2.0
>> (GCC)) #1 Thu Nov 1 10:51:09 UTC 2018
>> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c5387d
>> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
>> [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
>> [...]
>> [    0.362878] Serial: 8250/16550 driver, 6 ports, IRQ sharing disabled
>> [    0.365758] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq = 30, base_baud = 3000000) is a 8250
>> [    1.030465] console [ttyS0] enabled
>>
>> So definitely a ttyS0 ...
> 
> OK, so you don't use the linux-yocto kernel, you must not use the Yocto kernel
> meta either. The reason that you got a ttyS0 here is that you use the
> 8250_omap.c driver. But in Yocto we use the omap-serial.c driver. You can
> workaround this issue by enabling SERIAL_8250_OMAP_TTYO_FIXUP.

Thanks Kevin!

I had missed that detail in my reply.

Bruce

> 
> Thanks,
> Kevin
> 
>>
>> bye,
>> Heiko
>>>
>>> Thanks,
>>> Kevin
>>>
>>>>
>>>> bye,
>>>> Heiko
>>>> -- 
>>>> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>>>> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>>>> Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
>>>> -- 
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> -- 
>> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>> Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de
>>
>>


