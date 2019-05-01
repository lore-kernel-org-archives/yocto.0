Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AA3EE00D14; Wed,  1 May 2019 05:05:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EF4AE00CEA
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 05:05:48 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id r71so14608790iod.11
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 05:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qWp6e5Lwl56DliDetIgcvXLDg45J7gIQf68lJaIcavA=;
	b=Usoyc5IOPWp2hGvFqb/d7jzRN3z+xtUigKViHEMbABeShvzpDSIWqAiCueckGz/ccx
	7Y9eD3bJ1fcE9+XfSM62i0D/SKTy7PlQrTqtb0ssjR3bcoK0gTaEXylhadWkZLNa+V0S
	4Y4e0cYD6ugo/r7b3G46gdd21BouHpGr2sdaMcRU++IZmlkOAnpXakaMH/6JAZWl2Lyq
	dELhX8YK+1MS6jfa/mfHi1XVpWDGUDMYUfwHdMX2oLGoVlVRhALA/DL27+RFq0a1gJ5y
	LqswyowQwlzAHD+cl/n3p2NqCNXg6IN7EgB1pWfGcvp/ZXqK5WWsZmr7Mk/JkBjpFRsz
	Y7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qWp6e5Lwl56DliDetIgcvXLDg45J7gIQf68lJaIcavA=;
	b=hihaqxyAMC68+d4AVyrSN3miQdW9cbvt/oF9Kg81ZhpnxZia9UAkWQnXebqD7vtbpu
	UFa5QXyr7/BDh5g9mf2zAIN+JC4jl0BMuwyVs2JxV9sUO5YY1wIG2eAqwvSlGKJVbBfw
	6qbiwsW3PqnoPnIXV841oZsur3zbEz6InLKsusI0/JN3hlGOGTju8sZ6al/4FDJhWd45
	b355qu/Zr5yX2+jEsf9KweCzUJrs/aF+D9f4Yb8WJvl4V+w99RTvdBA3MF9PZu/XtJ29
	bUhmrwyW+KV7/geIVb5SWxZuIV7+geiOLmwH3Ij+DgbNn+cE51FrtnvHhENl8hXfpyJl
	p8kQ==
X-Gm-Message-State: APjAAAVpAPeopWBQcGGezgoKWxgVO61meplqaV/1y3ncPXRuCGTpapjv
	vUcVTFKkHW7vXd7ETjIzYNOI+nU+62UsP4PT6e4=
X-Google-Smtp-Source: APXvYqwqUkWdy0ffTUE9VReiLPlh4VpfZAXGnq72RTweDdhry9wKBcaLLAdztQhUt+HhT0spsQqfbTeLdUTKxI1fA6M=
X-Received: by 2002:a6b:c38d:: with SMTP id
	t135mr16041554iof.284.1556712347740; 
	Wed, 01 May 2019 05:05:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
	<3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
	<CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
In-Reply-To: <CAA=hcWSoyZnSMCud9ahg9ZqKi0Wcsy5Sc6GgG05AFHtEG8Wa4w@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Wed, 1 May 2019 14:05:35 +0200
Message-ID: <CALbNGRQ2aAazVL9bV6NqxE5pdUKMU4jUFGsDt_NvEx_qXPs1_g@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Could not find glib.h
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
X-List-Received-Date: Wed, 01 May 2019 12:05:49 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 1, 2019 at 12:35 PM JH <jupiter.hce@gmail.com> wrote:
>
> Thanks Richard, where to run pkg-config? If I run pkg-config in the
> host, it pointed to host Ubuntu package which is different to the
> cross compiler.
>
> On 5/1/19, Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> > On Wed, 2019-05-01 at 10:43 +1000, JH wrote:
> >> Hi,
> >>
> >> I added glib-2.0 to DEPENDS but it still could find the glib.h, what
> >> I
> >> could be missing here?
> >>
> >> fatal error: glib.h: No such file or directory
> >> >  #include <glib.h>
> >> >           ^~~~~~~~
> >> > compilation terminated.
> >
> > You probably need to use pkg-config to find out which CFLAGS to use for
> > glib-2.0...
> >
Maybe I missed something but there is not much information about what
you are trying to build. Starts with build system: autotools / cmake /
meson / qmake / waf?

Is there a place to look into the recipe? That might make support easier.

Andreas

