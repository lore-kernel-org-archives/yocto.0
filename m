Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 974C2E00D14; Mon, 25 Sep 2017 21:33:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5307CE00D10
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 21:33:17 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Sep 2017 21:33:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,439,1500966000"; d="scan'208";a="1175796846"
Received: from lmazlan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.67.104])
	by orsmga001.jf.intel.com with ESMTP; 25 Sep 2017 21:33:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrea Galbusera <gizero@gmail.com>
Date: Tue, 26 Sep 2017 17:33:08 +1300
Message-ID: <11108946.QmoIu7Nc6a@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAC+thW0rcZuB-y+=93srk203E+coR4G7r36stmz0UA-L5Td3nw@mail.gmail.com>
References: <CAC+thW29aj-ZCsd31cfEsnuQKUuDGAfCzg5AX_srUcud0e9sBA@mail.gmail.com>
	<2247298.VirvghVmfO@peggleto-mobl.ger.corp.intel.com>
	<CAC+thW0rcZuB-y+=93srk203E+coR4G7r36stmz0UA-L5Td3nw@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eSDK install script failure
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
X-List-Received-Date: Tue, 26 Sep 2017 04:33:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrea,

On Tuesday, 26 September 2017 4:33:46 AM NZDT Andrea Galbusera wrote:
> I'm back to this issue after the weeken break. See below the feedback from
> your suggestions.
> 
> On Thu, Sep 21, 2017 at 11:49 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> 
> > On Friday, 22 September 2017 9:40:41 AM NZST Paul Eggleton wrote:
> > > On Friday, 22 September 2017 9:22:08 AM NZST Andrea Galbusera wrote:
> > > > On Thu, Sep 21, 2017 at 10:48 PM, Paul Eggleton <
> > > > paul.eggleton@linux.intel.com> wrote:
> > > > > Right, so the next step would be looking for the hash for
> > > > > python-native.do_populate_sysroot in conf/locked_sigs.inc within the
> > > > > failed SDK install directory and then looking for that in both the
> > sstate-
> > > > > cache directory within the failed SDK and then in the sstate-cache
> > > > > directory of the build that built it. I suspect it may not be there,
> > but
> > > > > let me know what you find.
> > > >
> > > > Good catch! In the failing SDK neither conf/locked_sigs.inc nor
> > > > sstate-cache do include any python-native signature or object... Only
> > > > python3-native stuff is there. Weird! As said, SDKs from the same build
> > > > directory, used to work since a few weeks ago. May any recent change in
> > > > poky master have caused this while periodically upgrading without
> > > > regenerating the sstate-cache?
> > >
> > > No, I can't see any added references to python-native anywhere in the
> > last few
> > > weeks. If you do bitbake -c clean python-native and then rebuild the SDK
> > does
> > > the issue go away?
> >
> > Actually scratch that, that's not going to help. The question is where is
> > this dependency coming from and why isn't it properly picked up such
> > that it gets included. bitbake -g -c populate_sdk_ext your-image might be
> > useful in determining that.
> >
> 
> $ bitbake core-image-base-dlms -c populate_sdk_ext -g
> 
> Grepping task-depends.dot for "python-native" gives no match. Surprisingly
> enough (at least for me) I read a different story when doing the same for
> the image itself
> 
> $ bitbake core-image-base-dlms -g
> $ grep python-native task-depends.dot
>  "python-native.do_populate_lic" [label="python-native
> do_populate_lic\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python[18/7956]
> .7.13.bb"]
> "python-native.do_populate_lic" -> "python-native.do_patch"
> "python-native.do_prepare_recipe_sysroot" [label="python-native
> do_prepare_recipe_sysroot\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/py
> thon/python-native_2.7.13.bb"]
> "python-native.do_prepare_recipe_sysroot" ->
> "openssl-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "pkgconfig-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "automake-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "expat-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "sqlite3-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" -> "python-native.do_fetch"
> "python-native.do_prepare_recipe_sysroot" ->
> "bzip2-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "readline-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "zlib-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "autoconf-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "gnu-config-native.do_populate_sysroot"
> "python-native.do_prepare_recipe_sysroot" ->
> "libtool-native.do_populate_sysroot"
> "python-native.do_rm_work_all" [label="python-native
> do_rm_work_all\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python-native_2.7
> .13.bb"]
> "python-native.do_rm_work_all" -> "readline-native.do_rm_work"
> "python-native.do_rm_work_all" -> "gnu-config-native.do_rm_work"
> "python-native.do_rm_work_all" -> "openssl-native.do_rm_work"
> "python-native.do_rm_work_all" -> "automake-native.do_rm_work"
> "python-native.do_rm_work_all" -> "m4-native.do_rm_work"
> "python-native.do_rm_work_all" -> "makedepend-native.do_rm_work"
> "python-native.do_rm_work_all" -> "xproto-native.do_rm_work"
> "python-native.do_rm_work_all" -> "bzip2-native.do_rm_work"
> "python-native.do_rm_work_all" -> "ncurses-native.do_rm_work"
> "python-native.do_rm_work_all" -> "python-native.do_rm_work"
> "python-native.do_rm_work_all" -> "expat-native.do_rm_work"
> "python-native.do_rm_work_all" -> "pigz-native.do_rm_work"
> "python-native.do_rm_work_all" -> "libtool-native.do_rm_work"
> "python-native.do_rm_work_all" -> "pkgconfig-native.do_rm_work"
> "python-native.do_rm_work_all" -> "gettext-minimal-native.do_rm_work"
> "python-native.do_rm_work_all" -> "util-macros-native.do_rm_work"
> "python-native.do_rm_work_all" -> "quilt-native.do_rm_work"
> "python-native.do_rm_work_all" -> "autoconf-native.do_rm_work"
> "python-native.do_rm_work_all" -> "cryptodev-linux-native.do_rm_work"
> "python-native.do_rm_work_all" -> "xz-native.do_rm_work"
> "python-native.do_rm_work_all" -> "zlib-native.do_rm_work"
> "python-native.do_rm_work_all" -> "texinfo-dummy-native.do_rm_work"
> "python-native.do_rm_work_all" -> "sqlite3-native.do_rm_work"
> "python-native.do_compile" [label="python-native
> do_compile\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_compile" -> "python-native.do_configure"
> "python-native.do_install" [label="python-native
> do_install\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_install" -> "python-native.do_compile"
> "bmap-tools-native.do_rm_work_all" -> "python-native.do_rm_work"
> "python-native.do_build" [label="python-native
> do_build\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_build" -> "python-native.do_populate_sysroot"
> "python-native.do_build" -> "python-native.do_rm_work"
> "python-native.do_build" -> "python-native.do_populate_lic"
> "python-native.do_build" -> "python-native.do_rm_work_all"
> "python-native.do_fetch" [label="python-native
> do_fetch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_unpack" [label="python-native
> do_unpack\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_unpack" -> "xz-native.do_populate_sysroot"
> "python-native.do_unpack" -> "python-native.do_fetch"
> "python-native.do_patch" [label="python-native
> do_patch\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_patch" -> "python-native.do_unpack"
> "python-native.do_patch" -> "quilt-native.do_populate_sysroot"
> "core-image-base-dlms.do_build" -> "python-native.do_build"
> "python-native.do_configure" [label="python-native
> do_configure\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python-native_2.7.13.
> bb"]
> "python-native.do_configure" -> "python-native.do_patch"
> "python-native.do_configure" -> "python-native.do_prepare_recipe_sysroot"
> "python-native.do_rm_work" [label="python-native
> do_rm_work\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/
> python-native_2.7.13.bb"]
> "python-native.do_rm_work" -> "python-native.do_populate_sysroot"
> "python-native.do_rm_work" -> "python-native.do_populate_lic"
> "python-native.do_populate_sysroot" [label="python-native
> do_populate_sysroot\n:2.7.13-r1.1\n/home/gizero/work/smartliving/distro/repo-master/build-poky/conf/../../layers/poky/meta/recipes-devtools/python/python-
> native_2.7.13.bb"]
> "python-native.do_populate_sysroot" -> "python-native.do_install"
> 
> As expected, on the build bot that builds successfully installable SDKs,
> both dependency graphs contain no mention of python-native. Time to nuke
> the sstate-cache from the failing one or do you have any additional clue to
> investigate further?

Deleting sstate-cache is very unlikely to help - these dependency relationships
aren't stored in sstate (or at least they aren't stored there in a way that
bitbake will take it as input for dependency graph generation). 

It looks like bmap-tools-native might be how the dependency is getting in -
perhaps this is coming in conditionally through IMAGE_FSTYPES? For some 
unknown reason it also doesn't get triggered when building the eSDK but does
when restoring the image dependencies within the eSDK.

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

