Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A25BEE0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 13:18:40 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TrEbC-0001ck-US; Fri, 04 Jan 2013 21:14:43 +0000
Message-ID: <50E746F7.6000306@dynamicdevices.co.uk>
Date: Fri, 04 Jan 2013 21:17:43 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
	<CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
In-Reply-To: <CABcZANndjkYoRecpoeUQcUzCevoVqCPWO-EpFCMKSaxh6QFoew@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Bitbake and task offloading onto multiple cloud-based servers
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
X-List-Received-Date: Fri, 04 Jan 2013 21:18:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/01/2013 21:08, Chris Larson wrote:
> 
> 
> On Fri, Jan 4, 2013 at 1:56 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk <mailto:ajlennon@dynamicdevices.co.uk>>
> wrote:
> 
>     Can anybody advise on whether bitbake currently supports offloading of
>     build tasks onto multiple systems? Perhaps cloud based?
> 
>     I'm thinking that it would be more efficient for me if I could bring up
>     a number of Amazon EC2 servers (or similar) then have bitbake
>     parallelise the build onto those servers to significantly reduce my
>     build times?
> 
>     I see bitbake supports a level of task parallelisation on a single box.
> 
>     Can parallelisation of build onto multiple systems be achieved?
> 
>     Is it something that should even be a goal?
> 
> 
> It's not supported today. It could be implemented, but nobody has made
> it a priority and done so.

Do you have any feeling for the level of difficulty of such an
implementation / what would have to change / how invasive it would be to
the codebase ?

I'm wondering if it could be along the lines of creating a "remote task"
class and then, say, having that class ssh into one of a pool of servers
(running a standard image with all tools preinstalled maybe) then
bitbaking the recipes for the particular and waiting on completion
before pulling back the output rpm/deb/ipkg ?

Things are usually more complex than expected when you get into the
nitty gritty though. What would the challenges be do you think?

Where would one start to look in the bitbake code to add this kind of
support in?

Thanks,

Alex


> -- 
> Christopher Larson


