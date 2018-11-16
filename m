Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6D4CE00C7F; Fri, 16 Nov 2018 03:50:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B816E00C5B
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 03:50:33 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id e11so33884643itl.5
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 03:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=a0tEiYMkTUdU1uMmsYrmAFMpVFVtT5PkwFl2LBDKz9I=;
	b=Wg9Ikt4XDMx3H70nquy98fKby1AlmnLAe0pMKyZQijEeF00PO/yldqkKrI854q3A5U
	NIgoFOFx2Ga1IUsnHvSuM81fRSn6qWAUsxjV8qfvknFMBuDkE0Kg2gubDTJ+Hn6xHoNS
	Pv/IrILLAlUhxaO1LLkQprxz+7Ro191/hjC+ej7bJ55kt7FZUKr0D8CZPRnRSMnhkti/
	NdxkcpLWOq+vuRROhVQ4gelbBAUKV3h6NM1G2pydwMjTVyIINVAY3a+4MTQXWxxYtkhz
	Rev6W4yQ5menehA/vLAP14mr/wwlE9orHdzq9LeMoYZg+aKAMkyG4wmb1hvi5mSRMUfE
	2J+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=a0tEiYMkTUdU1uMmsYrmAFMpVFVtT5PkwFl2LBDKz9I=;
	b=PY6l7Kpbd3CaKlzPXIhOLa8dayQEhedKXgVR1xlfzwgsGbwgim2JYFOhXVc9hed32y
	RAuuuX1mWvdOiBFNdLR0TdngzuD3HDGplgoFTVC00J8MpSVixNmleMIeT2dyDiSzu3fY
	TwIg+zvr/6fFUTFTwFi3ixP6hgfB6z4BIsc69QPL9rS5OPO2Dz77NhrEjcSVxDQg319E
	WtzjKiC1vvQAvWFE6E6DIKbs1dvW+VyzBnVWdN3Rrqs7RKU+Um5qC0zYRnjJ+EvclAKg
	xGqigzDpSqN6VwcSX0Ye7WtRcHwyTGgcblCWsKPX4gzPyBjqKAlQMS3umdlgGSyuR3o5
	BAOw==
X-Gm-Message-State: AGRZ1gI+MEYSJVi/idLqBgTdfjerfveSFOlaf8SYDFq7ktVzX+zGs09B
	R7Foff+cy1pR7ef4J+elO77iEg7qVCL42OaSKGa8sw==
X-Google-Smtp-Source: AFSGD/W3+Ql98VHEJFje/ZgmCUt97dzk5RFKVuGZeqrlQyse9pFopSfIPQo9Klcfl5+PRP6Ft40ZsXAoAKrJkccbYzk=
X-Received: by 2002:a24:9142:: with SMTP id
	i63-v6mr10231406ite.130.1542369032935; 
	Fri, 16 Nov 2018 03:50:32 -0800 (PST)
MIME-Version: 1.0
References: <20181115192353.24791-1-JPEWhacker@gmail.com>
In-Reply-To: <20181115192353.24791-1-JPEWhacker@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Nov 2018 11:50:21 +0000
Message-ID: <CAJTo0LZ5d5BtByCAOYB-WPr1P+NZ+u-XmnX4GTd6DEnJN+E9zw@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH 0/4] Add oeqa test cases
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
X-List-Received-Date: Fri, 16 Nov 2018 11:50:35 -0000
Content-Type: text/plain; charset="UTF-8"

I see the cover letter but no patches or link to a branch...

Ross
On Thu, 15 Nov 2018 at 19:24, Joshua Watt <jpewhacker@gmail.com> wrote:
>
> Adds the testing framework for tying tests for the MinGW SDK into the
> oeqa SDK test framework.
>
> The SDK tests can be run using the standard SDK test command:
>
>  bitbake -c testsdk <image>
>
> All testing is done using Wine in lieu of having access to an actual
> Windows machine. Wine is required to be installed on the host machine.
>
> Joshua Watt (4):
>   Add SDK test case framework
>   Add .gitignore
>   classes/toolchain-scripts-mingw32: Update variables
>   oeqa/sdkmingw: Add test cases
>
>  .gitignore                                  |   3 +
>  classes/testsdk-mingw.bbclass               | 101 ++++++++++++++++++++
>  classes/toolchain-scripts-mingw32.bbclass   |   4 +-
>  conf/machine-sdk/i686-mingw32.conf          |   1 +
>  conf/machine-sdk/include/mingw32-common.inc |   6 ++
>  conf/machine-sdk/x86_64-mingw32.conf        |   1 +
>  lib/oeqa/sdkmingw/__init__.py               |   0
>  lib/oeqa/sdkmingw/case.py                   |  52 ++++++++++
>  lib/oeqa/sdkmingw/cases/__init__.py         |   0
>  lib/oeqa/sdkmingw/cases/binutils.py         |  57 +++++++++++
>  lib/oeqa/sdkmingw/cases/gcc.py              |  49 ++++++++++
>  lib/oeqa/sdkmingw/cases/gdb.py              |  20 ++++
>  lib/oeqa/sdkmingw/context.py                |  66 +++++++++++++
>  lib/oeqa/sdkmingw/files/testsdkmakefile     |   4 +
>  14 files changed, 363 insertions(+), 1 deletion(-)
>  create mode 100644 .gitignore
>  create mode 100644 classes/testsdk-mingw.bbclass
>  create mode 100644 lib/oeqa/sdkmingw/__init__.py
>  create mode 100644 lib/oeqa/sdkmingw/case.py
>  create mode 100644 lib/oeqa/sdkmingw/cases/__init__.py
>  create mode 100644 lib/oeqa/sdkmingw/cases/binutils.py
>  create mode 100644 lib/oeqa/sdkmingw/cases/gcc.py
>  create mode 100644 lib/oeqa/sdkmingw/cases/gdb.py
>  create mode 100644 lib/oeqa/sdkmingw/context.py
>  create mode 100644 lib/oeqa/sdkmingw/files/testsdkmakefile
>
> --
> 2.19.1
>

