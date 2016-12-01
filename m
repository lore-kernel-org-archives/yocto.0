Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AEA5E00D19; Thu,  1 Dec 2016 02:49:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4D07E00D10
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2016 02:49:36 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id a197so294585925wmd.0
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2016 02:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yFyULUsTZJBMAZQUX1fI9KPzHkvyi5tLI84ZuM8svBc=;
	b=gekiTbCBW6954KQRLIaoD9h2uHsCpaYbI9sWJqIyQL4HUS8fwJi1d2wPK8tpGqEvap
	T0mXRddBYFwVbM3zTraVdcmljfcOOxp2ZTyO3S5bIW+Ae7e02GY3BCWQZtkxeEUIFJwA
	vRY2yfKRrmGGNGm2DgUDXqQMH8pr3LawLksnqJjaRR8y6x2Q5Fv6DLDzK7urQmUn7yFg
	rdp4raCRWYcvS2TpC46K/WL5u+xQ+eZ6VQJZvUQZjuTMMbb+4aXJupwqb6uYXj1e0x1x
	VDndQ9QJfP32CWRaYFeQocAVEpX9Y0gjMZ7Bb3+o2KZFPRVbdckkr1U1t7rfg2vA1DoP
	dKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yFyULUsTZJBMAZQUX1fI9KPzHkvyi5tLI84ZuM8svBc=;
	b=aSOuTEn4z5JRV0myWvMZJx38EbX4/tUTwqDBCeRV3PNaXNWAyd3kmscTkjtrXqRq6Q
	fovvC37wdmAqp7MrQ+EvUagMVinWLPVx5TYpHEfcIWL8qH9jlv7W7yoT8YSqgL2DwAe1
	uaynVnjcxWsqz+FovhetwEjV4zfskInGFUT9OWE7zDH8eTaZ4nPkBLs3ZAszSz2sr5jP
	/qQvJfqgEO/d3gHZpN+2MxIK/P7Dal1HS8Hp5ZgJmeLXB0m1UTcJU8yoSBtdjR1veE6w
	Y4xtauvvLCNQ353VTSZ0H1/UXLFmQuxayWynoNgcSZJYkbIqdBi60pxl339G0GJyOy9m
	s2sw==
X-Gm-Message-State: AKaTC01Y197jXDxhXlteMlx+wsAgbg+7O/3EqjtMZG29wZT+Odd9D7KeXuBrjjC1n9WKdKPXoloepBQPXDBFjA==
X-Received: by 10.28.19.196 with SMTP id 187mr34884047wmt.81.1480589375655;
	Thu, 01 Dec 2016 02:49:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.134.144 with HTTP; Thu, 1 Dec 2016 02:49:35 -0800 (PST)
In-Reply-To: <a62994c8-9eef-1457-7355-0681df26a29e@mlbassoc.com>
References: <a62994c8-9eef-1457-7355-0681df26a29e@mlbassoc.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Dec 2016 11:49:35 +0100
Message-ID: <CA+chaQd3-RqDyOd+WxEu3iKxVMK1joE1CjuxYjeePX0wyiwP4A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Shared state doesn't live up to its name?
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
X-List-Received-Date: Thu, 01 Dec 2016 10:49:43 -0000
Content-Type: multipart/alternative; boundary=001a11469dfccb53c6054296939e

--001a11469dfccb53c6054296939e
Content-Type: text/plain; charset=UTF-8

Compare the signatures of these 2 native builds.

I'm still using sstate-diff-machines.sh to create archives of sstate
signatures for interesting builds, so that I can easily compare them with
other builds or the same build performed on different builder to see why
something wasn't reused form sstate.

On Thu, Dec 1, 2016 at 10:27 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I have a build machine where I build for lots of targets.  On
> all of these targets (save a primary), I set the SSTATE_MIRROR
> to point to the sstate-cache of the primary target.  I always build
> for the primary target first, then later the secondary ones.
>
> For the most part, the sstate mechanism works pretty well, but I
> see some anomalies.  For example, why on the same host, built back
> to back, would a secondary build target (which uses the primary
> as it's SSTATE_MIRROR and that build is complete) need to rebuild
> from scratch such NATIVE packages as openssl?  Note that these are
> native packages I'm asking about, so in my mind they should always
> be sharable.
>
> Any ideas?  Is there something I can look at to investigate this?
>
> Thanks
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

--001a11469dfccb53c6054296939e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Compare the signatures of these 2 native builds.<div><br><=
/div><div>I&#39;m still using sstate-diff-machines.sh to create archives of=
 sstate signatures for interesting builds, so that I can easily compare the=
m with other builds or the same build performed on different builder to see=
 why something wasn&#39;t reused form sstate.</div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Thu, Dec 1, 2016 at 10:27 AM, Ga=
ry Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=
=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">I have a build machine where I build for lots of targets.=C2=A0 =
On<br>
all of these targets (save a primary), I set the SSTATE_MIRROR<br>
to point to the sstate-cache of the primary target.=C2=A0 I always build<br=
>
for the primary target first, then later the secondary ones.<br>
<br>
For the most part, the sstate mechanism works pretty well, but I<br>
see some anomalies.=C2=A0 For example, why on the same host, built back<br>
to back, would a secondary build target (which uses the primary<br>
as it&#39;s SSTATE_MIRROR and that build is complete) need to rebuild<br>
from scratch such NATIVE packages as openssl?=C2=A0 Note that these are<br>
native packages I&#39;m asking about, so in my mind they should always<br>
be sharable.<br>
<br>
Any ideas?=C2=A0 Is there something I can look at to investigate this?<br>
<br>
Thanks<span class=3D"HOEnZb"><font color=3D"#888888"><br>
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
</font></span></blockquote></div><br></div>

--001a11469dfccb53c6054296939e--
