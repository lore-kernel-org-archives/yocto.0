Return-Path: <daltonfury42@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA05CE0086D; Thu, 12 Mar 2015 13:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (daltonfury42[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2721E00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 13:03:17 -0700 (PDT)
Received: by obcuz6 with SMTP id uz6so16435121obc.7
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 13:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=k+caUPhPKqsBDuE+NTx1lW4vkuEU+3En5vPUVDAt2Jw=;
	b=I/L3nlELV01MYImrLeza9U81GAKe76aw1PkflL7mMWpM+dluAQ8JEolE8AgpAmzu7C
	Az7vDDFAotgkBtIV8sciGOnhsFS3oD9BCdJuBacY9H6j7d1/Hia8HJM/37Nmt4J1fkf3
	oQiDvq68Qjylsb1wxMBvSS2jHtndcrWbO88p9LJSVzM1N7mE6Tvg/MF3WNFa8csLHRwC
	/e5VDFz5SkObEav7bfvhohvfBUQPaFrPfkfX67gSHRwJfYQpIqeQ4uBbWdPoaZvU3dyt
	TKVcy2BwUShP+fG5ITqWq/MtGnOUuqT6ZlODdrrs3BDVYuYoup6axhFJznJwuSVhaUKP
	QKag==
MIME-Version: 1.0
X-Received: by 10.202.171.213 with SMTP id u204mr5227236oie.123.1426190596457; 
	Thu, 12 Mar 2015 13:03:16 -0700 (PDT)
Received: by 10.202.59.66 with HTTP; Thu, 12 Mar 2015 13:03:16 -0700 (PDT)
In-Reply-To: <CALH0Xh=sbN2SX3qNsY22Zb=RZ=+US3BP14sKicyZBQCz67T0Bw@mail.gmail.com>
References: <CALH0XhnxvVq8aHnnpXGfhRdG+y2ym0wJzVtSUAMWWfkR30sTGA@mail.gmail.com>
	<CALH0Xh=dDw5thoKebNN7kFbQ4hA=ztbAhaD6f0+ntsHdnqiBdw@mail.gmail.com>
	<CALH0Xh=LdyU0MfiwOJiTkR4TmjErNsb11Q37M-noB78wjx_63g@mail.gmail.com>
	<CALH0Xh=sbN2SX3qNsY22Zb=RZ=+US3BP14sKicyZBQCz67T0Bw@mail.gmail.com>
Date: Fri, 13 Mar 2015 01:33:16 +0530
Message-ID: <CALH0Xhk181DqSaP6eAUkgceWEqSReFWsYQ8j5wvHk3ZD3+j2LA@mail.gmail.com>
From: Dalton Fury <daltonfury42@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Cannot compile opencv with cmake.
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
X-List-Received-Date: Thu, 12 Mar 2015 20:03:18 -0000
Content-Type: multipart/alternative; boundary=001a113c385ae24b2005111cdfee

--001a113c385ae24b2005111cdfee
Content-Type: text/plain; charset=UTF-8

Hey, these are the packages that I included in the build for opencv support:
CORE_IMAGE_EXTRA_INSTALL += "libopencv-core-dev libopencv-highgui-dev
libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"

On Fri, Mar 13, 2015 at 12:25 AM, Dalton Fury <daltonfury42@gmail.com>
wrote:

> Hey,
> I am trying to compile a c++ program which uses opencv on pokey. These are
> the packages I have installed.
> CORE_IMAGE_EXTRA_INSTALL += "cmake"
>
> EXTRA_IMAGE_FEATURES += "tools-sdk"
>
> When I run cmake,, I get this error.
> http://pastebin.com/WifpRYXV
>
> I followed the instructions given in this post:
>
> http://stackoverflow.com/questions/8711109/could-not-find-module-findopencv-cmake-error-in-configuration-process
> But still I get trouble:
> http://pastebin.com/V7sSwP8r
>
> I am new to yocto, and really need your help to proceed with my task.
> Thankyou.
>

--001a113c385ae24b2005111cdfee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey, these are the packages that I included in the build f=
or opencv support:<br>CORE_IMAGE_EXTRA_INSTALL +=3D &quot;libopencv-core-de=
v libopencv-highgui-dev libopencv-imgproc-dev libopencv-objdetect-dev libop=
encv-ml-dev&quot;<br></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Fri, Mar 13, 2015 at 12:25 AM, Dalton Fury <span dir=3D"ltr">&=
lt;<a href=3D"mailto:daltonfury42@gmail.com" target=3D"_blank">daltonfury42=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p dir=
=3D"ltr">Hey, <br>
I am trying to compile a c++ program which uses opencv on pokey. These are =
the packages I have installed. <br>
CORE_IMAGE_EXTRA_INSTALL +=3D &quot;cmake&quot;</p>
<p dir=3D"ltr">EXTRA_IMAGE_FEATURES +=3D &quot;tools-sdk&quot;</p>
<p dir=3D"ltr">When I run cmake,, I get this error. <br>
<a href=3D"http://pastebin.com/WifpRYXV" target=3D"_blank">http://pastebin.=
com/WifpRYXV</a></p>
<p dir=3D"ltr">I followed the instructions given in this post: <br>
<a href=3D"http://stackoverflow.com/questions/8711109/could-not-find-module=
-findopencv-cmake-error-in-configuration-process" target=3D"_blank">http://=
stackoverflow.com/questions/8711109/could-not-find-module-findopencv-cmake-=
error-in-configuration-process</a><br>
But still I get trouble: <br>
<a href=3D"http://pastebin.com/V7sSwP8r" target=3D"_blank">http://pastebin.=
com/V7sSwP8r</a></p>
<p dir=3D"ltr">I am new to yocto, and really need your help to proceed with=
 my task. <br>
Thankyou.<br>
</p>
</blockquote></div><br></div>

--001a113c385ae24b2005111cdfee--
