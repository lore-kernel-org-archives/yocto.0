Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72717E0071C; Tue, 25 Oct 2016 11:09:54 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90234E006E9
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 11:09:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u9PI9oFg018609
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 25 Oct 2016 11:09:51 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 25 Oct 2016 11:09:50 -0700
To: Brian Avery <avery.brian@gmail.com>
References: <20161024221918.39994-1-todor.minchev@linux.intel.com>
	<9fca01e8-19ef-edc2-3a6d-6e5920fdc77c@windriver.com>
	<1477352804.49237.34.camel@linux.intel.com>
	<96de1646-d152-49fa-7e6c-0fe0dd0a3acf@windriver.com>
	<CAKV_0eg9RvC0fnbrK5quPzsuGhhmtvu23CSgD3Ujn=8kZvEHZg@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <8577f92b-6370-a586-9304-e4100bb1ef76@windriver.com>
Date: Tue, 25 Oct 2016 13:09:49 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CAKV_0eg9RvC0fnbrK5quPzsuGhhmtvu23CSgD3Ujn=8kZvEHZg@mail.gmail.com>
Cc: yocto@yoctoproject.org, Todor Minchev <todor.minchev@linux.intel.com>
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
X-List-Received-Date: Tue, 25 Oct 2016 18:09:54 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On 10/25/16 12:49 PM, Brian Avery wrote:
> Hi, 
> 
> This doesn't default to slirp, it just allows it as an option.

Ok..  I misunderstood what it was trying to do then.  That sounds fine.

> In particular, on CROPS containers on Windows 10 and Mac OSX  the hypervisor is
> *not* a linux kernel. This means that the only way we can run qemu in the
> container for testing/debugging is to run it in slirp mode .since there is no
> tun/tap device or driver.
> 
> So, given that we 
> 1) are not defaulting to slirp and are merely enabling it
> 2) need slirp mode to be able to run in a CROPS container setting
> 
> I think this makes sense.

Agreed.

> -Brian
> an intel employee
>  
> 
> On Mon, Oct 24, 2016 at 5:16 PM, Mark Hatle <mark.hatle@windriver.com
> <mailto:mark.hatle@windriver.com>> wrote:
> 
>     On 10/24/16 6:46 PM, Todor Minchev wrote:
>     > On Mon, 2016-10-24 at 18:15 -0500, Mark Hatle wrote:
>     >> On 10/24/16 5:19 PM, Todor Minchev wrote:
>     >>> Using 'slirp' as a command line option to runqemu will start QEMU
>     >>> with user mode networking instead of creating tun/tap devices.
>     >>> SLIRP does not require root access. By default port 2222 on the
>     >>> host will be mapped to port 22 in the guest. The default port
>     >>> mapping can be overwritten with the QB_SLIRP_OPT variable e.g.
>     >>>
>     >>> QB_SLIRP_OPT = "-net nic,model=e1000 -net user,hostfwd=tcp::2222-:22"
>     >>
>     >> In the past patches like this have been rejected for performance and other
>     >> reasons.
>     >
>     > Performance is not ideal with SLIRP, but should be sufficient for basic
>     > ssh access to the guest. Could you please elaborate on the other reasons
>     > why having this is a bad idea?
> 
>     You'd have to go back in the archives.  Performance was the main reason I
>     remember being discussed at the time.
> 
>     I don't remember the others, and as I said, I'm not a fan of requiring root, but
>     the community decided sudo approach was better as long as there was a way to
>     avoid it.
> 
>     Changing the default will likely require email to the oe-core list and/or
>     oe-architecture list...
> 
>     >> While I don't particularly like requiring sudo access for runqemu,
>     >> adding the 'slirp' option will allow someone w/o root/sudo to be able to run it.
>     >
>     > The goal was to be able to run a QEMU image and provide basic networking
>     > without requiring root access. Is there any reason why running runqemu
>     > w/o root/sudo access should be discouraged?
> 
>     As long as you can pass in slirp (and it's not the default) then I believe your
>     requirement and the community direction is preserved.
> 
>     >> Otherwise, if there is something you can do to make slirp work better (when
>     >> enabled), that is more likely to be accepted.
>     >
>     > Similar SLIRP support has been already accepted for qemuarm64 with
>     > commit 9b0a94cb
> 
>     Support for slirp is good, it's defaulting to slirp that has been rejected in
>     the past by the community.
> 
>     > --Todor
>     >
>     > Intel Open Source Technology Center
>     >
>     >> --Mark
>     >>
>     >>> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com
>     <mailto:todor.minchev@linux.intel.com>>
>     >>> ---
>     >>>  meta/conf/machine/include/qemuboot-x86.inc | 1 +
>     >>>  scripts/runqemu                            | 3 ++-
>     >>>  2 files changed, 3 insertions(+), 1 deletion(-)
>     >>>
>     >>> diff --git a/meta/conf/machine/include/qemuboot-x86.inc
>     b/meta/conf/machine/include/qemuboot-x86.inc
>     >>> index 06ac983..0870294 100644
>     >>> --- a/meta/conf/machine/include/qemuboot-x86.inc
>     >>> +++ b/meta/conf/machine/include/qemuboot-x86.inc
>     >>> @@ -13,3 +13,4 @@ QB_AUDIO_OPT = "-soundhw ac97,es1370"
>     >>>  QB_KERNEL_CMDLINE_APPEND = "vga=0 uvesafb.mode_option=640x480-32
>     oprofile.timer=1 uvesafb.task_timeout=-1"
>     >>>  # Add the 'virtio-rng-pci' device otherwise the guest may run out of
>     entropy
>     >>>  QB_OPT_APPEND = "-vga vmware -show-cursor -usb -usbdevice tablet
>     -device virtio-rng-pci"
>     >>> +QB_SLIRP_OPT = "-net nic,model=e1000 -net user,hostfwd=tcp::2222-:22"
>     >>> diff --git a/scripts/runqemu b/scripts/runqemu
>     >>> index dbe17ab..6952f32 100755
>     >>> --- a/scripts/runqemu
>     >>> +++ b/scripts/runqemu
>     >>> @@ -542,7 +542,8 @@ class BaseConfig(object):
>     >>>      def check_and_set(self):
>     >>>          """Check configs sanity and set when needed"""
>     >>>          self.validate_paths()
>     >>> -        check_tun()
>     >>> +        if not self.slirp_enabled:
>     >>> +            check_tun()
>     >>>          # Check audio
>     >>>          if self.audio_enabled:
>     >>>              if not self.get('QB_AUDIO_DRV'):
>     >>>
>     >>
>     >
>     >
> 
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
> 
> 


