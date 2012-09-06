Return-Path: <dbaryshkov@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20B9E0150C
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 14:46:35 -0700 (PDT)
Received: by qady1 with SMTP id y1so2088984qad.14
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 14:46:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HMTZVLEk03HQ1DQ5uipkz4g8ImcvBN4hINIUhZbct9Q=;
	b=E1ZyDRPbcDDddEg7LYOjI2E7ZN9tyNW18Tqzc8MRqPLOgVvQ/yth98QhnIgl85gUGc
	p7y+A4U05DcrOkfXn0W6HxODosI3Ag1OUBhIR0pTIIiBuOZ1qJD+JPa5ZTdt3APWt8VK
	SzEiEWBQst+BWd4lgwi0ohtPTH5htZNHgJvUZ90vcM9YZKgEpNUPgDENn83pw6r9e1G2
	vhjIayDmHJX6pzDtPZuMIl0e4n+vwWBsuixpua+egHbqyqO3Eti3XMBCDUVMqm5xuHmj
	xUS6Cdl6s2Z1w2m8U0Yuhqer9pDoPsbl1Bz98c7TMQFoKUHre7sp0+HG3HtMMDm9KH0g
	XQ3g==
MIME-Version: 1.0
Received: by 10.224.174.145 with SMTP id t17mr5743063qaz.0.1346967990583; Thu,
	06 Sep 2012 14:46:30 -0700 (PDT)
Received: by 10.49.130.232 with HTTP; Thu, 6 Sep 2012 14:46:30 -0700 (PDT)
In-Reply-To: <4865264.UZoJkHz8Ho@helios>
References: <1CA12C40-FBBD-4CC7-B45A-5867AB64490A@gmail.com>
	<4865264.UZoJkHz8Ho@helios>
Date: Fri, 7 Sep 2012 01:46:30 +0400
Message-ID: <CALT56yMAmUfWKZsL4FgPyX7qhkz1CW-SniSUbHiPZ_QmCO8BbQ@mail.gmail.com>
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailman-Approved-At: Fri, 07 Sep 2012 08:04:32 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Procedure to setup icecc for performing a distributed build
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
X-List-Received-Date: Thu, 06 Sep 2012 21:46:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 6, 2012 at 2:17 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Thursday 16 August 2012 00:30:15 Elvis Dowson wrote:
>
> Otherwise, Dmitry, any suggestions? I'm assuming you made use of icecc.bbclass
> since you made some changes to it a while ago...

I'm sorry, I had not tried icecc.bbclass lately. I should give it a
try. Probably either
on Weekend, or next week.

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



-- 
With best wishes
Dmitry

