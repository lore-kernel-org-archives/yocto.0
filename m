Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 075C3E00A39; Thu,  6 Aug 2015 19:29:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78C63E00A31
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 19:29:38 -0700 (PDT)
Received: by ioii16 with SMTP id i16so99710377ioi.0
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 19:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=bbJz0OxzE+TmBCrsqKiLGaK1xVzNVFYL4gbhT+Fphtg=;
	b=syEaQpRXCPXxZ/TAGw+sc1oSzEqrHjgYWlh+g3Yqy5naXoYNlzjdffMpQSp999IYv8
	0rRdu5MLBrdtrcLu0v9fBe9JHoctFzgBn/UxL/+YdqzU1jmIOfNOsdvaVofg9xU8mbtw
	jgnsovM8i0JUEVB0jMooRRtQv//SG63LaTBxJYnOh8mWUm4h5SFKjUoLBsh/iBFZML2q
	omueB6uOP/YLh00pPcUtJ3FYRvflQnOIyl5+cZFC9nGw/9SbjF9/z2UfTwxk6gaVJnk3
	wjbcnhwUj+2eK9NK6gOk6677hpsnSlEjbY2p7b10A+XbrJ+Gb3d3FT878W1k5K9fIgNQ
	8SNg==
X-Received: by 10.107.34.194 with SMTP id i185mr5388280ioi.49.1438914578353;
	Thu, 06 Aug 2015 19:29:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Thu, 6 Aug 2015 19:29:08 -0700 (PDT)
In-Reply-To: <6A20517C7F5548459920A3A2C95FABA8770A25@POCITMSEXMB03.LntUniverse.com>
References: <6A20517C7F5548459920A3A2C95FABA8770A25@POCITMSEXMB03.LntUniverse.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 6 Aug 2015 19:29:08 -0700
Message-ID: <CAMKF1sqbHSQS6+E3MmxtKugaxqngs8w8QAx072unPCRxopGd2g@mail.gmail.com>
To: Amit Kumar <Amit.Kumar@lnttechservices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemux86 and generic86
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
X-List-Received-Date: Fri, 07 Aug 2015 02:29:40 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 4, 2015 at 10:44 PM, Amit Kumar
<Amit.Kumar@lnttechservices.com> wrote:
> Hi,
>
>
>
> I have a basic doubts on qemux86 build application image is not working on
> generic86 target.
>
> Suppose I have a application which I would like to test on target board, but
> the target board is not yet ready. If I will want to test that application I
> will use the qemu  to test.

here you say you dont have board.

>
> But if I build the application for qemu, it does not work for actual target
> board.

here you say you have board.

 Anyway provide more information if you need further answers on as to
how it fails paste some logs or strace output etc.
qemux86 builds for i586 and those apps should work fine on newer x86
opposite might have problem.
genericx86 defaults to core2-32 which should be able to execute i586 apps.

>
> Could you please let me know the details reason. If I want to do like that
> what I should have to do.
>
>
>
>
>
> Thanks & Regards
>
> Amit
>
> L&T Technology Services Ltd
>
> www.LntTechservices.com
>
> This Email may contain confidential or privileged information for the
> intended recipient (s). If you are not the intended recipient, please do not
> use or disseminate the information, notify the sender and delete it from
> your system.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

