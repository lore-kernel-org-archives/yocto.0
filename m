Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA151E00874; Mon, 22 Dec 2014 04:51:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.50 listed in list.dnswl.org]
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EF8AE00575
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 04:51:34 -0800 (PST)
Received: by mail-qa0-f50.google.com with SMTP id dc16so3100406qab.23
	for <yocto@yoctoproject.org>; Mon, 22 Dec 2014 04:51:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SL+lRRrDaiH0en6Rs05jqOkxjV09kWwtdgtYnsmz30E=;
	b=Ip6lUMUcdeReupx9FB1K+CclWfpF4WVnaKrx5KSOKN9x5BzwS4TzRDboFkkKeCJRER
	ycuWsKYW7vkdZkbb4CUAXErh/veXguPF2ZKrld7q7sPdQjEDnZXrdmHVmSiB507uYO/m
	QyuZOYbzJuBKYCk2+LSj5pI7l7ZIiVjdocgSmGgx/3lryq5ongFt6yj2kLDaMiRkYntA
	yGSZjwYcQK7Qzhfw0l+rzH0uXWTbR2YWGCYPeoxNkEqNDf+6pCyalA0xS8d5xB62Xfod
	M0V1V39SQkTcUgS11wb5VarSAHd8d+dDm2gkNwfv6uWCYtiD/JwfPjw4IRotayBkivcE
	rkkw==
X-Gm-Message-State: ALoCoQk3sCE/rJAJOUYmznACjUiwSRHchsRzC7RzwmQ/phjhciDtAmyTqQcw+Ctc+z2GxtWfTPN4
X-Received: by 10.224.3.137 with SMTP id 9mr36763135qan.64.1419252694139; Mon,
	22 Dec 2014 04:51:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Mon, 22 Dec 2014 04:51:13 -0800 (PST)
In-Reply-To: <54975065.1070704@gmail.com>
References: <8F90F944E50427428C60E12A34A309D239F6DB0EE8@carmd-exchmb01.sierrawireless.local>
	<CAAQYJAsgCWS+yoL7CusmKpPeVH5paAevOY8Jbo0JzzNgapFGJA@mail.gmail.com>
	<54975065.1070704@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Dec 2014 12:51:13 +0000
Message-ID: <CAJTo0LZzik-EiZJAp0AM1FQOAmjzs8q8LeEEM+AC+qORL3_D1Q@mail.gmail.com>
To: =?UTF-8?Q?Jo=C3=A3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Microcontroller Cross Compiler
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
X-List-Received-Date: Mon, 22 Dec 2014 12:51:45 -0000
Content-Type: multipart/alternative; boundary=001a11c2480aae6824050acd84d2

--001a11c2480aae6824050acd84d2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 21 December 2014 at 22:57, Jo=C3=A3o Henrique Ferreira de Freitas <
joaohf@gmail.com> wrote:
>
> I will try it. But in my case I need to use this
> https://launchpad.net/gcc-arm-embedded.
>
> There are some way to yocto creates the gcc-arm-embedded SDK? Instead of
> use the gcc-arm-embedded packages. Is it feasibly?
>

Yes, you "just" need to write a recipe to build the cross compilers,
install them into the sysroot, and then use those compilers when building
the MCU binaries.

Building a toolchain isn't trivial but if it's actually a specific GCC
combination then you may be able to re-use the gcc-cross recipes.

Ross

--001a11c2480aae6824050acd84d2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 21 December 2014 at 22:57, Jo=C3=A3o Henrique Ferreira de Freitas <span =
dir=3D"ltr">&lt;<a href=3D"mailto:joaohf@gmail.com" target=3D"_blank">joaoh=
f@gmail.com</a>&gt;</span> wrote:<blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D"=
:85m" class=3D"a3s" style=3D"overflow:hidden">I will try it. But in my case=
 I need to use this <a href=3D"https://launchpad.net/gcc-arm-embedded" targ=
et=3D"_blank">https://launchpad.net/gcc-arm-<u></u>embedded</a>.<br>
<br>
There are some way to yocto creates the gcc-arm-embedded SDK? Instead of us=
e the gcc-arm-embedded packages. Is it feasibly?</div></blockquote></div><b=
r>Yes, you &quot;just&quot; need to write a recipe to build the cross compi=
lers, install them into the sysroot, and then use those compilers when buil=
ding the MCU binaries.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Building a toolchain isn&#39;t trivial but if it&#39;s act=
ually a specific GCC combination then you may be able to re-use the gcc-cro=
ss recipes.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a11c2480aae6824050acd84d2--
