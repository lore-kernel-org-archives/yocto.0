Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F3D4E00D74; Tue,  2 Jul 2019 03:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85E6DE00BB5
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 03:30:54 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id u19so27266242ior.9
	for <yocto@yoctoproject.org>; Tue, 02 Jul 2019 03:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9CZSoF375PX+UGZt0EiIFpWOxrQwiKHuhwSZoY2Pl1c=;
	b=H5FT4uDEb95SPU+zsDAghRv8ZRmmgkbOMDKukViY0whygT+4lE5UFzk4JbNyRFf6zh
	oRwmDmfoIlOg6GbhFUi015cj3Y1jdl5Gggm4ouS/uPKefo8QgHxsyyIcMmMGSbndQg1q
	A7xM8OTSsfSvc8Dk/dJs9w2oWzq3U8nRc2929QLVecE88L5KUjJH1GS7WSOXIrTdnVEP
	TNfG71AngwjokcS+jRPJIY9LcDZ/taKN8pE0qNzEUVsbEoznpQUGeOcRBSN9J4QJPlj4
	8b25yxwJck9xrn/ymlF/gN52ZsDMfWa5+GH2MXukEuLSB/ej8yQfpiyQiSE1cV+HRsnh
	4JAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9CZSoF375PX+UGZt0EiIFpWOxrQwiKHuhwSZoY2Pl1c=;
	b=riD2FozFs8Qa/Tm6N2VeFbiZm+k5/KPL8u9sPosMvXgZiWQOfYNwXsYZWTGNDgkCrZ
	7ZoTeJoJCzdGWgHU7WFxk8nlz3YFcxGF9JB5arXyjXqlifFjXzZUYSW5c5ShJLRj1jEW
	WWvfLKFjYCV1vfgZTBca/9LkO9oNrjjuNoFhqUkODY3S8OEJygxp0bLaYAMJoXyC84IF
	mw0glHZRXWEIBKJfCq62bHHC8bnTkDGvdsEp3B89FI5HkSDUTc48U+0d8S4P4kgfJq+U
	jMww813mqBHHMIR+Rs9C1t13M4b9dGxolQXS0OGvd1PL6dn96Qp1SqdzkvhK3oBxb5WP
	8uJQ==
X-Gm-Message-State: APjAAAWlg8B5gX6zzbOt4GVA4H01NDFvCQW/+K09Vc/2L3fcsS//S5N3
	uMjPLKu4TVETGJTUwHSapBRf30bKn68pQVrc5kfQ5w==
X-Google-Smtp-Source: APXvYqxhZquEdtCNoJ/53QZbMc5kLuBhXDonEu7bdPGbXz1vmof38aIUoMFruDPicbxYZ1TZYXRDc050Gfho/B3rGpk=
X-Received: by 2002:a05:6602:104:: with SMTP id
	s4mr24189125iot.200.1562063453974; 
	Tue, 02 Jul 2019 03:30:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190701030845.0C5E523F54@centos7-ty-4.yocto.io>
	<fdd9755f-6468-759b-ed3b-22abc5580826@windriver.com>
	<015AB11D45F2C442929CB2765DAE738634E5F069@PGSMSX110.gar.corp.intel.com>
	<CAGAf8Lz0+0JRO-WdAWvyUW4wbCw8_tem1wzocGVhT3Po2w1UTQ@mail.gmail.com>
In-Reply-To: <CAGAf8Lz0+0JRO-WdAWvyUW4wbCw8_tem1wzocGVhT3Po2w1UTQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 2 Jul 2019 11:30:41 +0100
Message-ID: <CAJTo0LY-ANH7PXKN10qTSaK+JJTN5_wxTpqxRWjqfLNGHBfdkA@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.7.1.rc1)
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
X-List-Received-Date: Tue, 02 Jul 2019 10:30:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Jul 2019 at 08:05, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> >> Runtime auto test for following platforms:
> >> 1. MinnowTurbot 32-bit (Appolo Lake?)
> >> 2. Coffee Lake (14nm 4th tock in the row)
> >> 3. NUC 7
> >> 4. NUC 6
> >> 5. Edgerouter
> >> 6. MPC8315e-rdb
> >> 7. BeagleboneHmmmmm...
>
> At least first four from the list are IA (INTEL Architecture)... Maybe
> even fifth (Edgerouter). Nummer Sieben (number 7 - Beagle Bone) should
> move at least to numero due (number 2). IMHO. ;-)

Some points:
1) Consider that a bullet list, not an ordered list
2) Are you surprised that Intel QA is testing on Intel hardware?
3) Edgerouter is MIPS:

$ grep tune meta-yocto-bsp/conf/machine/edgerouter.conf
require conf/machine/include/tune-mips64.inc

So that's a selection of IA, MIPS, PPC, ARM.  At least one of all the
primary supported architectures.

Ross

