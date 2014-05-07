Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30D44E00A44; Wed,  7 May 2014 05:59:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A8EFE003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 05:59:16 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 May 2014 05:53:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1003,1389772800"; d="scan'208";a="507632216"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.122.213])
	by orsmga001.jf.intel.com with ESMTP; 07 May 2014 05:58:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bob Feretich <bob.feretich@rafresearch.com>
Date: Wed, 07 May 2014 13:58:47 +0100
Message-ID: <21534393.ViuvyeE1Gr@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.2-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <536960F1.90609@rafresearch.com>
References: <53682429.6070103@rafresearch.com>
	<14430763.86LsjAOQil@peggleto-mobl5.ger.corp.intel.com>
	<536960F1.90609@rafresearch.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Definition of Yocto tasks
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
X-List-Received-Date: Wed, 07 May 2014 12:59:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 06 May 2014 15:23:45 Bob Feretich wrote:
> On 5/6/2014 2:38 AM, Paul Eggleton wrote:
> > On Tuesday 06 May 2014 06:47:08 Rifenbark, Scott M wrote:
> >>> -----Original Message-----
> >>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >>> bounces@yoctoproject.org] On Behalf Of Bob Feretich
> >>> Sent: Monday, May 05, 2014 4:52 PM
> >>> To: yocto@yoctoproject.org
> >>> Subject: [yocto] Definition of Yocto tasks
> >>> 
> >>> Is there a document that provides a detailed definition of what each
> >>> these
> >>> tasks do?
> >>> Yocto, OE, and bitbake manuals tell us how to command a specific task to
> >>> be
> >>> run, but not what they do.
> >>> 
> >>> The task name provides a good hint sometimes, but often that is not
> >>> enough.
> >>> Users shouldn't have to read the python code for this information. These
> >>> descriptions should be a part of the yocto manual.
> >>> 
> >>> Sections 5.3.4 to 5.3.11 of the Yocto mega-manual provide a good
> >>> overview
> >>> of some of these tasks in the context of a workflow, but doesn't mention
> >>> most of these tasks and doesn't go into enough detail on the tasks it
> >>> discusses.
> >>> 
> >>> It wouldn't be appropriate to add more detail at that point in the
> >>> manual,
> >>> but it would be appropriate to include details regarding all of the
> >>> tasks
> >>> in an appendix.
> >>> 
> >>> Examples...
> >>> The manual states that do_fetch fetches source, but doesn't state that
> >>> when
> >>> git is used whether it performs a pull, fetch, or clone. What are the
> >>> common failure conditions of do_fetch? And what should the user do to
> >>> fix
> >>> the problem?
> >>> 
> >>> do_build is mentioned a few times, but there is no reference to it being
> >>> the default task or what tasks are invoked by do_build and which are
> >>> omitted.
> >>> 
> >>> do_rm_work and do_wm_work_all are not mentioned at all.
> >>> 
> >>> Result of listtasks:
> >>> do_fetchall
> >>> do_build
> >>> do_devshell
> >>> do_package_write_ipk
> >>> do_cleansstate
> >>> do_savedefconfig
> >>> do_uboot_mkimage
> >>> do_sizecheck
> >>> do_strip
> >>> do_packagedata_setscene
> >>> do_configure
> >>> do_clean
> >>> do_deploy_setscene
> >>> do_cleanall
> >>> do_populate_lic
> >>> do_populate_sysroot
> >>> do_devicetree_image
> >>> do_deploy
> >>> do_menuconfig
> >>> do_patch
> >>> do_bundle_initramfs
> >>> do_packagedata
> >>> do_listtasks
> >>> do_compile
> >>> do_package_setscene
> >>> do_populate_lic_setscene
> >>> do_fetch
> >>> do_checkuri
> >>> do_compile_kernelmodules
> >>> do_package_write_ipk_setscene
> >>> do_package_write
> >>> do_rm_work
> >>> do_package
> >>> do_unpack
> >>> do_install
> >>> do_checkuriall
> >>> do_populate_sysroot_setscene
> >>> do_rm_work_all
> >>> 
> >>> I don't have the knowledge to create such an appendix, but I volunteer
> >>> to be a proofreader.
> >> 
> >> An appendix for a reference of these tasks seems like a good idea.
> > 
> > FYI, you may already have seen it but we have a bit of coverage for the
> > common> 
> > tasks in the following section of the manual:
> >    http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#clo
> >    ser-look
>
> This section seems to be a more polished version of the mega manual
> Sections 5.3.4 to 5.3.11. 

They should be identical. The mega manual is simply the other manuals combined
together...

> It provides an overview to the build process, but its still at a very high
> level (few details).

Could you expand on the details are you looking for that you're not finding
there?

> > If we wanted to add an appendix to list them all (and it might be worth us
> > doing so) a good starting point would be the task descriptions in
> > 
> > documentation.conf:
> >    http://cgit.openembedded.org/openembedded-core/tree/meta/conf/documenta
> >    tion.conf
>
> This file at least provides one sentence on most tasks. (do_setscene is
> missing, maybe more).

do_setscene itself isn't a task that we have. Setscene equivalents exist for
all of the sstate-enabled tasks that we have i.e. do_populate_sysroot_setscene
is the setscene equivalent of do_populate_sysroot. We should touch on it
elsewhere as well, but FYI we do have an explanation of the setscene process in
the BitBake manual:

http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#setscene

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

