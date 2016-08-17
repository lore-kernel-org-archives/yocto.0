Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C61EDE0096A; Wed, 17 Aug 2016 11:11:48 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E468E00752
	for <yocto@yoctoproject.org>; Wed, 17 Aug 2016 11:11:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 17 Aug 2016 11:11:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,535,1464678000"; d="scan'208";a="1027162604"
Received: from jzhang80-mac02.jf.intel.com ([10.24.4.201])
	by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2016 11:11:45 -0700
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <4BA368C6-B881-4299-9D28-56D790A70A48@gmail.com>
Date: Wed, 17 Aug 2016 11:11:44 -0700
Message-Id: <E13D4908-3FD5-4A1D-8D5E-5F9DE08B54EE@linux.intel.com>
References: <1471389134-55008-1-git-send-email-jianxun.zhang@linux.intel.com>
	<4BA368C6-B881-4299-9D28-56D790A70A48@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] rmc: fix allocating buffer issue in read_file() (32 bit)
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
X-List-Received-Date: Wed, 17 Aug 2016 18:11:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Aug 16, 2016, at 5:18 PM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
>=20
>> On Aug 16, 2016, at 4:12 PM, Jianxun Zhang =
<jianxun.zhang@linux.intel.com> wrote:
>>=20
>> Runtime test script failed on T100TA (32 bit) machine because
>> read_file() function in rmc.c gets a wrong value of st_size from
>> the buffer returned by stat(). We include rmc header files prior
>> to the rest of standard header files in rmc.c, so standard data
>> subsequently defined could be affected by "#pragma pack(1)" in rmc
>> header files.
>=20
>=20
> perhaps resetting the pragma would make it independent of positioning =
sequence ?
Khem,
Good suggestion. I think pragma pack(push,1) and pop should be a =
solution. I will try it and submit a V2 if test passes.

Thanks

>>=20
>> Runtime test passes on T100TA and other two boards with this change.
>>=20
>> Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
>> ---
>> src/rmc.c | 4 ++--
>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/src/rmc.c b/src/rmc.c
>> index 714ae3a..6cf584e 100644
>> --- a/src/rmc.c
>> +++ b/src/rmc.c
>> @@ -10,8 +10,6 @@
>> #include <stdio.h>
>> #include <unistd.h>
>> #include <ctype.h>
>> -#include <rmcl.h>
>> -#include <rsmp.h>
>> #include <sys/types.h>
>> #include <sys/stat.h>
>> #include <fcntl.h>
>> @@ -20,6 +18,8 @@
>> #include <sys/stat.h>
>> #include <sys/mman.h>
>>=20
>> +#include <rmcl.h>
>> +#include <rsmp.h>
>>=20
>> #define USAGE "RMC (Runtime Machine configuration) Tool\n" \
>>    "NOTE: Most of usages require root permission (sudo)\n" \
>> --
>> 2.7.4
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20


