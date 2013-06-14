Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AC6DE003E3
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 18:26:40 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id a13so81677iee.6
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 18:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xTh8+lFyAq0or/s4QKtgujnFaXO//46z7/vPL30BbgU=;
	b=HQxCUla0Cwyxylpg7qNDMr4ygLK9RcMXQajJS97H3H9uFNmw5q0zFADHU1tTeYmdOl
	0fus33V3pksGzUaD2kFyhsF/0J56G9Kz5i2uij0wVdZ90H1J7vN365vteZhT5xr3cxub
	1WqaVNDEaDbkjOymDYUNIc61WlxbQW9oxvxFSgRxsNaFap+YaIWqcuipxkly80dOEcHd
	urpSyF35TM3BTfSt5D+WuQTsBivbKiwWGcrvwzsMAQINUEqbiK6LlzEBKocdMJD5dnbG
	mGfLkZl5qPaDOW4Ge9qP99Axh19F4RpkUPlKBgjs2vyfij6ZEuEP2XLZiaQ7SRkg2/ps
	uNCw==
X-Received: by 10.50.17.69 with SMTP id m5mr20825igd.19.1371173200493; Thu, 13
	Jun 2013 18:26:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.4.168 with HTTP; Thu, 13 Jun 2013 18:26:10 -0700 (PDT)
In-Reply-To: <AD1643F765234DAB82EE48FFF72638C3@PAULD>
References: <AD1643F765234DAB82EE48FFF72638C3@PAULD>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Jun 2013 18:26:10 -0700
Message-ID: <CAMKF1sqs4O9s41bnF+Nt_mHw6dB-cmiwo_0-YGovc4vppo8rHw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where do image names come from?
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
X-List-Received-Date: Fri, 14 Jun 2013 01:26:41 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 13, 2013 at 4:04 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Where does the base name of the image files in build/tmp/deploy/images come
> from? More to the point, if I create my own image recipe in my own layer,
> what control do I have over the name of the resulting image files? I'd like
> to be able to create more than one variant, and not have to remember which
> is which based on the build times appended to the file names.

IMAGE_BASENAME variable is used to define name. by default its same as
PN of image recipe.

>
> A related question: section 5.2.1 of the dev-manual says I can create a
> custom image based on an existing image by copying that image recipe and
> then modifying it. Is there some reason I can't use a .bbappend for this,
> e.g., core-image-base.bbappend?

you can but then its a different image. You dont have to copy you can
also include the existing image recipe
in your recipe and add customizations.

>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

