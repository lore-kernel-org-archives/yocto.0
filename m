Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6525E008F2; Mon,  2 Apr 2018 16:14:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B9DE008A2
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 16:14:11 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r131so30585701wmb.2
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 16:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xhR+niHxnfpv1+Kt/CNszfuusbcrrsh5QZJq//bAXzo=;
	b=YGsr3bW9JjuZ3FEYtEowx4/390E+JudcyeK0UWRK6bxzaxlLuHgG9JN+ayPvTIA4f5
	QudA5HbOarY9Yn0MKBF2OmtoY8Zy4fMXyLCdTiguhIgPEK0LeiXPcUljG+R3Jxk4Kasd
	O6/jKx0nDUiQiiwgz7BxpLq0cqdPRrNDA4Nw3hLZjdzIA15HvhHesUr1PMINgHJQJuXE
	hBaBHzrPrz49K1TgzK0V3V1kaHcWObn5No+BqhZf19KXDx862PnYHCx4mnQuwtG/mdhT
	7M8g/sQpPHC3CjsNwG0LfMn9RMZSnAToZN5UcfVWbuvnaqUXQurDy+sD9HO5Qs6xWpO3
	DjTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xhR+niHxnfpv1+Kt/CNszfuusbcrrsh5QZJq//bAXzo=;
	b=qSwvfitrxXd2napJkiNQU8pbkA4Y7b+0TfMe8gYOi9ovs4zXUAQ3KjA0vHNgX590WL
	h1shMqcevBBJ1wJPRjjTc7jHzyf8j3wiO/NdjbTF7x4JEvWt2MHK5z8OipbkL6gtuvJp
	IASbhtUkNq7LUBQjcWiTttPxHJmS72TJu3oB4cxm5gWPZzAZ+o2akjdqOXypbmMhQYjZ
	jKXNkEjEPznYbaZm1EIya0wYKbOqR+cLPR5VFYXkbpKe9mGT2nFkQMmtGMy/vdT8XAIT
	CkVTY/Zn7GyXBO0Qq+gxWIl2cF4cPKqgDYBQO69HHVvvP/ACjxr+GCXIv7ZIffBoe5Jr
	AFtg==
X-Gm-Message-State: ALQs6tBRzM04tSymo9e91Ft104uMt9xUdEzuacjmNQiyTv5YUm1EBs7B
	i9RHGWYZeBfPh9dDIJOylhxTpcEpJ3WJODWwsA4=
X-Google-Smtp-Source: AIpwx4+Khfsd7TgEoQj/jZTwn900p8VyWM43WHb11FOcJSXTVRb38FoEcnMKAfhmUC4jz1vgwOfvpt1hFk+4VJCBoZ8=
X-Received: by 10.28.124.14 with SMTP id x14mr2352424wmc.86.1522710851225;
	Mon, 02 Apr 2018 16:14:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.163.65 with HTTP; Mon, 2 Apr 2018 16:14:10 -0700 (PDT)
In-Reply-To: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
References: <CAGfzNig_csD+EtAShEV=zWpBhk7bfUdK3jWEq80T2pBYxcV7aQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 2 Apr 2018 16:14:10 -0700
Message-ID: <CAJ86T=VyAkzuVkfipRk+ofhr7b8fb1-9zMq2L2QdUswxEiapAQ@mail.gmail.com>
To: Chris Elledge <celledge@digitallumens.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: binutils 2.29.1 ARM Thumb kernel problem
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
X-List-Received-Date: Mon, 02 Apr 2018 23:14:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 2, 2018 at 1:15 PM, Chris Elledge
<celledge@digitallumens.com> wrote:
> I recently upgraded my Yocto based project to Yocto 2.4.2, and I encountered
> a problem when building my custom kernel for an AT91 SAMA5D3X platform. I've
> been using an ARM Thumb2 kernel for a while successfully until this release.
> It appears that the issue stems from the change to binutils version 2.29.1.
>
> Here's a good description of the problem:
> https://patchwork.kernel.org/patch/10072695/
>
> I tried out their test script, and it flagged the arm-poky-linux-gnueabi-
> toolchain built by Yocto 2.4.2 as being buggy. Has anyone else encountered
> this problem and figured out a way around it without disabling Thumb
> compilation of the kernel?

Thanks for bringing up this issue. Reading through the various bug
reports etc it not clear what the fix should be. Upstream binutils has
not reverted the change and the upstream kernel still appears to rely
on the pre-2.29.1 binutils behaviour.

The simplest solution for OE 2.4 would seem to be to revert the change
in binutils (rev e645cf4, which was added very close to the 2.29.1
release).

Longer term, it looks like the kernel will have to be updated to work
with the most recent versions of binutils. A possible approach for
that is hinted at in the kernel patch you provided a link for, ie
update the "badr" macro in arch/arm/include/asm/assembler.h to OR the
sym address with 1 instead of adding 1. e.g. something like changing:

  #ifdef CONFIG_THUMB2_KERNEL
  adr\c \rd, \sym + 1
  #else

to

  #ifdef CONFIG_THUMB2_KERNEL
  adr\c \rd, \sym
  orr\c \rd, \rd, #1
  #else

The fact that it doesn't seem to have been fixed that way in the
upstream kernel suggests that the kernel developers may be hoping to
find a better solution though (ie one which avoids adding an extra
instruction in the syscall fast path).

So, without some more guidance from either upstream project, the best
solution isn't clear. Perhaps you could try reverting the binutils
change to get you up and running again in the short term and then ask
on the ARM kernel mailing lists what the solution for Thumb2 with
binutils >= 2.29.1 is expected to be?

