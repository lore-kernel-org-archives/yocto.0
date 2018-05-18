Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D40FEE009E2; Thu, 17 May 2018 23:25:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C399E009B9
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 23:25:54 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id d4-v6so4610735ual.10
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 23:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vcuX7yt3RWl77CpDD3mb1q6TdXLQG3SYL1cVNjOB0U0=;
	b=jqDIrxh9O5r2I5lzqiMqMkKG8A1m/48Hq4sH39Q0fL4q9fISTkP2W+aVCsgSf96BDO
	QbSrGDoHJQ56fEU30ohfH/uo9hFi4Bqr/fYEwsexOnLCuH46sLpHU55i56krXzTegNFm
	HJlTS4AbwqPimgBYp7mU4ATYgfQTBpNbr7mLRg2bCS1FBG4TFuGHVAkhdn9aLR3tfIiU
	8oowHyO29eCsHgXxZ5lmPknMYkGQDZMRe2AnBdgsmkhPBdYjd+R3U+wNTP0Nh2SblLkf
	YX3wR4AKpOxuEscA4ZmcVKl6DnC+a4SOgHgn8uPrGooBCBil+LDGJ1W+ZcyQWczIAryR
	eTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vcuX7yt3RWl77CpDD3mb1q6TdXLQG3SYL1cVNjOB0U0=;
	b=snwxnR569flfQlu+6lDZrQGkt8kHE8fFZGXOTn28gPPpdF57nhdvmsdiZCIvJ+fdbc
	1DysYN8lkmlk+JjlybmT92gpLB1v2y1TgBGC7b6EsTGRj/Kk8sng/vczxgRMYHhFj+fK
	SBAj5z3TVI2olKyeqqyLxWUfjn9MPTcFvzJUJDXV+owgKZbC2U88TapRK4jLFj8fWQ+I
	UARTtGEk1elNiZCRm1taBBkIg6YEVeRoG+G+6V7jqPFizlgqGEf+wtSOpndQQv1RakiX
	SCyJOo8/q6tW4dTpJ9WGvghG1PTHBrZQpL2ZVm7gWtDSPFMcmyhHAGXy0Nco3ffxBeiD
	qXCw==
X-Gm-Message-State: ALKqPweYI/RXkcL/e3mR4p+mGeK/ZrpnwvGN56nM+3TTSjgh42D823CD
	MuC0d1GRwJb2lrawTG+1ts1i+JKTblOZPpILBjs=
X-Google-Smtp-Source: AB8JxZrKjfDJzSVeoj/RREo1qD13z4Tg/XeFUCMU+nVmhFAlni+4OZvhOwTqwFNZtWRWM8U2mgNKdoeZ5++BO8qt96w=
X-Received: by 2002:a9f:3561:: with SMTP id
	o88-v6mr6486587uao.96.1526624754138; 
	Thu, 17 May 2018 23:25:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9f:3643:0:0:0:0:0 with HTTP; Thu, 17 May 2018 23:25:33
	-0700 (PDT)
In-Reply-To: <000901d3ee5e$aab1ec80$0015c580$@in>
References: <1621704137.2131896.1526488025606.ref@mail.yahoo.com>
	<1621704137.2131896.1526488025606@mail.yahoo.com>
	<000c01d3ed93$cc662ce0$653286a0$@in>
	<1610363301.2651115.1526610116510@mail.yahoo.com>
	<000901d3ee5e$aab1ec80$0015c580$@in>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 18 May 2018 08:25:33 +0200
Message-ID: <CAC+thW0QMu8UHtz2J_MpjabG_YV1K6++aqgOgZ5y6X4PcZjYnw@mail.gmail.com>
To: chandrasekhar <chandrasekhar@evolute.in>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Enabling the recipe from menuconfig
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
X-List-Received-Date: Fri, 18 May 2018 06:25:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 18, 2018 at 6:14 AM, chandrasekhar <chandrasekhar@evolute.in> wrote:
> you want to see in kernel menuconfig??
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Ugesh Reddy
> Sent: Friday, May 18, 2018 7:52 AM
> To: 'Yocto-mailing-list'; chandrasekhar
> Subject: Re: [yocto] Enabling the recipe from menuconfig
>
>
>
> Hi,
>
> Thanks for the response,
>
>
>
>  This will add the recipe as a part of image but I want to build and add the
> recipe when it has been selected from the menuconfig.
>
> How to make visible the recipe in menuconfig?

Unlike other distribution build systems, Yocto/OE don't provide any
menuconfig based configuration interface for selecting which package
to include in images you build. There is indeed support for accessing
menuconfig interfaces provided by specific recipes like the linux
kernel. If you need a high level recipe selection tool, your best bet
is probably to look at Toaster.

>
> On Thursday, 17 May, 2018, 9:32:15 AM IST, chandrasekhar
> <chandrasekhar@evolute.in> wrote:
>
>
>
>
>
> Hi
>
> You can use
>
> IMAGE_INSTALL += "Package Name/Recipes name"
>
>
>
> Regards,
>
> Chandrasekhar
>
>
>
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Ugesh Reddy
> Sent: Wednesday, May 16, 2018 9:57 PM
> To: Yocto-mailing-list
> Subject: [yocto] Enabling the recipe from menuconfig
>
>
>
> Hello Team,
>
>
>
>  I have a list of recipes in my custom layer. The recipes in this layer
> shall be enabled/selected through the menuconfig, once it is enabled then it
> shall be the part of image. is it possible to achieve it ? do we have any
> references?
>
>
>
> Regards,
>
> Ugesh
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

