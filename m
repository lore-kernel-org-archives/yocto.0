Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42DD8E009E4; Wed,  5 Aug 2015 11:09:02 -0700 (PDT)
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
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E329E009B3
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 11:08:57 -0700 (PDT)
Received: by ioea135 with SMTP id a135so57505265ioe.1
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 11:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=uB0ASyTjmsbgeKh3kn8NsTXSz8x7wK9kZP5c/gS1uYk=;
	b=Y79Dz4vLWfx1N+J80+EPwtQGV7nLnFrBPZyKzg/fBt8Rin/DyrAMhECWbsIPI5Uz1i
	F+MCTtpGIIpWxMKRzfBF6cjtN9ECs/p6QPV9R6ERmxTsiVb6ritGotGasZ1Rh3M0HnYo
	3C2rBpAgLSJj25rLM87lpvIaMBZRI/cI06rTseOcT8m2XdBJVm0ERhDnElJNcAVyxR1F
	MSjLBllVHBHSoT0R2Vwtz25tWGb2SY+c8b3GibzLM+KdduaswU6R8mvB7ndlZLZ4mWsn
	iyhgdOqkD/tW7cPHUj0BZRgF7deOmUxz78HvXEGLTKmSuAl2ehJf8InyyqcsHCe0AQlQ
	uzVg==
X-Received: by 10.107.14.203 with SMTP id 194mr12790826ioo.195.1438798136818; 
	Wed, 05 Aug 2015 11:08:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Wed, 5 Aug 2015 11:08:27 -0700 (PDT)
In-Reply-To: <55C24689.80103@gmail.com>
References: <55C24689.80103@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Aug 2015 11:08:27 -0700
Message-ID: <CAMKF1srMrRrcdMCK95vxQGThc_JP25wKtK3z70sb3fyUdfAR4g@mail.gmail.com>
To: "mar.krzeminski" <mar.krzeminski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Perl usage in recipe
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
X-List-Received-Date: Wed, 05 Aug 2015 18:09:02 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 5, 2015 at 10:23 AM, mar.krzeminski
<mar.krzeminski@gmail.com> wrote:
> Hello,
>
> In my recipe I want to call perl script that will create image.
> How should I do that to be absolutely sure that perl will be used from yocto
> not from my system?
> Maybe is there any example somewhere that I can check how this should be
> done?

inherit perlnative

>
> Regards,
> Marcin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

