Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B78D2E00BD5; Thu,  6 Jul 2017 13:38:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CEBDE00BC1
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 13:38:07 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id z45so3041101wrb.2
	for <yocto@yoctoproject.org>; Thu, 06 Jul 2017 13:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=T/CPcrJi7EBg93SYiFM7+o7fCyrvoBY1IyPA4af5Qt4=;
	b=M1tEC2t7rppR6WWOvsJ5g5OSyljUYJjY2FaCHs3XITfI65KONolQAODpqeRtNC5mXV
	JIEt+KKchqw9MuKeFPqY/5xcGMHn0QY6ImFJz9eV5wytLEemMkaR6HIY7Le9+fyCjGnT
	CczLzY6zDrjsSvgMNg9NTXqM7Q1Kd25LaC/xlHBniayrsGaHynI8joZe/xwfDkf9o470
	SjNgAcj60/uIiNNcrU+raFLTt1dHQFfpuq9A9c3ZBr70Bz7JYCwuUmCpdxebGw2/6JMJ
	gAaKkaKEVpH28Z8EX6PFNy03kRRwFsX0ylJPs4NlBfx4/RUn2OrykQtYfVAOJC8JvxvJ
	AQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=T/CPcrJi7EBg93SYiFM7+o7fCyrvoBY1IyPA4af5Qt4=;
	b=ET/01mJdCHtGVyrdBUZo5bY5HsbKZFVKpHcSEn/fXZ1pTDhSyNqmAJetBMuN7JwtSQ
	T0hdegyvqae6xw3XvpsgJtFNvhCJV9ShdJXbcjPjHAbuer1Jd1rLrPbt8ZEclAHTex+C
	6bv0kMsmooCgFGpV1QFXW9WkmNnb+4qtQzCz6X/RAKqhlpg/Pnh5Wb7jeAAbvd3lSmYb
	HY3qAVh+bKpd4oR0+PRUh6fmS0pwOTp0LBKzHIKdXnrOSfhr9aTHD/yX90DUcUwQcwLA
	T4lP0DDrOHgd4diR4kY6o7CtyHzpMILAgt2LpwlB3Wq+g523u8rWr9nybKY/M6u5L0H+
	G+Rg==
X-Gm-Message-State: AIVw112cj6mXajU0ZWVFNI8nLK3PwWY8JuH5k66d4MA7OtsgMjO3pFb8
	tqLvTvb4pP9+0x0BvPeQDpTrm+on5w==
X-Received: by 10.80.162.38 with SMTP id 35mr568726edl.99.1499373487087; Thu,
	06 Jul 2017 13:38:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Thu, 6 Jul 2017 13:37:36 -0700 (PDT)
In-Reply-To: <1499371700.7546.27.camel@linux.intel.com>
References: <1499283599-11297-1-git-send-email-swee.aun.khor@intel.com>
	<1499371700.7546.27.camel@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Jul 2017 13:37:36 -0700
Message-ID: <CAMKF1sooRsTY9uTPw55do2dPpUS9h9-SCu4cW3d1FZ-87Q=gCQ@mail.gmail.com>
To: Todor Minchev <todor.minchev@linux.intel.com>
Cc: swee.aun.khor@intel.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
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
X-List-Received-Date: Thu, 06 Jul 2017 20:38:09 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jul 6, 2017 at 1:08 PM, Todor Minchev
<todor.minchev@linux.intel.com> wrote:
> On Wed, 2017-07-05 at 12:39 -0700, swee.aun.khor@intel.com wrote:
>> From: sweeaun <swee.aun.khor@intel.com>
>>
>> RMC efi is needed to compiled as 64 bits even DEFAULTTUNE is x32.
>>
>> Signed-off-by: sweeaun <swee.aun.khor@intel.com>
>> ---
>>  Makefile.efi | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Makefile.efi b/Makefile.efi
>> index 4f69dfe..95e0f8c 100644
>> --- a/Makefile.efi
>> +++ b/Makefile.efi
>> @@ -16,6 +16,9 @@ RMC_INSTALL_LIB_PATH := $(RMC_INSTALL_PREFIX)/lib/
>>
>>  RMC_CFLAGS := -DRMC_EFI -Wall -I$(TOPDIR)/inc -fpic -nostdinc -nostdlib  -fno-builtin -std=gnu90
>>
>> +#RMC efi is needed to be compiled as 64 bit even DEFAULTTUNE is x32
>> +CC := $(patsubst -mx32, -m64, $(CC))
>> +
>

does this mean package is overriding CC passed from env ?
if yes then I think app should be fixed to respect CC if set in env
and only set it if CC env is not set

> Since this is not an RMC-specific problem, I believe that we shouldn't
> patch the compiler flags in the RMC Makefile. This patch will provide
> the desired outcome only when RMC is built with meta-intel. A better
> alternative will be to split rmc.bb into rmc.bb (userspace app) and
> rmc-efi.bb (efi library) and modify the compiler flags for each recipe.
> I will send a patch that does this.
>
> Todor
>
>>  all: librmcefi
>>
>>  $(RMC_LIB_OBJ): %.efi.o: %.c
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

