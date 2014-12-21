Return-Path: <fabian@opencode.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 553E9E0085E; Sun, 21 Dec 2014 09:56:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from vs248254.vserver.de (vs248254.vserver.de [62.75.248.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D24FAE004F2
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 09:56:51 -0800 (PST)
X-No-Relay: not in my network
Received: from [192.168.1.19] (brsg-d9beffb9.pool.mediaWays.net
	[217.190.255.185])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: fabian@opencode.eu)
	by vs248254.vserver.de (Postfix) with ESMTPSA id A44858B385D8
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 18:56:49 +0100 (CET)
Message-ID: <549709E1.6060305@opencode.eu>
Date: Sun, 21 Dec 2014 18:56:49 +0100
From: Fabian Schwartau <fabian@opencode.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5496E802.1050904@opencode.eu>
	<20141221170839.GA2259@localhost.localdomain>
In-Reply-To: <20141221170839.GA2259@localhost.localdomain>
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
X-List-Received-Date: Sun, 21 Dec 2014 17:56:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit


Am 21.12.2014 um 18:08 schrieb Maciek Borzecki:
 > On 12/21 16:32, Fabian Schwartau wrote:
 >> Hi,
 >>
 >> I am building a system with yocto for a board which is similar to
 >> Beagleboard-xM. So I used beagleboard as a starter. However, the 
kernel is
 >> not booting. Uboot just tells me that he is starting the kernel and then
 >> nothing happens any more.
 >> So I guess there is something wrong with the pin muxing as my board is a
 >> little different from Beagleboard.
 >> At the moment I am using the device tree file for beagleboard-xm by 
passing
 >> it with the uboot command
 >> bootm ${loadaddr} - ${dtbaddr}
 >> I looked around in the kernel and had to notice that there are still 
several
 >> board  files build in the kernel.
 >> When there are several board files compiled into the kernel, how 
does the
 >> kernel determine the right one at boot time?
 >
 > U-boot does that, based on what is found at runtime. Typically this
 > would employ checks for CPU IDs, EEPROM contents, GPIO line states
 > etc. then at some point the could would set board_name to some
 > value. IIRC the exact model of Beagle Bone is determined based on system
 > EEPROM contents. Then the default uboot script would check board_name
 > and pick proper *.dtb based on some hardcoded names.
OK, but there he is only creating the default configuration I guess. As 
I am using my own uboot configuration file, this does not matter to me 
and I will load the dtb file my own using the mentioned uboot command. 
Is that correct?
 >
 > The actual checks are here:
 > 
http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/am335x_evm.h;h=560e3bf7755d55d37c1e5e9fb5de162568d9cc9f;hb=HEAD#l176
 >
 > Board checks here:
 > http://git.denx.de/?p=u-boot.git;a=blob;f=board/ti/am335x/board.h
 >
 >> What does the kernel do if there are board files activated and I am also
 >> passing a device tree?
 >
 > What do you mean by activated?
Well, they are activated in the kernel configuration by default. So 
there are several board files compiled into the kernel. I was wondering 
how the kernel will pick the correct one at boot time.
So if I choose the dtb manually, how is the kernel supposed to know 
which board file to use?
 >
 >> Why are there still board files when the specific board has already 
a device
 >> tree file?
 >
 > Because DTB defines what things are in the system and now how to operate
 > them. There still has to be some code that brings the system up for you
 > based on the board config. It's just that if you have a DTB, there's no
 > longer need to hardcode things such as CPU count, amount of RAM, flash
 > layout and so on. Off the top of my head, low level init or system reset
 > might be one of the things that end up in board specific code within the
 > kernel.
 >
 > Also, IIRC dts is mandatory for all new ARM board being added to the
 > kernel. It has not always been like this, there's still a bunch of older
 > or obscure boards that do not have a dts at all.
 >
 > --
 > Maciej Borzęcki
 > Senior Software Developer at Open-RnD Sp. z o.o., Poland
 > www.open-rnd.pl
 > mobile: +48 889 117 365, fax: +48 42 657 9079
 >
 >
 > Niniejsza wiadomość wraz z załącznikami może
 > zawierać chronione prawem lub poufne informacje i została
 > wysłana wyłącznie do wiadomości i użytku osób, do których
 > została zaadresowana. Jeśli wiadomość została otrzymana
 > przypadkowo zabrania się jej kopiowania lub rozsyłania do osób
 > trzecich. W takim przypadku uprasza się o natychmiastowe
 > zniszczenie wiadomości oraz poinformowanie nadawcy o
 > zaistniałej sytuacji za pomocą wiadomości zwrotnej.
 > Dziękujemy.
 >
 > This message, including any attachments hereto,
 > may contain privileged or confidential information and is sent
 > solely for the attention and use of the intended addressee(s).
 > If you are not an intended addressee, you may neither use this
 > message nor copy or deliver it to anyone. In such case, you
 > should immediately destroy this message and kindly notify the
 > sender by reply email. Thank you.
 >

