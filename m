Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51DD3E00D35; Tue,  6 Sep 2016 08:48:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.50 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83BD3E00D31
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 08:48:00 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id w78so106580696oie.3
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 08:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cPYjQrdz658CrV5JU7Z//VW74NovxiNNfbL2UHtSLzg=;
	b=fkXatyJ5A7LYyKkKizdoOYtWiIrvc+3UrnDW4LTEYhvzs1RyMFm9Jz2iSjQAOTm3oe
	3ZiMSPAzPnVM9boXrmfMQBSVIlFaF+tMWKkE5qcbipgaDKNmQKxh0IVldj3tWAty01yJ
	LIiC7wKCCo1+GqWyuWVNIwVrUkfWVXqwRdaeceAVgHdigZEHGbpInhm5V9CqqpreEhdO
	I1jTqZIgJQ1QO2mtLZGUgOO+PPDRvtKwQJxKkVgQOuP688TRfSg3unXghqwkmn3K9d46
	5Ag8W+akj1bAyhuswIbx+IlIzqLKVqhbabfM/ulbmyfkM88N+vzHaxYLAP0wkliplL9D
	rwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cPYjQrdz658CrV5JU7Z//VW74NovxiNNfbL2UHtSLzg=;
	b=csgFs81T7IAZ4AaD9tzPhr4Ks9pv6pJjHhtKfVxUtQD59w+ti/vKjElgBcMpN3kC7/
	XRHff8jgGHJVmWcSdC2a3/Muj/qLBGqZIxL0yqRiBJMWmekhgneawedCIqjWHZCap5/R
	pCurZtYJ6mkZhNSXhVfleHEzvhp6B5n2BCTsnlsnOiP0XcaK2ekTnFiozw9/aQbDupq7
	dPGkDUOBogZo0nUxPiuWwWgJ+GjZOcDfHmS1m6qR1xGWCpCVHClax0QrWRhLIgmOVwp5
	qdN9e9pGkgcUBuN8T2SWOmoJN4CHIM8cLKL0Y6jal/ZDdttM+GwFwRkYvdA+t6SbhDz+
	pL0g==
X-Gm-Message-State: AE9vXwOImNZy8YsYe9La4SP0ErPGNQ4pPo8CpS9pvYmmh3dcYYnt6FBmkFFM55Ns38zr+psvLHkc4j9DUa5aPw==
X-Received: by 10.202.207.144 with SMTP id f138mr15360388oig.45.1473176879350; 
	Tue, 06 Sep 2016 08:47:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.4.45 with HTTP; Tue, 6 Sep 2016 08:47:59 -0700 (PDT)
In-Reply-To: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>
References: <SN2PR10MB009442733EA473DB41981EB1CFF90@SN2PR10MB0094.namprd10.prod.outlook.com>
From: xerofoify <xerofoify@gmail.com>
Date: Tue, 6 Sep 2016 11:47:59 -0400
Message-ID: <CAPDOMVhBu=nEJZM1FSfiiS=e-BfmQy8tVKPb7MajUUfQQBps1w@mail.gmail.com>
To: Adolfo Sanchez <adolfo_sm_cr@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing build following Quick Start
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
X-List-Received-Date: Tue, 06 Sep 2016 15:48:06 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Sep 6, 2016 at 9:13 AM, Adolfo Sanchez <adolfo_sm_cr@hotmail.com> wrote:
> Hello
>
>
>
> I am new to Yocto and trying to learn the basics of the system
>
>
> I am following the Yocto Quick Start guide:
>
> http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-qs.html
>
>
> Details:
>
> 1) I am using Lubuntu 16.04 64bits on a Oracle VirtualBox VM, over a
> Windows10 host.
>
> 2) I downloaded the poky from the Yocto page instead of download it via git
>
> 3) I am tryting to build the basic core-image-sato for qemu
>
> 4) I am getting  the following error:
>
> ERROR: Task 1921
> (virtual:native:/home/adolfo/Yocto-testin/poky-krogoth-15.0.1/meta/recipes-support/gmp/gmp_6.1.0.bb,
> do_compile) failed with exit code '1'
> 5) I test  the ${WORKDIR}/temp/run.do_compile I get the following error:
> x86_64-linux-libtool:   error: 'abs.lo' is not a valid libtool object
> Makefile:421: recipe for target 'libmpq.la' failed
> make[2]: *** [libmpq.la] Error 1
>
>
> Any help would be appreciated.
>
> Best regards,
>
> Adolfo Sanchez
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
Do you actually have libtool installed and the latest version for
Lubuntu 16.04, if not try installing it using apt-get.
See if that helps fix the issue if not report back with the error
messages you are getting after installing libtool.
Cheers,
Nick

