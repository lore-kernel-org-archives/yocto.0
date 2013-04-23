Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0624BE014D1
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 05:34:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id ACB6BF811E0; Tue, 23 Apr 2013 06:34:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE0B9F811D8;
	Tue, 23 Apr 2013 06:34:30 -0600 (MDT)
Message-ID: <51767FE1.5060809@mlbassoc.com>
Date: Tue, 23 Apr 2013 06:34:41 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <00da01ce401a$852365e0$8f6a31a0$@gmail.com>
	<CAJTo0Lbf_TOUcuYCJKsqb6n6RfnL6W9+kSmaJWV-A7AszZ5R4g@mail.gmail.com>
	<010401ce401e$3399b130$9acd1390$@gmail.com>
In-Reply-To: <010401ce401e$3399b130$9acd1390$@gmail.com>
Subject: Re: Splashscreen using psplash
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
X-List-Received-Date: Tue, 23 Apr 2013 12:34:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-04-23 06:29, Andreas Enbacka wrote:
> Hello,
>
> Thanks a lot for info, I will try with that.
>
> //Andreas
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: 23. huhtikuuta 2013 15:09
> To: Andreas Enbacka
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Splashscreen using psplash
>
> On 23 April 2013 13:03, Andreas Enbacka <aenbacka@gmail.com> wrote:
>> I am creating a custom image based on core-image-sato, with a custom splash
>> screen (using psplash). I have been able to replace the default yocto
>> splashscreen in my image,  however, my question is whether it is possible to
>> hide the initial console output text displayed on the screen prior to
>> showing the splashscreen?  Currently most of the boot process is completed
>> at the stage when the splash screen is being displayed on screen. This is
>> because the image should be used as part of an embedded device, and the
>> end-user should not see any traces of the underlying linux distro.
>
> Passing "quiet" to the kernel (APPEND+="quiet" in local.conf will do
> it for testing) should stop the majority of the text.  A full
> splash-from-bootloader is possible if you have a bootloader that
> displays the image, and then a silent kernel from there.

Note: AFAICT this will only work if booting using grub or syslinux, not U-Boot
or some other embedded bootstrap.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

