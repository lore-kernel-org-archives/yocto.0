Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFF9AE00B30; Mon,  4 Apr 2016 07:32:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50DA6E00968
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 07:32:47 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 4775068A019; Mon,  4 Apr 2016 15:32:43 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D24CE68A019;
	Mon,  4 Apr 2016 15:32:42 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 91EB86740C50;
	Mon,  4 Apr 2016 16:32:41 +0200 (CEST)
To: yocto@yoctoproject.org
References: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57027B09.2090808@mlbassoc.com>
Date: Mon, 4 Apr 2016 16:32:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1459776291-5464-1-git-send-email-twoerner@gmail.com>
Subject: Re: [PATCH][meta-raspberrypi 1/2] raspberrypi3: serial console
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
X-List-Received-Date: Mon, 04 Apr 2016 14:32:52 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/04/2016 03:24 PM, Trevor Woerner wrote:
> The serial console on the Raspberry Pi 3 is located at /dev/ttyS0 and not
> /dev/ttyAMA0.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   conf/machine/raspberrypi3.conf | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/conf/machine/raspberrypi3.conf b/conf/machine/raspberrypi3.conf
> index 1b73f2f..2c3df41 100644
> --- a/conf/machine/raspberrypi3.conf
> +++ b/conf/machine/raspberrypi3.conf
> @@ -7,3 +7,5 @@ MACHINEOVERRIDES = "raspberrypi2:${MACHINE}"
>   MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-brcm43430"
>
>   include conf/machine/raspberrypi2.conf
> +
> +SERIAL_CONSOLE_raspberrypi3 = "115200 ttyS0"
>

Why the _raspberrypi3 modifier?  Wouldn't SERIAL_CONSOLE = "115200 ttyS0" do?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

