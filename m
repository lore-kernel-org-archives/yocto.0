Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1512BE00B53; Thu, 12 Oct 2017 11:32:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,T_FILL_THIS_FORM_SHORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.0 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
Received: from mailrelay1-2.pub.mailoutpod1-cph3.one.com
	(mailrelay1-2.pub.mailoutpod1-cph3.one.com [46.30.212.0])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C873EE008A4
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=yfgboEoTqQDaMg8Gbw/xTVqgX62dGX8eHyfQAQFO7r8=;
	b=L8mPRa5x3BUZpCqU35Qouj2vyrQJsN0y/jSNdbEv+yu9G4FRakSStRg2Nc1g8CB9dWh4QNlMtFRDH
	8cdPQ0DMkzrGCNDWkCzFdg9/gCw3J1vxakyetONsPGcuQCqEVQWwu7R6CorTIttYW6f0Ell5fKXDJJ
	xhz8p0WqEWwvsekE=
X-HalOne-Cookie: 16a0efdce47e49fc15eac6d85e9ce1f5d66bbd12
X-HalOne-ID: b53d93b3-af7b-11e7-a520-b8ca3afa9d73
Received: from [192.168.178.20] (unknown [89.12.11.151])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id b53d93b3-af7b-11e7-a520-b8ca3afa9d73;
	Thu, 12 Oct 2017 18:32:31 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAAkg2-n4nmbTHezWJk-JTjABhVEgdNyWGtJVqkEJ2KD9tfX7HA@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <d68b3cf0-ecd5-1bd2-3e27-e57687601202@embexus.com>
Date: Thu, 12 Oct 2017 20:32:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAAkg2-n4nmbTHezWJk-JTjABhVEgdNyWGtJVqkEJ2KD9tfX7HA@mail.gmail.com>
Subject: Re: possible to append or patch existing machine .conf file?
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
X-List-Received-Date: Thu, 12 Oct 2017 18:32:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US


Hi,

On 12.10.2017 12:32, Bernd wrote:
> Suppose I have the following bugfix patch for a 3rd party machine conf
> file I am using:
>
> diff --git a/conf/machine/colibri-vf.conf b/conf/machine/colibri-vf.conf
> index 3ddef79..ba47488 100644
> --- a/conf/machine/colibri-vf.conf
> +++ b/conf/machine/colibri-vf.conf
> @@ -35,6 +35,6 @@ MKUBIFS_ARGS = " -c 8112 -e 124KiB -m 2KiB -F"
>   UBINIZE_ARGS = " -p 128KiB -m 2048 -s 2048"
>   UBI_VOLNAME = "rootfs"
>
> -SERIAL_CONSOLE ?= "115200 ttyLP0"
> +SERIAL_CONSOLE = "115200 ttyLP0"
>
>   MACHINE_FEATURES += "usbgadget usbhost vfat alsa touchscreen"
>
> Is there a proper way to somehow temporarily add something to my layer
> to apply this patch until it makes its way upstream and into the
> branch I am using? Or should I make my own machine file, include the
> original one and then change the variable?
you can add to local.conf or distro.conf :

include conf/machine/${MACHINE}-extra.conf

then create in your meta layer or bsp layer :

conf/machine/beaglebone-extra.conf
conf/machine/rasberrypi-extra.conf
conf/machine/xyz-extra.conf

which contains overrides for your machine settings.
Note that is an include and not require, which means that if you machine 
has no *extra.conf then it's simply skkiped ( no overrides)
>
> So far I have not found any elegant way to otherwise force this
> variable to its correct value in my image recipe, the only way I have
> found to work around this bug is to .bbappend the inittab recipe where
> this variable is actually used and change the value of another
> variable (SERIAL_CONSOLES, note the S at the end) which is derived
> from SERIAL_CONSOLE right there in this bbappend file. This seems to
> help.
>
> But while doing this I have also noticed a strange anomaly in the
> output of bitbake -e:
>
> * When I change the variable in my image recipe then bitbake -e will
> show another "set" access and both variables SERIAL_CONSOLE and
> SERIAL_CONSOLES will have the correct value as intended by me but the
> produced image will have the **wrong** entry in its inittab.
>
> * When I bbappend the inittab recipe to set SERIAL_CONSOLES right
> there where it is used then my final image will have a correct inittab
> and the serial console will work bit there is **no** mention of that
> variable change in the output of bitbake -e
>
> * Only when I change the machine conf file iitself to set the variable
> then bitbake -e and the produced image both show the correct entry.
> Why does it behave that way?

-- 
Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Tel.     : +4971415074546
Mobile   : +4917662901545
Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com


