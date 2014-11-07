Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 565F3E0076C; Fri,  7 Nov 2014 08:44:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A5CE002A8
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 08:44:21 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id gq15so4666489lab.7
	for <yocto@yoctoproject.org>; Fri, 07 Nov 2014 08:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rvkPB8afjtalLFWj0M4IgzStk033cZDcuNUrsJyOn58=;
	b=OOOPJjv1b/HCmlkBigBQ43SixJnq0DBi3Z+Jx6mvb2r2dL7Io5cAek2VtOdQOsHejo
	/QooFOveAkSOs5mYD6XbeePOjoLpsAgyRSrk3Ep+1XvA5+yOo/YrnF3uRAcNLZQdJhqZ
	HJpSQFqy+iwhuSGW0yNPz3QOcq9Bfg25FuCxF+SiCyPTlWYqit0K5hfed3oWerAs/Xe2
	A9blrytLwPeO5QpAQUzvIBdq2B4Hcz82iHIVWu7ACy44wPujVVi5FVm4n+FOVSqecZF5
	q+j6snYhrgWNqRIc3yXZsegG+THviA8cznRrBKnMgq7gfqndDnnTc418ToiPgxTx051E
	h3gw==
MIME-Version: 1.0
X-Received: by 10.152.10.67 with SMTP id g3mr4435717lab.59.1415378660014; Fri,
	07 Nov 2014 08:44:20 -0800 (PST)
Received: by 10.112.4.168 with HTTP; Fri, 7 Nov 2014 08:44:19 -0800 (PST)
In-Reply-To: <545C0067.1080506@ll.mit.edu>
References: <545C0067.1080506@ll.mit.edu>
Date: Fri, 7 Nov 2014 11:44:19 -0500
Message-ID: <CADkTA4NoX-SFyUs+sEEWJX8cKZSpYvKKMYG8H-HjVrA2s-7DDg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Jeff Wang <jeffrey.wang@ll.mit.edu>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Test in do_patch() fails for annotated tags
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
X-List-Received-Date: Fri, 07 Nov 2014 16:44:26 -0000
Content-Type: text/plain; charset=UTF-8

Jeff and I have already exchanged email on this yesterday. While using a tag
for the SRCREV is not typically something we suggest .. tweaking the
ancestor check is fine in this case, since it works in both scenarios.

I have a patch queued to address this, and am soaking it now.

Bruce

On Thu, Nov 6, 2014 at 6:12 PM, Jeff Wang <jeffrey.wang@ll.mit.edu> wrote:
> Commit 92c1ece6c347030d48995a36f4c67861356e59d3 causes the test in
> do_patch() in kernel-yocto.bbclass to fail if ${machine_srcrev} is an
> annotated tag. The check is meant to ensure that ${machine_srcrev} is an
> ancestor of HEAD, but if ${machine_srcrev} is a tag, then "$(git rev-parse
> --verify ${machine_srcrev})" evaluates to the SHA of the tag instead of what
> it's pointing to.
>
> Replacing "$(git rev-parse --verify ${machine_srcrev})" with "$(git
> rev-parse --verify ${machine_srcrev}~0)" seems to fix the problem. See
> http://stackoverflow.com/a/1863712/1454667
>
> --
> Jeff Wang
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

