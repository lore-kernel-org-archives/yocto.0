Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC96E014BF
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 07:14:39 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gf11so3783202vcb.25
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 07:14:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=/sYXD9hEWoRiGE1ZEBXZ8E0aKgOJ8STlIFmfkhVSPUo=;
	b=LJGMV/ndL2SrDAbfnLPf4yOLgY/W+Ub4A//j3ddZRSoj4woFaPmMmANbuFqeij0rrr
	kGQI2qTW/W1fm0qGdYB7pHg83xpQwiZuGYqbT01MIFxa3BcfJv6jo8PZsw3o/3XdU+jz
	7Jf22qrHpmxJmZ/gpedNoxdHV4IEvFxNOoCB/Z2DXPpmbEvZzHncLZwG0XTfJO1BiEyo
	RW5qvcl8A/7gYpGIyAEYT2TDwxBuJr+mJ70y9bNo0c5DsdXoxHrtd7wueqjXBg88d2jh
	o/CZTYwnrtlEaQd6am67icHIwjoMPrQr+Ht9E/QlYvZr0V7aON/3GPkinGt3e5WFHlJ/
	m7dA==
X-Received: by 10.52.21.232 with SMTP id y8mr831708vde.6.1371651279273; Wed,
	19 Jun 2013 07:14:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 19 Jun 2013 07:14:19 -0700 (PDT)
In-Reply-To: <51C1BA25.6080200@mlbassoc.com>
References: <51C1BA25.6080200@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 19 Jun 2013 15:14:19 +0100
Message-ID: <CAJTo0LZ5y1wXXh7wN04k+z=KUz79wjS=ESBBtVoYbJzNd7a0mg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQkLa3ed5WkJZ9Tu1s+2QNKOcylg2dMjxordplsekrvH7p0WSwiOJSX7M4hGpYAfNOqUE5Vk
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cross building question
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
X-List-Received-Date: Wed, 19 Jun 2013 14:14:40 -0000
Content-Type: text/plain; charset=UTF-8

On 19 June 2013 15:03, Gary Thomas <gary@mlbassoc.com> wrote:
> What's the best way to handle this and how?  I recall in the
> dark old days that there were many such things that relied on
> running QEMU to actually execute target code.  Is this still
> possible (and being done)?  If so, is that a solution and how
> might I force it to happen?

You can use qemu, for example the fontconfig cache generation is done
at image construction time using qemu running the target binaries.
The alternative solution is to use the host compiler ($BUILD_CC etc)
and build the tool natively - either by patching the build system or
building it manually yourself before invoking make.

Of course, if this binary is just used to print some stuff for the
user, you could just patch it out. :)

Ross

