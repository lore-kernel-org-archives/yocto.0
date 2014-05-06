Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5FA8E00480; Tue,  6 May 2014 02:38:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64785E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 02:38:17 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 May 2014 02:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,996,1389772800"; d="scan'208";a="534223529"
Received: from kcathuko-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.115])
	by fmsmga002.fm.intel.com with ESMTP; 06 May 2014 02:38:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bob Feretich <bob.feretich@rafresearch.com>, "Rifenbark,
	Scott M" <scott.m.rifenbark@intel.com>
Date: Tue, 06 May 2014 10:38:11 +0100
Message-ID: <14430763.86LsjAOQil@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.2-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F962F9@ORSMSX101.amr.corp.intel.com>
References: <53682429.6070103@rafresearch.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F962F9@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Tue, 06 May 2014 09:38:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 06 May 2014 06:47:08 Rifenbark, Scott M wrote:
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Bob Feretich
> >Sent: Monday, May 05, 2014 4:52 PM
> >To: yocto@yoctoproject.org
> >Subject: [yocto] Definition of Yocto tasks
> >
> >Is there a document that provides a detailed definition of what each these
> >tasks do?
> >Yocto, OE, and bitbake manuals tell us how to command a specific task to be
> >run, but not what they do.
> >
> >The task name provides a good hint sometimes, but often that is not enough.
> >Users shouldn't have to read the python code for this information. These
> >descriptions should be a part of the yocto manual.
> >
> >Sections 5.3.4 to 5.3.11 of the Yocto mega-manual provide a good overview
> >of some of these tasks in the context of a workflow, but doesn't mention
> >most of these tasks and doesn't go into enough detail on the tasks it
> >discusses.
> >
> >It wouldn't be appropriate to add more detail at that point in the manual,
> >but it would be appropriate to include details regarding all of the tasks
> >in an appendix.
> >
> >Examples...
> >The manual states that do_fetch fetches source, but doesn't state that when
> >git is used whether it performs a pull, fetch, or clone. What are the
> >common failure conditions of do_fetch? And what should the user do to fix
> >the problem?
> >
> >do_build is mentioned a few times, but there is no reference to it being
> >the default task or what tasks are invoked by do_build and which are
> >omitted.
> >
> >do_rm_work and do_wm_work_all are not mentioned at all.
> >
> >Result of listtasks:
> >do_fetchall
> >do_build
> >do_devshell
> >do_package_write_ipk
> >do_cleansstate
> >do_savedefconfig
> >do_uboot_mkimage
> >do_sizecheck
> >do_strip
> >do_packagedata_setscene
> >do_configure
> >do_clean
> >do_deploy_setscene
> >do_cleanall
> >do_populate_lic
> >do_populate_sysroot
> >do_devicetree_image
> >do_deploy
> >do_menuconfig
> >do_patch
> >do_bundle_initramfs
> >do_packagedata
> >do_listtasks
> >do_compile
> >do_package_setscene
> >do_populate_lic_setscene
> >do_fetch
> >do_checkuri
> >do_compile_kernelmodules
> >do_package_write_ipk_setscene
> >do_package_write
> >do_rm_work
> >do_package
> >do_unpack
> >do_install
> >do_checkuriall
> >do_populate_sysroot_setscene
> >do_rm_work_all
> >
> >I don't have the knowledge to create such an appendix, but I volunteer to
> >be a proofreader.
>
> An appendix for a reference of these tasks seems like a good idea.

FYI, you may already have seen it but we have a bit of coverage for the common
tasks in the following section of the manual:

  http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#closer-look

If we wanted to add an appendix to list them all (and it might be worth us
doing so) a good starting point would be the task descriptions in
documentation.conf:

  http://cgit.openembedded.org/openembedded-core/tree/meta/conf/documentation.conf

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

