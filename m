Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73456E00C59; Tue, 31 Jul 2018 01:21:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D67E3E00C1B
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 01:21:10 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id y19-v6so15016934qto.5
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 01:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Zid/TZtoDimY3fy8MBIbNQS7ba9g5bfMl+Meiw8XvCk=;
	b=Md2uXHGZ7e4fLRO/z9cWEjdba4Su3kY4IcrMLBm9uXWUVMdU4YYSujnZo6j91xyvSp
	pd/vLSWX98/HWnVGYiusjHHYLWbyiCF3Yl/N5ELbtqx+mpRhUJziB0p2QZikF82I4OLa
	mfTNz0hHA8TXK3UgAwpOVKQVxo3ARlZVprqqDURspM4y1vnVmcmUn3BcY+xIXL5A59Mr
	Ju6UUwAAJhRF/0b9XXPLgw6i9CSKb8jp77gva3Ft9ohR/fhpVSSFQyKSlc7ox62iDXTj
	qD6X6NwEC+ujq3c4j85oJNOOEzQt55F9MyEGlnptOfXewftsfKPipJ9PM5zhgfh/J5Fg
	DIGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Zid/TZtoDimY3fy8MBIbNQS7ba9g5bfMl+Meiw8XvCk=;
	b=hKiSO8QtjCD0JAmmQToLuj+WmWQAjI9M983MlnZP2xoFWQ+H734nPPH8E0xJegBQB4
	vbg1aOswn+n0klOiRCzKObGoPr4r/TfHeHTBfEnl2R1mgFLIXL7pkcL5mqtQZAwez0+X
	eJO/SZoec7fUeVntLn/OrtTOp44G6qrudPAOUWnoiy1M8rtk6rzQQJWt/SLhePCN8pm5
	tIwOkZihK4jYiDM5MVWtFRAJ2uMTaokR0ZWSbP63WX+/gLfSWRnNeBu3/WQ+66EV6xQL
	63Tl+Fnl/nxsj8PU3Q6tzBUa1MKh7tBj9IOKCaxESgyCEd+ut1gtL1LOnj7e5DBa1hft
	CPXw==
X-Gm-Message-State: AOUpUlEHCNbsIVdHj527TvCMhxFKqJI/daLLfQsVXEDs4PGUM0FfW6AT
	5csPaRszCRVBF0MHuQch4dZ03Qs1xRsHbmtfOTAlEUmgM8g=
X-Google-Smtp-Source: AAOMgpfIaLJeaiKcCK2+pBSj9qNVmX1rmIDJNH4LwZbNwbd6T13ieg9XFSWUOm+C3RmV+mYVTOdPjfjwO5rWoeTy+I8=
X-Received: by 2002:ac8:218d:: with SMTP id
	13-v6mr19972367qty.122.1533025270206; 
	Tue, 31 Jul 2018 01:21:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad5d:0:0:0:0:0 with HTTP; Tue, 31 Jul 2018 01:21:09
	-0700 (PDT)
In-Reply-To: <CAFSZm+hbw0kdACRpwwKuxeTEE_X8PnCOo2-RLtun43cB34gk_w@mail.gmail.com>
References: <CAGAf8LyOWR90ZL8o3H=MNJR3Mwt_Ycpdfx-N+fVcG_O2cwZWDQ@mail.gmail.com>
	<CAGAf8LyucDcZD4q3ncreUM_cPdhf_JFpx+Vr4ut5vuaBHhRJWw@mail.gmail.com>
	<CAFSZm+hbw0kdACRpwwKuxeTEE_X8PnCOo2-RLtun43cB34gk_w@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 31 Jul 2018 10:21:09 +0200
Message-ID: <CAGAf8Lw6d+sfZom9Z1UOMno+QEVhcqk-dD7NZj=zzgE6BcUDRg@mail.gmail.com>
To: Aaron Cohen <aaron@assonance.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: do_configure for socketcand package failed
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
X-List-Received-Date: Tue, 31 Jul 2018 08:21:11 -0000
Content-Type: text/plain; charset="UTF-8"

> That configure script is looking for libconfig.
> You need DEPENDS = "libconfig"

Exactly. 1000% correct. Issue closed.

Thank you, Sir!
Zoran

On Tue, Jul 31, 2018 at 4:56 AM, Aaron Cohen <aaron@assonance.org> wrote:
> That configure script is looking for libconfig.
>
> You need DEPENDS = "libconfig"
>
> On Mon, Jul 30, 2018 at 4:20 AM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
>>
>> Seems, that this does work?!
>> _______
>>
>> SUMMARY = "Socketcand ..."
>> SECTION = "socketcan"
>> LICENSE = "GPLv2"
>> LIC_FILES_CHKSUM =
>>
>> "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
>> PR = "r0"
>>
>> RDEPENDS_${PN}-dev += "${PN}-staticdev"
>>
>> SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"
>> SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"
>>
>> S = "${WORKDIR}/git"
>>
>> EXTRA_OECONF = "
>> --without-config
>> "
>>
>> inherit autotools update-alternatives
>> inherit autotools-brokensep
>> _______
>>
>> Any additional comments?
>>
>> Thank you,
>> Zoran
>>
>> On Mon, Jul 30, 2018 at 8:40 AM, Zoran Stojsavljevic
>> <zoran.stojsavljevic@gmail.com> wrote:
>> > Hello,
>> >
>> > I am writing the recipe for the socketcand package. It looks so far very
>> > simple:
>> >
>> > PR = "r0"
>> >
>> > RDEPENDS_${PN}-dev += "${PN}-staticdev"
>> >
>> > SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"
>> >
>> > SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"
>> >
>> > S = "${WORKDIR}/git"
>> >
>> > inherit autotools
>> > _______
>> >
>> > I did install the following:
>> > sudo apt-get install autoconf
>> > sudo apt-get install libconfig-dev
>> >
>> > The error is in do_config():
>> >
>> > | checking for config_init in -lconfig... no
>> > | configure: error: in
>> >
>> > `/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/socketcand/1.0-r0/build':
>> > | configure: error: config test failed (--without-config to disable)
>> >
>> > What should I include in the recipe to make it work (the both autoconf
>> >  and ./configure work normally for the normal installation)???
>> >
>> > Thank you,
>> > Zoran
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

