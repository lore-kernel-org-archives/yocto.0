Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A31E00C1A; Tue, 15 Nov 2016 22:55:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B830E00BF8
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 22:55:26 -0800 (PST)
Received: by mail-pf0-f196.google.com with SMTP id i88so9266077pfk.2
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 22:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=n2r3zrA98PxAAER1gJGWhGKP7AG1D0VfGURKk6xVZe0=;
	b=oQg49jXYa3AcVRQ2QYQKV93jk4IAfTImoCw8GQ2r/LbsPFI0hBUXnrGDcRtq3StSTL
	UjXlTdoBR6igdfdJzS/vSSwPpsBZQTkjT7SYvdmhK9MEYdNG6Sc39tkL5hkmuMHBmW2U
	smA+hFoHNWY5aw+rJWyXDer3yCxbgs9cDMUCzcBb7UKdyne9lFL1gMblXT2TQLl2XY3A
	mIw1f8BKu6YJbm0J19bkQCFOoGxGDYQi3ka2iVAjEpwsX4EJIgtfCDqGGmJRI5MPUy8A
	fHmQkx7lQhdSYl5MA+1Y56KBAqZZSFBdayRfx/lXcR9ExmYJu4aGf8gMGrNWqyO/ZTj3
	cfMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=n2r3zrA98PxAAER1gJGWhGKP7AG1D0VfGURKk6xVZe0=;
	b=YLN5yIU4ns83BAdko4dN6VDsmiIzA0bdT7y9ISJR3bB6FZYszqbj4s0lEx9LB7+A2o
	MBd0OUfotxuIzQEJA02svyVCxyabjCnQZYZPKNw1LF+5XjSqHfmpfHhTaBR6NbbdTYTA
	yanXjzWOVjKMxDWUyyVdVtxi8Ymn0VPuiiJ02atatmFoabFJdXVKcgaF7rvJ+IClnW4U
	oKAqbCX3+p+d5rF1kb9oUDBM3DuCqFpbJK2dRetAbEtozcy/69TevR6Ax5SlH+fOom/g
	myC18TUoEGHk2U39V9b+vkXqNU9jaX/hM79O+pkVN4Ill8zXV7PWyFfCT3Ee6x8X7HtY
	9kLw==
X-Gm-Message-State: ABUngveen+uSmcwzzprk2I3jwg7e8fvpTjQ2bajhfUczSebCx2AYTeuuhNe3TXgEdJ7Ong==
X-Received: by 10.98.11.198 with SMTP id 67mr2344712pfl.90.1479279326391;
	Tue, 15 Nov 2016 22:55:26 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:3c7d:de15:1971:ad3c])
	by smtp.gmail.com with ESMTPSA id
	y134sm26093843pfg.81.2016.11.15.22.55.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Nov 2016 22:55:25 -0800 (PST)
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>, yocto@yoctoproject.org
References: <1479272179-145521-1-git-send-email-jianxun.zhang@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <0310dff1-95ac-29d0-5dcf-acbe5d5ebe67@gmail.com>
Date: Tue, 15 Nov 2016 22:55:17 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <1479272179-145521-1-git-send-email-jianxun.zhang@linux.intel.com>
Subject: Re: [PATCH] rmc: Fix include path and type definitions
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
X-List-Received-Date: Wed, 16 Nov 2016 06:55:29 -0000
X-Groupsio-MsgNum: 32991
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="PRL6s0EXDoclIN2BQjWSUOVnfoRqsE7BV"

--PRL6s0EXDoclIN2BQjWSUOVnfoRqsE7BV
Content-Type: multipart/mixed; boundary="lr6oV7doa53gqxMvuavdcbgKBEnhavhiL";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Jianxun Zhang <jianxun.zhang@linux.intel.com>, yocto@yoctoproject.org
Message-ID: <0310dff1-95ac-29d0-5dcf-acbe5d5ebe67@gmail.com>
Subject: Re: [yocto] [PATCH] rmc: Fix include path and type definitions
References: <1479272179-145521-1-git-send-email-jianxun.zhang@linux.intel.com>
In-Reply-To: <1479272179-145521-1-git-send-email-jianxun.zhang@linux.intel.com>

