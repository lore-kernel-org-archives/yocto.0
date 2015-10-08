Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E8EEE00B1C; Thu,  8 Oct 2015 14:40:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 719DCE006F1
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 14:40:55 -0700 (PDT)
Received: by qkdo1 with SMTP id o1so16199399qkd.1
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 14:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ysSird1NK2mCW//meeYe9FT9H7hx8InhNFZgQbaapuo=;
	b=fiW61ZDC14mFzVFbwXcaM1zQ0ch8I245qi8DuKzUHZka5B13zJEyoy+08XNMFCsFh+
	upgILQ5U/L7+v1C+ZLuCdars+ma1CUSlarnJ/eV8q/yVClhvr01Yh3YaTaN7qTuvSs6k
	BszY0EPp7NtDKlacZu24KF82lSFsIiCsboQpINTSyahDSaIJ8nOJOwVd+HwW+KdKH5tH
	5ltPhu7U3c0XCbc9/FQh/6nLnDLy5+fpACP6nHyPbyASdnM341yNQ+RhkzuKoSTR5HJF
	kOfhEr2dox7mlkf8WsWnUhA8su1hGObiM902LSPoLxs9cXviquNrhsorbDZXfS3Rkriz
	OJcA==
X-Gm-Message-State: ALoCoQk95+gj0juE+JODwnsOtrKmDGB1CZXANLIte5/7SChMHBL/5BB4WBK5fGcblTQoxsdR2T/p
X-Received: by 10.55.215.18 with SMTP id m18mr10637559qki.49.1444340455344;
	Thu, 08 Oct 2015 14:40:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Thu, 8 Oct 2015 14:40:35 -0700 (PDT)
In-Reply-To: <5616D923.1060600@mlbassoc.com>
References: <5616D923.1060600@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 8 Oct 2015 22:40:35 +0100
Message-ID: <CAJTo0LZCkJ5SaqRjh_kpW+tDK-Z_XrtzsPbohLd=z3pqEgBFaA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Missing sanity / dependency
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
X-List-Received-Date: Thu, 08 Oct 2015 21:40:58 -0000
Content-Type: multipart/alternative; boundary=001a11479970c6a15805219eb77e

--001a11479970c6a15805219eb77e
Content-Type: text/plain; charset=UTF-8

That bug was fixed some time ago, try updating your clone.  In particular I
expect your checkout is before
poky bb34181b42b62e0476ba9e12f9125ed9f785cf23.

Ross

On 8 October 2015 at 21:59, Gary Thomas <gary@mlbassoc.com> wrote:

> I just ran across this on a [fairly new] system:
>
> $ bitbake meta-toolchain -g -u depexp
> Traceback (most recent call last):
>   File "/local/poky-cutting-edge/bitbake/bin/bitbake", line 45, in <module>
>     cookerdata.CookerConfiguration()))
>   File "/local/poky-cutting-edge/bitbake/lib/bb/main.py", line 334, in
> bitbake_main
>     ui_module = import_extension_module(bb.ui, configParams.ui, 'main')
>   File "/local/poky-cutting-edge/bitbake/lib/bb/main.py", line 103, in
> import_extension_module
>     module = __import__(pkg.__name__, fromlist = [modulename])
>   File "/local/poky-cutting-edge/bitbake/lib/bb/ui/depexp.py", line 22, in
> <module>
>     import gtk
> ImportError: No module named gtk
>
> Should this have been caught by the sanity checker, or perhaps
> handled better?  In my Ubuntu case, I was missing python-gtk2
> and friends.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11479970c6a15805219eb77e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That bug was fixed some time ago, try updating your clone.=
=C2=A0 In particular I expect your checkout is before poky=C2=A0bb34181b42b=
62e0476ba9e12f9125ed9f785cf23.<div><br></div><div>Ross</div></div><div clas=
s=3D"gmail_extra"><br><div class=3D"gmail_quote">On 8 October 2015 at 21:59=
, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" ta=
rget=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">I just ran across this on a [fairly new] system:<br>
<br>
$ bitbake meta-toolchain -g -u depexp<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/bin/bitbake&quot;, line =
45, in &lt;module&gt;<br>
=C2=A0 =C2=A0 cookerdata.CookerConfiguration()))<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/lib/bb/main.py&quot;, li=
ne 334, in bitbake_main<br>
=C2=A0 =C2=A0 ui_module =3D import_extension_module(bb.ui, configParams.ui,=
 &#39;main&#39;)<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/lib/bb/main.py&quot;, li=
ne 103, in import_extension_module<br>
=C2=A0 =C2=A0 module =3D __import__(pkg.__name__, fromlist =3D [modulename]=
)<br>
=C2=A0 File &quot;/local/poky-cutting-edge/bitbake/lib/bb/ui/depexp.py&quot=
;, line 22, in &lt;module&gt;<br>
=C2=A0 =C2=A0 import gtk<br>
ImportError: No module named gtk<br>
<br>
Should this have been caught by the sanity checker, or perhaps<br>
handled better?=C2=A0 In my Ubuntu case, I was missing python-gtk2<br>
and friends.<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11479970c6a15805219eb77e--
