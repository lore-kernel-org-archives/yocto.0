Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC20BE00B74; Thu, 12 Jun 2014 04:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C85E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 04:09:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 5469B27E02B;
	Thu, 12 Jun 2014 11:09:49 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id UfAaxSsAeVy2; Thu, 12 Jun 2014 11:09:48 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A55E227E02A;
	Thu, 12 Jun 2014 11:09:48 +0000 (UTC)
Message-ID: <53998A78.9000106@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 12:09:44 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <53886DE1.3040906@dynamicdevices.co.uk>
	<10094086.6Vrxdyfy9P@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <10094086.6Vrxdyfy9P@peggleto-mobl5.ger.corp.intel.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: How to leave original git remote in unpacked repository?
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
X-List-Received-Date: Thu, 12 Jun 2014 11:10:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 12/06/2014 11:58, Paul Eggleton wrote:
> Hi Alex,
>
> On Friday 30 May 2014 12:39:13 Alex J Lennon wrote:
>> When I drop into a devshell for an unpacked SRV_REV from a particular
>> git SRC_URI I have the git remote origin set to a local archive in the
>> ~/downloads tree.
>>
>> Is there a build variable, say, I can set to leave the original git
>> remote set as well so that I can more easily push back changes I make?
>>
>> (Or is that a bad idea for some reason?)
> There isn't a way to do this, and to be honest with the discussions we've had
> recently about developer workflow, I'm not sure we want to encourage doing
> development within the workdir for a recipe because it's managed by the build
> system, and if you're not careful (e.g. with -c clean, rm_work or just
> changing SRC_URI) the sources can vanish taking your changes with it. Our
> alternative at the moment is to use externalsrc [1]. This is a little more
> work though and at the OEDAM meeting [2] there was some discussion about how
> we could make this easier in future.
>

OK thanks Paul. I understand what you mean, having wiped various changes
out in the past with inadvertent -c clean 'ing

That said I do find it quite productive to work in-tree with a
development git fork, ${AUTOREV} in the recipe and frequent work in
progress pushes to the remote repo just in case.

I'll take a look at what's involved in externalsrc as you recommend.

Thanks again,

Alex
 

