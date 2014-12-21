Return-Path: <fabian@opencode.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBE1BE00927; Sun, 21 Dec 2014 07:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from vs248254.vserver.de (vs248254.vserver.de [62.75.248.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28C81E00830
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 07:32:21 -0800 (PST)
X-No-Relay: not in my network
Received: from [192.168.1.19] (brsg-d9beffb9.pool.mediaWays.net
	[217.190.255.185])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: fabian@opencode.eu)
	by vs248254.vserver.de (Postfix) with ESMTPSA id 55C418B385D8
	for <yocto@yoctoproject.org>; Sun, 21 Dec 2014 16:32:19 +0100 (CET)
Message-ID: <5496E802.1050904@opencode.eu>
Date: Sun, 21 Dec 2014 16:32:18 +0100
From: Fabian Schwartau <fabian@opencode.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Board files vs. device tree
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
X-List-Received-Date: Sun, 21 Dec 2014 15:32:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am building a system with yocto for a board which is similar to 
Beagleboard-xM. So I used beagleboard as a starter. However, the kernel 
is not booting. Uboot just tells me that he is starting the kernel and 
then nothing happens any more.
So I guess there is something wrong with the pin muxing as my board is a 
little different from Beagleboard.
At the moment I am using the device tree file for beagleboard-xm by 
passing it with the uboot command
bootm ${loadaddr} - ${dtbaddr}
I looked around in the kernel and had to notice that there are still 
several board  files build in the kernel.
When there are several board files compiled into the kernel, how does 
the kernel determine the right one at boot time?
What does the kernel do if there are board files activated and I am also 
passing a device tree?
Why are there still board files when the specific board has already a 
device tree file?

