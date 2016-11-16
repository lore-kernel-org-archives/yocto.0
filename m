Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78DF2E00C45; Wed, 16 Nov 2016 03:56:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.180 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26DDE00C3A
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 03:56:19 -0800 (PST)
Received: by mail-qk0-f180.google.com with SMTP id x190so171509480qkb.0
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 03:56:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fTdItoeE6Z8rjXSri5tId+v1JU1SX2bbsIr6efnaQc4=;
	b=TpTWHLtQnx+dTUAFzz2sXeUe1Tx3BfKN5nBH7j02H+fvAaR9Xm/IoaD4AkhAHQw8ks
	evvvkYhvgiJ5eVP8t5z3XmzKURKUBZnBovYiptUx7YDiz56rjxStrdsI4hlH8oXYSVTF
	PhdA6AGYjC+ehtowKjD1/IRvm1s9BvSgKxfO/1e+FG3VEYeVRSFfiOpuG7GTqTq4NQSx
	uo+WMNf+zgJ2qXyOmZnPXT/wwJMAsS9x8gQg4ChmGt+rHlmHX6dg2WburZcx5OpIx6jl
	8kzVNacUcAVIfSGobPGYNeGhP7Zf+cNcEBnx+aQfxeGN+8QxSAGRzquyQ2RrPUZqHGAf
	mcVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fTdItoeE6Z8rjXSri5tId+v1JU1SX2bbsIr6efnaQc4=;
	b=Syfsd4t4KoSy9Jr0iHNh3Ft/TqrBEMRul+91hnPP7ACx3BKASCAJampXm/KF5cZI8a
	XU0xa1Pgc0wTy9eUQz17cxzIIVeE7dzNYuPjiEm280vFZa/vQCXwyDmTi3eaP/cCMiXX
	zASDnurzeZiX0mH/iTeYqelptDurCw6coKv/wXVPBEDuVvCTzVo2DY5QnSMmwJ2FY4Rr
	ZTLD5Ij/XwpVS2N9jypmXJ/GhtzIwoeO9NcyYBqcQ9tC/D5chFGV7ZWA81BWSKX4rDdP
	iU8QsLH4qtPnhpja00BJJ8xb9w5XzmzjVXesrXP6RlOj2ILD8CBg8Ukc2EmuZtgAvyLE
	kArA==
X-Gm-Message-State: AKaTC01e+VSxS3EmW0KyQNE1BVqHREDuUHukLY2u/sxV4t7W2WG+KDLWRyISTGtBbCD7CA29ow8yPMdrIA5lTJE1
X-Received: by 10.55.64.79 with SMTP id n76mr2588929qka.178.1479297378693;
	Wed, 16 Nov 2016 03:56:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.34.74 with HTTP; Wed, 16 Nov 2016 03:55:48 -0800 (PST)
In-Reply-To: <e433f791-614b-6f53-edc0-e8fe34c7341a@mlbassoc.com>
References: <e433f791-614b-6f53-edc0-e8fe34c7341a@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 16 Nov 2016 13:55:48 +0200
Message-ID: <CAHiDW_HZLEGiPG7nXOx5hPce4WTC+v0Mkhv6+TGB1=wsCO+rVg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel too old?
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
X-List-Received-Date: Wed, 16 Nov 2016 11:56:22 -0000
Content-Type: multipart/alternative; boundary=001a1148bb6cc656bd054169c255

--001a1148bb6cc656bd054169c255
Content-Type: text/plain; charset=UTF-8

On 16 November 2016 at 13:29, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to run some user code on a [closed] box that it's
> difficult (maybe impossible) to update the kernel.  To date,
> I've been able to create my own user environment using Yocto
> and then just 'chroot XXX'.  That came to an end today with
> the latest (version 2.2) like this:
>
>   DiskStation> chroot /volume1/MY.test/
>   FATAL: kernel too old
>   DiskStation> cat /proc/version
>   Linux version 2.6.32.12 (root@build5) (gcc version 4.3.2 (GCC) ) #3202
> SMP Fri Mar 1 01:04:06 CST 2013
>
> Where '/volume1/MY.test' is my Yocto-built root file system.
>
> Is there any way around this if I can't update the running kernel?


Modern glibc needs linux 3.2, see
http://repo.or.cz/glibc.git/commit/5b4ecd3f95695ef593e4474b4ab5a117291ba5fc
(apparently on x86* you could still get away with setting OLDEST_KERNEL to
2.6.32).

Cheers,
  Jussi


>
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

--001a1148bb6cc656bd054169c255
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
6 November 2016 at 13:29, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">I&#39;m trying to=
 run some user code on a [closed] box that it&#39;s<br>
difficult (maybe impossible) to update the kernel.=C2=A0 To date,<br>
I&#39;ve been able to create my own user environment using Yocto<br>
and then just &#39;chroot XXX&#39;.=C2=A0 That came to an end today with<br=
>
the latest (version 2.2) like this:<br>
<br>
=C2=A0 DiskStation&gt; chroot /volume1/MY.test/<br>
=C2=A0 FATAL: kernel too old<br>
=C2=A0 DiskStation&gt; cat /proc/version<br>
=C2=A0 Linux version 2.6.32.12 (root@build5) (gcc version 4.3.2 (GCC) ) #32=
02 SMP Fri Mar 1 01:04:06 CST 2013<br>
<br>
Where &#39;/volume1/MY.test&#39; is my Yocto-built root file system.<br>
<br>
Is there any way around this if I can&#39;t update the running kernel?</blo=
ckquote><div><br></div><div>Modern glibc needs linux 3.2, see=C2=A0<a href=
=3D"http://repo.or.cz/glibc.git/commit/5b4ecd3f95695ef593e4474b4ab5a117291b=
a5fc">http://repo.or.cz/glibc.git/commit/5b4ecd3f95695ef593e4474b4ab5a11729=
1ba5fc</a></div><div>(apparently on x86* you could still get away with sett=
ing OLDEST_KERNEL to 2.6.32).<br></div><div><br></div><div>Cheers,<br></div=
><div>=C2=A0 Jussi</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><span class=3D"gmail-HOEnZb"><font color=3D"#888888"><br>
<br>
-- <br>
------------------------------<wbr>------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------<wbr>------------------------------<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div></div>

--001a1148bb6cc656bd054169c255--
