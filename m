Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15C0DE009C8; Thu,  4 Jun 2015 02:56:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF6F4E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 02:56:28 -0700 (PDT)
Received: by qcej9 with SMTP id j9so15599844qce.1
	for <yocto@yoctoproject.org>; Thu, 04 Jun 2015 02:56:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=9ZO3nsdB/r8S2iugSbQ7fZtiC3wsI8krfi1pIWI6hew=;
	b=SludJWoHGEvbATlchk56H7GwdotHo09oXWuBWcHtfYXBb1b9YmTABgXhZXySw4KptU
	mzjeweqS1R+xZtDravzopj1Pe97gAC0AAtcWFVptzInYDzyM3yXMeeLrLIRz2BRFH4VS
	UOdIgWTDVonvHv031wnn1xBFgSCslfvPMJbTMqxCBVkXgsu3uHJpnuY5rWoRonHuKz2z
	O2zEfI8sQeroo0Jkol3lxTX+FstJNjQ3Cr5Oj4QVPD8HR/iOEbTPIKyUSH8rWmIUmviN
	0JiqXGt/djAQB9hjekL7wuV/lktXbGRrjN7pQ/nU+A98xXC/qLfH8lepYjOyLoSC52DD
	hKfg==
X-Gm-Message-State: ALoCoQkxcLvJbErVALVcGIgDOahw7aEQaW0Q/wWoNdlTJRM7VRCy3TR70P4WGvAkVPi0Gf8Nxmo/
X-Received: by 10.140.89.104 with SMTP id u95mr30121290qgd.15.1433411787533;
	Thu, 04 Jun 2015 02:56:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Thu, 4 Jun 2015 02:56:07 -0700 (PDT)
In-Reply-To: <CADL-HDjW1hhO02HBRCCZnYM5OKKbnccCs9cwyT+=k604zXH+GQ@mail.gmail.com>
References: <CADL-HDjW1hhO02HBRCCZnYM5OKKbnccCs9cwyT+=k604zXH+GQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Jun 2015 10:56:07 +0100
Message-ID: <CAJTo0LaROMNowR_bV64=uE39SYhJEtCtxUy3dsOWf4Dd2Su2tw@mail.gmail.com>
To: Yogesh Tyagi <yogesh.bit2006@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Library not getting installed to intended path
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
X-List-Received-Date: Thu, 04 Jun 2015 09:56:32 -0000
Content-Type: multipart/alternative; boundary=001a11c135f669ca450517ae30fd

--001a11c135f669ca450517ae30fd
Content-Type: text/plain; charset=UTF-8

On 4 June 2015 at 05:14, Yogesh Tyagi <yogesh.bit2006@gmail.com> wrote:

> I am using yocto 1.6 and I have written a component and written bitbake
> recipe file for this component. When rootfs is created my library is found
> in "/lib" directory but I want it to be installed to "/lib/gstreamer-0.10"
> directory (which is already created by open source gstreamer packages).
>
>
The path created by the GStreamer packages is /usr/lib/gstreamer-0.10,
unless you've been changing $prefix.

Your Makefile.am should have something like this:

# Plugins go in a subdirectory of libdir
plugindir=$(libdir)/gstreamer-0.10
plugin_LTLIBRARIES=libsomething.la
libsomething_la_SOURCES = something.c
# This is a module not a library, and don't version it
libsomething_la_LDFLAGS = -module -avoid-version

$(libdir) is turned into a real path by configure, and the autotools class
will pass the correct path to use.  Your recipe should then:

inherit autotools
FILES_${PN} = ${libdir}/gstreamer-0.10/*.so

At no point do you need to set libdir yourself, as the autotools class will
pass the right value from your distro configuration to the configure
script, which sets the right value in the Makefile.

Ross

--001a11c135f669ca450517ae30fd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 4 June 2015 at 05:14, Yogesh Tyagi <span dir=3D"ltr">&l=
t;<a href=3D"mailto:yogesh.bit2006@gmail.com" target=3D"_blank">yogesh.bit2=
006@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div clas=
s=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><spa=
n style=3D"font-size:12.8000001907349px">I am using yocto 1.6 and I have wr=
itten a component and written bitbake recipe file for this component. When =
rootfs is created my library is found in &quot;/lib&quot; directory but I w=
ant it to be installed to &quot;/lib/gstreamer-0.10&quot; directory (which =
is already created by open source gstreamer packages).</span><br></div><div=
><span class=3D""><div style=3D"font-size:12.8000001907349px"><br></div></s=
pan></div></div></blockquote><div><br></div><div>The path created by the GS=
treamer packages is /usr/lib/gstreamer-0.10, unless you&#39;ve been changin=
g $prefix.</div><div><br></div><div>Your Makefile.am should have something =
like this:</div><div><br></div><div># Plugins go in a subdirectory of libdi=
r</div><div>plugindir=3D$(libdir)/gstreamer-0.10</div><div>plugin_LTLIBRARI=
ES=3D<a href=3D"http://libsomething.la">libsomething.la</a></div><div>libso=
mething_la_SOURCES =3D something.c</div><div># This is a module not a libra=
ry, and don&#39;t version it</div><div>libsomething_la_LDFLAGS =3D -module =
-avoid-version</div><div><br></div><div>$(libdir) is turned into a real pat=
h by configure, and the autotools class will pass the correct path to use.=
=C2=A0 Your recipe should then:</div><div><br></div><div>inherit autotools<=
/div><div>FILES_${PN} =3D ${libdir}/gstreamer-0.10/*.so</div><div><br></div=
><div>At no point do you need to set libdir yourself, as the autotools clas=
s will pass the right value from your distro configuration to the configure=
 script, which sets the right value in the Makefile.</div><div><br></div><d=
iv>Ross</div></div></div></div>

--001a11c135f669ca450517ae30fd--
