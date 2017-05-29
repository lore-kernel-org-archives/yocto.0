Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4905AE00812; Mon, 29 May 2017 07:29:53 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18659E007AA
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 07:29:49 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 May 2017 07:29:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,414,1491289200"; d="scan'208";a="107890718"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by fmsmga005.fm.intel.com with ESMTP; 29 May 2017 07:29:47 -0700
Message-ID: <1496068701.26945.32.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Date: Mon, 29 May 2017 09:38:21 -0500
In-Reply-To: <8C8F5C9C1BB04040A6555EFD5B0B5131@PAULD>
References: <8C8F5C9C1BB04040A6555EFD5B0B5131@PAULD>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Kernel config fragments ignored
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
X-List-Received-Date: Mon, 29 May 2017 14:29:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-05-29 at 00:21 -0700, Paul D. DeRocco wrote:
> I ported a working build from Fido to Morty, made a few tweaks in response
> to error messages (mostly updating version numbers), but it's not finding
> my kernel configuration fragments. This is supposed to be an i386 arch
> system, but it insists upon building an x86_64 kernel. The .config file it
> generates does not include my configuration fragments, which contain
> things like CONFIG_X86_64=n and CONFIG_X86_32=y.
> 

I hit a similar error when using the yocto-bsp script to create a i386
machine then building the kernel. Can you try what is suggested on poky
commit

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=19e99786beeaf792094a4ed9859de00c064674b2



> My linux-yocto-rt_4.8.bbappend file lists my .cfg and .scc files in
> SRC_URI, and they are indeed being copied into the build directory (at
> tmp/work/chroma_bsp-poky-linux/linux-yocto-rt/4.8.12+blahblah). The docs
> seem to imply that that's all I have to do: that they will automatically
> be found and included, without my having to name them anywhere else. If I
> intentionally put a syntax error into any of them, that erroneous file is
> indeed copied, but nothing ever complains about the error, so it isn't
> being read when I force a kernel_configme. Even cleaning the kernel and
> repeating the kernel_configme doesn't change anything.
> 
> There is one .scc that includes the others, so that suggests that there
> must be some mechanism for specifying that one and relying on the explicit
> includes to pull in the rest. Its name is chroma-bsp.scc, which matches my
> custom machine name specified in local.conf. It was previously called
> chroma-bsp-preempt-rt.scc under Fido, but when that didn't work under
> Morty, I tried changing the name, to no avail.
> 
> Also, I'm puzzled that the work directory name contains "chroma_bsp"
> instead of "chroma-bsp".
> 
> What am I missing?
> 
> -- 
> 
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
> 



