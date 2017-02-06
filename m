Return-Path: <todor.minchev@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E001BE0082E; Mon,  6 Feb 2017 14:21:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85208E007AD;
	Mon,  6 Feb 2017 14:21:48 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 06 Feb 2017 14:21:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="930846710"
Received: from unknown (HELO speedy) ([10.7.197.100])
	by orsmga003.jf.intel.com with ESMTP; 06 Feb 2017 14:21:39 -0800
Message-ID: <1486419699.42955.147.camel@linux.intel.com>
From: Todor Minchev <todor.minchev@linux.intel.com>
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>
Date: Mon, 06 Feb 2017 14:21:39 -0800
In-Reply-To: <AE0DC8C0-0FD1-4CEF-93CD-1C68966B5C9F@linux.intel.com>
References: <20170202223712.8164-1-todor.minchev@linux.intel.com>
	<20170202223712.8164-2-todor.minchev@linux.intel.com>
	<AE0DC8C0-0FD1-4CEF-93CD-1C68966B5C9F@linux.intel.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] Makefile: add verbosity and debug options to Makefile
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
X-List-Received-Date: Mon, 06 Feb 2017 22:21:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-02-06 at 11:06 -0800, Jianxun Zhang wrote:
> Todor,
> Please refer to my 2 inline comments.
> 
> > On Feb 2, 2017, at 2:37 PM, Todor Minchev <todor.minchev@linux.intel.com> wrote:
> > 
> > By default Makefile verbosity is disabled (V=0). Verbosity can be enabled by
> > setting the V environment variable to any value not equal to 0 (e.g V=1)
> > 
> > Example:
> > make clean V=1; make V=1
> > 
> > A debug version of the rmc binary can be built by using the debug
> > Makefile target. This will include debug symbols and will disable compiler
> > optimizations when compiling rmc.
> > 
> > Example:
> > 
> > make debug
> > 
> > Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> > ---
> > Makefile | 31 +++++++++++++++++++++----------
> > 1 file changed, 21 insertions(+), 10 deletions(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index 9ade775..d85d8e9 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -1,5 +1,12 @@
> > # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
> > 
> > +V ?= 0
> > +ifeq ($(V),0)
> > +  VERBOSITY = @
> > +else
> > +  VERBOSITY =
> > +endif
> > +
> I am thinking maybe we should remove ‘@‘ in rules and use -s option of make (in recipe) when we want to mute the output. This should reach the same effect without bothering new variables.
> 
> We still enable/disable output as a whole anyway.
> 
> Let me know if this proposal works for you.

Sounds good. Removing the @ will make it possible to toggle the
verbosity with 'make -s' without introducing any extra variables. 

> 
> > TOPDIR = $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
> > 
> > RMC_TOOL_SRC := $(wildcard src/*.c)
> > @@ -20,28 +27,32 @@ RMC_INSTALL_HEADER_PATH := $(RMC_INSTALL_PREFIX)/include/rmc/
> > 
> > ALL_OBJS := $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
> > 
> > +
> > RMC_CFLAGS := -Wall -I$(TOPDIR)/inc
> > 
> > all: rmc
> > +debug: RMC_CFLAGS += -DDEBUG -g -O0
> > +debug: rmc
> I am not sure if this is necessary because we already have CFLAGS. I think you can reach the same effect without adding a new debug target:
> make CFLAGS='-DDEBUG -g -O0’
> 

Yup, the above will have the same effect as 'make debug'.
I thought that 'make debug' might be a convenient way to build a debug
binary? Do you think it makes sense to keep this extra target for
convenience since it doesn't affect the other usages of make?

> also refer to commit e8b48e6 in rmc project.
> 
> > 
> > $(ALL_OBJS): %.o: %.c
> > -	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> > +	$(VERBOSITY)$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> > 
> > librmc: $(RMC_LIB_OBJ)
> > -	@$(AR) rcs src/lib/$@.a $^
> > +	$(VERBOSITY)$(AR) rcs src/lib/$@.a $^
> > 
> > rmc: $(RMC_TOOL_OBJ) librmc
> > -	@$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) src/lib/librmc.a -o src/$@
> > +	$(VERBOSITY)$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) \
> > +  src/lib/librmc.a -o src/$@
> > 
> > clean:
> > -	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
> > +	$(VERBOSITY)rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
> > 
> > .PHONY: clean rmc librmc
> > 
> > install:
> > -	@mkdir -p $(RMC_INSTALL_BIN_PATH)
> > -	@install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
> > -	@mkdir -p $(RMC_INSTALL_LIB_PATH)
> > -	@install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
> > -	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
> > -	@install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
> > +	$(VERBOSITY)mkdir -p $(RMC_INSTALL_BIN_PATH)
> > +	$(VERBOSITY)install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
> > +	$(VERBOSITY)mkdir -p $(RMC_INSTALL_LIB_PATH)
> > +	$(VERBOSITY)install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
> > +	$(VERBOSITY)mkdir -p $(RMC_INSTALL_HEADER_PATH)
> > +	$(VERBOSITY)install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
> > -- 
> > 2.11.0
> > 
> 