--lr6oV7doa53gqxMvuavdcbgKBEnhavhiL
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/15/16 8:56 PM, Jianxun Zhang wrote:
> Add detection of current path for -I option, also update
> type definitions for EFI compiling.
>=20
> Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
> ---
>  Makefile        | 4 +++-
>  Makefile.efi    | 4 +++-
>  inc/rmc_types.h | 9 ++++++---
>  3 files changed, 12 insertions(+), 5 deletions(-)
>=20
> diff --git a/Makefile b/Makefile
> index f152829..6c68a51 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1,5 +1,7 @@
>  # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
> =20
> +TOPDIR =3D $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)=

> +
>  RMC_TOOL_SRC :=3D $(wildcard src/*.c)
>  RMC_TOOL_OBJ :=3D $(patsubst %.c,%.o,$(RMC_TOOL_SRC))
> =20
> @@ -17,7 +19,7 @@ RMC_INSTALL_BIN_PATH :=3D $(RMC_INSTALL_PREFIX)/bin/
> =20
>  ALL_OBJS :=3D $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
> =20
> -CFLAGS :=3D -Wall -O2 -Iinc $(RMC_CFLAGS)
> +CFLAGS :=3D -Wall -O2 -I$(TOPDIR)/inc $(RMC_CFLAGS)
> =20
>  all: rmc librmcl librsmp
> =20
> diff --git a/Makefile.efi b/Makefile.efi
> index 4c2aada..2af85cb 100644
> --- a/Makefile.efi
> +++ b/Makefile.efi
> @@ -1,5 +1,7 @@
>  # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
> =20
> +TOPDIR =3D $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; fi)=

> +
>  RMCL_SRC :=3D$(wildcard src/rmcl/*.c)
>  RMCL_OBJ :=3D $(patsubst %.c,%.efi.o,$(RMCL_SRC))
> =20
> @@ -34,7 +36,7 @@ RMC_INSTALL_LIBS_PATH :=3D $(RMC_INSTALL_PREFIX)/lib/=

>  SHARED_OBJS :=3D src/util/util.efi.o
>  ALL_OBJS :=3D $(RMCL_OBJ) $(RSMP_OBJ) $(SHARED_OBJS)
> =20
> -CFLAGS :=3D -DRMC_EFI -Wall -O2 -Iinc -fpic -nostdinc -nostdlib  -fno-=
builtin -std=3Dgnu90 \
> +CFLAGS :=3D -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc -nostd=
lib  -fno-builtin -std=3Dgnu90 \
>  	   -I$(RMC_EFI_HEADER_PREFIX) -I$(RMC_EFI_HEADER_PREFIX)/$(RMC_EFI_AR=
CH) $(RMC_CFLAGS)

while this patch improves the situation. It would be better if the packag=
e
would respect the flags coming from environment and not ignore them as it=
 is
doing here and then synthesizing stuff. Are there other compile scenarios=

where its compiled for non-linux targets as well ? when will
RMC_EFI_HEADER_PREFIX not look into sysroot ?

if this makefile was accomodating the environment then bitbake rightly se=
ts up
CFLAGS for cross compiling.

> =20
>  all: librmclefi librsmpefi
> diff --git a/inc/rmc_types.h b/inc/rmc_types.h
> index b6e4521..9154231 100644
> --- a/inc/rmc_types.h
> +++ b/inc/rmc_types.h
> @@ -7,14 +7,17 @@
>  #define INC_RMC_TYPES_H_
> =20
>  #ifndef RMC_EFI
> +#include <sys/types.h>
>  #include <stdint.h>
>  #include <stddef.h>
>  #include <string.h>
>  #else
>  #include <efi.h>
> -/* Fixme: we define (s)size_t here for both 32 and 64 bit because gnu-=
efi doesn't provide these */
> -typedef uint64_t size_t;
> -typedef uint64_t ssize_t;
> +/* we specify -nostdinc in C flag and provide these in rmc
> + * for EFI applications that don't want to use standard headers.
> + */
> +typedef unsigned long size_t;
> +typedef long ssize_t;
>  #endif
> =20
>  typedef uint8_t BYTE;
>=20


--lr6oV7doa53gqxMvuavdcbgKBEnhavhiL--

--PRL6s0EXDoclIN2BQjWSUOVnfoRqsE7BV
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgsAtoACgkQuwUzVZGdMxS6TQCfWQoRtvjIMnWSRakECYuYz0gN
hiMAnRACcfqHf3XIpe7M3wFgxcut0bWd
=FQ+7
-----END PGP SIGNATURE-----

--PRL6s0EXDoclIN2BQjWSUOVnfoRqsE7BV--
