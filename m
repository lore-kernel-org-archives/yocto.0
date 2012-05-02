Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AF1EE0030B
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:18:56 -0700 (PDT)
Received: from mail-vb0-f52.google.com ([209.85.212.52])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 02 May 2012 08:18:55 -0700
Received: by vbzb23 with SMTP id b23so514822vbz.25
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 08:18:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=g4f+8vb6Ti5OzoCW9BAvIoXuIOEvRk9nfN6bD+avsrs=;
	b=Rns208+iZhPmKEg4KBThdwgaz8BWbkJ7G1Gu8Xi8fGfpp0DmoXW1dmJ3M555xl61CK
	l7n+JDlui4NWuVX6Rnfyx5rRf/tT3H5Draj7W90NJUJutZvBzZ2ffbIG8DLH8KbbOuJX
	zScF7L66+wOG8ptXYjeDRQ4Yg5kRGX6ZaPfZc/kQ6g9w5OpGuvpib4801neahRbhjt2+
	UVQyh0ys85l1XHrW/QgPzTf9CqNl+KW9scLOX8zaxLw/CBcVVR5r0uHLirSCm8/6thy5
	Kl/l3v1gYp5Vu2yLAtACVqzGOpeJgkwCeZ85gsn8guxeWezuSuTvx0LRQN/nVzr8t928
	aKmg==
MIME-Version: 1.0
Received: by 10.220.156.72 with SMTP id v8mr9856748vcw.45.1335971934650; Wed,
	02 May 2012 08:18:54 -0700 (PDT)
Received: by 10.52.31.74 with HTTP; Wed, 2 May 2012 08:18:54 -0700 (PDT)
In-Reply-To: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
References: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
Date: Wed, 2 May 2012 08:18:54 -0700
Message-ID: <CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Gm-Message-State: ALoCoQl3d5J0h4Uhir6Ls9+EFdWfX+H/jghr28nvhOeXyK5lvvO8UgGDMlXJ6/SrpaKzQ/rmLL7x
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:18:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Good catch. I'm still installing 12.04 and can't check at the moment,
but there is an easy way to tell:

file /bin/sh

If it points to bash you should be fine, if it points to dash then
you'll need to reconfigure. Please let me know the results and I'll
make sure it gets documented either way.

hope that helps!

On Wed, May 2, 2012 at 8:16 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote=
:
> Hi,
> =A0 =A0 =A0 Is it not necessary to run
>
> sudo dpkg-reconfigure dash
>
> with Poky 1.2 on Ubuntu 12.04 ?
>
> It is not mentioned in the latest yocto documentation:
>
> http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-q=
s.html
>
> However, the previous version documentation mentions it:
>
> http://www.yoctoproject.org/docs/1.1.1/yocto-project-qs/yocto-project-qs.=
html
>
> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Jeff Osier-Mixon=A0http://jefro.net/blog
Yocto Project Community Manager @Intel=A0http://yoctoproject.org

