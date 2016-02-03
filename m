Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D165E00C3C; Wed,  3 Feb 2016 09:14:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2456BE00C3C
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 09:14:00 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id f81so62647627iof.0
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 09:14:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=d2/ZFR7qQ/SrFYsQZkt3IvVoOl+Bdmk7P2I9G4nndeE=;
	b=rNrSv4PDafrgJ1eu+SKUerQXaLYWH21ZfZ2wpkfm0PAc5y/GqOpe1O4DInQgm8k5jw
	OzhISdEw9ENXTOlUbbdG9ZGSdSpi68k+pGvMIjv9+cyg1Qn+MYWuTJjlcm1TohG0ZFG5
	NKuZP+mLOYUvQPlNbLl8kuxVL15HBYqhnEE5/CktPfwPYT+cAFU56CwlTGmVN0kD3TIz
	75OydqgcavnJWI3EtSHJUWAtFJ8u1dWKmLeicEGhxi9wD2mSPsW+kLWQWHKralKoMHsa
	80ptKDgsBwyjJwTlYuFkjmW5DCl8sDUuQtMDEj01pyoKWc21bPJruI4HVbepTjdnUOQe
	UaVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=d2/ZFR7qQ/SrFYsQZkt3IvVoOl+Bdmk7P2I9G4nndeE=;
	b=ST9/YFOprLzf5qyqUE13Hgb/26Y/db8MjUqO0cqbEGTUchaSTkZgpr98epQ/GPeheh
	z15paS0cJLoSWyMmSq44nFg6WmgacP1uQvXEJnLEPY6YO6IZsOPuy276Idn3clcLFO36
	svMECZ3hEIXmZKE+c8qbPBxvSpfCecxL+fGRdVC2RZJZ6uTxp4Fla//SwmLGVo2cc3GA
	NXNQoZ1WJbqEE8sHpyrohY3VgvmjWoaeHijbK24KUB6N3aBG4QFuZte+jQGnQT4W5fzk
	q9CPbcP3a1EmzJo7bwDzZWE54CWMFyQ7Y4HfHo7ouSq61ntVkbEL6J9p78f+cpTwg4zr
	RVPQ==
X-Gm-Message-State: AG10YOR/9+gTsiI+M+Wa2FF8aJOwunkSGgRtpY/RsvaDtzzXUbd97Wc7Ygx00BxU6XqCgojZaXeWKZaUeNgNFNpo
X-Received: by 10.107.10.157 with SMTP id 29mr5054820iok.133.1454519640018;
	Wed, 03 Feb 2016 09:14:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 3 Feb 2016 09:13:40 -0800 (PST)
In-Reply-To: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
References: <CALf_N3a0K0mODhMwBLJgDV5MEDd14CkxJAnWEX=+kLG=Q8NRxA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Feb 2016 17:13:40 +0000
Message-ID: <CAJTo0LbiKF0w=NeNFRYmh_fc73HYH-1Zg6p1-8r46-oexFt6-A@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which Toolchain is being used to build Yocto ?
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
X-List-Received-Date: Wed, 03 Feb 2016 17:14:04 -0000
Content-Type: multipart/alternative; boundary=001a113f8df876666a052ae0bee8

--001a113f8df876666a052ae0bee8
Content-Type: text/plain; charset=UTF-8

On 3 February 2016 at 15:07, Mark T <mtl1nuxd3v@gmail.com> wrote:

> I notice there is a meta/recipes-devtools  -  I assume this pulls in from
> build/downloads - so gcc-5.2.0.tar.bz2 for example. Does the tool-chain
> comprised of these recipes get built by /usr/bin/gcc before being used to
> compile Yocto ?
>

The host's gcc (typically /usr/bin/gcc) is used to build gcc-cross, which
is then used to compile everything that needs to be cross-compiled.  We
don't build our own native compiler to replace the host compiler.

Ross

--001a113f8df876666a052ae0bee8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 February 2016 at 15:07, Mark T <span dir=3D"ltr">&lt;<a href=3D"mailto=
:mtl1nuxd3v@gmail.com" target=3D"_blank">mtl1nuxd3v@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div>I notice there is a meta/re=
cipes-devtools=C2=A0 -=C2=A0 I assume this pulls in from build/downloads - =
so gcc-5.2.0.tar.bz2 for example. Does the tool-chain comprised of these re=
cipes get built by /usr/bin/gcc before being used to compile Yocto ?=C2=A0 =
<br></div></blockquote></div><br>The host&#39;s gcc (typically /usr/bin/gcc=
) is used to build gcc-cross, which is then used to compile everything that=
 needs to be cross-compiled.=C2=A0 We don&#39;t build our own native compil=
er to replace the host compiler.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">Ross</div></div>

--001a113f8df876666a052ae0bee8--
