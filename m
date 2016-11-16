Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EE7EE00C3E; Wed, 16 Nov 2016 12:22:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DBDE00712
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 12:22:41 -0800 (PST)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga104.jf.intel.com with ESMTP; 16 Nov 2016 12:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,649,1473145200"; d="scan'208";a="32106690"
Received: from jzhang80-mac02.jf.intel.com ([10.24.8.202])
	by orsmga005.jf.intel.com with ESMTP; 16 Nov 2016 12:22:40 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <0310dff1-95ac-29d0-5dcf-acbe5d5ebe67@gmail.com>
Date: Wed, 16 Nov 2016 12:22:40 -0800
Message-Id: <2629C898-F5EB-4E81-A036-C9B5BDC693A0@linux.intel.com>
References: <1479272179-145521-1-git-send-email-jianxun.zhang@linux.intel.com>
	<0310dff1-95ac-29d0-5dcf-acbe5d5ebe67@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 16 Nov 2016 20:22:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Nov 15, 2016, at 10:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>=20
>=20
> On 11/15/16 8:56 PM, Jianxun Zhang wrote:
>> Add detection of current path for -I option, also update
>> type definitions for EFI compiling.
>>=20
>> Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
>> ---
>> Makefile        | 4 +++-
>> Makefile.efi    | 4 +++-
>> inc/rmc_types.h | 9 ++++++---
>> 3 files changed, 12 insertions(+), 5 deletions(-)
>>=20
>> diff --git a/Makefile b/Makefile
>> index f152829..6c68a51 100644
>> --- a/Makefile
>> +++ b/Makefile
>> @@ -1,5 +1,7 @@
>> # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
>>=20
>> +TOPDIR =3D $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; =
fi)
>> +
>> RMC_TOOL_SRC :=3D $(wildcard src/*.c)
>> RMC_TOOL_OBJ :=3D $(patsubst %.c,%.o,$(RMC_TOOL_SRC))
>>=20
>> @@ -17,7 +19,7 @@ RMC_INSTALL_BIN_PATH :=3D =
$(RMC_INSTALL_PREFIX)/bin/
>>=20
>> ALL_OBJS :=3D $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
>>=20
>> -CFLAGS :=3D -Wall -O2 -Iinc $(RMC_CFLAGS)
>> +CFLAGS :=3D -Wall -O2 -I$(TOPDIR)/inc $(RMC_CFLAGS)
>>=20
>> all: rmc librmcl librsmp
>>=20
>> diff --git a/Makefile.efi b/Makefile.efi
>> index 4c2aada..2af85cb 100644
>> --- a/Makefile.efi
>> +++ b/Makefile.efi
>> @@ -1,5 +1,7 @@
>> # Copyright (C) 2016 Jianxun Zhang <jianxun.zhang@intel.com>
>>=20
>> +TOPDIR =3D $(shell if [ -z "$$PWD" ]; then pwd; else echo "$$PWD"; =
fi)
>> +
>> RMCL_SRC :=3D$(wildcard src/rmcl/*.c)
>> RMCL_OBJ :=3D $(patsubst %.c,%.efi.o,$(RMCL_SRC))
>>=20
>> @@ -34,7 +36,7 @@ RMC_INSTALL_LIBS_PATH :=3D =
$(RMC_INSTALL_PREFIX)/lib/
>> SHARED_OBJS :=3D src/util/util.efi.o
>> ALL_OBJS :=3D $(RMCL_OBJ) $(RSMP_OBJ) $(SHARED_OBJS)
>>=20
>> -CFLAGS :=3D -DRMC_EFI -Wall -O2 -Iinc -fpic -nostdinc -nostdlib  =
-fno-builtin -std=3Dgnu90 \
>> +CFLAGS :=3D -DRMC_EFI -Wall -O2 -I$(TOPDIR)/inc -fpic -nostdinc =
-nostdlib  -fno-builtin -std=3Dgnu90 \
>> 	   -I$(RMC_EFI_HEADER_PREFIX) =
-I$(RMC_EFI_HEADER_PREFIX)/$(RMC_EFI_ARCH) $(RMC_CFLAGS)
>=20
> while this patch improves the situation. It would be better if the =
package
> would respect the flags coming from environment and not ignore them as =
it is
> doing here and then synthesizing stuff. Are there other compile =
scenarios
> where its compiled for non-linux targets as well ? when will
> RMC_EFI_HEADER_PREFIX not look into sysroot ?
>=20
If I understand the suggestion correctly, we should not override CFLAGS =
but perhaps use the local RMC_CFLAGS to hold special options here, then =
pass them together to compiler.

I don=E2=80=99t see a non-linux use case so far. The header files we =
need can be installed out of sysroot because their package provides that =
option in linux. These variables work for these non-typical use cases.

Most of C flags in this Makefile are to resolve specific issues. Some of =
left over from prototype stage, like -O2, should be removed from the =
internal flags.

I will address these other issues in a coming bigger refactor work =
that's already in progress on top of this change.


> if this makefile was accomodating the environment then bitbake rightly =
sets up
> CFLAGS for cross compiling.
>=20
>>=20
>> all: librmclefi librsmpefi
>> diff --git a/inc/rmc_types.h b/inc/rmc_types.h
>> index b6e4521..9154231 100644
>> --- a/inc/rmc_types.h
>> +++ b/inc/rmc_types.h
>> @@ -7,14 +7,17 @@
>> #define INC_RMC_TYPES_H_
>>=20
>> #ifndef RMC_EFI
>> +#include <sys/types.h>
>> #include <stdint.h>
>> #include <stddef.h>
>> #include <string.h>
>> #else
>> #include <efi.h>
>> -/* Fixme: we define (s)size_t here for both 32 and 64 bit because =
gnu-efi doesn't provide these */
>> -typedef uint64_t size_t;
>> -typedef uint64_t ssize_t;
>> +/* we specify -nostdinc in C flag and provide these in rmc
>> + * for EFI applications that don't want to use standard headers.
>> + */
>> +typedef unsigned long size_t;
>> +typedef long ssize_t;
>> #endif
>>=20
>> typedef uint8_t BYTE;
>>=20
>=20


