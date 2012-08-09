Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57179E013B2
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:48:31 -0700 (PDT)
Received: by qafk30 with SMTP id k30so304777qaf.14
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 07:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=MxxKSzLdA0VH82VWHiFgw4gSdYK8wvwfGhtcoziuxRI=;
	b=v1WkjKUgyyKm3geU4M3MwS7A7bPslLe4ZTAeux1HrKijILE7Pdp+jH1y/I1LSJIgjr
	tMqEN4QXzqjHyRe2qIAmRYLGvZamDHv6cN+i9F79uvwuFFGyKAW37vSn2+sFofuEA/Pp
	18C0WA2OTm3lY0UAeJ1IvHwY3NWfxBp+mkmY8kxy22Gjl8xnY02YepvgrJb+n/2I/lHz
	CK8mZRk+p125OR3r8aNL4vacf2HYxu+WDi389keLzlmDaEJf2u8Qtph9yG/jy4B36YPb
	o24mm42jCEuVY00U5hKq/Hz0zB65GPXly5+20eBLuvPHKzlXPJByDYGJ/DXTRKMxKwem
	G8ug==
MIME-Version: 1.0
Received: by 10.229.105.100 with SMTP id s36mr11024343qco.88.1344523710637;
	Thu, 09 Aug 2012 07:48:30 -0700 (PDT)
Received: by 10.229.247.198 with HTTP; Thu, 9 Aug 2012 07:48:30 -0700 (PDT)
In-Reply-To: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
References: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
Date: Thu, 9 Aug 2012 10:48:30 -0400
Message-ID: <CADkTA4PeF+pjmC=72NtxXq5odMUfsyhUa2-s+Az0zgbXh81cMA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: Problem with BSP supporting different machines
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
X-List-Received-Date: Thu, 09 Aug 2012 14:48:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Aug 9, 2012 at 10:46 AM, Markus Hubig <mhubig@imko.de> wrote:
> Hi @all,
>
> I'm having some trouble building a BSP supporting two different machines.
> The machines in question are the Stamp9g20 and PortuxG20 from taskit. These
> machines are just slightly different course the PortuxG20 is basically just
> a small SBC built around the Stamp9G20.
>
> You can have a look at my BSP here: http://bitbucket.org/imko/meta-stamp9g20
> but take attention that you're selecting the denzil branch...
>
> If I set MACHINE = stamp9g20 in local.conf all went fine, but with
> MACHINE = portuxg20 I get a kernel for common-pc instead of
> arm-versatile-926ejs ...
>
> Comparing the output of "bitbake -e linux-yocto" for both MACHINE settings
> I notice that for stamp9g20 KMACHINE is "stamp9g20" but for portuxg20 it's
> "common-pc", which results in these "updateme" command:
>
> | updateme --branch standard/default/arm-versatile-926ejs -DKDESC=common-pc:standard
> |  --feature features/netfilter --feature features/taskstats arm common-pc
> |  poky/meta-stamp9g20/recipes-kernel/linux/files/hardware.cfg
> |  poky/meta-stamp9g20/recipes-kernel/linux/files/non-hardware.cfg
> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.cfg
> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-preempt-rt.scc
> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.scc
> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-standard.scc
>
> Which again (I think ...) leads to a kernel compile error ...
>
> Unfortunately I was not able to find out why the KMACHINE variable is not setup
> correctly with my BSP for PortuxG20 ...
>
> Please can someone have a look? ;-)

Is this the same BSP producing the kconf check warnings on denzil ? I
ran tests this
morning and denzil itself is clean, so there's definitely something
wrong in the layer.

If this is the same BSP, I can have a look and see about solving the
two problems at
once.

Bruce

>
> Cheers, Markus
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

