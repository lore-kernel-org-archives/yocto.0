Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C39F2E00B47; Wed, 31 May 2017 20:28:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 901DAE00ADD
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 20:28:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 May 2017 20:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,277,1493708400"; d="scan'208";a="1155186443"
Received: from ysayabal-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.117])
	by fmsmga001.fm.intel.com with ESMTP; 31 May 2017 20:28:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 01 Jun 2017 15:28:30 +1200
Message-ID: <10690620.1eQvXQkMYH@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <df279cbb-6dae-ba57-927f-94fe139693f0@mlbassoc.com>
References: <31a2d863-b928-df06-8e86-78b939469614@mlbassoc.com>
	<1752127.E0fXlp9gfm@peggleto-mobl.ger.corp.intel.com>
	<df279cbb-6dae-ba57-927f-94fe139693f0@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: sstate-cache question
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
X-List-Received-Date: Thu, 01 Jun 2017 03:28:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

My apologies, I just realised I never sent this reply.

On Tuesday, 23 May 2017 5:27:57 PM NZST you wrote:
> On 2017-05-22 22:35, Paul Eggleton wrote:
> > On Tuesday, 23 May 2017 2:53:45 AM NZST Gary Thomas wrote:
> >> I have a build where I've never manually removed anything from
> >> the sstate-cache and this same build has been used for hundreds
> >> of builds over the last 18 months.  I just tried to find out why
> >> gcc-cross-arm had to be rebuilt (it seems to happen almost every
> >> time I update my Poky/Yocto tree (master)).  Here's what I got:
> >>
> >> $ bitbake-diffsigs -t gcc-cross-arm compile
> >> Hash for dependent task gcc/gcc-cross_6.3.bb.do_configure changed from
> > 208373dd9ae01101a26a9412eb50b110 to
> >> d65095d4b9aff89f6990bd17c0ab210b
> >> Unable to find matching sigdata for /local/poky-cutting-edge/meta/
> >> recipes-devtools/gcc/gcc-cross_6.3.bb.do_configure
> >> with hashes 208373dd9ae01101a26a9412eb50b110 or
> > d65095d4b9aff89f6990bd17c0ab210b
> >>
> >> So if I didn't remove those files, where did they go?  Am I doing
> >> something wrong running this tool?  (running the same command for
> >> qemu-native seemed to work correctly)
> >
> > Is this with master, pyro, morty or some other version?
> 
> Poky master: 2568e18701fb20d7105eb6e4929f3aff4b9f9c06

OK so this is definitely after my recent fixes then.
 
> > If you search for files with those hashes in their name do they show up?
> 
> Only .siginfo files:
> $ find sstate-cache/ -name "*d65095d4b9aff89f6990bd17c0ab210b*"
> sstate-cache/universal/d6/sstate:gcc-cross-arm:x86_64-amltd-linux-gnueabi:
> 6.3.0:r0:x86_64_arm:3:d65095d4b9aff89f6990bd17c0ab210b_configure.tgz.siginfo
> $ find sstate-cache -name "*208373dd9ae01101a26a9412eb50b110*"
> sstate-cache/universal/20/sstate:gcc-cross-arm:x86_64-amltd-linux-gnueabi:
> 6.3.0:r0:x86_64_arm:3:208373dd9ae01101a26a9412eb50b110_configure.tgz.siginfo
> 
> However, I do find some in tmp/stamps:
> $ ls tmp/stamps/x86_64-linux/gcc-cross-arm
> 6.3.0-r0.do_build.41aca0d85971087f4675d2f504642ce4
> 6.3.0-r0.do_compile.b0eae7e91833efd5e7eceaedbc59983e
> 6.3.0-r0.do_compile.sigdata.9a06aa40225be30babaceb7673cef0a6
> 6.3.0-r0.do_compile.sigdata.b0eae7e91833efd5e7eceaedbc59983e
> 6.3.0-r0.do_configure.d65095d4b9aff89f6990bd17c0ab210b
> 6.3.0-r0.do_configure.sigdata.208373dd9ae01101a26a9412eb50b110
> 6.3.0-r0.do_configure.sigdata.d65095d4b9aff89f6990bd17c0ab210b
> 6.3.0-r0.do_fetch.1dd3c87b3e509c20fa4ffe61d6dc3b41
> 6.3.0-r0.do_gcc_stash_builddir.063822f91220bb40cef0696eb604a568
> 6.3.0-r0.do_gcc_stash_builddir.sigdata.063822f91220bb40cef0696eb604a568
> 6.3.0-r0.do_gcc_stash_builddir.sigdata.28144d3c18c0a09f23f3b0c5e80f049d
> 6.3.0-r0.do_install.0f96c5448dc9360ca3a24d551ad3da89
> 6.3.0-r0.do_install.sigdata.0f96c5448dc9360ca3a24d551ad3da89
> 6.3.0-r0.do_install.sigdata.f2e4d12289c5039854081a832dc8bc0e
> 6.3.0-r0.do_populate_lic_setscene.d2c9226ddb0de5277e2347b69ef84664
> 6.3.0-r0.do_populate_sysroot.15afc3bb019a6c0c1285cbda46cb32b0
> 6.3.0-r0.do_populate_sysroot.sigdata.15afc3bb019a6c0c1285cbda46cb32b0
> 6.3.0-r0.do_populate_sysroot.sigdata.a0c5b715ae9217f02318beff6987d169
> 6.3.0-r0.do_prepare_recipe_sysroot.150112323551011e0e87f99f47ad79c4
> 6.3.0-r0.do_prepare_recipe_sysroot.sigdata.150112323551011e0e87f99f47ad79c4
> 6.3.0-r0.do_prepare_recipe_sysroot.sigdata.4a528becf11832cc3b8f6fa479e98210
> 
> I guess the sstate-cache info alone is not sufficient to use 'bitbake
> diffsigs'?

It ought to be. At face value it should be finding the files in either place 
- we'd need to debug the code to find out why it isn't. Is that something you 
might be able to help me with?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

