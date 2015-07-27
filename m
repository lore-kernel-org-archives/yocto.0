Return-Path: <vm.rod25@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D077BE00A3B; Mon, 27 Jul 2015 08:53:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vm.rod25[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76DE7E009B8
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 08:53:55 -0700 (PDT)
Received: by iggf3 with SMTP id f3so82558483igg.1
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 08:53:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/ESd3xIhYEfIoBR15aKfrA+q8ER2hcSFB4Ve2XwcmoI=;
	b=aRVfY13nxZmKgGFIBgp6LSesgpiwlJ23SBxoV034SugieGvGKGzFf8eKVMPn2A+oNm
	oXzjp+v3nXihnr0JZ3s/2Uytl8pF2mk5/71+WpqtxU+O4FIHF2PhuFexDq87gWIPdP1n
	Qu4w+Zer+VkqFxciQCLdzwdD8/wMXJz/rxs6zL3PEoa98e2UVsup4zt/WCwBZU18PtAp
	eahHZjqLuYP3DXHcfN/cQiclRYoSlJi9ov5ehMXNt7aCH4ubVzHcQIJcAhQ1agxkQ2r8
	aofftUtIgrbLavu/QIUNea/zanH9TS9wWFij8Urf9qLuAorFZK9W7ylqkFY+0HwIoEX9
	HXig==
MIME-Version: 1.0
X-Received: by 10.107.166.72 with SMTP id p69mr47969484ioe.65.1438012434532;
	Mon, 27 Jul 2015 08:53:54 -0700 (PDT)
Received: by 10.50.141.228 with HTTP; Mon, 27 Jul 2015 08:53:54 -0700 (PDT)
In-Reply-To: <714771165.2900148.1438000489720.JavaMail.yahoo@mail.yahoo.com>
References: <714771165.2900148.1438000489720.JavaMail.yahoo@mail.yahoo.com>
Date: Mon, 27 Jul 2015 10:53:54 -0500
Message-ID: <CAK5mtewWvCSGNs-Hx2qpVS-75Pkn+_6b9y31a0Vz8M=0F+3FYA@mail.gmail.com>
From: Victor Rodriguez <vm.rod25@gmail.com>
To: Edward Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fido LICENSE error opencv
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
X-List-Received-Date: Mon, 27 Jul 2015 15:53:57 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 27, 2015 at 7:34 AM, Edward Vidal <develone@sbcglobal.net> wrote:
> Hello All,
> I was able to fix the license error in fido by adding commercial_x264 to
> LICENSE_FLAGS_WHITELIST variable.
>
> LICENSE_FLAGS_WHITELIST = "commercial_libmad commercial_mpeg2dec
> commercial_libav commercial_ffmpeg commercial_x264"
>
> Opencv was installed on the Raspberry core-image-sato with the following
> changes
>
> git diff meta/recipes-sato/images/core-image-sato.bb
> diff --git a/meta/recipes-sato/images/core-image-sato.bb
> b/meta/recipes-sato/ima
> index e3246d2..f4b2286 100644
> --- a/meta/recipes-sato/images/core-image-sato.bb
> +++ b/meta/recipes-sato/images/core-image-sato.bb
> @@ -8,4 +8,9 @@ LICENSE = "MIT"
>
>  inherit core-image
>
> -IMAGE_INSTALL += "packagegroup-core-x11-sato-games"
> +IMAGE_INSTALL += "packagegroup-core-x11-sato-games kernel-dev xterm git \
> + jasper gsl gsl-dev python-netserver python-pygtk python-pygtk-dev \
> + python-numpy liba52 liba52-dev libmad libmad-dev libmad-staticdev \
> + chkconfig v4l-utils python-imaging parted python-distribute \
> + python-pyrex python-pexpect gperf tree libav libav-dev \
> + x264 x264-dev libav libav-dev opencv opencv-samples cmake"
>
> What is the preferred method of creating an image with additional software
> installed?
>
> Thanks for all the help.
>
> Edward Vidal Jr.
> e-mail develone@sbcglobal.net
> 915-595-1613
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Hi

I had the same problem with opencv in yocto . There is a trend about
this in mailign list:

https://www.mail-archive.com/yocto@yoctoproject.org/msg24746.html

I am pushing to do a change in opencv receipt

Hope it helps

