Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C35FE00A68; Fri,  9 Sep 2016 15:02:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5533E00A1A
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2016 15:02:22 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id c192so8214846oih.2
	for <yocto@yoctoproject.org>; Fri, 09 Sep 2016 15:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=NsFKdbu1vwhwVj3MY6WhJYrmACllo3exkWCeqfY7+ts=;
	b=oFWIGF7a++Cf8mhMAc74aCl3Kdm6MTE6KQywtQeW05eeOJqisD3hP77MV16XZfrnRr
	9QNYARwtkiM6xazUAVXDQO9VbWD03Lx2JwZel+NLo7mKRmwYnGUVrkceuxHvzTSmbhL/
	gEzH8KUUFF4pxOkzRxMP8SBUBdfoSXyXaVG8I7KGV+13BSYnlvOhaygJ6aMHaUxzs+q8
	MJoX729CAd/ORDsmn8AHDv6bR0OZnQWkh12x1s8o8X0vDH1+8qvxUnTqQNm5nlgyCHts
	Hnnci/cyTsjI2eINOGRflw4Q9wk2wH8BY5uG99CTT5CtJfJTTDQcGSNiPOb0y+QEJOvR
	Lgjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=NsFKdbu1vwhwVj3MY6WhJYrmACllo3exkWCeqfY7+ts=;
	b=ftzd3L+4gxmBOdw3s4OMJaIGQbTQ4Y52MqBDLOALnmsbcoaO6nrk/e/iw/wlSATmyA
	dGJtb7tIl81Kj6DDIxRE7I7guz6FG8LFswas9Q2ihNHOdz1orVDPxoy4v61p6R8hz7vF
	hchuLz9z/Jbv2TqvV6a3pvAjeh+R9uoqZQswyOFF0S0d0tcGPdB/QcwS4ls3wlBbpBPD
	5wQYh4JqsjkfsgAxbOOzA8YPXO+jWWR394m5Ppw1UWsn2Nzl1T9ebWhkpw7oZrnvDjZt
	9NZAhZnQZtdiDSfgLUMmbsBVy+1iJlYI27OcVKZtAxzrbOJ5TbvUAfpw904x/fGZ/jpg
	aKwQ==
X-Gm-Message-State: AE9vXwNDvf0ztaGFZ8K6eJshVIzoKWqZ2LTMF5rqnQ0XwSP2j+uMpTdXVtuDeNoIks566YXXF2GbRuHHxfmqDw==
X-Received: by 10.202.196.195 with SMTP id u186mr8343511oif.162.1473458541464; 
	Fri, 09 Sep 2016 15:02:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.79.208 with HTTP; Fri, 9 Sep 2016 15:02:21 -0700 (PDT)
In-Reply-To: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
References: <CALRMKQqgbk9Oj42figT=iXqJJfhHRgTjQ9PkUtwTUEzUomyX=w@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
Date: Fri, 9 Sep 2016 16:02:21 -0600
Message-ID: <CALRMKQqP5KT+batqRh20AbO=jSWKRhYrhtWF=SzHms0LwfMsLA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Naive Questsions about 3rd Party Kernel Module
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
X-List-Received-Date: Fri, 09 Sep 2016 22:02:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Following up as I've done more investigation and debugging this afternoon:

I've been able to resolve my problem with the missing symbolic link to
<filename>.so by explicitly including a runtime dependency
(RDEPENDS_${PN}) to the -dev module, so my link is now present on the
filesystem image at boot.  I've also found reasonably strong evidence
that that library contains the function __stack_chk_fail; but the
evidence could equally indicate that that library calls it as I found
the string using the strings function.

Either way, it looks like I have a critical kernel module, and a less
critical kernel module, that are relying on a shared library that
either are missing on my image or are not available properly in kernel
space.  Any suggestions on how I can resolve this would be greatly
appreciated.

Thank You
  Ron Oakes


On Fri, Sep 9, 2016 at 10:01 AM, Ronald Oakes <ronaldo@brc2.com> wrote:
> I have some, I presume naive, questions about some messages I'm
> getting as a result of running (or attempting to run) my
> vendor-provided kernel module under qemu.  (I've not tried on the real
> hardware yet, I'd like it at least to boot somewhat cleaner on the
> emulator before I commit to burning a CD to attempt real hardware even
> if at this point that is just the same PC I'm developing on).
>
> 1: Upon each boot - or more correctly when I attempt to load my module
> as part of an init.d script - I get a couple of messages from my
> driver:
>   "altadriver: module license 'Proprietary' taints kernel."
> followed by:
>   "Disabling lock debugging due to kernel taint"
>
> Is there any way to prevent the prosperity license from tainting the
> kernel?  As the kernel module is indeed under a proprietary license
> (which isn't a problem - my product has a single customer so licensing
> is not an issue), I don't want to override the license, but I don't
> want it to impact kernel debugging should other issues develop.
>
> 2: I'm also getting a number of Unknown symbol messages such as:
>   "altadriver: Unknown symbol ___stack_chk_fail  (err 0)"
>
> Am I correct that these indicate that I'm missing a runtime library
> dependency?  If so, any suggestions on how to locate what library has
> the missing functions?  I do have these modules working on the native
> system, so I know that I have the native versions of these libraries
> and just need to identify and add them to my target system.
>
> 3: Related to the previous question, how important is the name of the
> library in /usr/lib at the time that the module (or any other program)
> starts?
>
> On the native installer, one of the precompiled libraries gets
> installed as symbolic link called /usr/lib/<filename>.so pointing to
> where the file is unpacked.  I was unable to successfully get a
> symbolic link of this name created on my target yesterday (even though
> the same recipe created two other symbolic links in /usr/lib of the
> same format), leaving only the actual file (named
> /usr/lib/<filename>.so.<version>).  So, I modified my init.d script to
> create the symbolic link before calling the program that, I believe,
> installs the module (the program is a vendor supplied pre-compiled
> binary that is used to create the device for the vendor hardware).
> However, if the module is installed before that it is possible that
> the symbolic link doesn=E2=80=99t exist but the library file is in /usr/l=
ib
> under a different but related name.
>
> Thank You
>   Ron Oakes

