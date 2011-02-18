Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 209FA4C80093
	for <yocto@yoctoproject.org>; Fri, 18 Feb 2011 01:58:54 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:46417
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PqLEr-0006v0-42
	for yocto@yoctoproject.org; Fri, 18 Feb 2011 07:58:53 +0000
Message-Id: <A6686EF1-DB89-4A07-95FF-AD25C82EC7E7@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
In-Reply-To: <1865303E0DED764181A9D882DEF65FB68637101D48@shsmsx502.ccr.corp.intel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 18 Feb 2011 07:58:50 +0000
References: <46137DFC-371A-4A2B-AFB7-06835208EDA4@keylevel.com>
	<1865303E0DED764181A9D882DEF65FB68637101D46@shsmsx502.ccr.corp.intel.com>
	<3130494D-F481-4946-9220-39DA6BA5A201@keylevel.com>
	<1865303E0DED764181A9D882DEF65FB68637101D48@shsmsx502.ccr.corp.intel.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Re: Bringing in recipes from OE
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
X-List-Received-Date: Fri, 18 Feb 2011 07:58:54 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 18 Feb 2011, at 02:18, Cui, Dexuan wrote:

> In poky, to install a package into target image, we have to make  
> poky Runtime DEPEND on the package.
> e.g.,  we can change meta/recipes-gnome/tasks/task-sdk-gmae.inc's  
> SDK-EXTRAS to
> SDK-EXTRAS ?= "libsdl", in this way, we can see ( "->" means  
> "depends on")
> meta-toolchain-gmae -> task-poky-standalone-gmae-sdk-target ->  
> libsdl, so libsdl will be built into target image when we do  
> "bitbake meta-toolchain-gmae" (BTW, previously meta-toolchain-gmae  
> was called meta-toolchain-sdk).
>
> Similarily, if we want to build libsdl into the target image when  
> doing "bitbake poky-image-sato-sdk", we may want to add libsdl into  
> RDEPENDS_task-poky-sdk in meta/recipes-core/tasks/task-poky-sdk.bb.

Thanks, that makes it clear.

> BTW, could you please reply mail to all? We encourage asking and  
> answering openly in poky/yocto mailing lists. :-)

Will do.  I just keep forgetting that this list doesn't have 'reply  
to' set to the list - nearly did it again for this reply !

Chris


