Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AF04E008B4; Wed,  2 Mar 2016 13:46:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 165F7E00851
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 13:46:19 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u22LkEne023753
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 2 Mar 2016 13:46:14 -0800 (PST)
Received: from server.local (147.11.116.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 2 Mar 2016 13:46:13 -0800
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
	<CAAQYJAviVJSJceLhvkyMwfkGTAYg+ZFX9SqOMfLb764uc04e-A@mail.gmail.com>
	<20160301054455.93873ngpmfyku8kk@astoria.ccjclearline.com>
	<56D5A54D.6020100@windriver.com>
	<20160302104138.5032300q6wkcmack@astoria.ccjclearline.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <56D75F25.5040909@windriver.com>
Date: Wed, 2 Mar 2016 16:46:13 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160302104138.5032300q6wkcmack@astoria.ccjclearline.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to organize my patches for multiple kernels and multiple target boards?
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
X-List-Received-Date: Wed, 02 Mar 2016 21:46:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-02 10:41 AM, Robert P. J. Day wrote:
> Quoting Bruce Ashfield <bruce.ashfield@windriver.com>:
>
>> On 16-03-01 05:44 AM, Robert P. J. Day wrote:
>
>>>   also, once a .scc file is located, will the location of the listed
>>> .cfg and .patch/.diff files inside it start a whole new search process
>>> based on FILESEXTRAPATHS and FILESOVERRIDES?
>
>> The search path is created relative to the .scc file that is referencing
>> a patch, and across any directory that has a .scc file in the SRC_URI.
>> The .scc feature descriptions are self contained, hence "reaching
>> outside"
>> to a parent, or other directory structure isn't a good thing. Just list
>> things on the SRC_URI if that is required.
>
>    one more question, if i might, as i'm still unclear on what flexibility
> i have with finding .cfg or .patch files from a .scc file.
>
>    imagine i have a number of kernel .bbappend files and corresponding
> patch directories:
>
>    * linux-4.0.bbappend and linux-4.0/
>    * linux-4.1.bbappend and linux-4.1/
>    * linux-4.2.bbappend and linux-4.2/
>
> and so on, as well as wanting to refer to five machines, "m1" through
> "m5". consider the following possibility related specifically to
> kernel version 4.1:
>
>    linux-4.1/
>      rday.scc
>      1.patch
>      2.patch
>      3.patch
>      4.patch
>      m3/
>        4.patch
>
> so imagine my linux-4.1.bbappend file does SRC_URI += "rday.scc" --
> when i do a build for kernel 4.1, the search process should locate
> the rday.scc file in linux-4.1/ (as long as i have no other
> higher-priority FILESOVERRIDES that get in the way, of course).
>
>    now if rday.scc contains references to all four patches and i'm
> building for, say, machine "m1", it makes sense that all four
> of those patches directly under linux-4.1/ will be the ones
> included, correct?

Correct. Assuming rday.scc and the patch files are all within that
directory, it would be:

patch 1.patch
patch 2.patch
... etc.

And that would find the ones local to the .scc file.

>
>    but if, instead, i was building for machine "m3", as you can
> see, it would be nice if the FILESOVERRIDES feature would kick in
> and select the machine-specific patch "m3/4.patch. so all of the
> regular patches would be used, *unless* i was building for m3,
> at which point the patch m3/4.patch would override the "generic"
> 4.patch. (the same logic would apply to .cfg files, too, of course.)
>
>    is that what would happen? better yet, is that anything i
> should even be contemplating? it's not as if i need that feature
> right this instant, but it would be nice to know it's available
> just in case.

That doesn't happen. Since the searching for patches is not tied
to the fetcher searching and ordering directly.

You can switch on matchines within a .scc file, but that's not
really all that common.

>
>    even weirder, could i get away with something like this?
>
>    linux-4.1/
>      rday.scc
>      1.patch
>      2.patch
>      3.patch
>      4.patch
>      m3/
>        rday.scc
>        4.patch
>
> once again, my .bbappend file would "SRC_URI += rday.scc", and if
> i'm building for kernel 4.1, it should find the one directly under
> linux-4.1/, *unless* my target machine is "m3", at which point
> the file m3/rday.scc would take precedence, which would pick up
> the specific patch file m3/4.patch, but would use the higher-level
> generic patch files for all others.


Assuming the fetch found m3/rday.scc in the search paths first, it
would be the one selected.

But then the patch references would be relative to m3/, so you wouldn't
even find "patch 1.patch", etc.


The way this is typically configured if you aren't using a kernel-cache
structure is:

  linux-<foo>/
      machine-type1.scc
      machine-type2.scc
      machine-type3.scc
      common/
        1.patch
        2.patch
        3.patch
        4.patch
       type3/
        4.patch

And then you select the one that matches in your SRC_URI, or if the
.scc files have: "define KMACHINE type1", and you put them ALL on
the SRC_URI, the system will actually pick only the one that
matches the set $MACHINE.

 From there, that matching .scc file does all it's own includes of
patches and configuration blocks, etc.

Bruce

>
>    the first case i think has value and i'd like to know how to do
> it; the second case is admittedly weirder and i'm not sure i
> want to defend even *trying* to do it, but i figured i'd ask.
>
> rday
>
>


