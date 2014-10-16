Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 180ADE00790; Thu, 16 Oct 2014 10:47:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B06E00744
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 10:46:56 -0700 (PDT)
Received: by mail-la0-f47.google.com with SMTP id pv20so3282254lab.20
	for <yocto@yoctoproject.org>; Thu, 16 Oct 2014 10:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IwtNm0J19FG7c0Rw3iE9FnjE+JhmulY5RVtB9Nfil10=;
	b=OuT/90E+NVnfAU555n/xCr7V4lix00iqaIwqIIoH9qQr99hlalpIbpg20/7bUPbSRl
	5hBJwzJYHmQ6n185hORmI8Xr2bfZVAoWLDi9CjJCtnVkOlqFLMFFZIYmwEuMUD8IMMnT
	NdomXqw90RVCYZbZmZO91ohbD18zPntsDWUSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=IwtNm0J19FG7c0Rw3iE9FnjE+JhmulY5RVtB9Nfil10=;
	b=QxM06JEYCU2dnvrsuxJgaVuAdeFBxjBnC+W4BOj/ZFkxKBzH11uMIvxwl5iv4C7BPc
	jGAgtCoaeMyvhUy1heywc21c25HXgZc3hk2qJtTvLgVTH0Dzri5wGHABmL6UGJzPWnhl
	+F8axNPwmDuafToG703MewWIaFLFJmUms6dekR23/Iw9ZTMZunR8KxKd5thaeTc9MCna
	W6qOe0ePM1XL55o3xpaYGL9GEXCdhkQoQOgeDyVWwkIh41Uy0yx5jIBwHLEd0UMNiaZk
	uR3R8/pqUAH/S82z+Z7+5sEcEB6l8XBKaIIj6nnZrLAplBKW7Zuz8UQ8HUztDJ+mzMhY
	ySuw==
X-Gm-Message-State: ALoCoQmnsxBY3/3iXSm1sFojv3jjjh2IwQdTnEIvqUIyJhY1rHkvWHL3eHWy41VAZ9hnq1MXL2mI
MIME-Version: 1.0
X-Received: by 10.112.94.133 with SMTP id dc5mr3270669lbb.11.1413481614823;
	Thu, 16 Oct 2014 10:46:54 -0700 (PDT)
Received: by 10.112.188.161 with HTTP; Thu, 16 Oct 2014 10:46:54 -0700 (PDT)
X-Originating-IP: [72.74.84.52]
Date: Thu, 16 Oct 2014 13:46:54 -0400
Message-ID: <CAPoQQ-1xzG=SqaBrPp-W-tOd9W3fWyZ=skUTEpvq+mEQ3P_CuA@mail.gmail.com>
From: Cody P Schafer <dev@codyps.com>
To: yocto@yoctoproject.org
Subject: Questions regarding adding a new llvm based cross-compiler
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
X-List-Received-Date: Thu, 16 Oct 2014 17:47:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I'm working on creating a layer for the rust compiler (which uses
llvm) and was wondering if there were any best practices and/or
examples people could point me at.

The compiler is designed to be built for multiple targets at once
(unlike the gcc model of having a single compiler build for each
target).

Q: Does this mean that I don't need to create a '-cross' package? (And
just use '-native'?)
Q: What about a -runtime package? Will one be needed? (The compiler
can build runtime libs for multiple targets, so a '-native' could
include the target runtime libs).

Thanks
--
Cody

