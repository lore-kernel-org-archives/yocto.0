Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5CC7E01211
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2011 12:15:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7HJFMXc027160
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 17 Aug 2011 12:15:22 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 17 Aug 2011 12:15:21 -0700
Message-ID: <4E4C1347.4050100@windriver.com>
Date: Wed, 17 Aug 2011 15:15:19 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>	<4E45D1F2.6040902@windriver.com>	<84AA8A6F-7556-4965-93ED-BDD4322047B3@keylevel.com>	<4E4BDBAE.1060402@windriver.com>
	<8232FE7C-6344-44C9-A87C-24C5AABF2E06@keylevel.com>
In-Reply-To: <8232FE7C-6344-44C9-A87C-24C5AABF2E06@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring a layer to support multiple targets
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
X-List-Received-Date: Wed, 17 Aug 2011 19:15:21 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-17 03:07 PM, Chris Tapp wrote:
> On 17 Aug 2011, at 16:18, Bruce Ashfield wrote:
>
>> In this sense, the defconfig is simply a name to trigger
>> specific processing. Just capture and call your .config
>> 'defconfig' and you'll get a translation of those settings
>> into the build.
>
>
> That's what I've done. I used 'make xconfig' to modify the .config file
> (resulting from bitbake -c compile virtual/kernel). However, turning off
> CONFIG_USB_SERIAL and saving the result as a defconfig isn't quite
> what's needed.
>
> Consider the .config fragment:
>
> CONFIG_USB_SERIAL=y
> CONFIG_USB_SERIAL_FTDI_SIO=y
>
> The corresponding defconfig fragment produced when usb serial is
> disabled in xconfig results is simply:
>
> # CONFIG_USB_SERIAL is not set
>
> When the defconfig is merged with the .config I get:
>
> # CONFIG_USB_SERIAL is not set
> CONFIG_USB_SERIAL_FTDI_SIO=y
>
> This means the FTDI module is still present in the kernel.
>
> I can get rid of these by manually adding 'not set' entries in the
> defconfig, but it would be easier if I could replace the .config rather
> than patch it.

The model is that you must explicitly chose values to modify
them, otherwise, they flow through. Last through the gate wins.
If you don't speak, others parts speak for the configuration.

In this case, you must be inheriting the common-pc kernel
configuration.

It's something to configure for the future, but that is working
as designed at the moment. The point is to be able to set a policy
for options that inheriting BSPs must explicitly disable.

The solutions two this are:

   - inherit from a base branch vs common-pc (assuming that
     I guessed right)
   - do the explicit disabling of already set options
   - convince us that the common-pc shouldn't be turning this
     on and trickle this option out to the leaf BSPs.

Cheers,

Bruce


>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


