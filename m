Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A23F1E0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 14:43:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r04Mh3fa018309
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 4 Jan 2013 14:43:03 -0800 (PST)
Received: from msp-dhcp13.wrs.com (172.25.34.13) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Fri, 4 Jan 2013 14:43:03 -0800
Message-ID: <50E75B00.1000307@windriver.com>
Date: Fri, 4 Jan 2013 16:43:12 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
	<50E741F0.50303@dynamicdevices.co.uk>
In-Reply-To: <50E741F0.50303@dynamicdevices.co.uk>
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
X-List-Received-Date: Fri, 04 Jan 2013 22:43:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/4/13 2:56 PM, Alex J Lennon wrote:
>
> Can anybody advise on whether bitbake currently supports offloading of
> build tasks onto multiple systems? Perhaps cloud based?

I see Chris Larson has already answer the main question here.. but I've got some 
additional insight I can add.

> I'm thinking that it would be more efficient for me if I could bring up
> a number of Amazon EC2 servers (or similar) then have bitbake
> parallelise the build onto those servers to significantly reduce my
> build times?

In the past I've had people ask me questions about remote builds, parallel 
building packages, etc.  In the past when I've attempted to figure out if it 
would be useful, the cost of the data transfer time always comes into play.  How 
long does it take to simply perform the task locally vs go to the remote 
machine, perform the task, and get the data back.  For a lot of the tasks that 
OE does, the remote tasks will end up being slower on a reasonably modern i7 (or 
similar Xeon) machine.  I'm not sure using something like a cloud server would 
end up helping due to this.

 From experience I'd say that if anything you'd likely want to modify the 
bitbake scheduler with some type of locality information.  I.e. if you extract 
the sources on a node, you most likely want to patch, configure, compile, 
install, QA and package on that node as well.... but that also means a way to 
establish node specific tmp/work space is needed for performance as well.

> I see bitbake supports a level of task parallelisation on a single box.
>
> Can parallelisation of build onto multiple systems be achieved?

All of the above are possible, but I suspect there is a lot of design and 
refactoring required to come up with a system that is both efficient and fast.

> Is it something that should even be a goal?

It's not currently a goal.  But it does get asked about every now and then.  It 
would be nice to have something more then anecdotal information about if it 
would be a good idea or not.  This is the type of thing that I think would make 
an excellent research project.  (Hey and if it makes things able to be built for 
more people, faster, and cheaper great!  If not, we'd have a more informed 
response to questions like this.)

--Mark

> Cheers,
>
> Alex
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


