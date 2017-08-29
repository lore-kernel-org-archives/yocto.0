Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54584E00C14; Tue, 29 Aug 2017 09:31:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.182 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD2CDE00B8B
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 09:31:37 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id g33so18799903ioj.3
	for <yocto@yoctoproject.org>; Tue, 29 Aug 2017 09:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=tZnlGCp+2QHImCBE5aU/C4atXeEjiJva8I3mRGu5uR0=;
	b=g85LBqRTjDWZ/N0+ZjcwFVvzD1T+92fdliq5OdqOLMdj/PqWgDP4JNjWaUtn+12T8t
	63bJTe6YxUBa2XFh1MyyJKqd0kFEx1NhXLsdhz0cks5k1dxaKrKdrzh4tV5vZ1lM/X8I
	G4eLK/sqZejdTJ/aDLTDc8GAEBmxKjip/PEdMvmJFOXfpzPNwdnG01oJZkANdAhzT1LD
	wMnLHkAdvaB3CUKMs4+1UeNRlp1nJsfhRBI5kM9V5cDUsJ8tqBThrSouu/Up/i++v93e
	cZ8x1uGlJEuD5JDvIA5Fp3V3KvED2HZjQONSgP9sSy+6IYdn9c4TPM3A72gzrG+H8Iho
	+yKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=tZnlGCp+2QHImCBE5aU/C4atXeEjiJva8I3mRGu5uR0=;
	b=r20/MLvjKoDJXUiSYQC4DCDQbSWUHhZaSijADaCf5OWyuDsOM4KX8lnvq8Pxtiahuz
	NFV/M4LxSEx8vTOIqB2s/+ddPxpb6Ey2FjNMqG7UGv2UUO9Vx/jYoZMhVMkNLT5pCnty
	Idp/bO2sYEj30nuU9mYx5jUbv76Idhm0dw3piLXR6Ob9Iklvzkrx3Sd6Xq/pL526V/km
	O5zrS4EO2Nyl7HnkszkIbQ4noZiBey5R/9aXD8ZU6pLtZGKbMAlonz0+hxO8Pln3fY4J
	QybStXuS7yccv2oVHyDYmElX92XJUK5NQr5dzjVI6cNwjEs8SwiJnnHV7dy7w13gFM5h
	pMTw==
X-Gm-Message-State: AHYfb5icN4mhWMEKQHaPikwpAJ5W6+Qo1DQDkKSPfOElzGtkurYTdtkE
	eg2d15+l4VrKxbMmZOr6g9B86fUgeoZ0
X-Received: by 10.107.27.133 with SMTP id b127mr4613914iob.144.1504024296748; 
	Tue, 29 Aug 2017 09:31:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.33.83 with HTTP; Tue, 29 Aug 2017 09:31:16 -0700 (PDT)
In-Reply-To: <CAGAf8LxofVx8TQgrgHFsLhZF5_ROUb6GXR8mAWs7xxxv1iBOKA@mail.gmail.com>
References: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
	<96d5a0c7-4df6-1576-7e50-916c5af724c6@linux.intel.com>
	<CABpTzB3yC2vHf0mFdDq8vGksQSJk1BHkuwTxMb0orCTL4kh1YQ@mail.gmail.com>
	<CAGAf8LzHHWqNmq9g2ZGUMnMnrtD00QPdJ736ttTNAbM+-uyHHQ@mail.gmail.com>
	<CAHiDW_GPQ4WvxqbkSGAq4K=bGfqX45pJrzUGJ1NsgazLtyv40g@mail.gmail.com>
	<CAGAf8Ly4y7xtjgmMrUb35Jkm-fyumN=LKCcfFsXm7+03xUE0Hw@mail.gmail.com>
	<CAHiDW_GuP0+aQdr8utVDD=vUwXoq3OPjR9Psb=t-Js9v8j+F+w@mail.gmail.com>
	<CAGAf8Lyi4k4o6VSXg97Occ+VErBo5cbTcwa8V7rZhjDKGiOjoQ@mail.gmail.com>
	<CAHiDW_EUWtZ6LOEL=yNNbyvp=59i4QRqusknwQJ43PPXa+Diyg@mail.gmail.com>
	<CAGAf8LxofVx8TQgrgHFsLhZF5_ROUb6GXR8mAWs7xxxv1iBOKA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 29 Aug 2017 17:31:16 +0100
Message-ID: <CAJTo0LbqNEQ0Vz9Jy3KKGqGN5=fFgAHRNG+2yR7uUDG9thoLvA@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
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
X-List-Received-Date: Tue, 29 Aug 2017 16:31:38 -0000
Content-Type: multipart/alternative; boundary="001a113fd5e2f10aa90557e6f108"

--001a113fd5e2f10aa90557e6f108
Content-Type: text/plain; charset="UTF-8"

On 24 August 2017 at 15:34, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Do you agree to continue keeping DNF package (in
> .../meta/recipe_devtools/) for handling of .rpm type of packages in the
> future releases of YOCTO (it is, after all, much better and more mature
> tool that smartpm)?
>

For all future releases, forever?  Committing to that would be foolish.

We have no plans to move from DNF to something else.  Luckily Yocto is open
source so if in a few years time a stable and superior alternative to DNF
appears and we move to it, you can continue to maintain the DNF recipes
yourself.

Ross

--001a113fd5e2f10aa90557e6f108
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 24 August 2017 at 15:34, Zoran Stojsavljevic <span dir=
=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bl=
ank">zoran.stojsavljevic@gmail.com</a>&gt;</span> wrote:<div class=3D"gmail=
_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><span style=3D"font-size:12.8px">Do you agree to continue kee=
ping DNF package (in .../meta/recipe_devtools/) for handling of .rpm type o=
f packages in the future releases of YOCTO (it is, after all, much better a=
nd more mature tool that smartpm)?</span></div></div></blockquote><div><br>=
</div><div>For all future releases, forever?=C2=A0 Committing to that would=
 be foolish.</div><div><br></div><div>We have no plans to move from DNF to =
something else.=C2=A0 Luckily Yocto is open source so if in a few years tim=
e a stable and superior alternative to DNF appears and we move to it, you c=
an continue to maintain the DNF recipes yourself.</div><div><br></div><div>=
Ross</div></div></div></div>

--001a113fd5e2f10aa90557e6f108--
