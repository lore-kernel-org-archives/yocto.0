Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE39E00B77; Mon, 12 Nov 2018 08:12:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA912E00AD1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 08:12:57 -0800 (PST)
Received: by mail-it1-f179.google.com with SMTP id m34-v6so13393891iti.1
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 08:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=KiOd1roMtUpv9Qyc4bVMIaZazyQMb2dt/TUsTI+HOj0=;
	b=Jkd/ad0+6ukyh2RmlP/SHSSzC3kPJYK9r22dD1Yr+1auc1Y8XDGHx/gOtmgtnYgc+u
	cClqzBD4+cymvJqAHkeuNopE1W7mXmzepGpqiXdSBaq4mfzPOvUzf0RDXUyfDPvWcd1u
	DPf/QxSAZQUIbeo9Ob7Qh0NoCBoe1AVFf1kK51P9VPmTvCIkdBXo8A/XgSeJjIcCVIGp
	D4eSLC23J9MwzzS06H9cZv3B+tFXr3pqRq5yJFBNCd8npUc2TSYkc8LkDzO8ZT+seZ//
	vmBrJxGiO8u5sIUrNqlxztcDkExQrKSkRRA28ytsDpEJFaCWoivlcyQVVcVjHl5kCg7v
	SF+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=KiOd1roMtUpv9Qyc4bVMIaZazyQMb2dt/TUsTI+HOj0=;
	b=Ejjt3R+bSoHOCuiXMHwsA/SbVbjiNxpP+SpL+pJ+6NLVpzZHjT0THaOFCr7bCSMvYX
	kBlo2KuMLKlGTk7AfI+zFBIogssWKDGfXyUfC67gpdn3NE6a7eP0VO+i6e9eDKt4GfJH
	CSkVn9+ddFGNPpqwhUbzawBCuTxnn0V1crp5AhY+j4YgAuOKeVPHePh4+g6C7IFT4702
	DPQZI6PPFKpGulmfVvq9fyjxrFVWeQH1ZUWag0GEVtLoTKZbcOZldajfmVimInITEhw4
	6mkzZ0V04l95nq3/Wmc2vlkD8qf4ahty+ftV8C7YD1X3C4jkgtudJrVO1ZtydRfpWTti
	qM6Q==
X-Gm-Message-State: AGRZ1gJaneXAr8p3RvCkQdOAT6nkpQhu8JEiD+OMSsK/UaHktB6ATCo3
	Ek8PyoaBQX2rd+ABDfnlT2jG6TpWEWr7i3Q7fEy4wQ==
X-Google-Smtp-Source: AJdET5ekWnKvCvGT8V68oAAony0LUJ3FFYRRtlX2pS8vZUhug8KxBWwtbwW2zUBLOyyzIm/RRps/suYn4P+DLxNXpHo=
X-Received: by 2002:a24:ce45:: with SMTP id v66-v6mr283406itg.26.1542039177243;
	Mon, 12 Nov 2018 08:12:57 -0800 (PST)
MIME-Version: 1.0
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
In-Reply-To: <124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Nov 2018 16:12:45 +0000
Message-ID: <CAJTo0LarEQDPjpkg5wQv0yTnY2zaQexb5cWRf1XQqBy0Dj-Pqg@mail.gmail.com>
To: "Purdie, Richard" <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>, "Erway,
	Tracey M" <tracey.m.erway@intel.com>, "Kirkiris,
	Nectar" <nectar.kirkiris@intel.com>,
	Paul Eggleton <paul.eggleton@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Mon, 12 Nov 2018 16:12:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, 10 Nov 2018 at 16:26, <richard.purdie@linuxfoundation.org> wrote:
> My personal view is that whilst there are a number of issues present in
> rc1, we should release it, collect up fixes on the thud branch (aleady
> happening) and plan on a 2.6.1 as soon as it looks like we have enough
> critical mass behind those as opposed to an rc2 and further delays to
> the release.

I'd suggest we schedule 2.6.1 for about month after release, there's
quite a queue of security fixes already.

With that caveat, I'm fine with this plan.

Ross

