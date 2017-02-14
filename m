Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4778BE0050B; Tue, 14 Feb 2017 09:33:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 570F6E004A0;
	Tue, 14 Feb 2017 09:33:21 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	14 Feb 2017 09:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,162,1484035200"; d="scan'208";a="44372709"
Received: from unknown (HELO speedy) ([10.7.197.100])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2017 09:33:17 -0800
Message-ID: <1487093596.40476.40.camel@linux.intel.com>
From: Todor Minchev <todor.minchev@linux.intel.com>
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>
Date: Tue, 14 Feb 2017 09:33:16 -0800
In-Reply-To: <F27262EC-7AFE-4678-B743-20890189D5E9@linux.intel.com>
References: <20170209191740.63387-1-todor.minchev@linux.intel.com>
	<20170209191740.63387-3-todor.minchev@linux.intel.com>
	<F27262EC-7AFE-4678-B743-20890189D5E9@linux.intel.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [PATCH v2 2/5] Makefile: add debug target
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
X-List-Received-Date: Tue, 14 Feb 2017 17:33:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-02-10 at 10:58 -0800, Jianxun Zhang wrote:
> > On Feb 9, 2017, at 11:17 AM, Todor Minchev <todor.minchev@linux.intel.com> wrote:
> > 
> > A debug version of the rmc binary can be built by using the debug
> > Makefile target. This will include debug symbols and will disable
> > compiler optimizations.
> > 
> > Example:
> > 
> > make debug
> > 
> > Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> > ---
> > Makefile | 2 ++
> > 1 file changed, 2 insertions(+)
> > 
> > diff --git a/Makefile b/Makefile
> > index c58047a..fdd936f 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -23,6 +23,8 @@ ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
> > RMC_CFLAGS := -Wall -I$(TOPDIR)/inc
> > 
> > all: rmc
> > +debug: RMC_CFLAGS += -DDEBUG -g -O0
> > +debug: rmc
> > 
> I missed your feedback of V1, just recap it here also with my comment:
> 
> - "Yup, the above will have the same effect as 'make debug'.
> I thought that 'make debug' might be a convenient way to build a debug
> binary? Do you think it makes sense to keep this extra target for
> convenience since it doesn't affect the other usages of make?"
> 
> You could have to come back to CFLAGS when the a hard coded debug flags is not enough.
> 
> And, why pass -DDEBUG in RMC_CFLAGS when invoking gcc to compile rmc? I don’t see this macro DEBUG in the current rmc code.

I am planning to use the DEBUG macro in the future to add some more
verbosity to binaries built with 'make debug'

> 
> Thanks
> > $(ALL_OBJS): %.o: %.c
> > 	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> > -- 
> > 2.11.1
> > 
> 



