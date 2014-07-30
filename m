Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79A3EE00559; Wed, 30 Jul 2014 15:07:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0484E00796
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 15:07:06 -0700 (PDT)
Received: by mail-ie0-f178.google.com with SMTP id rd18so2498041iec.9
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 15:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Rdn2vgKdEQLjqyOfBUe5S7SwbPMFUa2Vu25uCcbL5tk=;
	b=mpiFLD3xGMTHMH0+2juipFjAyT8Og3u+5T/MKO0zxgoN+SC8VlUnJW1EpG3jI0cYgn
	MTtUNjhKzLFJgDn14u2Arr2CbPlLYutV5f+h1HtDgwgE/389MQ3WIAW9LDWxDee6fae4
	KhiUe1zbx6MNATiCn7vGIyVSM9x0Sd2R352MXM4XnAQtoPv3zP0ZnWIYt21n3r1aGbAt
	cO2zKP7EiIFGCsNv75yiUsN7gyTLMTaNe2neY75wdk0SG2VyT5qZ8HVPDN5+Nd78WYFh
	ZfV3xeC8RnycSV9rrqdQAuCPaqwZpXMoFaARHevB+jRAyRebl4k4Wh6rfK2Sl4sBERah
	yT6g==
X-Received: by 10.42.90.74 with SMTP id j10mr9341488icm.29.1406758026618; Wed,
	30 Jul 2014 15:07:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Wed, 30 Jul 2014 15:06:36 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407301650150.31103@localhost>
References: <alpine.LFD.2.11.1407301650150.31103@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Jul 2014 15:06:36 -0700
Message-ID: <CAMKF1srucS+EiD5cuRoAah8opR9qHh0wXmMhKz6+B6hFcp6v5w@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH v2] dev-manual: Emphasize that YP supports MIPS64.
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
X-List-Received-Date: Wed, 30 Jul 2014 22:07:10 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 30, 2014 at 1:51 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
> ---
>
> diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
> index 6ab93f7..37bc5a2 100644
> --- a/documentation/dev-manual/dev-manual-start.xml
> +++ b/documentation/dev-manual/dev-manual-start.xml
> @@ -36,7 +36,7 @@
>          You can use the OpenEmbedded build system, which uses
>          <link linkend='bitbake-term'>BitBake</link>, to develop complete Linux
>          images and associated user-space applications for architectures based
> -        on ARM, MIPS, PowerPC, x86 and x86-64.
> +        on ARM, MIPS, MIPS64, PowerPC, x86 and x86-64.

this is fine however it occurred to me that speciying PPC and PPC64
would be good too. or powerpc64 and powerpc

>          <note>
>              By default, using the Yocto Project creates a Poky distribution.
>              However, you can create your own distribution by providing key
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
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

