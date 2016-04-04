Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76C6CE006C7; Mon,  4 Apr 2016 11:32:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-01.atm.binero.net (bin-mail-out-06.binero.net
	[195.74.38.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA4F7E00522
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 11:32:03 -0700 (PDT)
X-Halon-ID: 84526b5a-fa93-11e5-88ba-005056917a89
Authorized-sender: petter@technux.se
Received: from [192.168.1.11] (unknown [85.195.55.167])
	by bin-vsp-out-01.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Mon,  4 Apr 2016 20:31:59 +0200 (CEST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1459792452-2692-1-git-send-email-andrei@gherzan.ro>
From: =?UTF-8?Q?Petter_Mab=c3=a4cker?= <petter@technux.se>
Message-ID: <5702B35C.1070106@technux.se>
Date: Mon, 4 Apr 2016 20:33:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <1459792452-2692-1-git-send-email-andrei@gherzan.ro>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] README: Mention all the supported machines
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
X-List-Received-Date: Mon, 04 Apr 2016 18:32:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/04/2016 07:54 PM, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>   README | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/README b/README
> index 536926b..542b135 100644
> --- a/README
> +++ b/README
> @@ -73,7 +73,10 @@ revision: HEAD
>   a. source poky/oe-init-build-env rpi-build
>   b. Add needed layer to bblayers.conf:
>       - meta-raspberrypi
> -c. Set MACHINE to "raspberrypi"/"raspberrypi2" in local.conf
> +c. Set MACHINE in local.conf to one of the supported boards:
> +    - raspberrypi
> +    - raspberrypi2
> +    - raspberrypi3
>   d. bitbake rpi-hwup-image
>   e. dd to a SD card the generated sdimg file (use xzcat if rpi-sdimg.xz is used)
>   f. Boot your RPI.
Good, this is a tiny but important change! Should we also mention 
raspberrypi0? Currently it just includes raspberrypi.conf and the the 
raspberrypi0 MACHINEOVERRIDE isn't used for anything, but still it is a 
defined MACHINE. What do you think?

BR Petter

