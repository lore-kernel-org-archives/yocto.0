Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA9E1E0093F; Wed,  8 Feb 2017 11:37:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98212E006C6
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 11:36:59 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 08 Feb 2017 11:36:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,348,1484035200"; d="scan'208";a="1092453262"
Received: from choutinx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.120])
	by orsmga001.jf.intel.com with ESMTP; 08 Feb 2017 11:36:56 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 09 Feb 2017 08:36:54 +1300
Message-ID: <15650683.oLyvIqKQ2l@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.7-201.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
References: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
	<89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: sysroot question
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
X-List-Received-Date: Wed, 08 Feb 2017 19:37:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Wednesday, 8 February 2017 12:12:25 PM NZDT Gary Thomas wrote:
> On 2017-02-08 11:42, Gary Thomas wrote:
> > I had a recipe that used to work and now fails after the change
> > to the split sysroots.  I'm building an out-of-tree kernel module
> > and patterned my recipe after the meta-skeleton example. My recipe
> > has this setup:
> > 
> > inherit module-base kernel-module-split
> > 
> > do_compile() {
> > 
> >     unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> >     oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
> >     
> >            KERNEL_VERSION=${KERNEL_VERSION}    \
> >            CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
> >            AR="${KERNEL_AR}" \
> >            
> >                O=${STAGING_KERNEL_BUILDDIR} \
> >            
> >            install
> > 
> > }
> > 
> > The problem is that ${CC} (arm-amltd-linux-gnueabi-gcc) can no longer be
> > found.  I know it's available, just not sure what needs to change to be
> > able to find it.
> > 
> > $ find tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/ -name "arm*gcc"
> > tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-r0/recipe-sysr
> > oot-native/usr/libexec/arm-amltd-linux-gnueabi/gcc/arm-amltd-linux-gnueabi
> > /5.4.0/arm-amltd-linux-gnueabi-gcc
> > 
> > tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-r0/recipe-sysr
> > oot-native/usr/bin/arm-amltd-linux-gnueabi/arm-amltd-linux-gnueabi-gcc
> 
> It looks like the failure is actually happening in a class method
> (make_scripts) My recipe also contains this
>    addtask make_scripts after do_patch before do_compile
> which doesn't seem to be setting the ${PATH} correctly anymore.
> 
> Any ideas what might be missing?
> 
> Note: just moving the call to do_make_scripts to the top of do_compile
> instead of running it as a separate task fixes the problem.

I think the problem is that the task that prepares the sysroot 
(do_prepare_recipe_sysroot) isn't a dependency of your task. module.bbclass  
uses this:

addtask make_scripts after do_prepare_recipe_sysroot before do_compile

BTW you say you patterned your recipe after the skeleton example, except 
hello-mod at least currently inherits module rather than module-base + kernel-
module-split - is there a compelling reason not to inherit module?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

