Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0834E002A5
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 10:10:23 -0700 (PDT)
Received: by eabd1 with SMTP id d1so336316eab.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 10:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=HtujnsXLDhjxRXIqV5hu3Bzx+x/X2y9dwYIX3NIUUyw=;
	b=qGSMErZ9Sf9I957qhMsi0HVnzrtrkQFn4xBQp7f5daf3p248QkuxfJ/BCKq1vPdAnD
	fiMsO9XVxjak8/o5rPdXxukjP++bMPSRqtdvI9W2QAMTFRc0aCbTree5cChMTTtqeCrT
	cr9S/xglFe1hKCnDRM3RxOJ4mVv/C41dk2n7NeZC9W24Vgd47Q8qFG3YO/jpzrdQUdqo
	9yLe+Gapk5BIBtYtTVjKTryRRzwxOREH5OD1FhwlpHuxgBJqBQD8OcXqIAXKYw9mVfaL
	wjagK0ioDp15gC1gUjUpNa6la3HKp7FQcPcU+Rp12VaNUQaIeGKtDdgOD6Vk2CjthAco
	JiMQ==
Received: by 10.14.219.198 with SMTP id m46mr23033368eep.18.1344445822158;
	Wed, 08 Aug 2012 10:10:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Wed, 8 Aug 2012 10:09:52 -0700 (PDT)
In-Reply-To: <CAEUf8FuMUNFAuGfqSq_yFpx2355OiKOca9Oun=pG2OyK41MBUg@mail.gmail.com>
References: <CAEUf8FuMUNFAuGfqSq_yFpx2355OiKOca9Oun=pG2OyK41MBUg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Aug 2012 10:09:52 -0700
Message-ID: <CAMKF1spzT1OV29Uy-mwn9yJMScXy38Cd7gcGO+H+z+7iGW2SDA@mail.gmail.com>
To: Anders Roxell <anders.roxell@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Is there a way to order to kernel_do_configure_prepend?
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
X-List-Received-Date: Wed, 08 Aug 2012 17:10:24 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 8, 2012 at 8:39 AM, Anders Roxell <anders.roxell@gmail.com> wrote:
> Hello,
>
> I'm trying to build a p2041rdb i use the meta-fsl-ppc and poky release 1.2.
> I've created my own meta-layer where I add my own cfg kernel config so
> I added my own bbappend on the linux-qoriq-sdk.bb.
> In the linux-qoriq-sdk.bb file they have added a
> kernel_do_configure_prepend and I did my own
> kernel_do_configure_prepend in my linux-qoriq-sdk.bbappend file to add
> the kernel config that I need.
> I have set BBFILE_PRIORITY (BBFILE_PRIORITY_mylayer="5").
>
> my problem is that my kernel_do_configure_prepend is applied before
> the fsl-ppc's kernel_do_configure_prepend and that is a problem
> because fsl-ppc's kernel_do_configure_prepend over writes the .config
> file (so my .config get over written).
>
> does anyone have any idea how I can change the order of
> kernel_do_configure_prepend?
>

meta-fsl-ppc/master has changed in this regard. it actually prepends
to do_configure now
which means you can overwrite that in your bbappend using
do_kernel_configure_append
see
http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=63996e1abafbeae33692f88ba714acc8520d2f55

> with kind regards,
> Anders
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

