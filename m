Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC394E00B20; Sun, 15 Jun 2014 17:47:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D245E00AEC
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 17:47:33 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id p9so344346lbv.12
	for <yocto@yoctoproject.org>; Sun, 15 Jun 2014 17:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=AH6C+fywnlktbmd/eltEAqao1VA+mJ74/sCg8RHAm/k=;
	b=a9P6e5nEnUxr5MD0EmDj2obtJr6H3qjDg7AyBTv9d9UOX6RJYzrvlS1Dv8Fj77A9mU
	5YELr9CzU29aNJJKt10xXRaEbPeh3M21P+eBS1qBWSDeOAHgeGUeqKRxFV9gAPTLxis5
	HX8Vf+lfPSX9wjsgEbSO70MSsOJQCGQkrtcp7GuUskEENuemGY8kQ1NP4RDT54FcWJWU
	yqo3VH3tTCCPC+7QNy3BT1cN98HSbCKQAlcNuZdWlEgyY3swGK6mv0lWD5x0zOa+bZuU
	ms6zXeNJkEH8vQiHXMMkfz7SR2ThODxpzM0NSCyMsF0NjfuPOx54RxEmJELNYcn8I1rO
	hv6Q==
MIME-Version: 1.0
X-Received: by 10.152.203.168 with SMTP id kr8mr11755186lac.17.1402879651910; 
	Sun, 15 Jun 2014 17:47:31 -0700 (PDT)
Received: by 10.112.138.7 with HTTP; Sun, 15 Jun 2014 17:47:31 -0700 (PDT)
In-Reply-To: <CAPbeDCkXks4=tnyXc7MTRkMS73VxgkDGh=mbocahOh=y93Bvyw@mail.gmail.com>
References: <CAPbeDCkxGHMcS-BfchUK89pk146i5r-HzD5cLsyRxsokZ2Czqg@mail.gmail.com>
	<CAPbeDCnd1sRphWo+2QVX_VaBO7uqrXbV5m3rrAM0pGRKym+w_A@mail.gmail.com>
	<CAPbeDCkXks4=tnyXc7MTRkMS73VxgkDGh=mbocahOh=y93Bvyw@mail.gmail.com>
Date: Mon, 16 Jun 2014 02:47:31 +0200
Message-ID: <CAPbeDCmE+n5R3r-hBMg2199LpHASgyXfrroH7H1xSodUrA19AQ@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: yocto@yoctoproject.org, Khem Raj <raj.khem@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: Error building meta-toolchain with SDKMACHINE=x86_64-mingw32 on daisy
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
X-List-Received-Date: Mon, 16 Jun 2014 00:47:44 -0000
Content-Type: multipart/alternative; boundary=001a113457dc50992b04fbe95f53

--001a113457dc50992b04fbe95f53
Content-Type: text/plain; charset=UTF-8

On Sun, Jun 15, 2014 at 11:05 PM, Jacob Kroon <jacob.kroon@gmail.com> wrote:

> (I've stripped all paths in the mail from the OE build directory)
>
> Running
>
>
> sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32.gcc-crosssdk-initial/x86_64-oesdk-mingw32-gcc
> -print-search-dirs
>
> I see that it is looking for objects in (amongst other things):
>
>
> sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32/mingw/lib/x86_64-oesdk-mingw32/4.8.2/
>     sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32/mingw/lib/
>
> If I add a symlink in sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32
>
>     ln -s usr/local/oecore-x86_64/sysroots/x86_64-oesdk-mingw32/usr/ mingw
>
> bitbaking meta-toolchain succeds, and I get a cross-canadian gcc,
> arm-oe-linux-gnueabi-gcc.exe
>
> Grep:ing for "mingw/lib" in gcc-4.8.2 sources, I get hits in:
>
>     configure.ac <http://configure.ac>:
> FLAGS_FOR_TARGET=$FLAGS_FOR_TARGET' -L${prefix}/${target}/lib
> -L${prefix}/mingw/lib
>     gcc/config/i386/mingw32.h:#define STANDARD_STARTFILE_PREFIX_1
> "/mingw/lib/"
>
> Should any of these lines be patched to point to a user-supplied path ? If
> not, could
> any of you give a hint to where I should be digging instead ?
>
>
I see now that this problem has already been fixed in oe-core master, and
just needs a backport to daisy.

db44be06c75f2ac17a55dd1764471e869e872b8b
gcc: Clean up configure_prepend and fix for mingw

Sorry for the noise.

/Jacob

--001a113457dc50992b04fbe95f53
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
un, Jun 15, 2014 at 11:05 PM, Jacob Kroon <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jacob.kroon@gmail.com" target=3D"_blank">jacob.kroon@gmail.com</a>&g=
t;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_quote">(I&#39;ve stripped all paths =
in the mail from the OE build directory)<br>

<div>

<br></div><div>Running<br><br>=C2=A0=C2=A0=C2=A0 sysroots/x86_64-linux/usr/=
bin/x86_64-oesdk-mingw32.gcc-crosssdk-initial/x86_64-oesdk-mingw32-gcc -pri=
nt-search-dirs<br><br></div><div>I see that it is looking for objects in (a=
mongst other things):<br>



<br>=C2=A0=C2=A0=C2=A0 sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32/ming=
w/lib/x86_64-oesdk-mingw32/4.8.2/<br>=C2=A0=C2=A0=C2=A0 sysroots/x86_64-nat=
ivesdk-mingw32-oesdk-mingw32/mingw/lib/<br><br></div></div>If I add a symli=
nk in sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32<br>



<br>=C2=A0=C2=A0=C2=A0 ln -s usr/local/oecore-x86_64/sysroots/x86_64-oesdk-=
mingw32/usr/ mingw<br><br></div><div class=3D"gmail_extra">bitbaking meta-t=
oolchain succeds, and I get a cross-canadian gcc, arm-oe-linux-gnueabi-gcc.=
exe<br><br></div>


<div class=3D"gmail_extra">Grep:ing for &quot;mingw/lib&quot; in gcc-4.8.2 =
sources, I get hits in:<br>
<br><a href=3D"http://configure.ac" target=3D"_blank">=C2=A0=C2=A0=C2=A0 co=
nfigure.ac</a>:=C2=A0=C2=A0=C2=A0 FLAGS_FOR_TARGET=3D$FLAGS_FOR_TARGET&#39;=
 -L${prefix}/${target}/lib -L${prefix}/mingw/lib<br></div><div class=3D"gma=
il_extra">=C2=A0=C2=A0=C2=A0 gcc/config/i386/mingw32.h:#define STANDARD_STA=
RTFILE_PREFIX_1 &quot;/mingw/lib/&quot;<br>



<br>Should any of these lines be patched to point to a user-supplied path ?=
 If not, could<br>any of you give a hint to where I should be digging inste=
ad ?<br><br></div></div></blockquote><br></div>I see now that this problem =
has already been fixed in oe-core master, and just needs a backport to dais=
y.<br>

<br>db44be06c75f2ac17a55dd1764471e869e872b8b<br>gcc: Clean up configure_pre=
pend and fix for mingw<br><br></div><div class=3D"gmail_extra">Sorry for th=
e noise.<br><br></div><div class=3D"gmail_extra">/Jacob<br></div></div>

--001a113457dc50992b04fbe95f53--
