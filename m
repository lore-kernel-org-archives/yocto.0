Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD06E01363
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 07:25:15 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so249200vws.35
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 07:25:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:from:to:cc:in-reply-to:references:content-type:date
	:message-id:mime-version:x-mailer:content-transfer-encoding;
	bh=A6Mjhw7YEQWbWpO2GcBpa6MrO09gcl7DjwLg8NDV9+c=;
	b=Kdh3+QOkTBDEsrUOKpR2V+WjE0VHzxboHcjR7vgYcg2GbE3ETF+NvFObg8yyz4Ua+V
	EdMm07p/gQqIDUzq4jacXY3TW+fJ9uYtoZnSHzo93ttXUVZ4U7Afa3NIboVklg3Ql/n+
	aoYTBTXIXmYbTOyjqOSSjmPOdSOiVMPrcmo3Y=
Received: by 10.52.30.47 with SMTP id p15mr4738864vdh.79.1320243914742;
	Wed, 02 Nov 2011 07:25:14 -0700 (PDT)
Received: from [10.0.1.36] ([67.239.164.153])
	by mx.google.com with ESMTPS id el1sm3470955vdc.13.2011.11.02.07.25.13
	(version=SSLv3 cipher=OTHER); Wed, 02 Nov 2011 07:25:13 -0700 (PDT)
From: Jim Abernathy <jfabernathy@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1320194738.26655.26.camel@elmorro>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
Date: Wed, 02 Nov 2011 10:24:27 -0400
Message-ID: <1320243867.13661.6.camel@jim-ubuntu-10>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
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
X-List-Received-Date: Wed, 02 Nov 2011 14:25:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

okay, what you mentioned as the steps below, I agree with, but a couple
I don't understand. first, in the linux-yocto_3.0.bbappend file, why is
the KMACHINE statement changed to common-pc/atom-pc? If I look st eh
section of the doc in A.5.2.4 talking about going to
cgit/cgit.cgi/linux-yocto-3.0 to get the latest commit strings, I see
that it agrees with the path in #2, but not sure why??

Second, I looked at your cat of the same file containing the SRCREV
commit strings and I don't see that they agree with the commits on the
website even just this morning.  Can you explain that? Should I just use
the ones in  your cat output or eventually the corrected Dev. Manual?

Jim A

