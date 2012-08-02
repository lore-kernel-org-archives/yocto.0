Return-Path: <jfabernathy@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25071E013DB
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 10:21:28 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so61252ghb.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 10:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=8ZKHUIsrlF5UbYvLWDggs1Ft9iMNnPA8xfjhEbTmHLg=;
	b=QhSFfkB1kWfKyi74BvhKDRI+9/Y5dPdaCC2UjuEjDe5jKw94/UfgwReNs1AUastC1b
	rgvJBG4VexK6Rew4DJyAWSBV/BR4+j2QPaSxfr11hIA62Q5WBwAQ+B32+1NOAOyQCWYm
	x/BVqOjY5yk6Xk8Ad5phUEVEb1j1MYSQY7ZzTr2EJFV7cAc0/hEsD+TFPbbOTcgtqQVZ
	kJBhXMRgIaEVNbmNPvQiglh88gJuSw+FvdX2WjAz2uYcNOX5MG4tSl54hxZEqOSIfLGk
	XJiIOUoXqPuXFoEWj86aGW95CEL46Ls8Ge2sQ4+H4Ul7tUxG/wyGZwGZLMhLokdrz66K
	Id4g==
Received: by 10.236.87.194 with SMTP id y42mr21988577yhe.81.1343928087616;
	Thu, 02 Aug 2012 10:21:27 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id z5sm5739821ang.7.2012.08.02.10.21.26
	(version=SSLv3 cipher=OTHER); Thu, 02 Aug 2012 10:21:27 -0700 (PDT)
Message-ID: <501AB716.1010702@gmail.com>
Date: Thu, 02 Aug 2012 13:21:26 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1343927239.27054.YahooMailNeo@web121603.mail.ne1.yahoo.com>
In-Reply-To: <1343927239.27054.YahooMailNeo@web121603.mail.ne1.yahoo.com>
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Thu, 02 Aug 2012 17:21:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2012 01:07 PM, maniacbug wrote:
>> Got around this issue by checking out the denzil branch on meta-ti and
>> poky.  then my core-image-sato builds and boots.
>
> Right, that is what I was going to suggest.
>
>
> One of us should fix the pulseaudio issue on master and send in a patch.
>
probably going to be you. that's a long ways away from my skill level. :-)
>> Anyone know how to get the wireless and HW accelerated video playback to
>> work with the pandaboard and Yocto? maybe a different image?
> meta-ti list is probably going to be the place to find this out. Or at least find clues. Unfortunately, it seems that there is not a pandaboard expert in the Yocto house.
>
> The meta-ti layer has been extracted from Angstrom, so there seem to be plenty dependencies directly on OE. Often when building more hardware-specific recipies, these dependencies crop up. So Yocto on Pandaboard is definitely still a work in progress.
>
>
> I have gotten video to work by porting the libav recipe from OE. Happy to send it to you if you want to try. There is no evidence to suggest this is hardware-accellerated.  HOWEVER, it does play 2Mbps video without stuttering. So from my perspective, whether it's hw accellerated is not important :)
I would say it's hardware accelerated because video under Ubuntu is like 
a slide show.  2-3 sections between frames.  I don't think HW 
acceleration was working there either.
>
> The downside is that AUDIO is working hardly at all. This is my current challenge, and I'll definitely report progress to the meta-ti list.
I need to test, but on Ubuntu 12.04 with the OMAP4 extras, I had audio 
only working via HDMI audio.  I'll test to see what happens on Yocto.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


