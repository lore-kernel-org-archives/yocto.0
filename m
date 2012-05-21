Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA5DE0030B
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 11:56:06 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AAF47F811FB; Mon, 21 May 2012 12:56:05 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id BDF40F811F9;
	Mon, 21 May 2012 12:56:04 -0600 (MDT)
Message-ID: <4FBA8FC4.8070400@mlbassoc.com>
Date: Mon, 21 May 2012 12:56:04 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Andrei Gherzan <andrei@gherzan.ro>
References: <4FBA8091.1040509@mlbassoc.com>
	<CAK18fxFmxGnEvwvutufoRjhfTfrZhi8qJ5JvJey0n3RS3sABSQ@mail.gmail.com>
In-Reply-To: <CAK18fxFmxGnEvwvutufoRjhfTfrZhi8qJ5JvJey0n3RS3sABSQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Trouble building RasberryPi with Yocto/Poky
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 18:56:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-21 12:47, Andrei Gherzan wrote:
> Give some more output please.

That's about all there is - you can see the layer versions, it's breaking during the
kernel install.  Looks like there may be some package dependency that's missing - where
does the 'lib/__firmware/ti_3410.fw' file get created?

The full (install) log for the kernel has no other useful info.

Maybe some guidance on how this was built, e.g. how does one build a bootable
image using OE & meta-raspberrypi?  what image to build?

>
> On May 21, 2012 8:51 PM, "Gary Thomas" <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I tried to build a simple image using just Poky+meta-raspberrypi
>     Build Configuration:
>     BB_VERSION        = "1.15.2"
>     TARGET_ARCH       = "arm"
>     TARGET_OS         = "linux-gnueabi"
>     MACHINE           = "raspberrypi"
>     DISTRO            = "poky"
>     DISTRO_VERSION    = "1.2+snapshot-20120521"
>     TUNE_FEATURES     = "armv6 vfp arm1176jzfs"
>     TARGET_FPU        = "vfp"
>     meta
>     meta-yocto        = "master:__f24d8df3af52e2a2911233746ad69f__8899bbdf93"
>     meta-raspberrypi  = "master:__d1e802561ab5c70680fd6ee70a4779__1fe78aa977"
>
>     When I ran 'bitbake core-image-sato', I got this error:
>
>     | make[1]: *** No rule to make target
>     `/local/rpi_poky/tmp/work/__raspberrypi-poky-linux-__gnueabi/linux-raspberrypi-3.1.__9-rpi+r1+__git0ec4154d64ebba48ca2446cde60__a90546311defc-r1/image/lib/__firmware/./',
>     needed by
>     `/local/rpi_poky/tmp/work/__raspberrypi-poky-linux-__gnueabi/linux-raspberrypi-3.1.__9-rpi+r1+__git0ec4154d64ebba48ca2446cde60__a90546311defc-r1/image/lib/__firmware/ti_3410.fw'.
>       Stop.
>
>     Any ideas how to move forward?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