On Tue, 2011-11-01 at 19:45 -0500, Tom Zanussi wrote:
> Hi James,
> 
> I'm still not sure what happened in your case to cause this problem, but
> I just went through the Appendix A example pretty much as described, and
> got a good build out of it.  There was one particular part of the
> example that wasn't exactly clear and that could definitely cause some
> build problems if you did it incorrectly (the section that makes changes
> to linux-yocto_3.0.bbappend, which in the example has a custom branch in
> the .bbappend file, but has the explanation using atom-pc).
> 
> I'll work with Scott to make sure that part gets cleaned up, along with
> the other comments that should get pulled in, but in the meantime, I
> captured the steps I used below, which should work in the same way for
> you.
> 
> trz@elmorro:/usr/local/dev/yocto$ mkdir bsp-test; cd bsp-test
> trz@elmorro:/usr/local/dev/yocto/bsp-test$ git clone git://git.yoctoproject.org/poky
> trz@elmorro:/usr/local/dev/yocto/bsp-test$ cd poky
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git checkout -b edison origin/edison
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ git clone git://git.yoctoproject.org/meta-intel.git
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ cd meta-intel
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ git checkout -b edison origin/edison
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cp -a meta-crownbay/ meta-mymachine
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm meta-mymachine/conf/machine/crownbay.conf
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv meta-mymachine/conf/machine/crownbay-noemgd.conf meta-mymachine/conf/machine/mymachine.conf
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay/
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ mv meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
> 
> ----
> The Developer's Manual seems to want to base the BSP on atom-pc for
> this example, so we need to specify the atom-pc branch and get the
> SRCREVs for atom-pc or the step that modifies the
> linux-yocto_3.0.bbappend.  So in
> meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend, we find both
> the KMACHINE branch we need, and the SRCREV on that branch we need for
> edison.  Since that doesn't specify the meta branch, but the base
> recipe does, we can look at the SRCREV_meta there
> (meta/recipes-kernel/linux/linux-yocto_3.0.bb) for the SRCREV of the
> meta branch, which already matches what we're using, so no change
> needed there.
> 
> Here's the resulting linux-yocto_3.0.bbappend:
> 
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/meta-intel$ cat meta-mymachine/recipes-kernel/linux/linux-yocto_3.0.bbappend
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
> COMPATIBLE_MACHINE_mymachine = "mymachine"
> KMACHINE_mymachine  = "yocto/standard/common-pc/atom-pc"
> KERNEL_FEATURES_append_mymachine += " cfg/smp.scc"
> 
> SRCREV_machine_pn-linux-yocto_mymachine ?= "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
> SRCREV_meta_pn-linux-yocto_mymachine ?= "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
> 
> ----
> 
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ source oe-init-build-env
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky$ bitbake core-image-sato
> 
> NOTE: Tasks Summary: Attempted 4426 tasks of which 247 didn't need to be rerun and 0 failed.
> trz@elmorro:/usr/local/dev/yocto/bsp-test/poky/build
> 
> 
> Tom
> 
> 
> On Tue, 2011-11-01 at 12:48 -0700, James Abernathy wrote:
> > Just to clear up the basics, Prior to following Appendix A verbatim, I
> > did the following
> > 1. install prerequisites from GS guide
> > 2. git clone git://git.yoctoproject.org/poky
> > 3. cd poky
> > 4. git clone git://git.yoctoproject.org/meta-intel.git
> >  
> > I did not install the poky-extras. I assumed it only had to be
> > installed if you installed the kernel source for modification like in
> > Appendix b
> >  
> > Jim a
> > 
> > 
> > 
> >  
> > On Tue, Nov 1, 2011 at 3:40 PM, Tom Zanussi <tom.zanussi@intel.com>
> > wrote:
> >         Hi,
> >         
> >         On Tue, 2011-11-01 at 11:37 -0700, James Abernathy wrote:
> >         > I tried to duplicate the Yocto Project Decelopment Manual
> >         Appendix A
> >         > build of a Crownbay NOEMGD image,  no changes just dulicate
> >         the
> >         > instructions.  This is using the latest Yocto 1.1.  I did
> >         get a long
> >         > way down the line, but had a fatal error in the last 2
> >         steps.
> >         >
> >         > The only change I had to make was related to A.5.2.4.  The
> >         commit
> >         > string for the SRCREV_meta_pn was different on the
> >         > git.yoctoproject.org/cgit/cgi for the Meta commit so I used
> >         what I
> >         > found online.  The first section of 126 task completed
> >         without error.
> >         > The next section of 4394 tasks failed on 4393.  Not sure if
> >         the error
> >         > is obvious, but I wanted to run it by someone. Console error
> >         log
> >         > below:
> >         >
> >         
> >         
> >         Hmm, not sure what's going on here - I'm sure this example was
> >         verified
> >         several times, but just to make sure, what you're doing is
> >         going through
> >         'Appendix A. BSP Development Example' verbatim and getting
> >         this?
> >         
> >         The SRCREVs in either case look ok for this, so that shouldn't
> >         be the
> >         problem...
> >         
> >         But let me go over the steps myself and see what I come up
> >         with - will
> >         let you know either way...
> >         
> >         Tom
> >         
> >         
> >         >  NOTE: package core-image-sato-1.0-r0: task do_bootimg:
> >         Started
> >         > ERROR: Function 'build_boot_bin' failed
> >         >
> >         (see /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418 for further information)
> >         > ERROR: Logfile of failure stored
> >         >
> >         in: /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418
> >         > Log data follows:
> >         > | install: cannot stat
> >         >
> >         `/home/jim/poky/yocto-build/tmp/sysroots/mymachine/kernel/bzImage': No
> >         > such file or directory
> >         > | ERROR: Function 'build_boot_bin' failed
> >         >
> >         (see /home/jim/poky/yocto-build/tmp/work/mymachine-poky-linux/core-image-sato-1.0-r0/temp/log.do_bootimg.31418 for further information)
> >         > NOTE: package core-image-sato-1.0-r0: task do_bootimg:
> >         Failed
> >         > ERROR: Task 9
> >         > (/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb,
> >         > do_bootimg) failed with exit code '1'
> >         > ERROR:
> >         '/home/jim/poky/meta/recipes-sato/images/core-image-sato.bb'
> >         > failed
> >         > jim@jim-ubuntu-10:~/poky/yocto-build$
> >         >
> >         
> >         
> >         
> > 
> 
> 



