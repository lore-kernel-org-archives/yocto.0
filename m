Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B4FDE00BD5; Thu,  6 Jul 2017 16:09:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F4EE00BC1
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 16:09:10 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id k67so3750415wrc.1
	for <yocto@yoctoproject.org>; Thu, 06 Jul 2017 16:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aMFdIZqK/Rqe5ZY53+UhHZ7RSQDNwqsPVAu15glbZZI=;
	b=iaGD+0Nmi7E/8CjxZQMZdhnR/u9DdC1NUWnsDq9h+8f1YIG/SwyqVZo4Aw+LKcmR7i
	mlfWe37BBCW/ML+6RSqTAZO+GebNW8v0vFskmxBXssy5lrRGYHKSRngAA6BGRSXTh59M
	MF+Cey9UZpb+HgpSwMBcv9Ib+CTv1H78nqOi72a8xjxcC36Cb5ZKpSJ4jGi1woFRpXYr
	gvokUxeBsLi3K22BNZyxUuHang1Kn4qjh/cHCIWTU97lsNbnXU/DyAcFT3G7WBDsCFBY
	9tmsHP+nNVbAej6JvUZXai+IpaFbjhdn+RuDCnFMRFFeb99GVgtTbbTLRRsoLwl2fwIT
	N1FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aMFdIZqK/Rqe5ZY53+UhHZ7RSQDNwqsPVAu15glbZZI=;
	b=W14u6LDq0GRXnFbM26A9kJgxD0AYJ5DFOakV2jb8kYXXRUplld7C9dfyUopmaQV8/T
	0ifmvamVvqivj5z+WqqNbeb4SKU90/wBNme7cuo8HASfZ9JvMF2+8YJIw4dqtkHLlDvl
	x4k3lwHGtBvDeECFJYdN0GZ0HC2aFDYlz8APeJRKtjIErZ4GZMVSBvJTX6g2v2wEfiVk
	m6VhZfb18hS0FA9AQGqpVuNpArLTSewpRzDXRmz+DKnmaU+9qqbtPbN7Jnr0K6R3Hkym
	k4yFgUWVbQRtfaPPgLuVCesqVkQ67+jv/x9q240SX9LbPVaERYoMPTGbaEfZD6fReHMG
	10GQ==
X-Gm-Message-State: AIVw111oEq7baAXKLjEEs5hd67ZkfPHObYYuAPEYzRMU3nyzS/ND9zna
	odjqGSeOJCCA3DMQtp5zeuj3Fnoi2Q==
X-Received: by 10.80.170.218 with SMTP id r26mr186260edc.113.1499382549571;
	Thu, 06 Jul 2017 16:09:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Thu, 6 Jul 2017 16:08:39 -0700 (PDT)
In-Reply-To: <1499381172.7546.44.camel@intel.com>
References: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
	<1499371700.7546.27.camel@linux.intel.com>
	<CAMKF1sooRsTY9uTPw55do2dPpUS9h9-SCu4cW3d1FZ-87Q=gCQ@mail.gmail.com>
	<1499373993.7546.35.camel@linux.intel.com>
	<1499381172.7546.44.camel@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Jul 2017 16:08:39 -0700
Message-ID: <CAMKF1spBfs0g0j6=z+khXw2q1hez20G69r42N1tL1r4w-sR5ow@mail.gmail.com>
To: "Minchev, Todor" <todor.minchev@intel.com>
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [RMC][PATCH v2] RMC: Support x32 build
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
X-List-Received-Date: Thu, 06 Jul 2017 23:09:12 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 6, 2017 at 3:46 PM, Minchev, Todor <todor.minchev@intel.com> wrote:
> On Thu, 2017-07-06 at 13:46 -0700, Todor Minchev wrote:
>> On Thu, 2017-07-06 at 13:37 -0700, Khem Raj wrote:
>> > On Thu, Jul 6, 2017 at 1:08 PM, Todor Minchev
>> > <todor.minchev@linux.intel.com> wrote:
>> > > On Wed, 2017-07-05 at 12:39 -0700, swee.aun.khor@intel.com wrote:
>> > >> From: sweeaun <swee.aun.khor@intel.com>
>> > >>
>> > >> RMC efi is needed to compiled as 64 bits even DEFAULTTUNE is x32.
>> > >>
>> > >> Signed-off-by: sweeaun <swee.aun.khor@intel.com>
>> > >> ---
>> > >>  Makefile.efi | 3 +++
>> > >>  1 file changed, 3 insertions(+)
>> > >>
>> > >> diff --git a/Makefile.efi b/Makefile.efi
>> > >> index 4f69dfe..95e0f8c 100644
>> > >> --- a/Makefile.efi
>> > >> +++ b/Makefile.efi
>> > >> @@ -16,6 +16,9 @@ RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
>> > >>
>> > >>  RMC_CFLAGS := -DRMC_EFI -Wall -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90
>> > >>
>> > >> +#RMC efi is needed to be compiled as 64 bit even DEFAULTTUNE is x32
>> > >> +CC := $(patsubst -mx32, -m64, $(CC))
>> > >> +
>> > >
>> >
>> > does this mean package is overriding CC passed from env ?
>> > if yes then I think app should be fixed to respect CC if set in env
>> > and only set it if CC env is not set
>>
>> +1
>>
>> The app respects both CC and CFLAGS from the env. They have to be set to
>> the correct values before the Makefile is called.
>>
>> >
>> > > Since this is not an RMC-specific problem, I believe that we shouldn't
>> > > patch the compiler flags in the RMC Makefile. This patch will provide
>> > > the desired outcome only when RMC is built with meta-intel. A better
>> > > alternative will be to split rmc.bb into rmc.bb (userspace app) and
>> > > rmc-efi.bb (efi library) and modify the compiler flags for each recipe.
>> > > I will send a patch that does this.
>
> This patch should fix the x32 builds.
>
> https://lists.yoctoproject.org/pipermail/meta-intel/2017-July/004818.html
>

you could use TUNE_CCARGS_remove = "xyz" instead of anonymous python

> --Todor
>
>> > >
>> > >>  all: librmcefi
>> > >>
>> > >>  $(RMC_LIB_OBJ): %.efi.o: %.c
>> > >
>> > >
>> > > --
>> > > _______________________________________________
>> > > yocto mailing list
>> > > yocto@yoctoproject.org
>> > > https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

