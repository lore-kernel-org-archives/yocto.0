Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22B12E00559
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 20:26:42 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id k13so851329iea.8
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 20:26:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+dn7wL5IxLCqUtqoAdhfTHTWPFSbO89v2jaXRyW5Fqg=;
	b=qSB3JqQD5atpDtlyK5Bq06fjymqSc2XBBlqwFJbGD4HTPOLS8Of2VEHq6FGX+XyYeV
	ICyLsRR0yvIupy3WlIeviq5E8+C7UZ0XObC7CN0PAChBzFziA9eoigEvEjwvo04+/8p4
	a+N3wDbxxBTvXe0MZ+JnnzDfA41cWZsm5PLWvJX9iqBH/N/Du7NZKAPTco7KlxxuWE60
	ESvqxV2gsRLpMM7GjmnsRGTpue05DyPcpajr2cjodNgMxhbg1bL4bbQuZ3yVnyeHA4pD
	NSudWq+Xs4QEYJNV6XV1/EGcBziFF0PcuH5IeBuvvsI+//pTyNZFo0XbeaY0gDs2CXOs
	rlYg==
Received: by 10.50.46.161 with SMTP id w1mr12393343igm.40.1355286401664; Tue,
	11 Dec 2012 20:26:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Tue, 11 Dec 2012 20:26:20 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC39E@ORSMSX101.amr.corp.intel.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC39E@ORSMSX101.amr.corp.intel.com>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Tue, 11 Dec 2012 23:26:20 -0500
Message-ID: <CANge7vWRftA1-RgR4HYX58e744ZFR9at39NeTyqex_UXkZUxdg@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disabling PREMIRRORS and upstream sources
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Dec 2012 04:26:42 -0000
Content-Type: text/plain; charset=ISO-8859-1

>>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>bounces@yoctoproject.org] On Behalf Of Jon Szymaniak
>>Sent: Monday, December 03, 2012 7:19 AM
>>To: yocto@yoctoproject.org
>>Subject: [yocto] Disabling PREMIRRORS and upstream sources
>>
>>Is there a simple way to disable the use of PREMIRRORS and MIRRORS
>>within a recipe?
>>
>>(Perhaps the answer here might be worth mentioning in Section 12.23 of
>>the
>>Poky Reference  Manual?)
>>
>>My use case for this is the situation where the code hasn't been
>>released yet,
>>so there's no point in checking mirrors.
>>
>>Thank you,
>>Jon


> Isn't this set up in the local.conf file for global use?

In the manual I see that there are indeed global options, configured via
local.conf.

However, I'm wondering if there's a way to denote that PREMIRRORS and MIRRORS
should not be used for a *specific recipe* (i.e., only attempt to fetch via
what's provided in SRC_URI, and still use the mirrors for other recipes).

Perhaps this is a wacky thing to want to do. I just figured there's no sense
in hitting all those 404's if I know the code associated with a specific
recipe isn't on any of the standard mirrors.

> Also, Jon, what documentation
> are you referring to here?  Are you looking at the latest Yocto Project
> documentation (e.g. http://www.yoctoproject.org/docs/1.4/poky-ref-manual/poky-ref-manual.html
> for the Yocto Project Reference Manual?).

I think I may have actually been looking at an old manual version, but yes,
that'd the documentation I was referring to. It seemed that 12.23, "How does
the OpenEmbedded build system obtain source code..." seemed the most relevant
to my question.

Thanks!
Jon

