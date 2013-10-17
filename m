Return-Path: <andrea.adami@gmail.com>
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7365FE016C4
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:51:36 -0700 (PDT)
Received: by mail-la0-f49.google.com with SMTP id ev20so1841866lab.22
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:51:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=E+DflYtuQ3clPiVfDVQpfl7k3IFeB2dmIShPX6OD438=;
	b=jc+U4sjUewuJfijkcclieYG6ye5JdEJsRaIjoumKWdvOUuEI1Og5ayaAWpsur88Ejc
	3d0SxkrgG9C9TAmhVNatWhIk8hfW9vgyJbHHfrwJVknXrxZ8AxIafBXvLiL6E/HieKya
	70qnYyLDUWdXaWvmSdxkH1GZvI19QEAGkLOWcnKKwRktcGk/FzYhSD05yOJ8j7ez41Eg
	mvz4Uo2m8kNCfxBT3FWty7FmJShvUS4xCEfvbpvLSxVKJk2LAwlGsfcs7Dx8jH4hYuUk
	zT5UlaicSWjGSuEaeriRzb+BWPDAzSBO0P2ncICVy+w43VpZ6qnbS2Jz8gTBjcqES/+L
	OYKA==
MIME-Version: 1.0
X-Received: by 10.112.182.7 with SMTP id ea7mr64792lbc.63.1382017895202; Thu,
	17 Oct 2013 06:51:35 -0700 (PDT)
Received: by 10.112.52.74 with HTTP; Thu, 17 Oct 2013 06:51:35 -0700 (PDT)
In-Reply-To: <525FE3C9.3070003@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
Date: Thu, 17 Oct 2013 15:51:35 +0200
Message-ID: <CAAQYJAtzSheOwBecK+SqgnRFQd8Uhq4RZHhEi855fVurirjOZQ@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 17 Oct 2013 13:51:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Oct 17, 2013 at 3:19 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-10-17 09:15 AM, Diego Sueiro wrote:
>>
>>
>> 2013/10/17 Bruce Ashfield <bruce.ashfield@windriver.com
>> <mailto:bruce.ashfield@windriver.com>>
>>
>>
>>
>>
>>         I expected to get this working "out-of-box".
>>
>>
>>     Did you do a  "bitbake -e <your kernel recipe>" ? and then look at
>>     the SRC_URI ? That will tell us if for some reason the beagle layer's
>>     defconfig is on there twice.
>>
>> I'll do it after my current build gets finished.
>>
>>
>>
>>         Why config fragments did not worked too?
>>
>>
>>     recipes must inherit linux-yocto to get that support, since it is
>>     optional and not something we force on all kernel recipes. So if you
>>     want fragment support, creating your own kernel recipe, based on the
>>     one in the layers you are using, which inherits linux-yocto is one
>>     route to take.
>>
>> Can I do it on bbappend, or do I need to copy the entirely
>> linux-mainline_3.8.bb <http://linux-mainline_3.8.bb> from
>>
>> meta-bleagleboard to my layer and add "inherit linux-yocto"?
>> Do I need to "inherit linux-yocto", "require
>> recipes-kernel/linux/linux-yocto.inc" or "inherit kernel-yocto"?
>
>
> Look at oe-core/meta-skeleton for the custom kernel recipe example.
> It has the inherit/include combinations that you need to follow.
>
>
>> My concern is: if doing this to just have the config fragment feature,
>> I'll possibly mess up the kernel build.
>
>
> It shouldn't. It only adds to existing phases, and doesn't make
> any changes. I've tested it in many combinations and it should
> work fine.
>
> If something breaks, I'd like to know, so we can fix it.
>
> Bruce
>
>
>>
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> /*long live rock 'n roll*/
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

As a final note, the defconfig is overwritten by the
do_configure_prepend() code in linux.inc.
This is how kernel recipes did work before linux-yocto.

Cheers

Andrea

