Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D5ECE00BEB; Mon, 29 Aug 2016 16:25:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF2B2E00BCE
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 16:25:32 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP; 29 Aug 2016 16:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,253,1470726000"; 
   d="scan'208";a="2465632"
Received: from jzhang80-mac02.jf.intel.com ([10.24.2.112])
	by orsmga005.jf.intel.com with ESMTP; 29 Aug 2016 16:25:31 -0700
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <91E6AEA1-C95E-4D16-BAE9-6F1437A9D7D4@linux.intel.com>
Date: Mon, 29 Aug 2016 16:25:31 -0700
Message-Id: <47541D68-2F9E-4118-820E-698F3CC2BFD5@linux.intel.com>
References: <1472251502-16136-1-git-send-email-jianxun.zhang@linux.intel.com>
	<85d58522-48a1-7bfe-f846-aa9255f2fbbe@gmail.com>
	<91E6AEA1-C95E-4D16-BAE9-6F1437A9D7D4@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Makefile: remove static linking in Linux build
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
X-List-Received-Date: Mon, 29 Aug 2016 23:25:33 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


> On Aug 29, 2016, at 11:10 AM, Jianxun Zhang =
<jianxun.zhang@linux.intel.com> wrote:
>=20
>=20
>> On Aug 26, 2016, at 4:25 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>=20
>>=20
>>=20
>> On 8/26/16 3:45 PM, Jianxun Zhang wrote:
>>> The removed static linking was for a desire to make rmc run
>>> on systems where c libraries are not provided.
>>>=20
>>> But it is nothing wrong to dynamically link rmc with libraries.
>>> We also don't have to hardcode the way of linking in Makefile
>>> since people can specify it in RMC_CFLAGS passed to make command.
>>>=20
>>=20
>> have you tested the dynamic version ?
> Khem,
>=20
> In RMC, two different test stages are defined in workflow. Please =
refer to "Patch submission & Maintenance=94 in README in rmc project.
Khem,
And the information I referred to in README is in =93rmc-dev=94 branch =
now.
=
http://git.yoctoproject.org/cgit/cgit.cgi/rmc/commit/?h=3Drmc-dev&id=3Db22=
169ae5c2462601646cca186e1b42ddfcdb6b0
>=20
> This patch to upstream rmc project was tested against rmc internal =
test suite (1st test stage) with yocto minimal images, RMC binaries =
built with the image, and another pending hash-style patch in recipe. =
See below.
>=20
> A QA checker of hash style in OE will fail once the --static is gone =
because it only expects gnu_hash for SYMTAB in dynamic section in ELF. =
The patch of hash issue in rmc recipe is under test (2nd test stage) =
with builtin examples in meta-intel for the next rmc revision update. =
This fix for an OE-specifc enforcement should be another step beyond =
this upstream patch=92s submission and rmc project.
>=20
> But I probably should mention it in submission for a better clarity. =
Hope the info could help. Feel free to let me know anything I missed.
>=20
> Thanks!
>=20
>=20
>=20
>=20
>=20
>=20
>>=20
>>> Signed-off-by: Jianxun Zhang <jianxun.zhang@linux.intel.com>
>>> ---
>>> Makefile | 2 +-
>>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>>=20
>>> diff --git a/Makefile b/Makefile
>>> index e873af6..f152829 100644
>>> --- a/Makefile
>>> +++ b/Makefile
>>> @@ -17,7 +17,7 @@ RMC_INSTALL_BIN_PATH :=3D =
$(RMC_INSTALL_PREFIX)/bin/
>>>=20
>>> ALL_OBJS :=3D $(RMC_TOOL_OBJ) $(RMCL_OBJ) $(RSMP_OBJ)
>>>=20
>>> -CFLAGS :=3D -static -Wall -O2 -Iinc $(RMC_CFLAGS)
>>> +CFLAGS :=3D -Wall -O2 -Iinc $(RMC_CFLAGS)
>>>=20
>>> all: rmc librmcl librsmp
>>>=20
>>>=20
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


