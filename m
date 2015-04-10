Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0EBEE009A4; Fri, 10 Apr 2015 10:36:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 650ECE00961
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 10:36:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E4EF3F811E2; Fri, 10 Apr 2015 11:36:45 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 21DF4F811D7;
	Fri, 10 Apr 2015 11:36:45 -0600 (MDT)
Message-ID: <55280A40.50605@mlbassoc.com>
Date: Fri, 10 Apr 2015 11:37:04 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Erik Bolton <EBolton@agjunction.com>, 
	Yocto Project <yocto@yoctoproject.org>
References: <5527E83B.6030006@mlbassoc.com>
	<DM2PR0201MB108770242C2114A0D12F29CBCCFA0@DM2PR0201MB1087.namprd02.prod.outlook.com>
In-Reply-To: <DM2PR0201MB108770242C2114A0D12F29CBCCFA0@DM2PR0201MB1087.namprd02.prod.outlook.com>
Subject: Re: [meta-raspberrypi] mesa & gl problems
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
X-List-Received-Date: Fri, 10 Apr 2015 17:36:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-10 10:25, Erik Bolton wrote:
> Gary:
>
> Something is still pulling in libjpeg. It's possible you've got a recipe that depends on libjpeg directly. Check any modified recipes or custom stuff you've added.
>

I'll give it a look.

> The mesa errors are a little more interesting. Typically that means a graphics driver is being included that provides GL/GLES along with mesa (which also provides the same functionality).
>
> Are you sure the mesa errors only started after you tried to make libjpeg-turbo the preferred jpeg provider?

Yes, if I remove those lines from by local.conf, all of these errors vanish.

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Friday, April 10, 2015 8:12 AM
> To: Yocto Project
> Subject: [yocto] [meta-raspberrypi] mesa & gl problems
>
> If I try to use the 'libjpeg-turbo' package from meta-oe (required to build 'vlc'), I get these errors:
>
> ERROR: Multiple .bb files are due to be built which each provide virtual/libgles2 (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb
> /home/local/poky-cutting-edge/meta-raspberrypi/recipes-graphics/userland/userland_git.bb).
>    This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide virtual/mesa (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb
> /home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb).
>    This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide jpeg (/home/local/poky-cutting-edge/meta-oe/recipes-core/jpeg/libjpeg-turbo_8d+1.4.0.bb
> /home/local/poky-cutting-edge/meta/recipes-core/jpeg/jpeg_8d.bb).
>    This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide virtual/libgl (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa-gl_10.4.4.bb
> /home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb).
>    This usually means one provides something the other doesn't and should.
> ERROR: Multiple .bb files are due to be built which each provide virtual/egl (/home/local/poky-cutting-edge/meta/recipes-graphics/mesa/mesa_10.4.4.bb
> /home/local/poky-cutting-edge/meta-raspberrypi/recipes-graphics/userland/userland_git.bb).
>    This usually means one provides something the other doesn't and should.
>
> This happens when I add these lines to my local.conf:
>     PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
>     PREFERRED_PROVIDER_jpeg-native = "libjpeg-turbo-native"
>
> How do I fix this?
>
> Note: I've successfully done this on many other targets (qemuXXX,
> i.MX6) - it's only failing on RaspberryPi
>
> Thanks for any pointers
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> Disclaimer: This message contains information that may be privileged or confidential and is the property of AgJunction Inc and its subsidiaries. It is intended only for the person to whom it is addressed. If you are not the intended recipient, you are not authorized to read, print, retain, copy, disseminate, distribute, or use this message or any part thereof. If you receive this message in error, please notify the sender immediately and delete all copies of this message.
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

