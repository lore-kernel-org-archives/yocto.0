Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B404E0030B
	for <yocto@yoctoproject.org>; Wed, 29 Feb 2012 08:45:34 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 29 Feb 2012 08:45:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="113113436"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.204])
	([163.33.228.204])
	by orsmga001.jf.intel.com with ESMTP; 29 Feb 2012 08:44:21 -0800
Message-ID: <4F4E55E4.3050205@linux.intel.com>
Date: Wed, 29 Feb 2012 16:44:20 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4F4E4512.7000505@linux.intel.com> <4241171.S03hq4heSm@helios>
In-Reply-To: <4241171.S03hq4heSm@helios>
Cc: yocto@yoctoproject.org
Subject: Re: RPROVIDES issue
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
X-List-Received-Date: Wed, 29 Feb 2012 16:45:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 29/02/2012 16:18, Paul Eggleton wrote:
> On Wednesday 29 February 2012 15:32:34 John Toomey wrote:
>> I am getting an error when I try to include some packages such as
>> logrotate, valgrind and minicom in my configuration using "IMAGE_INSTALL
>> += ... "
>>
>>      ERROR: Nothing RPROVIDES '"minicom"' (but
>>      [path]/core-image-[blah].bb RDEPENDS on or otherwise requires it)
>>      NOTE: Runtime target '"minicom"' is unbuildable, removing...
>>      Missing or unbuildable dependency chain was: ['"minicom"']
>>      ERROR: Required build target 'core-image-small' has no buildable
>>      providers.
>>      Missing or unbuildable dependency chain was: ['core-image-[blah]',
>>      '"minicom"']
>>
>>
>> I am able to build the packages individually without issue, for example
>> "bitbake minicom" works fine.
>>
>> Can anyone help point me in the right direction?
> I noticed something here which I saw earlier - there is somehow an extra set
> of quotes in there i.e. it's reporting '"minicom"' instead of 'minicom'.
> Having just confirmed here with the 1.1 release that when you specify something
> that doesn't exist you only get one set of single quotes in the error, I
> suspect that's the root of the problem in your case. How you would have got a
> set of double quotes in there I don't know, though. When I do IMAGE_INSTALL +=
> "something" I don't get them here.
>
> Cheers,
> Paul
>
Hi Paul

You got me on the right track to fix it - apparently having a comment on 
the same line as the IMAGE_INSTALL += "..." causes it to break. I had 
all of the packates on seperate lines so I could easily comment in or 
out the ones I need and I had comments after a few of them so i could 
keep track of which ones were working and broken...

Thanks for your help!
John

