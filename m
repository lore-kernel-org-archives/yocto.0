Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE24E009AA; Fri, 10 Feb 2017 10:40:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF54E00924;
	Fri, 10 Feb 2017 10:40:54 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Feb 2017 10:40:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,142,1484035200"; d="scan'208";a="64291866"
Received: from jzhang80-mac02.jf.intel.com ([10.24.13.19])
	by fmsmga006.fm.intel.com with ESMTP; 10 Feb 2017 10:40:53 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <20170209191740.63387-2-todor.minchev@linux.intel.com>
Date: Fri, 10 Feb 2017 10:40:53 -0800
Message-Id: <235DFB60-5607-44BF-94F4-B4EAF94BA698@linux.intel.com>
References: <20170209191740.63387-1-todor.minchev@linux.intel.com>
	<20170209191740.63387-2-todor.minchev@linux.intel.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
X-Mailer: Apple Mail (2.3259)
Cc: meta-intel@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [PATCH v2 1/5] Makefile: disable silent mode in Makefiles
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
X-List-Received-Date: Fri, 10 Feb 2017 18:40:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Review +1,
Thanks to address my comment

> On Feb 9, 2017, at 11:17 AM, Todor Minchev =
<todor.minchev@linux.intel.com> wrote:
>=20
> By default make will output the commands that are executed for each
> target. Silent mode can be enabled with the '-s' option.
>=20
> Example:
> make -s
>=20
> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> ---
> Makefile     | 21 +++++++++++----------
> Makefile.efi | 10 +++++-----
> 2 files changed, 16 insertions(+), 15 deletions(-)
>=20
> diff --git a/Makefile b/Makefile
> index 9ade775..c58047a 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -25,23 +25,24 @@ RMC_CFLAGS :=3D -Wall -I$(TOPDIR)/inc
> all: rmc
>=20
> $(ALL_OBJS): %.o: %.c
> -	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> +	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
>=20
> librmc: $(RMC_LIB_OBJ)
> -	@$(AR) rcs src/lib/$@.a $^
> +	$(AR) rcs src/lib/$@.a $^
>=20
> rmc: $(RMC_TOOL_OBJ) librmc
> -	@$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) =
src/lib/librmc.a -o src/$@
> +	$(CC) $(CFLAGS) $(RMC_CFLAGS) -Lsrc/lib/ -lrmc $(RMC_TOOL_OBJ) \
> +  src/lib/librmc.a -o src/$@
>=20
> clean:
> -	@rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
> +	rm -f $(ALL_OBJS) src/rmc src/lib/librmc.a
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
> +	mkdir -p $(RMC_INSTALL_BIN_PATH)
> +	install -m 755 src/rmc $(RMC_INSTALL_BIN_PATH)
> +	mkdir -p $(RMC_INSTALL_LIB_PATH)
> +	install -m 644 src/lib/librmc.a $(RMC_INSTALL_LIB_PATH)
> +	mkdir -p $(RMC_INSTALL_HEADER_PATH)
> +	install -m 644 $(RMC_INSTALL_HEADERS) $(RMC_INSTALL_HEADER_PATH)
> diff --git a/Makefile.efi b/Makefile.efi
> index 3bd417d..66081d7 100644
> --- a/Makefile.efi
> +++ b/Makefile.efi
> @@ -18,16 +18,16 @@ RMC_CFLAGS :=3D -DRMC_EFI -Wall -I$(TOPDIR)/inc =
-fpic -nostdinc -nostdlib  -fno-bu
> all: librmcefi
>=20
> $(RMC_LIB_OBJ): %.efi.o: %.c
> -	@$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> +	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
>=20
> librmcefi: $(RMC_LIB_OBJ)
> -	@$(AR) rcs src/lib/$@.a $^
> +	$(AR) rcs src/lib/$@.a $^
>=20
> clean:
> -	@rm -f $(RMC_LIB_OBJ) src/lib/librmcefi.a
> +	rm -f $(RMC_LIB_OBJ) src/lib/librmcefi.a
>=20
> .PHONY: clean librmcefi
>=20
> install:
> -	@mkdir -p $(RMC_INSTALL_LIB_PATH)
> -	@install -m 644 $(RMC_INSTALL_LIBS) $(RMC_INSTALL_LIB_PATH)
> +	mkdir -p $(RMC_INSTALL_LIB_PATH)
> +	install -m 644 $(RMC_INSTALL_LIBS) $(RMC_INSTALL_LIB_PATH)
> --=20
> 2.11.1
>=20


