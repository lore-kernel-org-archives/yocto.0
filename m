Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC32CE009AA; Wed,  8 Feb 2017 05:57:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65283E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 05:57:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 08 Feb 2017 05:57:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208";a="1123758179"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.16.172])
	by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2017 05:57:42 -0800
Message-ID: <1486562261.3754.6.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Date: Wed, 08 Feb 2017 13:57:41 +0000
In-Reply-To: <89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
References: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
	<89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
X-Mailer: Evolution 3.22.4 (3.22.4-2.fc25) 
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 08 Feb 2017 13:57:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-02-08 at 12:12 +0100, Gary Thomas wrote:
> On 2017-02-08 11:42, Gary Thomas wrote:
> > I had a recipe that used to work and now fails after the change
> > to the split sysroots.  I'm building an out-of-tree kernel module
> > and patterned my recipe after the meta-skeleton example. My recipe
> > has this setup:
> > 
> > inherit module-base kernel-module-split
> > 
> > do_compile() {
> >     unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> >     oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
> >            KERNEL_VERSION=${KERNEL_VERSION}    \
> >            CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
> >            AR="${KERNEL_AR}" \
> >                O=${STAGING_KERNEL_BUILDDIR} \
> >            install
> > }
> > 
> > The problem is that ${CC} (arm-amltd-linux-gnueabi-gcc) can no
> > longer be
> > found.  I know it's available, just not sure what needs to change
> > to be
> > able to find it.
> > 
> > $ find tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/ -name
> > "arm*gcc"
> > tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-
> > r0/recipe-sysroot-native/usr/libexec/arm-amltd-linux-
> > gnueabi/gcc/arm-amltd-linux-gnueabi/5.4.0/arm-amltd-linux-gnueabi-
> > gcc
> > 
> > tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-
> > r0/recipe-sysroot-native/usr/bin/arm-amltd-linux-gnueabi/arm-amltd-
> > linux-gnueabi-gcc
> > 
> > 
> > 
> > Any suggestions on how I fix this?
> > 
> > Thanks
> > 
> 
> It looks like the failure is actually happening in a class method
> (make_scripts)
> My recipe also contains this
>    addtask make_scripts after do_patch before do_compile
> which doesn't seem to be setting the ${PATH} correctly anymore.
> 
> Any ideas what might be missing?

Does make_scripts set cwd using the dirs varflag?

http://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-use
r-manual.html#variable-flags

i.e. meta/classes/base.bbclass:do_compile[dirs] = "${B}"

Joshua

