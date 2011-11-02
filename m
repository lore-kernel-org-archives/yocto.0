Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2397E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 07:18:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Nov 2011 07:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,443,1315206000"; d="scan'208";a="80452610"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2011 07:18:27 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1111020818510.4936@localhost6.localdomain6>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<alpine.DEB.2.02.1111020818510.4936@localhost6.localdomain6>
Date: Wed, 02 Nov 2011 09:18:39 -0500
Message-ID: <1320243519.26655.52.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Wed, 02 Nov 2011 14:18:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 05:19 -0700, Robert P. J. Day wrote:
> just to clarify any overlooked issues ...
> 
> On Tue, 1 Nov 2011, Tom Zanussi wrote:
> 
> > ... I captured the steps I used below, which should work in the same
> > way for you.
> >
> > trz@elmorro:/usr/local/dev/yocto$ mkdir bsp-test; cd bsp-test
> > trz@elmorro:/usr/local/dev/yocto/bsp-test$ git clone git://git.yoctoproject.org/poky
> > trz@elmorro:/usr/local/dev/yocto/bsp-test$ cd poky
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git checkout -b edison origin/edison
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git clone git://git.yoctoproject.org/meta-intel.git
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ cd meta-intel
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ git checkout -b edison origin/edison
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cp -a meta-crownbay/ meta-mymachine
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm meta-mymachine/conf/machine/crownbay.conf
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv meta-mymachine/conf/machine/crownbay-noemgd.conf meta-mymachine/conf/machine/mymachine.conf
> 
>   should one still change the NAME or DESCRIPTION comments in that new
> mymachine.conf file to reflect "mymachine" as the dev-manual suggests,
> or can one just leave them referring to crownbay?  recall that the
> current dev-manual claims that you "need" to make those changes.  if
> you don't, that claim should be softened.
> 

Right, not strictly needed, only for consistency, so the language should
be softened, I agree.

>   also, there's no mention of editing "layer.conf" to reflect
> "mymachine" as directed in dev-manual:
> 
>   BBFILE_COLLECTIONS += "mymachine"
> 
> should that not be done?  again, the current dev-manual states that
> that change is "needed".
> 

That is needed, but the steps that required editing files aren't easily
captured in a transcript, so I didn't capture those, but they are still
required.  I should have added a <do editing step xxx from the doc here>
to make that clear, though I did mention that other than the
kernel .bbappend, the steps I went through were pretty much as
described.  Anyway, hopefully we can get the changes from this thread in
the doc and it will then all fit together.

> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay/
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
> 
>   don't you also have to rename "crownbay-noemgd/" to "mymachine/"
> under that recipes-graphics/ directory as well, as the dev-manual
> directs?  you don't mention that here.  you also don't mention making

Right, I missed that step.  It still builds, though there would be
problems with X at runtime due to this.

> editing changes to recipes-core/tasks/task-core-tools.bbappend as
> dev-manual suggests.  not necessary?
> 

Yes, necessary, again, I didn't add the notes about editing.

Tom

> > Here's the resulting linux-yocto_3.0.bbappend:
> >
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cat meta-mymachine/recipes-kernel/linux/linux-yocto_3.0.bbappend
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >
> > COMPATIBLE_MACHINE_mymachine = "mymachine"
> > KMACHINE_mymachine  = "yocto/standard/common-pc/atom-pc"
> > KERNEL_FEATURES_append_mymachine += " cfg/smp.scc"
> >
> > SRCREV_machine_pn-linux-yocto_mymachine ?= "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
> > SRCREV_meta_pn-linux-yocto_mymachine ?= "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
> 
>   ok, just took that verbatim.
> 
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ source oe-init-build-env
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ bitbake core-image-sato
> >
> > NOTE: Tasks Summary: Attempted 4426 tasks of which 247 didn't need to be rerun and 0 failed.
> > trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/build
> 
>   other than sourcing from one directory level up and making the
> appropriate changes in conf/local.conf to refer to "mymachine", no
> difference here.  just started the build ...
> 
> rday
> 



