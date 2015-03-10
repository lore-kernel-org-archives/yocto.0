Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DECBE00777; Tue, 10 Mar 2015 07:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8CA8E00754
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 07:55:23 -0700 (PDT)
Received: by lams18 with SMTP id s18so2310289lam.2
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 07:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=IC5xgNIxvyHatC9txtsKwCx6E05Nan3vnoUfn3M01AY=;
	b=d5nsPiOL+FTGFyOiIQxVLnYHaRihGfKCdF8Rdee3y23qqq6yh9smBzpQhHM1nLvo4V
	Rs3+EdlRKkpWstHdSU2dY9jHuYZB+D2jDn3spiIuVj+zVW8q/PS3TVsHi3PdQ6gDNG4w
	fu272qG3rD3G0KiTNNdxKltAcrT62j9bxHgxDzqceVQVIpnDRH7qU0th5vjvuOFkkH2t
	+S4j6JA+xhCUdhZ6HjVXMD3WDB0v+OjxqXPlR/NPuGP4JhH9gbwKmLyhS+4wHqC3u7w2
	WNmRoVwjI7FwWcE4W1qp1fBdMhuJyycYNApWNzEw/AZvjIUpwJYUuq1s9AyGlYrYkm1Q
	dZqQ==
MIME-Version: 1.0
X-Received: by 10.152.170.199 with SMTP id ao7mr30201768lac.27.1425999320901; 
	Tue, 10 Mar 2015 07:55:20 -0700 (PDT)
Received: by 10.152.19.35 with HTTP; Tue, 10 Mar 2015 07:55:20 -0700 (PDT)
In-Reply-To: <COL401-EAS4221E4C74DEDE692A6AB7A1871B0@phx.gbl>
References: <COL401-EAS4221E4C74DEDE692A6AB7A1871B0@phx.gbl>
Date: Tue, 10 Mar 2015 10:55:20 -0400
Message-ID: <CAPDOMVis-eNkA95npgubrfO-bVBD+eNpKms7B_91LMe4gR32HA@mail.gmail.com>
From: Nick Krause <xerofoify@gmail.com>
To: Everhard Ros <everhard.ros@outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Openembedded/yocto bitbake with gcc 4.8.2 crashes at do_compile elfutils
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
X-List-Received-Date: Tue, 10 Mar 2015 14:55:29 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 9, 2015 at 4:35 AM, Everhard Ros <everhard.ros@outlook.com> wrote:
> Hello guys,
>
> I'm trying to run bitbake to get a linux image on an altera Cyclone 5
> devboard(SoCrates). The end goal is to get a linux image that has the OpenCV
> library installed. I'm using the altera version of the yocto project.
>
> Currently everything is running fairly well on ubuntu 12.04.
> When I try to run this bitbake process on CentOS 7, I get the following
> error:
>
> Error: argument to 'sizeof' in 'snprintf' call is the same expression as the
> destination; did you mean to provide an explicit length?
> [-Werror=sizeof-pointer-memaccess]
>
> cc1: all warnings being treated as errors
>
> After some googling here and there, I kind of found the 'bug'.(new gcc has
> this new flag that older versions didn't have which causes a warning and an
> error with -wall).
>
> So now I'm looking for the place where flags are passed to the gcc compiler:
> I tried doing this in the bitbake.conf file in the meta -layer;
> TOOLCHAIN_OPTIONS, BUILD_CFLAGS and TARGET_CFLAGS are now empty.
> In the manual they mention these flags are being sent to the compiler.
>
> I also checked out the elfutils and gcc folders in yocto/meta/devtools/, but
> couldn't find anything relevant there (I used find/grep and the GUI,
> searching for the flags mentioned)
>
>
> Changing the flags in the bitbake.conf file didn't help; do you guys happen
> to have any idea where the compiler flags are being set when bitbake
> executes the do_compile task for elfutils?
>
> Thank you in advance.
>
> cheers!
>
>
>
> P.S: This is a cross-post from this thread I made at linuxquestions.org
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
Did you look for the bb recipe file for elfutils as I am pretty
certain that you can put your gcc compiler flags to work around this
issue inside
that particular bitbake recipe file.
Nick

