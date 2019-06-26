Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DFADE00D5D; Wed, 26 Jun 2019 03:21:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6483AE00D59
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 03:21:45 -0700 (PDT)
Received: by mail-pg1-f179.google.com with SMTP id n2so1000275pgp.11
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 03:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=rkkugHVk267OBm/mlk9xkKm1ZIzzVJTc7apR9h976B4=;
	b=sZ1oUBXP6bcAUjRhlroYLm9P6BJ1iLSdbN5FfuEiepagqSO0Vg/g9zr9I+EzEmLWKS
	lyw1e5/xj1Ch2kifxZCQxXKPKU5MKKN1H0SEdQG0ifDfj4Dxi46XD730t9Skua1Mta3M
	o9H70UxJsoq/eS5TNAMw0/YQFhkProe1VQKq5dzsKj7aLHjBi390Upz8K/g6kAqPqcVL
	RmtUzZ4lEo8On1X7xjvLAf572LCAl+BamjNhVFNFqKUseSL80BQBC3KIhRmpD+mu2EnA
	dbxfigl2Al+W9JpNRkovkayXQNuEp0GvaDBXdlDpSwBDfotYYW1159iBFH/Tu3zi2tfP
	wK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=rkkugHVk267OBm/mlk9xkKm1ZIzzVJTc7apR9h976B4=;
	b=bv3n5ETCpcEWz0I8HQKrO4pt2mWdBENBMOa5rGtJw3Ln78rhqVIqox8xKH6zN1Kcul
	sLu5NKIZiCdm1dgsg9TvcUNsIKyKWErTdutOwjk9RLaS8nlRAOp8H+eTCXC9b16mV7jC
	0pVKMBzVlX7f+kLWikKq37TLyOIkxsKdvqeUsMH2erKoWBna7D88U3GDuz33asgiCYPE
	tT/poteYsMT+vOZH19BvLtJ0a4D+/0nm1+PVfiiq0F8sWDG++GprdjVJxxmZ3eeGAQ/e
	dKYSU8QlPztvL9o3/vH+iK1SwYyGLPoy1WfYhbj3SkxuqwfH9K7nbVyWB51hU1Xxo9TO
	qNMg==
X-Gm-Message-State: APjAAAXILm+j0RnF1OE8X1bHtWvDu92sdAk9YdZeit+hOWg+reWTZQTh
	dIOEB3Qg04xlbuhsQFwXm/HGyhCWFpwZo9RD0YBoLzuu
X-Google-Smtp-Source: APXvYqxpFdZOo4fO0HBvgw2FmJ4Jl0LTMHaa6c9eWcM4kX/3E2ghNSz0IAI7ajGG8kAQpg3kDu8sJA1Dds6M4x5lG8E=
X-Received: by 2002:a17:90a:37ac:: with SMTP id
	v41mr3706417pjb.6.1561544504710; 
	Wed, 26 Jun 2019 03:21:44 -0700 (PDT)
MIME-Version: 1.0
References: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
	<20190624070810.GD1584@archworkstation>
	<43163f9c-29e2-6069-bd13-ff65f82d55bd@googlemail.com>
	<CAAx3WaA+OemjNchvCFd_3m3K5LE4OedqFVtwdPAjYNwUSWv28Q@mail.gmail.com>
	<CAOmL4Ujwqu1pVe5zEGntJjYTNgw7__LPi_mdgn7-xU93dwF62A@mail.gmail.com>
	<20190626100334.GA9460@archworkstation>
In-Reply-To: <20190626100334.GA9460@archworkstation>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Wed, 26 Jun 2019 12:21:33 +0200
Message-ID: <CAAQYJAuc6QLwo-4nkdfZMcRuiZUba-c=i5CuapjR7tsV=Ph-2g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: General Question: Device specific value store
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
X-List-Received-Date: Wed, 26 Jun 2019 10:21:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2019 at 12:03 PM Morn=C3=A9 Lamprecht <morne@linux.com> wro=
te:
>
> On Tue, Jun 25, 2019 at 09:25:13AM -0400, Larry Brown wrote:
> >>> I wonder, if there are best practices, how to protect the data from g=
etting
> >>> corrupted (intentionally by an attacker or by accident through ... fl=
ash
> >>> corruption or whatever).
>
> Ideally your hardware should have some sort of hw-based secure key storag=
e, and
> use that to support some sort of secure boot scheme. You can then impleme=
nt a
> chain of trust, allowing you to securely verify a hash signature of the d=
ata
> during bootup, to ensure that it hadn't been tampered with or gotten corr=
upted.
>
> Atmel / Microchip, for example, offers a range of Crypto Authentication I=
Cs that
> could be added to your hardware to support this, if you hardware didn't h=
ave
> built in support for something like this. Their offering also included to=
ols to
> securely inject the data into the secure ICs during manufacturing, or
> alternatively, you could write your own tool to interface with their API.
>
>                 - Morn=C3=A9
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


Hi,
almost all flash have a non-volatile storage.
It was OTP on old NOR, now there are more flavors: your board appears
to have eMMC and so OTP/MTP should be supported by the mmc stack.
Check out this link:
https://www.synopsys.com/designware-ip/technical-bulletin/memory-options.ht=
ml

Regards
Andrea

