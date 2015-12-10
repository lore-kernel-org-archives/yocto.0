Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FAABE00C0B; Thu, 10 Dec 2015 15:43:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA0D0E0074C
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 15:43:36 -0800 (PST)
Received: by lfdl133 with SMTP id l133so67416980lfd.2
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 15:43:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=3YyY6LFZfVsuorXkm2A/CfJgnXiCGr5cXEkK96jyCzs=;
	b=R0K9WlYH9gA0pK9wOJ5jf8fY6nYkfXUB5a7fltd2liAIminEDV9NXhMIqzcvZRbbVI
	2GSSVpWKTEwH0QxfbCLqg27LYccoL5o9a/VrdzZ4rXrmdow/ofFIDkAMWr2HrF0H0LqW
	ubVaWBIhjh81pG2vDELT/Wd4K3ajBW4OHQlFylC1CjQRKcrWRNecis19Wf3dq3h6E3xs
	mWeHf4UIPwU1CNsuhstSEJpdIbbQoSGHlLYL6ARYrmpNSfxLZ4NEmk33FU6lsG5pNDaL
	m/NyDlNEdIZSIpXukfFAgYGSy08owEYDmljBoNjS+2KbyqveZow6TlePC9mhlXwedwH8
	4Fhg==
X-Received: by 10.25.143.134 with SMTP id r128mr6767009lfd.56.1449791015303;
	Thu, 10 Dec 2015 15:43:35 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.9.70 with HTTP; Thu, 10 Dec 2015 15:43:15 -0800 (PST)
In-Reply-To: <D3B58608AFC8B244BA0ACD53B2AE6125859B5268@vistrex3.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE6125859B5268@vistrex3.vi.vector.int>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 10 Dec 2015 15:43:15 -0800
X-Google-Sender-Auth: Su-Ri-34U6SGaqdAb6ZNYeAqN1c
Message-ID: <CA+YB3rZUgK5JLzKG_n6WO6M=6wSv7AKHAaKCro0dHZ1xEkTx8g@mail.gmail.com>
To: "Baumann, Michael" <Michael.Baumann@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use PREEMPT-RT Header in Yocto
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
X-List-Received-Date: Thu, 10 Dec 2015 23:43:41 -0000
Content-Type: text/plain; charset=UTF-8

Hi Michael - the Kernel Development Manual discusses using PREEMPT_RT here:
http://www.yoctoproject.org/docs/2.0/kernel-dev/kernel-dev.html#using-kernel-metadata-in-a-recipe

I hope that helps a bit

On Mon, Dec 7, 2015 at 6:57 AM, Baumann, Michael
<Michael.Baumann@vector.com> wrote:
> Hello everbody,
>
> I am trying to use the PREEMPT-RT patch, therefore I bitbake an image with the linux-yocto-rt 4.1.8 kernel.
> The linux-yocto-rt kernel is built and runs in qemux86.
> Now I try to build an application which uses the sched_setattr to set scheduling policy SCHED_DEADLINE from <sched.h>.
> My Bitbake fails to build this application because of wrong header files e.g.
>
> error: storage size of 'scheduling_attribut' isn't known
>     struct sched_attr scheduling_attribut;
> and
> warning: implicit declaration of function 'sched_setattr'
>
> in my created SDK (bitbake <image> -c populate_sdk) I have this /usr/include/sched.h file:  http://pastebin.com/gaXejv6j
> I would have expect to find this file http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.1/tree/include/linux/sched.h
>
> How do I use the correct header files from PREEMPT-RT patch in my yocto build environment?
>
> Regards,
> Michael
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

