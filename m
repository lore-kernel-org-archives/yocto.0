Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCEE0E009CF; Fri, 10 Feb 2017 10:59:13 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41686E00924;
	Fri, 10 Feb 2017 10:59:11 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Feb 2017 10:58:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,142,1484035200"; d="scan'208";a="63637992"
Received: from jzhang80-mac02.jf.intel.com ([10.24.13.19])
	by fmsmga005.fm.intel.com with ESMTP; 10 Feb 2017 10:58:48 -0800
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <20170209191740.63387-3-todor.minchev@linux.intel.com>
Date: Fri, 10 Feb 2017 10:58:47 -0800
Message-Id: <F27262EC-7AFE-4678-B743-20890189D5E9@linux.intel.com>
References: <20170209191740.63387-1-todor.minchev@linux.intel.com>
	<20170209191740.63387-3-todor.minchev@linux.intel.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
X-Mailer: Apple Mail (2.3259)
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
X-List-Received-Date: Fri, 10 Feb 2017 18:59:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Feb 9, 2017, at 11:17 AM, Todor Minchev =
<todor.minchev@linux.intel.com> wrote:
>=20
> A debug version of the rmc binary can be built by using the debug
> Makefile target. This will include debug symbols and will disable
> compiler optimizations.
>=20
> Example:
>=20
> make debug
>=20
> Signed-off-by: Todor Minchev <todor.minchev@linux.intel.com>
> ---
> Makefile | 2 ++
> 1 file changed, 2 insertions(+)
>=20
> diff --git a/Makefile b/Makefile
> index c58047a..fdd936f 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -23,6 +23,8 @@ ALL_OBJS :=3D $(RMC_TOOL_OBJ) $(RMC_LIB_OBJ)
> RMC_CFLAGS :=3D -Wall -I$(TOPDIR)/inc
>=20
> all: rmc
> +debug: RMC_CFLAGS +=3D -DDEBUG -g -O0
> +debug: rmc
>=20
I missed your feedback of V1, just recap it here also with my comment:

- "Yup, the above will have the same effect as 'make debug'.
I thought that 'make debug' might be a convenient way to build a debug
binary? Do you think it makes sense to keep this extra target for
convenience since it doesn't affect the other usages of make?"

You could have to come back to CFLAGS when the a hard coded debug flags =
is not enough.

And, why pass -DDEBUG in RMC_CFLAGS when invoking gcc to compile rmc? I =
don=E2=80=99t see this macro DEBUG in the current rmc code.

Thanks
> $(ALL_OBJS): %.o: %.c
> 	$(CC) -c $(CFLAGS) $(RMC_CFLAGS) $< -o $@
> --=20
> 2.11.1
>=20


