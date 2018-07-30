Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B0A2E00AC8; Mon, 30 Jul 2018 01:20:33 -0700 (PDT)
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
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B35E008CA
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 01:20:31 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id c15-v6so11189913qtp.0
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2018 01:20:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=EzXNiIyO0Hxxj83WwXmqx/kPEWxp6KH+S8SkEHT3e+A=;
	b=p1XiaSH1r76NwQD6HFBXCsz4+F0c5XYgKMG64TuzmMfA3x5RpHycyB3IxDfwvpIO16
	6+sCYyuSmUJ/pH97AdCr/AEN4mGwQJgk0tusR8mjQtPSk/hJu4Egjp1nhZkk8UUWZIjO
	4vm+2mGT5WfAIUAjknf6yCciqx/BS8LBn8zKLjriCMTVoh4VVRRkkXm3H4IVsVOUr4yn
	SRg1GK+c8C6MzWAwSDQ1l40ESTKodO5cRbhOG5RAhn1UlsndW8BfZ+ATODTssoC87V9y
	Uthq8fgR1cs6WwTuqXJR9ziIH8YAPE0qY80SECxeKgGGV6Vpq0ATAUfHF3jZYfWABxrb
	ZXWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=EzXNiIyO0Hxxj83WwXmqx/kPEWxp6KH+S8SkEHT3e+A=;
	b=MF7AV5n/OGRaj89FkolAxPVIMYvCgKIZ24vBwVJrIDBaa3SVq9vvwxOxFSaeLnOvfS
	+YH6x9RUpUJaoLdzaegiFPCssL7Ccv0mV2N0NpdnZ7THZd9ejP9tvjZdAhyOQ/YmVDJC
	/C9YUn2xGYkRl9tjicCKYRvC9+kjPIznhPshZgAxC5E+q+DunzV4zrDCnL5y0VW4sS79
	f76PS6BKqlDgwk4n2tzcwFCej3SQqxSKY0T3ue8v4WjTsPEgvzIHN9zX67vYm4jf8iFY
	wUSe/F2FSbL6fJeiKicskhRulNrwcpaqfu6V1jBkxLCoAOUa5TW0+tkLajPgwyG/bP/O
	+abg==
X-Gm-Message-State: AOUpUlHI6kgJyC/iz96HdO0jPWkVH7iBQ5J2GgIYKW8or+804u8NJlyZ
	ebOrp17kmWCfArr3vh9haTO82fbEpoutN2qQyi4lBVyKPot2gQ==
X-Google-Smtp-Source: AAOMgpcEIxLXOzEcTKskSFuyPmPGFuPCcdWrTZiJCGyzr4ximbb4/4Z4qxzZOiw9umvgyoJH33+jdrSQq1A1ANKH7o8=
X-Received: by 2002:aed:3803:: with SMTP id
	j3-v6mr16087419qte.353.1532938830833; 
	Mon, 30 Jul 2018 01:20:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:ad5d:0:0:0:0:0 with HTTP; Mon, 30 Jul 2018 01:20:30
	-0700 (PDT)
In-Reply-To: <CAGAf8LyOWR90ZL8o3H=MNJR3Mwt_Ycpdfx-N+fVcG_O2cwZWDQ@mail.gmail.com>
References: <CAGAf8LyOWR90ZL8o3H=MNJR3Mwt_Ycpdfx-N+fVcG_O2cwZWDQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 30 Jul 2018 10:20:30 +0200
Message-ID: <CAGAf8LyucDcZD4q3ncreUM_cPdhf_JFpx+Vr4ut5vuaBHhRJWw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 30 Jul 2018 08:20:33 -0000
Content-Type: text/plain; charset="UTF-8"

Seems, that this does work?!
_______

SUMMARY = "Socketcand ..."
SECTION = "socketcan"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
PR = "r0"

RDEPENDS_${PN}-dev += "${PN}-staticdev"

SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"
SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"

S = "${WORKDIR}/git"

EXTRA_OECONF = "
--without-config
"

inherit autotools update-alternatives
inherit autotools-brokensep
_______

Any additional comments?

Thank you,
Zoran

On Mon, Jul 30, 2018 at 8:40 AM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Hello,
>
> I am writing the recipe for the socketcand package. It looks so far very simple:
>
> PR = "r0"
>
> RDEPENDS_${PN}-dev += "${PN}-staticdev"
>
> SRCREV = "df7fb4ff8a4439d7737fe2df3540e1ab7465721a"
>
> SRC_URI = "git://github.com/dschanoeh/socketcand.git;protocol=http"
>
> S = "${WORKDIR}/git"
>
> inherit autotools
> _______
>
> I did install the following:
> sudo apt-get install autoconf
> sudo apt-get install libconfig-dev
>
> The error is in do_config():
>
> | checking for config_init in -lconfig... no
> | configure: error: in
> `/home/netmodule.intranet/stojsavljevic/projects/beaglebone-black/yocto-rocko/poky/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/socketcand/1.0-r0/build':
> | configure: error: config test failed (--without-config to disable)
>
> What should I include in the recipe to make it work (the both autoconf
>  and ./configure work normally for the normal installation)???
>
> Thank you,
> Zoran

