Return-Path: <maciej.borzecki@open-rnd.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A082BE009D6; Sun, 21 Dec 2014 09:08:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from akt59.rev.netart.pl (akt59.rev.netart.pl [85.128.150.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B339E004F2
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 09:08:43 -0800 (PST)
Received: from localhost (unknown [78.10.123.106])
	by open-rnd.nazwa.pl (Postfix) with ESMTP id 2FC8A37FAC4;
	Sun, 21 Dec 2014 18:08:40 +0100 (CET)
Date: Sun, 21 Dec 2014 18:08:39 +0100
From: Maciek Borzecki <maciej.borzecki@open-rnd.pl>
To: Fabian Schwartau <fabian@opencode.eu>
Message-ID: <20141221170839.GA2259@localhost.localdomain>
References: <5496E802.1050904@opencode.eu>
MIME-Version: 1.0
In-Reply-To: <5496E802.1050904@opencode.eu>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: Board files vs. device tree
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
X-List-Received-Date: Sun, 21 Dec 2014 17:08:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On 12/21 16:32, Fabian Schwartau wrote:
> Hi,
>
> I am building a system with yocto for a board which is similar to
> Beagleboard-xM. So I used beagleboard as a starter. However, the kernel is
> not booting. Uboot just tells me that he is starting the kernel and then
> nothing happens any more.
> So I guess there is something wrong with the pin muxing as my board is a
> little different from Beagleboard.
> At the moment I am using the device tree file for beagleboard-xm by passing
> it with the uboot command
> bootm ${loadaddr} - ${dtbaddr}
> I looked around in the kernel and had to notice that there are still several
> board  files build in the kernel.
> When there are several board files compiled into the kernel, how does the
> kernel determine the right one at boot time?

U-boot does that, based on what is found at runtime. Typically this
would employ checks for CPU IDs, EEPROM contents, GPIO line states
etc. then at some point the could would set board_name to some
value. IIRC the exact model of Beagle Bone is determined based on system
EEPROM contents. Then the default uboot script would check board_name
and pick proper *.dtb based on some hardcoded names.

The actual checks are here:
http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/am335x_evm.h;h=560e3bf7755d55d37c1e5e9fb5de162568d9cc9f;hb=HEAD#l176

Board checks here:
http://git.denx.de/?p=u-boot.git;a=blob;f=board/ti/am335x/board.h

> What does the kernel do if there are board files activated and I am also
> passing a device tree?

What do you mean by activated?

> Why are there still board files when the specific board has already a device
> tree file?

Because DTB defines what things are in the system and now how to operate
them. There still has to be some code that brings the system up for you
based on the board config. It's just that if you have a DTB, there's no
longer need to hardcode things such as CPU count, amount of RAM, flash
layout and so on. Off the top of my head, low level init or system reset
might be one of the things that end up in board specific code within the
kernel.

Also, IIRC dts is mandatory for all new ARM board being added to the
kernel. It has not always been like this, there's still a bunch of older
or obscure boards that do not have a dts at all.

--
Maciej Borzęcki
Senior Software Developer at Open-RnD Sp. z o.o., Poland
www.open-rnd.pl
mobile: +48 889 117 365, fax: +48 42 657 9079


Niniejsza wiadomość wraz z załącznikami może
zawierać chronione prawem lub poufne informacje i została
wysłana wyłącznie do wiadomości i użytku osób, do których
została zaadresowana. Jeśli wiadomość została otrzymana
przypadkowo zabrania się jej kopiowania lub rozsyłania do osób
trzecich. W takim przypadku uprasza się o natychmiastowe
zniszczenie wiadomości oraz poinformowanie nadawcy o
zaistniałej sytuacji za pomocą wiadomości zwrotnej.
Dziękujemy.

This message, including any attachments hereto,
may contain privileged or confidential information and is sent
solely for the attention and use of the intended addressee(s).
If you are not an intended addressee, you may neither use this
message nor copy or deliver it to anyone. In such case, you
should immediately destroy this message and kindly notify the
sender by reply email. Thank you.

