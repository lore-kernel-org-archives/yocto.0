Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AA4E01421
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 12:10:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Jul 2012 12:10:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="166480569"
Received: from unknown (HELO [10.255.13.16]) ([10.255.13.16])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2012 12:10:52 -0700
Message-ID: <1341342649.19196.68.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 03 Jul 2012 14:10:49 -0500
In-Reply-To: <4FF34276.5040803@windriver.com>
References: <cover.1341329269.git.tom.zanussi@intel.com>
	<4FF34276.5040803@windriver.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] linux-yocto-3.4/standard/base: perf scripting updates
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
X-List-Received-Date: Tue, 03 Jul 2012 19:10:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-07-03 at 15:05 -0400, Bruce Ashfield wrote:
> On 12-07-03 02:07 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > This patchset comprises the kernel side of the modifications needed to
> > enable the Perl and Python bindings for perf scripting.
> 
> Looks good to me, I'm happy to finally revert the no_perl patch :)
> I assume that you verified everything happily builds with and
> without the perf-scripting being available ?
> 

Yeah, I built and run-tested several different machines with and without
perf-scripting and perf-tui and didn't see any problems...

Tom

> Cheers,
> 
> Bruce
> 
> 
> 
> >
> > Please pull into linux-yocto-3.4 standard/base.
> >
> > Thanks,
> >
> > Tom
> >
> > The following changes since commit a8291fa6f723b0182d2b7033b5d59f412ba7cf72:
> >    Bruce Ashfield (1):
> >          yaffs2: update to 2012-05-29 development head
> >
> > are available in the git repository at:
> >
> >    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/3.4-perf-scripting-standard-base
> >    http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/3.4-perf-scripting-standard-base
> >
> > Tom Zanussi (4):
> >    Revert "perf: hard-code NO_LIBPERL/NO_LIBPYTHON"
> >    perf: use pkg-config instead of python-config
> >    perf: add 'libperl not found' warning
> >    perf: change --root to --prefix for python install
> >
> >   tools/perf/Makefile |   90 +++++++++++++++++++++++++++++++++++++++++++++++++--
> >   1 files changed, 87 insertions(+), 3 deletions(-)
> >
> 



