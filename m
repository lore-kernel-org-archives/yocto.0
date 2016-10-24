Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE71E00B63; Mon, 24 Oct 2016 16:46:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD490E00AD2
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 16:46:45 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 24 Oct 2016 16:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,543,1473145200"; d="scan'208";a="893524387"
Received: from unknown (HELO speedy) ([10.7.197.100])
	by orsmga003.jf.intel.com with ESMTP; 24 Oct 2016 16:46:45 -0700
Message-ID: <1477352804.49237.34.camel@linux.intel.com>
From: Todor Minchev <todor.minchev@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Mon, 24 Oct 2016 16:46:44 -0700
In-Reply-To: <9fca01e8-19ef-edc2-3a6d-6e5920fdc77c@windriver.com>
References: <20161024221918.39994-1-todor.minchev@linux.intel.com>
	<9fca01e8-19ef-edc2-3a6d-6e5920fdc77c@windriver.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] runqemu: add user mode (SLIRP) support to x86 QEMU targets
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
X-List-Received-Date: Mon, 24 Oct 2016 23:46:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2016-10-24 at 18:15 -0500, Mark Hatle wrote:
> On 10/24/16 5:19 PM, Todor Minchev wrote:
> > Using 'slirp' as a command line option to runqemu will start QEMU
> > with user mode networking instead of creating tun/tap devices.
> > SLIRP does not require root access. By default port 2222 on the
> > host will be mapped to port 22 in the guest. The default port
> > mapping can be overwritten with the QB_SLIRP_OPT variable e.g.
> > 
> > QB_SLIRP_OPT = "-net nic,model=e1000 -net user,hostfwd=tcp::2222-:22"
> 
> In the past patches like this have been rejected for performance and other
> reasons.  

Performance is not ideal with SLIRP, but should be sufficient for basic
ssh access to the guest. Could you please elaborate on the other reasons
why having this is a bad idea?

> While I don't particularly like requiring sudo access for runqemu,
> adding the 'slirp' option will allow someone w/o root/sudo to be able to run it.

The goal was to be able to run a QEMU image and provide basic networking
without requiring root access. Is there any reason why running runqemu
w/o root/sudo access should be discouraged?   

> Otherwise, if there is something you can do to make slirp work better (when
> enabled), that is more likely to be accepted.

Similar SLIRP support has been already accepted for qemuarm64 with
commit 9b0a94cb

--Todor

Intel Open Source Technology Center

> --Mark
> 
> > Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> > ---
> >  meta/conf/machine/include/qemuboot-x86.inc | 1 +
> >  scripts/runqemu                            | 3 ++-
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/meta/conf/machine/include/qemuboot-x86.inc b/meta/conf/machine/include/qemuboot-x86.inc
> > index 06ac983..0870294 100644
> > --- a/meta/conf/machine/include/qemuboot-x86.inc
> > +++ b/meta/conf/machine/include/qemuboot-x86.inc
> > @@ -13,3 +13,4 @@ QB_AUDIO_OPT = "-soundhw ac97,es1370"
> >  QB_KERNEL_CMDLINE_APPEND = "vga=0 uvesafb.mode_option=640x480-32 oprofile.timer=1 uvesafb.task_timeout=-1"
> >  # Add the 'virtio-rng-pci' device otherwise the guest may run out of entropy
> >  QB_OPT_APPEND = "-vga vmware -show-cursor -usb -usbdevice tablet -device virtio-rng-pci"
> > +QB_SLIRP_OPT = "-net nic,model=e1000 -net user,hostfwd=tcp::2222-:22"
> > diff --git a/scripts/runqemu b/scripts/runqemu
> > index dbe17ab..6952f32 100755
> > --- a/scripts/runqemu
> > +++ b/scripts/runqemu
> > @@ -542,7 +542,8 @@ class BaseConfig(object):
> >      def check_and_set(self):
> >          """Check configs sanity and set when needed"""
> >          self.validate_paths()
> > -        check_tun()
> > +        if not self.slirp_enabled:
> > +            check_tun()
> >          # Check audio
> >          if self.audio_enabled:
> >              if not self.get('QB_AUDIO_DRV'):
> > 
> 



