Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 513ECE00E1E; Mon, 18 Nov 2019 16:19:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A13EAE00D88
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:18:50 -0800 (PST)
Received: by mail-qt1-f173.google.com with SMTP id o49so22511617qta.7
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 16:18:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=X6pCjLGIxXWjH0exPAl76F2NFzopAf7KH/1ChjeR5wE=;
	b=J/oZVGTsss3ZDVmnW6MyYQgJzvkn/BAAaqKb1fXcT4gnroQBsa5/QZ5XX574bb71Op
	rMYnm1DBCKzyt+xbUeuLuA2ivi3yN/Pk7DEI5HhjplIcCmuRLHyvAM9Po0QCjqyBtIjV
	BCFok0BoXVyv+HeFc3AFufXiuZcQPqA8T7yl1yj6pi1wzz75/shNpeEN828LDgTeS3ym
	1wnzJP1+ln9s9uvfRj53QScqe0qLhsJIs9nydvWQNMScgykO+goIWsRJobonXGcbQS6q
	DKxWLF80qBt0uq8ruOym8e/8zjL1OTIMdp3svanaR8RCvRiFa3VPHkOXtmyzAjzdFjze
	+W0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=X6pCjLGIxXWjH0exPAl76F2NFzopAf7KH/1ChjeR5wE=;
	b=HKGNHEwjYYlQNc6tZ0TbN40e/hNi8ytaFcPk0uvkn3AFIOeTFgI5EmgvbnP90EJ9sW
	cszrrI1mBwV04tLZkmFUXDHGArzt93esBwhN2TxdsRv8zDxC7YnPwvv4GOVnSM40v2Yd
	Uea9zdYlPSIMYaXLcXkkd/0djljH1dynnaqy0CU1hSMPPQZ/E0M/CluD7yOicPLxk4EB
	GO6MLg8tHx6VAO9+aXuiv5fl20pgC9bUUcxdn8px6z2ske9muAuxsLV9e4FgX1JAoH5e
	pUuyk+OA2e9T+sZxuCD0jJQJHs3l+mh+WMJOZWeEbfE9rDm1RNS/eG5FqzPSROKbdgnQ
	tBrg==
X-Gm-Message-State: APjAAAWUi6A7Z33R9fwdjT0Cj8C4rTDxa9CFoumyu9ToWV9VQXvwI+lP
	tsYjQVnopeqMTh4ApXjsHiNB5V+t48HPoiHVcIE=
X-Google-Smtp-Source: APXvYqwuwbqwzdUf3sjbsHjlAtFPazbgGAFXv0jrM7v70QIKJR0xFehTilorHHpN0yqMQ14LOUIGgzEcOWJTm41fkwc=
X-Received: by 2002:ac8:5557:: with SMTP id o23mr24476440qtr.378.1574122729599;
	Mon, 18 Nov 2019 16:18:49 -0800 (PST)
MIME-Version: 1.0
References: <dc5da77587ca49fbba4b37f2e6b28028@sakuraus.com>
	<CAMKF1srKGbsT_AJgymqBq4fdRcwNDObSNpQK5YvS-8Q1o8ryjw@mail.gmail.com>
	<36d57277739a4a898f4f1b7c8826e4fe@sakuraus.com>
In-Reply-To: <36d57277739a4a898f4f1b7c8826e4fe@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Nov 2019 16:18:22 -0800
Message-ID: <CAMKF1sq52U2C_5jqBbnbgZwkmM860vGsbHMy-LhXBbc8Ap4zAw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [qemu] can't find qemu-native recipe
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
X-List-Received-Date: Tue, 19 Nov 2019 00:19:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 18, 2019 at 4:10 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> Hi Khem,
>
> I found the BBCLASSEXTEND in the qemu.inc file, I also found a line in th=
e .bb file:
>
> SRC_URI_append_class-native =3D " \
>
>
> so I changed my SRC_URI to that and I stopped getting the 'can't find fil=
e to patch' error, but the file (syscall.c) is not modified.
>
>
> Here is my qemu_3.0.0.bbappend file, meta-sakura/recipes-devtools/qemu/qe=
mu_3.0.0.bbappend:
>
> FILESEXTRAPATHS_prepend :=3D "${FILE_DIRNAME}/${PN}:"
>
> SRC_URII_append_class-native =3D "file://syscall.c-add_missing_sockios_he=
ader_include.patch"
                   ^^
If you pasted exactly what you have then there is a typo above it
should be SRC_URI_append_class-native ...

> And here is the patch file .../qemu/syscall.c-add_missing_sockios_header_=
include.patch:
> --- a/linux-user/syscall.c    2019-11-18 09:42:39.000000000 -0800
> +++ b/linux-user/syscall.c    2019-11-18 09:23:23.000000000 -0800
> @@ -34,6 +34,7 @@
>  #include <sys/resource.h>
>  #include <sys/swap.h>
>  #include <linux/capability.h>
> +#include <linux/sockios.h>
>  #include <sched.h>
>  #include <sys/timex.h>
>  #include <sys/socket.h>
>
> I am not getting the:
>
> ...tmp/work/x86_64-linux/qemu-native/3.0.0-r0/qemu-3.0.0/linux-user/sysca=
ll.c
>
> modified.
>
>
> I'm obviously missing something. Any help would be greatly appreciated.
>
>
> Regards,
>
> Greg
>
>
> ________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Monday, November 18, 2019 3:30:27 PM
> To: Greg Wilson-Lindberg
> Cc: Yocto list discussion
> Subject: Re: [yocto] [qemu] can't find qemu-native recipe
>
> On Mon, Nov 18, 2019 at 3:27 PM Greg Wilson-Lindberg
> <GWilson@sakuraus.com> wrote:
> >
> > I'm building thud for the raspberry pi3 for boot2qt on Ubuntu 18.04.
> > I've got a patch that I need to apply to to fix an include file problem=
 and I can't find the qemu-native recipe. I can find a number of recipes th=
at depend in one way or another on 'qemu-native', but I can't find a recipe=
, class for it or anything that provides it. I can see it being built, and =
I get an error that indicates that the patch that I have needs to be applie=
d. I can find tmp/work/x86_64-linux/qemu-native/.
> >
> > In the cooker log I see:
> > task qemu_3.0.0
> > recipe qemu-native-3.0.0
> >
> > But I can't find a qemu-native.bb file,or bbclass.
> >
> > I'm rather confused at this point, can someone shed a bit of light on w=
hat I'm missing?
> >
>
> there must be BBCLASSEXTEND =3D "native" in qemu recipe which
> essentially automatically extends the recipe for native case
>
> see
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-B=
BCLASSEXTEND
>
> > Regards,
> > Greg Wilson-Lindberg
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

