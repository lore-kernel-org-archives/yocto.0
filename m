Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF35E00D00; Mon,  2 Oct 2017 07:54:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C1BE00CAB
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 07:54:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v92EsCDK008821
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 2 Oct 2017 07:54:13 -0700 (PDT)
Received: from [128.224.56.93] (128.224.56.93) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Mon, 2 Oct 2017 07:54:12 -0700
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <1506828179.7624.9.camel@sdl.usu.edu>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <3fd40621-6c3e-d7e2-69c0-baa1aa4dab86@windriver.com>
Date: Mon, 2 Oct 2017 10:54:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <1506828179.7624.9.camel@sdl.usu.edu>
Cc: Jack Kiefer <Jack.Kiefer@sdl.usu.edu>
Subject: Re: Configuration fragments not making it into kernel configuration
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
X-List-Received-Date: Mon, 02 Oct 2017 14:54:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 09/30/2017 11:22 PM, Jonathan Haws wrote:
> All,
> 
> I've created a bbappend that appends to the linux-yocto-rt recipe to
> simply apply configuration fragments.  I've been using this recipe for
> some time (through many releases) but since I moved to the morty branch
> my fragments aren't getting applied to the actual kernel configuration.
>   The kernel_configcheck task doesn't catch the error either.
> 
> What I'm trying to do in a nutshell is disable the in-kernel IGB driver
> and use my own, patched version.  The configuration fragments are
> installed by my recipe in:
> 
> <build>/tmp/work/corei7-64-intel-common-sigma-linux/linux-yocto-
> rt/4.8.3+gitAUTOINC+6d028d2818_4057556c04-r0/
> 
> However the .config file at:
> 
>   <build>/tmp/work/corei7-64-intel-common-sigma-linux/linux-yocto-
> rt/4.8.3+gitAUTOINC+6d028d2818_4057556c04-r0/linux-corei7-64-intel-
> common-preempt-rt-build/.config
> 
> doesn't have the necessary configuration - it still has the default.
> 
> I know I can fix this by simply doing a menuconfig, but that isn't the
> proper way to do it - I have multiple BSP layers that do the same thing
> and they all behave in the same way.
> 
> What am I doing wrong?  I've attached my layer that contains the
> recipe.  If the fragments are getting installed I think the recipe is
> working right - but is there something in the lower-level class that
> isn't working or do I have a configuration that is breaking it?

I did a build with morty and your BSP, and I'm not seeing
the same results.

One notable difference is that if you are using the tip of
the morty branches, you should get 4.8.17, not 4.8.3.

I did zero extra configuration, just added your layer, meta-intel
and then bitbaked linux-yocto-rt.

Maybe I'm misunderstanding what I see in the BSP layer, but I
did get IGB disabled:

:~/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto-rt/4.8.17+gitAUTOINC+bb6984f46b_9c4f52cb2b-r0/linux-corei7-64-intel-common-preempt-rt-build$ 
grep CONFIG_IGB .config
# CONFIG_IGB is not set
CONFIG_IGBVF=m

And I did get a warning during the build:

---------- CONFIG_IGB_DCA -----------------
Config: CONFIG_IGB_DCA
From: 
/home/bruce/poky/build/tmp/work-shared/xpedite7570/kernel-source/.kernel-meta/configs/standard/preempt-rt/intel/features/dca/dca.cfg
Requested value:  CONFIG_IGB_DCA=y
Actual value:

Config 'IGB_DCA' has the following conditionals:
   IGB && DCA && !(IGB = y && DCA = m) (value: "n")
IGB && DCA && !(IGB = y && DCA = m) (value: "n")
Dependency values are:
   y [y] m [m] IGB [n] DCA [y]

--------------------

Which explains why CONFIG_IGB_DCA didn't make it into the final .config

Can you clarify what you were looking to get for final configuration
settings ?

Bruce


> 
> Any help or direction is appreciated.  This has been really frustrating
> since I know I've done this before and all the threads I've found on
> the lists from before haven't really given an answer - maybe I just
> missed the golden thread?
> 
> Thanks!
> Jon
> 
> 
> 


