Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59FFEE0090C; Tue, 22 Mar 2016 22:37:17 -0700 (PDT)
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
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E59FFE008EE
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 22:37:13 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id w104so4073010qge.1
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 22:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2B0RFO9PBMHR9T1k+QMr+mSyxP6Vhwe8FTPzKBauj1k=;
	b=JKjPEi4UCzrml8wYiRDwjBDjhVIsAlUmIUNKdqbhV+Ms/N2DE/lil3SsJ6P45E+vjN
	eqWxqJ6U0zfYMoyNLo6iwSlvXNFgdEEeflsRQ26FO1rokaYPROW+bF3jQzzx/R1AbW4l
	GQ3AaDd8lddMoy905GTbccSvQcbOqI5uO2PVSTFqqf4gf+b2M1PVC2w7CZP+Ep5jTK8R
	dQfwHbcQUFd/mf5RnKTRBuw/kStj+MVMh72efyk+kL+QuLZIaGpZ7Kf9s/K4QXS+Scyx
	SBPd/jw3+3zw/7Pxti0m/RS2A14xgxedbYv/LK26kG66tBGI1So+1Fz0bc2+j5UjWA7A
	inLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2B0RFO9PBMHR9T1k+QMr+mSyxP6Vhwe8FTPzKBauj1k=;
	b=buSvO7OgRctQzDNrSDKXXaoFgDgNfmKFDX4p5/S0EL90S1FMktRB2LpET7xvGku4kr
	Ki63SLsy+3GzfnRea49cVDf6mVIfejJBCDfNR3xVTWDo4a0+PzGsHV9vTWTw2G+cvyHT
	ZOvSbBHqPG+ys+J39JuEKRdgpVyMHeN3QHEh6aMdSWVK6kZNdIkzrp2lsv8UDHSEd67U
	tfVfaHywQA8ofPljODFcFPI8z30zcz20eTQIrOAd7HcZMaek3qysajweCJM5TLMNB8bN
	fhr2xacya/Q7ceaGesBzUfpTA5U1gMNWJbGmOjivpw+ZmwJ4FrebouKI9hJ/nXObQrdT
	Qm5Q==
X-Gm-Message-State: AD7BkJLDtY//+FVnpbu0WEYbYFtGH/0OFcypBuehuSc/vNcDsSBmicIX4QX3Vh/AfaE8Og8aQrjAbH6fAWFWRA==
X-Received: by 10.140.254.9 with SMTP id z9mr1039950qhc.5.1458711432688; Tue,
	22 Mar 2016 22:37:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Tue, 22 Mar 2016 22:36:43 -0700 (PDT)
In-Reply-To: <56F2215B.1000309@mlbassoc.com>
References: <56F2215B.1000309@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Mar 2016 22:36:43 -0700
Message-ID: <CAMKF1souitmv7XGJ-0h3mKK2R7W8ZeRakaT9UgL3jDNzQ7OioA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto discussion <yocto@yoctoproject.org>
Subject: Re: perl 5.22 and 32 bit targets
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
X-List-Received-Date: Wed, 23 Mar 2016 05:37:17 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 22, 2016 at 9:53 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I hope this is the correct place to discuss this problem.  It
> is all about a difference in behavior between a program built
> using bitbake/OE (only OE-core is needed) vs building the program
> on the target hardware itself.
>
> I've been struggling with this problem since perl was upgraded
> to version 5.22.  I'm working on Amanda (Advanced Maryland Archive
> tool) which is written primarily in perl and uses swig interfaces
> to access native C functions.  This code works great when using
> the previous perl (5.20.x) but fails on all 32 bit targets with
> perl 5.22
>
> The interesting thing is that if I build Amanda on my target
> directly (using SDK tools), it works perfectly even with perl
> 5.22, so it seems that there is some [subtle] difference between
> building using bitbake/OE than when built on the self-hosted
> target.  I've compared the builds and the only thing I could
> find (from the output of configure) is a difference in sizeof(off_t)
> Sadly, when I tried to adjust this in the OE build, it didn't
> make any difference, but perhaps I didn't make this change
> correctly or completely.

do you have largefile support turned on ? if you do then it might
be detecting it wrongly during configure since we cache it to a
non-largefile case

so try to add something like

EXTRA_OECONF += "${@bb.utils.contains('DISTRO_FEATURES', 'largefile',
'ac_cv_sizeof_off_t=8', '', d)}"

while building perl or the affected program and see if that helps

>
> Anyway, I'm looking for some help to solve this.  I've put
> all the relevant pieces and notes about the process at:
>   https://github.com/GaryThomas/meta-amanda.git
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

