Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8E57E00E49; Fri, 29 Apr 2016 01:59:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EDFBE00E46
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 01:59:25 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id u185so117890003iod.3
	for <yocto@yoctoproject.org>; Fri, 29 Apr 2016 01:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Mi0hbgM3SfO4/J3NJH2lvttFtVLAJg3bseCFN6KV9Qc=;
	b=ID28L4wsAZC7NNOiWLZ8U3b1KAQL+QjsO2I7beUTTYBqwuqrEvvBMzXpuKcFAXzq5D
	5JOLdFOFTdhZU5smtJxO9svXZWsNeCSDrP/rDphlY9fNIYLWED+XGheoWWMJ0C0gM4XX
	VEGyfCVX2tS6Eym8HTINNcVJrHI8InXkqb/abVwnnNbvx1jmm0i5E5Qx9hEUaFL0NwTW
	eyzv5PSr31mXBK6oEDvE3SXofBQQR+7gzs0AawfhPCh+yeWmjfNGNmW4IuHoRZ/5HXFb
	R5EkERukQz05QJs8qPsuLL5sphyyp4otpE+6A5fG6Nqo4SOzOqrYFIMGT/1PQb6fHj4V
	d+Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Mi0hbgM3SfO4/J3NJH2lvttFtVLAJg3bseCFN6KV9Qc=;
	b=FJ0LyRkBma0vtRI50ywRMJsQcbA1SHTqvc1Cs+EiYA5VbuZsammuBc4/l4TZmMU7xc
	RK7DfRez7ofhPjMGIH1PRgoKoJbNSX9ghlw3K6qTKTlizju3x3OL++OIHXZ/PLbJIKzf
	Ht6JC53tcakXd862UVf7fOlzFVIOOMps94pp45Gl/cOwzjGkm4DirOQ8402nAB91Wu/j
	3N7MYStuNKkh3zwiJCiMcloEn131GNuO161z1GTMOr8nW18vubyOvBORmzat8jP9ktBf
	JkO7PGlCJl/5kR8EaKkb2AZNoeN51kLKGwYOWwVlXnOtYPFnyelUTS0GcCWDgJFUmi7i
	E6Vw==
X-Gm-Message-State: AOPr4FXhP39nBENfZvdn9CG5tEo+EjCHr8s/OvYouyAcL26R9oa/xB48JyIiWDJ1/wI/tCe8u9nuW52gmG+6KF+i
X-Received: by 10.107.135.211 with SMTP id r80mr24620844ioi.133.1461920365051; 
	Fri, 29 Apr 2016 01:59:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Fri, 29 Apr 2016 01:59:05 -0700 (PDT)
In-Reply-To: <OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
	<SIXPR04MB0668640023EA6AFE4596C0ADEC650@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAJTo0LY3yqttg6hf3saU+RoLco1_GmNRy7pT+wDciBFFHep0HQ@mail.gmail.com>
	<OFAE948224.6BDA8DD0-ONC1257FA4.0028E4AF-C1257FA4.002B73A2@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Apr 2016 09:59:05 +0100
Message-ID: <CAJTo0La51T5zQZv0JbakTifLUNVv=n291fmrx=RhmLpDq+C7Gg@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Fri, 29 Apr 2016 08:59:28 -0000
Content-Type: multipart/alternative; boundary=001a113ed20a0cab8205319bdcf3

--001a113ed20a0cab8205319bdcf3
Content-Type: text/plain; charset=UTF-8

Hi Stefan,

So close :)  Some more points:

On 29 April 2016 at 08:54, <S.Jaritz@esa-grimma.de> wrote:
> LICENSE = "COPYING"

This should be the name of the license itself, not the filename.  Looks a
bit like MIT to me.

> LIC_FILES_CHKSUM =
"file://${WORKDIR}/git/COPYING;md5=d84d659a35c666d23233e54503aaea51"

This URI is relative to ${S} so you can just do file://COPYING;md5=....

> EXTRA_OEMAKE = "'PREFIX=/usr/'"

Use PREFIX=${prefix} to respect the what the distro has configured.
Annoyingly you can't override the other paths such a libdir easily, so this
will break in multilib configurations or if I recall correctly, on aarch64.

