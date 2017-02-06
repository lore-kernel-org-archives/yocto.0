Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97A82E0083C; Mon,  6 Feb 2017 11:06:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42EC6E007BA;
	Mon,  6 Feb 2017 11:06:34 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP; 06 Feb 2017 11:06:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,342,1477983600"; d="scan'208";a="221997423"
Received: from jzhang80-mac02.jf.intel.com ([10.24.8.200])
	by fmsmga004.fm.intel.com with ESMTP; 06 Feb 2017 11:06:33 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <20170202223712.8164-2-todor.minchev@linux.intel.com>
Date: Mon, 6 Feb 2017 11:06:33 -0800
Message-Id: <AE0DC8C0-0FD1-4CEF-93CD-1C68966B5C9F@linux.intel.com>
References: <20170202223712.8164-1-todor.minchev@linux.intel.com>
	<20170202223712.8164-2-todor.minchev@linux.intel.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
X-Mailer: Apple Mail (2.3259)
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
X-List-Received-Date: Mon, 06 Feb 2017 19:06:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Todor,
Please refer to my 2 inline comments.

> On Feb 2, 2017, at 2:37 PM, Todor Minchev =
<todor.minchev@linux.intel.com> wrote:
>=20
> By default Makefile verbosity is disabled (V=3D0). Verbosity can be =
enabled by
> setting the V environment variable to any value not equal to 0 (e.g =
V=3D1)
>=20
> Example:
> make clean V=3D1; make V=3D1
>=20
> A debug version of the rmc binary can be built by using the debug
> Makefile target. This will include debug symbols and will disable =
compiler
> optimizations when compiling rmc.
>=20
> Example:
>=20
> make debug
>=20
> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> ---
> Makefile | 31 +++++++++++++++++++++----------
> 1 file changed, 21 insertions(+), 10 deletions(-)
>=20
> diff --git a/Makefile b/Makefile
> index 9ade775..d85d8e9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1,5 +1,12 @@
> # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
>=20
> +V ?=3D 0
> +ifeq ($(V),0)
> +  VERBOSITY =3D @
> +else
> +  VERBOSITY =3D
> +endif
> +
I am thinking maybe we should remove =E2=80=98@=E2=80=98 in rules and =
use -s option of make (in recipe) when we want to mute the output. This =
should reach the same effect without bothering new variables.

We still enable/disable output as a whole anyway.

Let me know if this proposal works for you.

> TOPDIR =3D $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)
>=20
> RMC_TOOL_SRC :=3D $(wildcard src/*.c)
> @@ -20,28 +27,32 @@ RMC_INSTALL_HEADER_PATH :=3D =
$(RMC_INSTALL_PREFIX)/include/rmc/
>=20
> ALL_OBJS :=3D $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
>=20
> +
> RMC_CFLAGS :=3D -Wall -I$(TOPDIR)/inc
>=20
> all: rmc
> +debug: RMC_CFLAGS +=3D -DDEBUG -g -O0
> +debug: rmc
I am not sure if this is necessary because we already have CFLAGS. I =
think you can reach the same effect without adding a new debug target:
make CFLAGS=3D'-DDEBUG -g -O0=E2=80=99

also refer to commit e8b48e6 in rmc project.

>=20
> $(ALL_OBJS): %.o: %.c
> -	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> +	$(VERBOSITY)$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
>=20
> librmc: $(RMC_LIB_OBJ)
> -	@$(AR) rcs src/lib/$@.a $^
> +	$(VERBOSITY)$(AR) rcs src/lib/$@.a $^
>=20
> rmc: $(RMC_TOOL_OBJ) librmc
> -	@$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) =
src/lib/librmc.a -o src/$@
> +	$(VERBOSITY)$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc =
$(RMC_TOOL_OBJ) \
> +  src/lib/librmc.a -o src/$@
>=20
> clean:
> -	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
> +	$(VERBOSITY)rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
>=20
> .PHONY: clean rmc librmc
>=20
> install:
> -	@mkdir -p $(RMC_INSTALL_BIN_PATH)
> -	@install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
> -	@mkdir -p $(RMC_INSTALL_LIB_PATH)
> -	@install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
> -	@mkdir -p $(RMC_INSTALL_HEADER_PATH)
> -	@install -m 644 $(RMC_INSTALL_HEADERS) =
$(RMC_INSTALL_HEADER_PATH)
> +	$(VERBOSITY)mkdir -p $(RMC_INSTALL_BIN_PATH)
> +	$(VERBOSITY)install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
> +	$(VERBOSITY)mkdir -p $(RMC_INSTALL_LIB_PATH)
> +	$(VERBOSITY)install -m 644 src/lib/librmc.a =
$(RMC_INSTALL_LIB_PATH)
> +	$(VERBOSITY)mkdir -p $(RMC_INSTALL_HEADER_PATH)
> +	$(VERBOSITY)install -m 644 $(RMC_INSTALL_HEADERS) =
$(RMC_INSTALL_HEADER_PATH)
> --=20
> 2.11.0
>=20


