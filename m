Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4222E008C1; Mon, 24 Nov 2014 05:48:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FBD7E00837
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 05:48:47 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2014 05:48:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,449,1413270000"; d="scan'208";a="613100042"
Received: from unknown (HELO [10.255.13.44]) ([10.255.13.44])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2014 05:48:41 -0800
Message-ID: <1416836921.29940.7.camel@picadillo>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Mon, 24 Nov 2014 07:48:41 -0600
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349@ORSMSX101.amr.corp.intel.com>
References: <33c36dfd.5d02.149dd26d066.Coremail.huanmateme@163.com>
	<1416770590.29940.4.camel@picadillo>
	<b5e0969.c3cd.149e0145e72.Coremail.huanmateme@163.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E64349@ORSMSX101.amr.corp.intel.com>
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Running "yocto-bsp create .." in the source directory(poky) brings up an error. "poky directory vs build directory"
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
X-List-Received-Date: Mon, 24 Nov 2014 13:48:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2014-11-24 at 07:07 -0600, Rifenbark, Scott M wrote:
> Hi ,
> 
>  
> 
> Although that sentence could be written differently, it is correct.
> Step six of the example says “By default, the script creates the new
> BSP Layer in the current working directory of the Source Directory,
> which is poky in this case.”  The clause at the end of the sentence is

Yes, it's ambiguous as to what 'which is poky' refers to.  I think that
just changing it to 'in the current working directory (poky/build in
this case)' is most clear (your revision seems to still have some
ambiguity, I think).

Tom

>  tied to the “Source Directory”, which in fact is poky.  I will
> re-write that sentence though to remove any chance of confusion.  You
> can see the change at
> http://www.yoctoproject.org/docs/1.7/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-yocto-bsp-script.
> 
>  
> 
> Thanks, 
> 
> Scott
> 
>  
> 
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Biao
> Sent: Sunday, November 23, 2014 8:35 PM
> To: Zanussi, Tom
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Running "yocto-bsp create .." in the source
> directory(poky) brings up an error. "poky directory vs build
> directory"
> 
> 
>  
> 
> 
> At 2014-11-24 03:23:10, "Tom Zanussi" <tom.zanussi@intel.com> wrote:
> >Hi,
> > 
> >On Sun, 2014-11-23 at 22:55 +0800, Biao wrote:
> >> Hi all,
> >> I am doing excises following this section
> >> ----------------------------------------------------------------------
> >> http://www.yoctoproject.org/docs/1.7/bsp-guide/bsp-guide.html#creating-a-new-bsp-layer-using-the-yocto-bsp-script
> >> 1.6.2. Creating a new BSP Layer Using the yocto-bsp Script
> >> ...
> >>  $ yocto-bsp create myarm qemu
> >> ....
> >> By default, the script creates the new BSP Layer in the current
> >> working directory of the  Source Directory , which is  poky  in this
> >> case. 
> >> ....
> >> ---------------------------------------------------------------------
> >> To my understand, it means after "source oe-init-build-env mybuild", i
> >> should change to the poky directory to run the "yocto-bsp create ..."
> >> command,
> > 
> >Yes, the documentation is misleading - yocto-bsp assumes you're in the
> >build directory after you've sourced oe-init-build-env, and not the poky
> >dir.
> > 
> >Tom
>  
> I see, thanks for you help, Tom.
>  
> Jerry
> > 
> >> however, i got an error  
> >> " Do you need a new machine branch for this BSP (the alternative is to
> >> re-use an existing branch)? [y/n] [default: y] 
> >> The BBPATH variable is not set and bitbake did not find a
> >> conf/bblayers.conf file in the expected location.
> >> Maybe you accidentally invoked bitbake from the wrong directory?
> >> Couldn't find BBLAYERS in bitbake -e output, exiting." 
> >> It seems it is asking me to run "yocto-bsp create ..." in the build
> >> directory
> >> 
> >> 
> >> Which one is correct? Do we have a wrong document?
> >> 
> >> 
> >> Thanks,
> >> Jerry 
> >> 
> >> 
> > 
> > 



