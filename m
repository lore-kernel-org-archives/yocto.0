Return-Path: <twoerner@gmail.com>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F7BFE006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:51:54 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id s1so2692279qcw.15
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tW0tvvC/pfauvKR/f/5rv8Tz4I3/AwvJ67MeHjR3WPU=;
	b=H/23Ls7YNWkzAt3nhfOMYFG1gxq/TPBWPumDt8BgM6UNTBNgEN8ytP26tn6tNMaDmw
	LXGlrs73IdCiw6PJYPRhbuTgCb43KSA97Ng/yfTB3aH1q4rPq+sMQYNbZzOXgh2dQtYT
	77P1rRJxhyIETJ5odq6kBY6chO38tOLGFsI6aO8O0hTvrLDQgO8zi7v2i7TsaM5wgMcy
	eup0ceXQQdqx64yJL8cybaPHxNtcOUD86XaUL2YqtthoF+9MJXhulSVfRxiSfFo2nRD2
	6wvAwzPEc2yvvCmb6tV38CfJ2LoffvUlHSQpRMoXAXFXi3t8ZZSMsf65oRp+R43uVY2i
	4Utw==
MIME-Version: 1.0
X-Received: by 10.49.85.199 with SMTP id j7mr25616062qez.45.1371070314094;
	Wed, 12 Jun 2013 13:51:54 -0700 (PDT)
Received: by 10.224.7.199 with HTTP; Wed, 12 Jun 2013 13:51:54 -0700 (PDT)
In-Reply-To: <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD>
	<bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>
	<1875741.cStO1T6C1g@helios>
	<58DC6CADE1A5492E9E712C310E6C9019@PAULD>
Date: Wed, 12 Jun 2013 16:51:54 -0400
Message-ID: <CAHUNapSXKi8KjZ4fhN8b6S8jeuOHreB54P_a8YN3QXj-GFBONg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Need clarification on some terms
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
X-List-Received-Date: Wed, 12 Jun 2013 20:51:55 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 12, 2013 at 3:51 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> Shouldn't gcc-cross be described as a "cross"
> package rather than a "native", and shouldn't gcc-crosssdk be described as a
> "native" binary that runs on the target? Or am I still fundamentally
> misinterpreting these things?

Your understanding is quite good, actually. But I think you're mixing
up your contexts :-)


If you were at GCC or LLVM conference talking to a bunch of compiler
geeks about compilers, they would use the term "native" to refer to a
compiler which produces executables for the same machine on which the
compile was taking place. As opposed to a cross-compiler which
produces executables meant to run on some other architecture.

If you were on the Yocto/OE mailing lists talking to people about
"native" packages or output, you would be differentiating between
packages which are meant to run on the build machine rather than on
the (embedded) target.



So in the Yocto world, any package meant to run on the build machine
is a "native" package. Even if that package is a cross-compiling
compiler (i.e. a non-native compiler).

:-D

