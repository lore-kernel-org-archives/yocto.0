Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0855BE00DF5; Thu, 21 Apr 2016 04:15:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEEFDE00931
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 04:15:46 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id ys16so25120385lbb.3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 04:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=db6VwpDh/xmPPp2X1qV46TLyk5Tn5/XpWDK2/u/RvUQ=;
	b=uP8y9hTT44lO2UV5kpx31VQJ5gFPGBuVI68RltoAlFSJhQ7U9eCpRfNjzSGQ+81JxC
	PpHO5y/Vomn38TONXHzvWSL9SvsO36wwZfjVhEB/dWdBL8Eq9qcE2kDvIQbx1UNlmj3U
	CJ+KjWlLALy0xxLYlr5SwKB0NqTx09OJ+j69L/8ib26AcrU/0+Oe0W5ahoUKpg3Lb3G6
	CbqL+p/AMfAS9cRZf/FJCngJCZxBNTxawhHiGC7JzSztRu3iBgxlROqq65Pg7JHOI2Wh
	brp6xGtFnnT5V7ug04Zv7NAEhCThxicIxVgcHJ3oWhHKx9FaHqL53ykilPY8yvCegXDS
	+9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=db6VwpDh/xmPPp2X1qV46TLyk5Tn5/XpWDK2/u/RvUQ=;
	b=dGoXk5H//NRCYzxZO3MKtTVa7DVuAWX9NAUZR5iinHhmcfvxGZQkuIattG6sl+HXJZ
	hrRQZMmTUUudlpovpBcyb8XqLPaaU1bSR+BC5ksJnrFsIZiJ1AS3ogGX1CcwWpvki8rx
	uLVFyFX9/nIKp4FfBvuEdVLKO2DB9IXEzIlZzaCNsIooepHr55E+WVARvH6HrwD4MZ3f
	fzxuO6vrHpbZ4Nx/DlYDPlDrbuIVFFMJ+U+YpFzpx4h3duB5IfdU3LTCmCxP0uI0ZI3L
	CVpan5Ki5LsgjM4PsdGhD38fRHvxstwTXK+p6/U7i8ST7PhLOvP9AN8t00/YznSAkT//
	xCvA==
X-Gm-Message-State: AOPr4FVYJ7UhJeXNKwfj5miAzxvgdESmBHX7n4aI7+V/Hq4j8NpdTceUQb3ZtQUP2gL1njni8NhYVIbUwxzVPA==
MIME-Version: 1.0
X-Received: by 10.112.65.102 with SMTP id w6mr6093393lbs.100.1461237344696;
	Thu, 21 Apr 2016 04:15:44 -0700 (PDT)
Received: by 10.112.199.106 with HTTP; Thu, 21 Apr 2016 04:15:44 -0700 (PDT)
In-Reply-To: <PN1PR01MB0333A053858B523837CB313CEF6E0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB0333A053858B523837CB313CEF6E0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Date: Thu, 21 Apr 2016 16:45:44 +0530
Message-ID: <CAOorjZRPCzPAhzzYd+uLS9e5XW8qu-n91yYNjLywK8oFqgnsmg@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: Harinath maddelal <Harinath.maddela@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Failure Errors
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
X-List-Received-Date: Thu, 21 Apr 2016 11:15:48 -0000
Content-Type: text/plain; charset=UTF-8

Remove -Werror from CFLAGS or EXTRA_OECONF if any.

On Thu, Apr 21, 2016 at 11:38 AM, Harinath maddelal
<Harinath.maddela@inedasystems.com> wrote:
>
> Hi
>
>
> Im new to Yocto.
>
> After downloading poky and i added our BSP package. So while trying to
> compile i get the following errors
>
>
> ===
>
>   LD      init/mounts.o
>   LD      init/built-in.o
>   CC      mm/fadvise.o
>   CC      arch/mips/incdhad1/diap/pllConfig.o
>   CC      arch/mips/incdhad1/diap/dmcConfig.o
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/incdhad1/diap/pllConfig.c:136:2:
> error: 'writel' is static but used in inline function 'setPixelClock' which
> is not static [-Werror]
>   writel(0x80030003, (void __iomem*)0xBE903064);
>   ^
> /home/harinathm/poky/build/tmp/work-shared/dhruva/kernel-source/arch/mips/incdhad1/diap/pllConfig.c:121:2:
> error: 'writel' is static but used in inline function 'setPixelClock' which
> is not static [-Werror]
>   writel(0x800A0003, (void __iomem*)0xBE903064);
>   ^
> ===========================
>
>
> Looks like warnings are treated as errors. How can i compress warnings being
> treated as errors.
>
>
> Can you please help me in this.
>
>
> Attaching log.do_compile file for further reference.
>
>
> Expecting your reply. Thanks in Advance
>
>
> Thanks and Regards,
> Harinath
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

