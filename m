Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3818BE0084D; Thu, 30 Oct 2014 11:52:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0544E007BA
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 11:52:30 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id hn18so1362405igb.0
	for <yocto@yoctoproject.org>; Thu, 30 Oct 2014 11:52:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=ZdBqzOm0htOVUozgvx8PEnvmdOmqPlZ5E7ADQAAzNEc=;
	b=GWTshQMiuuMTrG9V33EXeDidTxXgpMWvxxpli+Njv0Ul5s5eZoUqMNHixLUmOLpfCI
	ZwqWLBeK79m/kx8d92Minpyawqklq6mgDPLI4n3e0JdCUwGV0YQ+1gAXq/O2jfnwL/N9
	iNZYhOiYSgFh5c1L/P3pdxqmYqkTznenzcs97xoBJAxEGzo7YF5UfwGDdlM7o97+9OaK
	txew1ZbxrRChI9KF6bkNbVm38yPLiAYZAU2Wkl7Tg5EA8Rckb3ctYTgKdVCv6a+Cy4JH
	0ZSO5Fn1H2ZiosPXNTt8LVbXopePXKI3qJiWe7aKUqRWa0Z0ehPdjgOYWfUCLVNSODyh
	V2kw==
X-Received: by 10.107.157.201 with SMTP id g192mr21713409ioe.5.1414695149908; 
	Thu, 30 Oct 2014 11:52:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.169.2 with HTTP; Thu, 30 Oct 2014 11:51:59 -0700 (PDT)
In-Reply-To: <545281C5.2020004@linux.intel.com>
References: <545281C5.2020004@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Oct 2014 11:51:59 -0700
Message-ID: <CAMKF1soH_khUZH_+c=K8TTz6y+Za+coyh9G8dmoKo_Kx-FCnPQ@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Package Upgrading for 1.8
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
X-List-Received-Date: Thu, 30 Oct 2014 18:52:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 30, 2014 at 11:21 AM, Saul Wold <sgw@linux.intel.com> wrote:
>
> Folks,
>
> Just a reminder now that master is open again for patches, now is a great
> time to consider doing package Updates.  Based on some rough estimates fr=
om
> 1.7 we did around 300 updates from 34 contributors, that got us about 73%
> packages upgrades.
>
> We currently have about 180 packages due to be updated based on the Packa=
ge
> Reporting from this last week, about 65 of those where not updated in 1.7=
 so
> should be given some priority (see attached file), there are also 10 that
> need maintainers, let me know if you are interested in any of them.

I guess you can put me up for python3 recipes and all of toolchain related =
ones.

>
> Here are the stats from 1.7 on who has upgraded packages (I guess I don't
> have enough to do!).  Thanks to everyone who contributed package updates.
>
>      61 Saul Wold
>      43 Cristian Iorga
>      25 Ross Burton
>      23 Bruce Ashfield
>      15 Armin Kuster
>      14 Richard Purdie
>      12 Laurentiu Palcu
>      11 Paul Eggleton
>       9 Hongxu Jia
>       9 Cristiana Voicu
>       9 Chen Qi
>       8 Valentin Popa
>       7 Chong Lu
>       7 Carlos Rafael Giani
>       6 Khem Raj
>       5 Tim Orling
>       4 Roxana Ciobanu
>       4 Robert Yang
>       4 Marko Lindqvist
>       4 Mark Hatle
>       3 Paul Barker
>       3 Maxin B. John
>       2 Yasir-Khan
>       2 Nicolas Dechesne
>       2 Fathi Boudra
>       1 Ricardo Neri
>       1 Peter Seebach
>       1 Peter Kjellerstedt
>       1 Martin Jansa
>       1 Jackie Huang
>       1 Darren Hart
>       1 Ciobanu Roxana
>       1 Chunrong Guo
>       1 Andreas M=C3=BCller
>
>
> --
>     Sau!
>
> Saul Wold
> Yocto Component Wrangler @ Intel
> Yocto Project / Poky Build System
>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

