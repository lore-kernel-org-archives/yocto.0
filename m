Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EBE7E00C9B; Tue,  6 Aug 2019 11:05:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.52.148 listed in list.dnswl.org]
X-Greylist: delayed 2232 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Aug 2019 11:05:02 PDT
Received: from 10.mo5.mail-out.ovh.net (10.mo5.mail-out.ovh.net
	[46.105.52.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1D69E00C22
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 11:05:02 -0700 (PDT)
Received: from player771.ha.ovh.net (unknown [10.108.35.119])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id 2EFD9248ACC
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 19:27:49 +0200 (CEST)
Received: from 3mdeb.com (89-66-81-159.dynamic.chello.pl [89.66.81.159])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player771.ha.ovh.net (Postfix) with ESMTPSA id B9CCE8A9AF06
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 17:27:48 +0000 (UTC)
To: yocto@yoctoproject.org
References: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <c030a7ae-da1c-6e5e-dcf2-48bb1617180c@3mdeb.com>
Date: Tue, 6 Aug 2019 19:27:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a0b3676e80ee47cab3b6cbef25d77f22@sakuraus.com>
X-Ovh-Tracer-Id: 13300255603639594665
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddutddgudduvdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecu
Subject: Re: U-boot enable not working for Raspberry Pi3
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
X-List-Received-Date: Tue, 06 Aug 2019 18:05:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 06.08.2019 18:55, Greg Wilson-Lindberg wrote:
> I'm working with a Yocto Sumo build provided with Qt's boot2qt system. I'm trying to enable using Das U-boot to load Linux as a first step in trying to enable OSTree updates.
>
> In the meta-raspberrypi documentation is says to set:
>
> RPI_USE_U_BOOT = "1"
Hi. I'm working with the U-Boot and RPI3 at the moment as well. I'm 
using warrior revision and not using the
Qt at all though. In my case setting the above variable was enough to 
build the U-Boot and include it in
the final image.

In my case the platform boots into the Linux. I'm having issues with 
weird artifacts and resolution on the HDMI
display, though. I believe this may be related to the U-Boot patching 
DTB to add the
simplefb: 
https://github.com/u-boot/u-boot/blob/master/board/raspberrypi/rpi/rpi.c#L490
while I want to keep using  the brcm fb with userland etc. (proprietary 
stuff).

>
> to enable u-boot for the raspberrypi. I have set that variable in the top level local.conf file but I don't seem to be getting any changes in the build. Nothing in the cooker log shows building u-boot, and the start up screen doesn't show any u-boot messages.
>
> It appears that I'm missing necessary to turn u-boot on, can anybody shed some light on what is going on?
>
> Regards,
>
> Greg Wilson-Lindberg
> www.sakuraus.com

-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


