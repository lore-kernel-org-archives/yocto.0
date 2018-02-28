Return-Path: <jakob.hasse@smart-home-technology.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E990DE00DF8; Wed, 28 Feb 2018 06:43:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.26.49.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mxout012.mail.hostpoint.ch (mxout012.mail.hostpoint.ch
	[217.26.49.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC10DE00DF0
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 06:43:57 -0800 (PST)
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
	by mxout012.mail.hostpoint.ch with esmtp (Exim 4.90_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1er2xD-0006LP-Nm; Wed, 28 Feb 2018 15:43:35 +0100
Received: from [2a02:168:69e3:1:3ddc:d567:8a31:d230]
	by asmtp013.mail.hostpoint.ch with esmtpa (Exim 4.90_1 (FreeBSD))
	(envelope-from <jakob.hasse@smart-home-technology.ch>)
	id 1er2xD-000FvH-K6; Wed, 28 Feb 2018 15:43:35 +0100
X-Authenticated-Sender-Id: jakob.hasse@smart-home-technology.ch
To: "Maxin B. John" <maxin.john@intel.com>
References: <59544485-752b-a12c-a9af-8ca58d861946@smart-home-technology.ch>
	<20180228131325.GA29720@mbabyjoh-desk.ger.corp.intel.com>
From: Jakob Hasse <jakob.hasse@smart-home-technology.ch>
Message-ID: <d9bdf296-3628-68fc-2af0-2aa44a001594@smart-home-technology.ch>
Date: Wed, 28 Feb 2018 15:43:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180228131325.GA29720@mbabyjoh-desk.ger.corp.intel.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Changing the tty/UART of busybox
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
X-List-Received-Date: Wed, 28 Feb 2018 14:43:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hi Maxin,

thanks, this worked!

All the Best,
Jakob

On 28.02.2018 14:13, Maxin B. John wrote:
> Hi Jakob,
>
>> On Wed, Feb 28, 2018 at 11:15:42AM +0100, Jakob Hasse wrote:
>>
>> Hello,
>>
>> we need to change the tty on which busybox is sitting. Right now I could change
>> the UART for the kernel and all program output after the boot to our favorite
>> UART (via kernel cmd line). But the login promt and all interaction with the
>> device is still on the old UART. So I guess it's a busybox configuration issue.
>> Furthermore, when I try tty after login, it gives me: /dev/ttymxc4 (we want to use ttymx1).
>>
>> I looked here https://busybox.net/downloads/BusyBox.html and in menuconfig
>> for an option to change the UART interface but couldn't find any. Furthermore I added
>>
>> ::respawn:/sbin/getty -L ttymxc1 115200 vt100
>>
>> and this
>>
>> ttymxc1::respawn:/sbin/getty -L ttymxc1 115200 vt100
>>
>> to inittab to change the UART with no luck.
>> Could someone here point me to documentation or give me a hint to achive this?
> Generally, the console setting comes from our <machine>.conf. eg:
> for beaglebone:
> ./meta-yocto-bsp/conf/machine/beaglebone-yocto.conf:
> SERIAL_CONSOLE = "115200 ttyO0"
>
> This gets processed in bitbake.conf:
> SERIAL_CONSOLES ??= "${@d.getVar('SERIAL_CONSOLE').replace(' ', ';')}"
>
> later, based on the init manager:
> busybox, systemd-serialgetty, or sysvinit-inittab use it.
>
> In this case, updating the "<machine>.conf" should help.
>
>> Thanks in advance, all the Best,
>> Jakob
>>
>> -- 
>> Jakob Hasse
>> Software Developement
>>
>> E: jakob.hasse@smart-home-technology.ch
>> T: +41 44 552 02 66
>>
>> Smart Home Technology GmbH
>> www.smart-home-technology.ch
> Best Regards,
> Maxin

-- 
Jakob Hasse
Software Developement

E: jakob.hasse@smart-home-technology.ch
T: +41 44 552 02 66

Smart Home Technology GmbH
www.smart-home-technology.ch


