Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 105B6E00949; Tue, 21 Apr 2015 23:55:56 -0700 (PDT)
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
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD656E003A8
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 23:55:53 -0700 (PDT)
Received: by igblo3 with SMTP id lo3so34388841igb.0
	for <yocto@yoctoproject.org>; Tue, 21 Apr 2015 23:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=dpHTWJYeeiaZVjw668PUCkL5a+tvOzpAoTomAlKNr/o=;
	b=O5fG+tCy3NCK12RZIYn5rnO/lyWyPssVXs9sSR8nVLJQl/Ugr04OAViBUqIlOP1unT
	pFSBjykgS3WB8CTXirpDduGEo6zmdMQ/BxiuHimN2vNWwJTfGwq1EQMfboY7DpcBVIeC
	fLofaJHLz4RO6IjdVnswvm4+7tdAAY+YmC+ccZ/Op5QyaZC06+MBGxdWrR77yqvWj22c
	v8Z3aw9RYlwnK0MRxRgUo1Hf1wJNMAjjKhEzDA+czXjK90EHyYDjQoJ7bSnZ8WnSISK7
	D5FIU9Wkilw3Ku/BqCBstiEW+/6t/PW+WfuNQqv+zx5aPsFhYYUWR37qVrw0t0HLsaJk
	4klg==
X-Received: by 10.50.117.4 with SMTP id ka4mr2411794igb.10.1429685752386; Tue,
	21 Apr 2015 23:55:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.117.7 with HTTP; Tue, 21 Apr 2015 23:55:21 -0700 (PDT)
In-Reply-To: <CAJT9KcipnZ-caZCzUVEwFDiC3eQWWXDSgbAK3RQ0w9zAwRy_mQ@mail.gmail.com>
References: <CAJT9KcipnZ-caZCzUVEwFDiC3eQWWXDSgbAK3RQ0w9zAwRy_mQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Apr 2015 23:55:21 -0700
Message-ID: <CAMKF1sobOeuar4fKLQk4zmLWO5-WD-k=pH3zSAFAYi-oDJ84Gg@mail.gmail.com>
To: waqas shafique <m.waqas.shafique@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add a library header file in yocto project
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
X-List-Received-Date: Wed, 22 Apr 2015 06:55:56 -0000
Content-Type: text/plain; charset=UTF-8

Waqas

On Tue, Apr 21, 2015 at 11:34 PM, waqas shafique
<m.waqas.shafique@gmail.com> wrote:
> I'm trying to write a code using BlueZ API and Yocto , one C function I'm
> using has deceleration defined in hci_lib.h which is located at
>
> /poky/build/tmp/work/armv5te-poky-linux-gnueabi/bluez4/4.101-r5/bluez-4.101/lib
>
> Can you tell me how can I include this header file in my Yocto project
> recipe ?

If bluez is not exporting this header as part of its APIs meaning make
install is not installing it into staging
then they dont want you to use this function. So please take it up
with bluez community if its appropriate
to use this header files and functions inside it. If its supposed to
be exported APIs then there is a bug
in bluez component build system. Either way they should be able to tell you.

>
> My build process is not looking at above location and gives me undefined
> reference error.
>
> Regards
> Waqas
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

