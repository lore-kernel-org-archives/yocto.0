Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62B0BE0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 14:48:15 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>)
	id 1TrFzs-0001eb-VE; Fri, 04 Jan 2013 22:44:16 +0000
Message-ID: <50E75BF5.9080102@dynamicdevices.co.uk>
Date: Fri, 04 Jan 2013 22:47:17 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: mark.hatle@windriver.com
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
	<50E75B00.1000307@windriver.com>
In-Reply-To: <50E75B00.1000307@windriver.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 04 Jan 2013 22:48:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/01/2013 22:43, Mark Hatle wrote:
> On 1/4/13 2:56 PM, Alex J Lennon wrote:
>>
>> Can anybody advise on whether bitbake currently supports offloading of
>> build tasks onto multiple systems? Perhaps cloud based?
> 
> I see Chris Larson has already answer the main question here.. but I've got some 
> additional insight I can add.
> 
>> I'm thinking that it would be more efficient for me if I could bring up
>> a number of Amazon EC2 servers (or similar) then have bitbake
>> parallelise the build onto those servers to significantly reduce my
>> build times?
> 
> In the past I've had people ask me questions about remote builds, parallel 
> building packages, etc.  In the past when I've attempted to figure out if it 
> would be useful, the cost of the data transfer time always comes into play.  How 
> long does it take to simply perform the task locally vs go to the remote 
> machine, perform the task, and get the data back.  For a lot of the tasks that 
> OE does, the remote tasks will end up being slower on a reasonably modern i7 (or 
> similar Xeon) machine.  I'm not sure using something like a cloud server would 
> end up helping due to this.
> 

Thanks for your thoughts Mark.

Another idea that occurred was that it might be interesting if there
were some metrics available somewhere on recipe build times (are timing
metrics currently generated in any detail?).

Using that as a starting point it might then be possible to determine
how best to parallelise tasks?

>  From experience I'd say that if anything you'd likely want to modify the 
> bitbake scheduler with some type of locality information.  I.e. if you extract 
> the sources on a node, you most likely want to patch, configure, compile, 
> install, QA and package on that node as well.... but that also means a way to 
> establish node specific tmp/work space is needed for performance as well.
> 
>> I see bitbake supports a level of task parallelisation on a single box.
>>
>> Can parallelisation of build onto multiple systems be achieved?
> 
> All of the above are possible, but I suspect there is a lot of design and 
> refactoring required to come up with a system that is both efficient and fast.
> 
>> Is it something that should even be a goal?
> 
> It's not currently a goal.  But it does get asked about every now and then.  It 
> would be nice to have something more then anecdotal information about if it 
> would be a good idea or not.  This is the type of thing that I think would make 
> an excellent research project.  (Hey and if it makes things able to be built for 
> more people, faster, and cheaper great!  If not, we'd have a more informed 
> response to questions like this.)
> 
> --Mark
> 
>> Cheers,
>>
>> Alex
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 


