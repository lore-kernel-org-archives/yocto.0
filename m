Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3045BE014C8
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 13:51:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2013 13:49:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,591,1363158000"; d="scan'208";a="306401353"
Received: from envy2.jf.intel.com (HELO envy2.home) ([10.7.199.54])
	by orsmga001.jf.intel.com with ESMTP; 01 May 2013 13:51:37 -0700
Message-ID: <51818058.7060001@linux.intel.com>
Date: Wed, 01 May 2013 13:51:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Trevor Woerner <twoerner@gmail.com>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091746080.4929@oneiric>
	<CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
	<1365545491.1526.5.camel@empanada>
	<CAHUNapSPM68REknz=+bdK6fyAP+17QmUn36r1xjrjTuFP=UPuA@mail.gmail.com>
In-Reply-To: <CAHUNapSPM68REknz=+bdK6fyAP+17QmUn36r1xjrjTuFP=UPuA@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Wed, 01 May 2013 20:51:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/25/2013 06:30 PM, Trevor Woerner wrote:
> On Tue, Apr 9, 2013 at 6:11 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
>> On Tue, 2013-04-09 at 18:06 -0400, Trevor Woerner wrote:
>>> On Tue, Apr 9, 2013 at 5:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>>>>   ok, so what am i looking for?
>>>
>>> I couldn't get lab3 to work fully unless I switched from package_ipk
>>> to package_rpm. The module would get built and included in the image,
>>> but it wasn't being loaded automatically during boot. At the time I
>>> tried against the master HEAD and everything worked fine, so whatever
>>> it is I think I've found, it has been fixed (this is only a
>>> danny-8.0.1 problem).
>>>
>>> https://lists.yoctoproject.org/pipermail/yocto/2013-February/014424.html
>>>
>>> When I mentioned it, it didn't seem to make sense that the choice of
>>> packaging should affect something like this. But I tried it a couple
>>> times on my machine and could reproduce it. I don't think anyone else
>>> tried reproducing it.
>>
>> I believe I tried and couldn't reproduce it.  But if someone does
>> reproduce it, please file a bug detailing the *exact* steps needed to
>> reproduce.
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4423
> 
> This is still reproducible. This time I also gave it a try using a
> Fedora 18 (64) VM. Lab 3 does not work if you set PACKAGE_CLASSES to
> "package_ipk".

Thanks, if there is any context missing from the bug, please add it there.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

