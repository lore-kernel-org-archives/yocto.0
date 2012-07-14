Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ACADE0034D
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 11:17:49 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1509791eaa.35
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 11:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=otiDyYbOQeAezNNEI7SJbYekhnmI074FkpT31QvWjtE=;
	b=Nm/Yk+T+Sfxo/+d2ncm9zwSBa67jPGvYQ/z6OIL/T638ehKIm1sqmQ30mDhdxaMPVO
	IaDSFRQpjp52wDGoP5fj8AVkVNu4ij5fwALErxucOT0sE8/GdetHqSCF7+CH4Hz6Q+IB
	HAqKC95aKQc+7CTX4rthJmT3/mmLBjYgPHKGOGbB/YtnlgON+uSqfq4HTncVhsFkRQJK
	rqvhm0aIQb2izDY1AlZhZr28fJK0wkexXrxAOKDC6J8DFNtDWT3JAhzqgj6PuCj+/aK3
	pzhl2R68hNBLA3mpaHEBTnGgnhazr+lxHUZ2Wui38SGfYUTh1zuT2WWMbDGSiIKKICtC
	9H2g==
Received: by 10.14.225.198 with SMTP id z46mr2759665eep.25.1342289868880; Sat,
	14 Jul 2012 11:17:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Sat, 14 Jul 2012 11:17:18 -0700 (PDT)
In-Reply-To: <CANsUPaOzw1Vqw4iDCf2GWtK8Ji-JY9Dg0EfHcdW6KweLt=Gf9A@mail.gmail.com>
References: <CANsUPaP4h2OUz_4McKQ8jmfm_grv_cCGCMfxZQaGMs7ty8Bf1A@mail.gmail.com>
	<20120628181214.7ACD02026AB@gemini.denx.de>
	<C6510F6D410BB64A8C15398EDC6B847C46A79CD8@ORSMSX101.amr.corp.intel.com>
	<CANsUPaNSy0Me580w0odN76bcHvJZ1-gXFdWadhdnpNR3Q_EEtQ@mail.gmail.com>
	<CAMKF1sqwu1ZsyMyWoY4nfCh0fpWEV+Sw8oORt4iJ+TGAn_mXJw@mail.gmail.com>
	<CANsUPaOzw1Vqw4iDCf2GWtK8Ji-JY9Dg0EfHcdW6KweLt=Gf9A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 14 Jul 2012 11:17:18 -0700
Message-ID: <CAMKF1sqrXQ9PGH-S9tttBd3KRvSffwDmxv3dZSWFKuDe9e7UNQ@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto and Qt embedded
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
X-List-Received-Date: Sat, 14 Jul 2012 18:17:50 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 14, 2012 at 3:15 AM, Giovanni Foiani <fnognn@unife.it> wrote:
> So I tried to find g++ compiler using "find" command, into:
>
> /opt/poky/1.2.1/sysroots/i686-pokysdk-linux/
>
> with no success.

find "*g++"

