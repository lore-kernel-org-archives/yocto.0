Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56970E00B05; Mon, 15 May 2017 08:45:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39AC1E00901
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:45:43 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id u75so17835256qka.1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 08:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Z7W0h2KMp78itro2N7ap4QQ18At8vfaSzF2gSAfNdx4=;
	b=fI/hT99eUG8e3iiGZPrUzUNNAV0zKeJ8hcATEgLCa16XjKewrAeWm4KYySk8z3ngLC
	SiGgoI/D941LUiKH9IgB3lTao04mCDTMfY+7r17gmpmIc+frWhV2CWpdDGO13VJ5AMgX
	/RxTYFQ5UyVmDA7p4LqkzcvRqSWl6geFmdDFb+LvHSzyicZV/i3ySM1+aw+4Fq6ijOZ5
	UnqOOkD8RECAWZ4gYcBUP48Q1fvk9COr1AJ0yOS2SF4snqTrO5RU+n1MRZX75MEx8UOk
	Dg+eHk4cMhfHP9nMHrlQaCrtd1ymSYNe6k5C8bR4nPHfwnGBuuzgq5x8ju/gb3XthHUk
	dgAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Z7W0h2KMp78itro2N7ap4QQ18At8vfaSzF2gSAfNdx4=;
	b=TF+QVf/HpGjficWkdvVZAMLsAw1J04UbslCRpO16zsMTmJTGTjvSv0dds5lR0HF59N
	ekQphS7OlRaox0+g9TgHxAjqY5C4ejmk8mUNAQkzHCQ8Z7JQ5h6/rS5a6LAqDzb3Cxd0
	kU5kvng5GaQ+rjbeysA/OVflfK3CCULPejKHicZMXjLoPc5w10b9yG1BB/cqu9Q+VGl+
	95KDaJ+qW369HlceFzNnKif2z8QCZoh64bgSsSk8w5/ws0/Ji80+N55WwY4sbU6sUIlV
	pUubi8iM3rfEiiM1TgQlcl97WMDwRtG06NwrI8dD4dKQz/o+f4rIvF2kTFPyU2abTgEq
	CpDg==
X-Gm-Message-State: AODbwcDkZju9YcQgqHJ3k15232/rpfgdYTPoBFMtzlHThNS8HOmdn2x1
	fsJ2r0iCqXbJcoRdpfEqB24soYXDOw==
X-Received: by 10.80.182.35 with SMTP id b32mr5467676ede.123.1494863142941;
	Mon, 15 May 2017 08:45:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Mon, 15 May 2017 08:45:12 -0700 (PDT)
In-Reply-To: <1492013128-5920-3-git-send-email-ayaka@soulik.info>
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-3-git-send-email-ayaka@soulik.info>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 15 May 2017 08:45:12 -0700
Message-ID: <CAMKF1srM=zzcrvQ4P5ebZaSAfKXcnS_c8ukZC+VpPWUeTKn=0Q@mail.gmail.com>
To: ayaka <ayaka@soulik.info>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip] [PATCH v2 2/3] recipes-multimedia: add gstreamer rockchip support
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
X-List-Received-Date: Mon, 15 May 2017 15:45:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 12, 2017 at 9:05 AM, ayaka <ayaka@soulik.info> wrote:
> +SRC_URI_remove = " \
> +    file://0001-introspection.m4-prefix-pkgconfig-paths-with-PKG_CON.patch \
> +"

i see that you are doing this change below in a function which probably
is ok but I see some duplication here. Either remove this patch and upstream
the change or adapt the patch for your recipe

> +
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +FILESPATH_prepend := "${THISDIR}/${PN}:"
> +

this seems redundant

