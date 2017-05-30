Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4557FE00B1B; Mon, 29 May 2017 19:17:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.65 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07791E00812
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 19:17:22 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id v80so13856832oie.2
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 19:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=afZODWMLczkAdy5BRKDtR3xV7tK6K/HD6vf+eatcnc8=;
	b=bBjxe+RDKPIDUgS5mEqV/aSEo6iEb0DrMAvIVlinozPz9syHpsNIqzs3KYLuZqYdWT
	Hj22EgMH5ICSL1JuqcX9qFIL+AaxSnDK16tm1Kfm/+l1H4rz5Cr55RpeaR6DPSuJRzup
	HMgmMt3PLcxI/nksHZVSQxpnlXe9fP1H1JJpATQvq+G08B6f2tX1iwP+6aESjwK92jE1
	Xi7TjLH/GH5f4OOBf3ziVywUyKd/7Hhre7j4/OfspGrjIhmNDkiIUFyJUB99/kYNODwn
	IBeeFDYQ+oP5H0hT4AnpSsuCDvESXdXOItl0Uyr8hD7+f+H/Xfu/lhz/m4LWNNVmLTkk
	TSPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=afZODWMLczkAdy5BRKDtR3xV7tK6K/HD6vf+eatcnc8=;
	b=e+lVxCa4NpVCbbzNiZif24roywEbXP+smsBj7St2j3UwP8/bVVr88JtHEaiYYJRYzW
	H1RsigWqzf6Ip9Zof2t2jqqp3IVTlyJB8RtIxMmERpvSKXQZaV+xayMafSg3OwzWQC3U
	owCl0M/PYS3TgNKReacTHnLYBucBcBBgTKNTx6iNscd9VZy9BsVqjzrOEKOW9issBo6N
	PFaANhRnqFp2QumBBJkLY1L0ym/CEbgR6VmkTxB27peF/0Lm72V6Ok3RZc8WEH4Tknnh
	xydIo13Wj102RW7iJCqX5L8FpkloEtAxx7W1kE+8/9TwsiHF1bbU5xWD4bGXvWce3q5F
	XTfw==
X-Gm-Message-State: AODbwcCE8FWcvgmw5bRV82estmzRrsFnY3aXoTMjPT0utJo0DNnlwLD9
	gma+Bs2bC1rMmYfn5pf3FVAzwv+Nd4/uiL8=
X-Received: by 10.157.80.3 with SMTP id a3mr2338745oth.64.1496110641829; Mon,
	29 May 2017 19:17:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.5.71 with HTTP; Mon, 29 May 2017 19:17:21 -0700 (PDT)
In-Reply-To: <1496069912.26945.37.camel@linux.intel.com>
References: <CAGnCEbspYODFnRoTCxfQxzjdHaQEgnkLE2On9DKKq6BJePbPPA@mail.gmail.com>
	<1496069912.26945.37.camel@linux.intel.com>
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Tue, 30 May 2017 09:17:21 +0700
Message-ID: <CAGnCEbsv_v=YuW2uiwRhJAkw8Yz9H81OELGAYvmOBdU=W-0ykQ@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to install dbg package and not its dependencies?
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
X-List-Received-Date: Tue, 30 May 2017 02:17:26 -0000
Content-Type: multipart/alternative; boundary="f4030435ab4c59de4a0550b46731"

--f4030435ab4c59de4a0550b46731
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have both app-example*-dbg* & app-example in IMAGE_INSTALL and the result
is app-example-dbg & app-example & libexample-dbg & libexample are included
in the final image.

Hu=E1=BB=B3nh Ng=E1=BB=8Dc Thi
-so61pi

On Mon, May 29, 2017 at 9:58 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Sun, 2017-05-28 at 17:23 +0700, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:
> > Hi everyone,
> >
> >
> > Let's say I have app-example package which depends on libexample.
> >
> > When I add app-example-dbg to IMAGE_INSTALL, libexample-dbg package is
> > automatically included in the final image which makes the image size
> > become bigger.
> >
> what about installing the non-dbg ones?
> >
> > In this case, is there a way to prevent libexample-dbg from being
> > installed?
> >
> >
> > Thanks,
> >
> > Thi Huynh
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--f4030435ab4c59de4a0550b46731
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have both app-example<b>-dbg</b> &amp; app-example in IM=
AGE_INSTALL and the result is app-example-dbg &amp; app-example &amp; libex=
ample-dbg &amp; libexample are included in the final image.<br></div><div c=
lass=3D"gmail_extra"><br clear=3D"all"><div><div class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Hu=E1=BB=B3nh Ng=E1=BB=
=8Dc Thi<br><div>-so61pi<br></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, May 29, 2017 at 9:58 PM, Leonardo Sa=
ndoval <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@l=
inux.intel.com" target=3D"_blank">leonardo.sandoval.gonzalez@linux.intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">=
On Sun, 2017-05-28 at 17:23 +0700, Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh wrote:<br=
>
&gt; Hi everyone,<br>
&gt;<br>
&gt;<br>
&gt; Let&#39;s say I have app-example package which depends on libexample.<=
br>
&gt;<br>
&gt; When I add app-example-dbg to IMAGE_INSTALL, libexample-dbg package is=
<br>
&gt; automatically included in the final image which makes the image size<b=
r>
&gt; become bigger.<br>
&gt;<br>
</span>what about installing the non-dbg ones?<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; In this case, is there a way to prevent libexample-dbg from being<br>
&gt; installed?<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Thi Huynh<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
</font></span></blockquote></div><br></div>

--f4030435ab4c59de4a0550b46731--