The commandline outputs:
> #############
> NOTE: Executing RunQueue Tasks
> WARNING: QA Issue: libhiredis: /libhiredis-staticdev/usr/lib/libhiredis.a
> is owned by uid 1000, which is the same as the user running bitbake. This
> may be due to host contamination [host-user-contaminated]
> WARNING: QA Issue: libhiredis: /libhiredis/usr/lib/libhiredis.so.0.13 is
> owned by uid 1000, which is the same as the user running bitbake. This may
> be due to host contamination [host-user-contaminated]
> WARNING: QA Issue: libhiredis:
> /libhiredis-dev/usr/lib/pkgconfig/hiredis.pc is owned by uid 1000, which is
> the same as the user running bitbake. This may be due to host contamination
> [host-user-contaminated]
> #############
>

The upstream Makefile is using "cp -a" which preserves ownership, so as you
built the package the files are owned by you.  Luckily you can override
this by passing "INSTALL='cp -r' to the make install (they use cp to
recursively copy directories, so you need to pass -r instead).

I've a recipe locally with these changes and it builds without warnings and
is packaged correctly.

This is what happens when maintainers think autotools is too complicated
and a bare makefile is just fine: they do it wrong. :)

Ross

--001a113ed20a0cab8205319bdcf3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">Hi S=
tefan,</div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote"=
>So close :) =C2=A0Some more points:</div><div class=3D"gmail_quote"><br></=
div><div class=3D"gmail_quote">On 29 April 2016 at 08:54, &lt;<a href=3D"ma=
ilto:S.Jaritz@esa-grimma.de">S.Jaritz@esa-grimma.de</a>&gt; wrote:<br>&gt; =
LICENSE =3D &quot;COPYING&quot;<br><br>This should be the name of the licen=
se itself, not the filename.=C2=A0 Looks a bit like MIT to me.<br>=C2=A0<br=
>&gt; LIC_FILES_CHKSUM =3D &quot;file://${WORKDIR}/git/COPYING;md5=3Dd84d65=
9a35c666d23233e54503aaea51&quot;</div><div class=3D"gmail_quote"><br><div>T=
his URI is relative to ${S} so you can just do file://COPYING;md5=3D....</d=
iv><div>=C2=A0</div><div><font size=3D"2" face=3D"sans-serif">&gt; EXTRA_OE=
MAKE =3D &quot;&#39;PREFIX=3D/usr/&#39;&quot;</font><span style=3D"font-siz=
e:13px">=C2=A0</span><br style=3D"font-size:13px"></div><div><span style=3D=
"font-size:13px"><br></span></div><div><span style=3D"font-size:13px">Use P=
REFIX=3D${prefix} to respect the what the distro has configured.=C2=A0 Anno=
yingly you can&#39;t override the other paths such a libdir easily, so this=
 will break in multilib configurations or if I recall correctly, on aarch64=
.</span></div><div><span style=3D"font-size:13px"><br></span></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wid=
th:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-l=
eft:1ex"><font size=3D"2" face=3D"sans-serif">The commandline outputs:</fon=
t>
<br><font size=3D"2" face=3D"sans-serif">#############</font>
<br><font size=3D"2" face=3D"sans-serif">NOTE: Executing RunQueue Tasks</fo=
nt>
<br><font size=3D"2" face=3D"sans-serif">WARNING: QA Issue: libhiredis: /li=
bhiredis-staticdev/usr/lib/libhiredis.a
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font>
<br><font size=3D"2" face=3D"sans-serif">WARNING: QA Issue: libhiredis: /li=
bhiredis/usr/lib/libhiredis.so.0.13
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font>
<br><font size=3D"2" face=3D"sans-serif">WARNING: QA Issue: libhiredis: /li=
bhiredis-dev/usr/lib/pkgconfig/hiredis.pc
is owned by uid 1000, which is the same as the user running bitbake. This
may be due to host contamination [host-user-contaminated]</font>
<br><font size=3D"2" face=3D"sans-serif">#############=C2=A0</font>=C2=A0<b=
r></blockquote><div><br></div><div>The upstream Makefile is using &quot;cp =
-a&quot; which preserves ownership, so as you built the package the files a=
re owned by you.=C2=A0 Luckily you can override this by passing &quot;INSTA=
LL=3D&#39;cp -r&#39; to the make install (they use cp to recursively copy d=
irectories, so you need to pass -r instead).</div><div><br></div><div>I&#39=
;ve a recipe locally with these changes and it builds without warnings and =
is packaged correctly.</div><div><br></div><div>This is what happens when m=
aintainers think autotools is too complicated and a bare makefile is just f=
ine: they do it wrong. :)</div><div><br></div><div>Ross</div></div></div></=
div>

--001a113ed20a0cab8205319bdcf3--
