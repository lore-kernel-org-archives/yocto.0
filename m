Return-Path: <gley-yocto@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 408E54C80093
	for <yocto@yoctoproject.org>; Sun,  6 Mar 2011 02:18:41 -0600 (CST)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Pw9Al-00046L-Lu
	for yocto@yoctoproject.org; Sun, 06 Mar 2011 09:18:39 +0100
Received: from ppp079166108009.dsl.hol.gr ([79.166.108.9])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 06 Mar 2011 09:18:39 +0100
Received: from gmane by ppp079166108009.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sun, 06 Mar 2011 09:18:39 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sun, 06 Mar 2011 10:18:26 +0200
Organization: Reliable Embedded Systems
Message-ID: <ikvg0j$khm$1@dough.gmane.org>
References: <iktkgj$rpj$1@dough.gmane.org> <4D725AB1.8040309@linux.intel.com>
	<4D72DACE.6050209@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166108009.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
In-Reply-To: <4D72DACE.6050209@windriver.com>
Subject: Re: yocto supported freescale eval boards
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 06 Mar 2011 08:18:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Darren, Bruce,

On 03/06/2011 02:52 AM, Bruce Ashfield wrote:
>>>
>>>
>>> Besides the PPC the iMX31ADS seems to be supported as well.
> 
> The imx31ads is supported by older non linux-yocto recipes, so it
> may have some bit rot at the moment. Until it gets refreshed onto
> a linux-yocto base, your mileage will vary with it.

Thanks for the hint;)

> 
>>
>> We're currently using the following board.
>>
>> http://search.digikey.com/scripts/DkSearch/dksus.dll?PName?Name=MPC8315E-RDBA-ND&Site=US&Lang=EN
>>
> 
> Confirmed. This is the board we are currently using.
> 
> 
> There are definitely plans to update/refresh the FSL/e500 board
> options. Unofficially there's a whole set of boards that will
> work fine, and there's a good pool of good quality BSPs that are
> viable options.
> 
> I hesitate to say more, since nothing has been quite chosen yet
> and I'd be speculating or worse misleading at this point. But
> a newer e500 based board is something that will arrive once
> everything falls into place.

Do you happen to have some time estimation for this?

> 
> That being said, I can suggest/help with the addition of any of
> a number of FSL powerpc based boards, it all depends on what
> the requirements are for the board. Does it just have to
> be readily available ? Less than 'x' dollars ? Any particular
> peripheral support ?

I'm doing a 5 days "Introduction to Embedded Linux" and a 5 days "Device
Drivers and Kernel Internals" training which are pretty much hardware
independent. Just want to avoid using LTIB and want to use yocto
instead, since a "mainline" kernel is definitely preferred over whatever
comes with LTIB. Most likely mainline will work with most of the powerpc
based boards as long as I don't need any fancy peripherals.

Thanks for the offer to help me adding a board. I'll have a chat with my
customer and will let you know.

Regards,

Robert

> 
> Cheers,
> 
> Bruce
> 
>>
> 

...I read the system requirements label on a software package recently.
It said "requires Windows NT or better". So I installed Unix. -- from a FAQ

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



