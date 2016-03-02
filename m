Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A0C0E00D6B; Wed,  2 Mar 2016 07:40:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.206.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp685.redcondor.net (smtp685.redcondor.net [208.80.206.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 500E2E00CA6
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 07:40:43 -0800 (PST)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp685.redcondor.net ({20c8e40f-6b6c-4c9e-abff-1640ea7bf404})
	via TCP (outbound) with ESMTPS id 20160302154026097_0685;
	Wed, 02 Mar 2016 07:40:26 -0800
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [127.0.0.1] (port=36098 helo=localhost)
	by astoria.ccjclearline.com with esmtpa (Exim 4.80)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1ab8uA-0005yY-JQ; Wed, 02 Mar 2016 10:41:38 -0500
Received: from 216.191.234.70 ([216.191.234.70]) by
	astoria.ccjclearline.com (Horde Framework) with HTTP; Wed, 02 Mar 2016
	10:41:38 -0500
Message-ID: <20160302104138.5032300q6wkcmack@astoria.ccjclearline.com>
Date: Wed, 02 Mar 2016 10:41:38 -0500
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <20160229181912.2795661i683s2v40@astoria.ccjclearline.com>
	<CAAQYJAviVJSJceLhvkyMwfkGTAYg+ZFX9SqOMfLb764uc04e-A@mail.gmail.com>
	<20160301054455.93873ngpmfyku8kk@astoria.ccjclearline.com>
	<56D5A54D.6020100@windriver.com>
In-Reply-To: <56D5A54D.6020100@windriver.com>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.11)
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
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
X-List-Received-Date: Wed, 02 Mar 2016 15:40:45 -0000
Content-Type: text/plain;
 charset=UTF-8;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Quoting Bruce Ashfield <bruce.ashfield@windriver.com>:

> On 16-03-01 05:44 AM, Robert P. J. Day wrote:

>>   also, once a .scc file is located, will the location of the listed
>> .cfg and .patch/.diff files inside it start a whole new search process
>> based on FILESEXTRAPATHS and FILESOVERRIDES?

> The search path is created relative to the .scc file that is referencing
> a patch, and across any directory that has a .scc file in the SRC_URI.
> The .scc feature descriptions are self contained, hence "reaching outside"
> to a parent, or other directory structure isn't a good thing. Just list
> things on the SRC_URI if that is required.

   one more question, if i might, as i'm still unclear on what flexibility
i have with finding .cfg or .patch files from a .scc file.

   imagine i have a number of kernel .bbappend files and corresponding
patch directories:

   * linux-4.0.bbappend and linux-4.0/
   * linux-4.1.bbappend and linux-4.1/
   * linux-4.2.bbappend and linux-4.2/

and so on, as well as wanting to refer to five machines, "m1" through
"m5". consider the following possibility related specifically to
kernel version 4.1:

   linux-4.1/
     rday.scc
     1.patch
     2.patch
     3.patch
     4.patch
     m3/
       4.patch

so imagine my linux-4.1.bbappend file does SRC_URI += "rday.scc" --
when i do a build for kernel 4.1, the search process should locate
the rday.scc file in linux-4.1/ (as long as i have no other
higher-priority FILESOVERRIDES that get in the way, of course).

   now if rday.scc contains references to all four patches and i'm
building for, say, machine "m1", it makes sense that all four
of those patches directly under linux-4.1/ will be the ones
included, correct?

   but if, instead, i was building for machine "m3", as you can
see, it would be nice if the FILESOVERRIDES feature would kick in
and select the machine-specific patch "m3/4.patch. so all of the
regular patches would be used, *unless* i was building for m3,
at which point the patch m3/4.patch would override the "generic"
4.patch. (the same logic would apply to .cfg files, too, of course.)

   is that what would happen? better yet, is that anything i
should even be contemplating? it's not as if i need that feature
right this instant, but it would be nice to know it's available
just in case.

   even weirder, could i get away with something like this?

   linux-4.1/
     rday.scc
     1.patch
     2.patch
     3.patch
     4.patch
     m3/
       rday.scc
       4.patch

once again, my .bbappend file would "SRC_URI += rday.scc", and if
i'm building for kernel 4.1, it should find the one directly under
linux-4.1/, *unless* my target machine is "m3", at which point
the file m3/rday.scc would take precedence, which would pick up
the specific patch file m3/4.patch, but would use the higher-level
generic patch files for all others.

   the first case i think has value and i'd like to know how to do
it; the second case is admittedly weirder and i'm not sure i
want to defend even *trying* to do it, but i figured i'd ask.

rday



