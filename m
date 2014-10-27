Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C022E007C0; Mon, 27 Oct 2014 12:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3EF9E00796
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 12:40:04 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1FB20F811E0; Mon, 27 Oct 2014 13:40:04 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3CB46F811DC;
	Mon, 27 Oct 2014 13:40:03 -0600 (MDT)
Message-ID: <544E9F93.1050808@mlbassoc.com>
Date: Mon, 27 Oct 2014 13:40:03 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>, 
 Yocto Project <yocto@yoctoproject.org>
References: <544E77DC.5080408@mlbassoc.com> <544E890A.5000402@linux.intel.com>
In-Reply-To: <544E890A.5000402@linux.intel.com>
Subject: Re: Is the build system SCM sensitive?
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
X-List-Received-Date: Mon, 27 Oct 2014 19:40:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-10-27 12:03, Saul Wold wrote:
> On 10/27/2014 09:50 AM, Gary Thomas wrote:
>> I had a complete build (details probably don't matter) using
>> Poky master.  I'm working on a fix to one of the core recipes,
>> so I made a local branch:
>>    % git checkout -b fix-python-pygtk master
>> I made a single line change in the recipe (removing a line from
>> the do_install step).  When I then rebuilt the recipe, to my
>> surprise, there were more than 450 tasks (73 unique recipes)
>> executed :-(
>>
>> How does this make any sense?  unless the build system cares
>> that I changed the branch?
>>
>> n.b. I'm happy to provide more details if necessary.  Also, I
>> did this twice in two different build trees and saw the same
>> strangeness.
>>
> I think so additional info might be needed here, I am guessing that you are changing pygtk and somehow that is changing some dependency, you might try using bitbake-diffsigs
> between the 2 versions.

I think I know what triggered this - a recent change in bitbake.conf
redefined BUILD_CPP (and others).  I had merged this change some six
hours before my strange build and had been building many other recipes
(also python with a similar set of dependencies) a number of times
before I touched the python-pygtk recipe.  Some dependency in that
recipe set off the rebuild storm that my other recipes had not.

So the large number of recipe rebuilds was [probably] warranted, but
very unexpected given what I had been doing just prior.

Sorry for the noise.  Next time I'll try and remember bitbake-diffsigs
and figure things out on my own.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

