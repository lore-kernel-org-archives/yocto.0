Return-Path: <nathan@nathanrossi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C87E008CC; Thu,  5 Mar 2015 05:48:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA7A5E00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 05:48:02 -0800 (PST)
Received: by labge10 with SMTP id ge10so51432912lab.12
	for <yocto@yoctoproject.org>; Thu, 05 Mar 2015 05:48:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=U0ABsD/2hoXam/X4czLU0bcIexBh+bf2i46Nn+wRpcU=;
	b=Z7P+7UgUohAyqHnWchgqqrwFzkQ6aqa145ayLj9zPjv5+hTlWs9NzLDEkpP/3/TuPu
	2SWY+uwrnT7oke6+RR/8S9tl1mFkqouL2gelUFI3KNBHNIN+MaFhS23Pg+zWoDxHjd0w
	S3H3cYsruu1z4Inz5wN/hVcMRQBR+dgyHJ+V7QjOqAPdN6lXNtkNcdxDYIu99VOCdm+n
	E/1YPjqeMTIyMi8XmmPI7YnhNq00HfLJrMOeCIrKQTC79nShaBKzt+GIrIBFTHlbU9WZ
	kl8zhRBgOLZNKVRyDuBnGqrrrwxr++bzdu4ehOTjR3TdZfOiekTYf9X0NHFvueL/kOTJ
	MUMQ==
X-Gm-Message-State: ALoCoQlgfNrEBkFD9Fx9M9UgIZQIIyUzw+QQvrDy9Ps5Eio4v15PQB2yCv7Ho2npBelhH46WBQwM
MIME-Version: 1.0
X-Received: by 10.152.178.197 with SMTP id da5mr8196071lac.56.1425563280708;
	Thu, 05 Mar 2015 05:48:00 -0800 (PST)
Received: by 10.25.126.212 with HTTP; Thu, 5 Mar 2015 05:48:00 -0800 (PST)
In-Reply-To: <alpine.LFD.2.11.1503050659220.9386@Device-040570>
References: <alpine.LFD.2.11.1503050659220.9386@Device-040570>
Date: Thu, 5 Mar 2015 23:48:00 +1000
Message-ID: <CA+aJhH2D52jskGJ+Ah7+VpDV5xe3RRx766Z2WJdANCXwts_Wrg@mail.gmail.com>
From: Nathan Rossi <nathan@nathanrossi.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: in kernel manual, should pick another example for KMACHINE
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
X-List-Received-Date: Thu, 05 Mar 2015 13:48:04 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 5, 2015 at 10:03 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   in section 3.2 of the kernel dev manual, there is a discussion of
> KMACHINE and how it is *typically* set to the same value as MACHINE,
> but there are cases where that might not be true; however, the example
> used to demonstrate this -- emenlow and emenlow-noemgd -- doesn't seem
> appropriate as there is no "emenlow" machine definition file anymore
> in meta-intel. AFAICT, all of those non-noemgd machine definitions are
> gone.
>
>   in all the layers i have checked out, the only layer where i see
> KMACHINE covering a number of MACHINE values is meta-xilinx
> (zynq-based machines). it sounds picky but, when demonstrating some
> concept, i think it's important that examples used actually exist in
> the code base in case people want to check.

It comes around a bit due to the nature of different types of
hardware. You will find that amongst most of the meta-* bsp layers
there exists two types of MACHINE. You have the layers like
meta-xilinx, meta-ti, etc which have machines for each board. And then
there are the layers like meta-intel which have machines for each
platform or SoC. There are a number of reasons for each way.

At least for Zynq, the kernel can (if you ignore that it has FPGA
logic) be configured and built the same way for all the boards with
device trees handling the differences. And as such the configuration
is setup for the SoC instead of the board. The reason that you
actually see KMACHINE differences in meta-xilinx is that the layer
uses the linux-yocto build flow as well as providing an in layer
config cache for its targeted KMACHINE's. Which I believe is rarely
done in bsp layers that inherit linux-yocto for their kernels (or
bbappend to linux-yocto).

You could re-word the documentation to cover this case with something like:
"This variable is typically set to the same value as the MACHINE
variable however in some cases may instead refer to the underlying
platform of the MACHINE."

Regards,
Nathan

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

