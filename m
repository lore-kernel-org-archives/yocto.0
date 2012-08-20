Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3185E0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 12:27:32 -0700 (PDT)
Received: by eekd41 with SMTP id d41so2040542eek.35
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 12:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jenV7dA2MBHbBTmRXB4kzcfDKlAB9Adp1zlWdlaKypk=;
	b=cZ71Lx0flqQ9J/77XRfB4BduQnYDFZvHlOlySBHjvrN/vlkZvH+lJgGYA01L5YazjM
	TbCCZXKWwtDhz2c7960El5T/tGMMKMZWzOeGARQFu+hjr2LVMDqYQGriNzafBl3B4Hyy
	/6y2edPFxWVQnYdwFVDPTFSpkrL3BHggl/dmMyB2fmME0fgGpPIl9PhgAs0rQ4JI0f23
	jFsMpaZjde7WzcDt3wnL5b1rNZAxuzRrHBSLB/P+5axN3jPyJ8cA2hJlbqlm4IU0K7Gm
	dqzsi6Fqg3jmMtwg2/sF2tkZ432StMd30wGLiboZ0xGfKwmLHFnmfiSqIKwf1ZhpKooW
	U+IQ==
Received: by 10.14.218.134 with SMTP id k6mr10125085eep.14.1345490851966; Mon,
	20 Aug 2012 12:27:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Mon, 20 Aug 2012 12:27:01 -0700 (PDT)
In-Reply-To: <CAEsOVNfb=KeN_WGWfuyPT6MTiY9S9nEkz6pn5G6xp+-Jroeh5g@mail.gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
	<1341550315-9795-2-git-send-email-raj.khem@gmail.com>
	<88701C38B5D07249817D428430999C910EAC7607@sestoex05.enea.se>
	<CAEsOVNe=+W0XLdYr1cZ_YFzkbASFCEio+yQ40Ojip_nq5FC=wQ@mail.gmail.com>
	<88701C38B5D07249817D428430999C910EAC7B39@sestoex05.enea.se>
	<CAEsOVNcGt6bP0woxhEjJnfpTVJj6W9A7oF_3VdxT_4N21zNddg@mail.gmail.com>
	<502A0308.6080203@enea.com>
	<CAMKF1sq=wRkTBAcUkLQhbv0QX6rCAA3cb8S39hYSAM4knfqcbw@mail.gmail.com>
	<5031E600.8030208@enea.com>
	<CAMKF1spkpnDye4NxNpTSKsC6CVebTfm1_1roW5viO=xMZz50ug@mail.gmail.com>
	<CAEsOVNfb=KeN_WGWfuyPT6MTiY9S9nEkz6pn5G6xp+-Jroeh5g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Aug 2012 12:27:01 -0700
Message-ID: <CAMKF1srF6AYbJzCGN989kweBmcz6Y-BGvyCiAhHGTPDoOYESYQ@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
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
X-List-Received-Date: Mon, 20 Aug 2012 19:27:33 -0000
Content-Type: text/plain; charset=UTF-8

> I just checked and we do have a few obscure bits in our kernel tree's
> header files. Nothing that 99.9% would use but it seems reasonable to
> include these...

Do you want applications for sdk host to be built using these obscure bits ?
if yes I would like to know why?

since then you are creating a scenariou where nativesdk is dependent on target
kernel and we need to fix it so that nativesdk can be common again.

if patches you are carrying are good for nativesdk headers can they be made
available for other kernels like linux-yocto e.g. ?

right now if we do this we are pretty much saying fsl machine layer can really
not mix with other BSPs. Many people use yocto commonly on more than one kind
of CPU and this does not scale.

