Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8EF5E00724
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 10:58:02 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id fc21so19687914vbb.35
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2013 10:58:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=/0Sc3N7r/u32qxYOZRh0MbzM7gftBkyiGwrumEm1cJQ=;
	b=U2JtH/rAg+uQ2CaHKxGDSwxCZBQeUcEzj9ZWBvLBJCowTlSj37zRxY4sMjtyQ87FMA
	/3cHAC5eipc/orFKdPLaWjBY3zON70UydMprLCqWpJKkA5q2zXuetascRE3VxB5IiiVz
	qHd/AuTCHWTpO3KTSjLi2u9RdC37sYE7CngEVnDtGMkX4+Q2eoF4dmaEOOzOanUVqjHt
	jvjANvSvY5CWJPuSj1PgUevHQhYnitIKElJTDu84m6YYbM8JuQ23LYtIt8/0lmcXq5mZ
	HIuK0Sk0liibX32waCQBbyOAvXCYtLjViH+RC975D29HgYYCAScH12iAFj4DlU/qunkt
	ZfLQ==
Received: by 10.52.66.71 with SMTP id d7mr73393778vdt.121.1357585081866; Mon,
	07 Jan 2013 10:58:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Mon, 7 Jan 2013 10:57:41 -0800 (PST)
X-Originating-IP: [5.13.212.252]
In-Reply-To: <alpine.DEB.2.02.1301071305500.1774@oneiric>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net> <50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
	<50EB0DFD.3030007@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071305500.1774@oneiric>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 7 Jan 2013 20:57:41 +0200
Message-ID: <CAK18fxGn20RTdPuxSmasf4f_H3P9J9hN6L-wwsSqGYeKMs=TUw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQnaEdPzmb6NwKE+Cxlz4pdKl1u/50xo5l7Slejx23LvHDpwEzwrhSiosCuRUtGF1VFrFOCd
Cc: Yocto Project <yocto@yoctoproject.org>, ed nelson <enelson1000@comcast.net>
Subject: Re: Raspberry Pi do_fetch failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Jan 2013 18:58:03 -0000
Content-Type: multipart/alternative; boundary=20cf307813668e9a7c04d2b7685f

--20cf307813668e9a7c04d2b7685f
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 7, 2013 at 8:07 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Mon, 7 Jan 2013, Alex J Lennon wrote:
>
> > On 07/01/2013 17:53, Robert P. J. Day wrote:
> > > fatal: The remote end hung up unexpectedly
> > > fatal: early EOF
> > > fatal: index-pack failed
> >
> > fwiw there's a note here which relates to Cygwin:
> >
> >
> http://stackoverflow.com/questions/2505644/git-checking-out-problem-fatal-early-eofs
> >
> > I wonder if it might be worth trying the compression setting to see if
> > that helps (less than ideal I know)
> >
> > git config --add core.compression -1
>
>   i'm just heading out for a bit, i'll give that a shot when i get
> home (unless someone else wants to try it first).  but FWIW, i've had
> fetching issues before with kernel source for other builds -- it's not
> like raspberry pi is the only configuration where i've seen this
> error.
>

As i said. We fixed an identical problem for fsl months ago. Fix? Github
support ticket.

ag

--20cf307813668e9a7c04d2b7685f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Mon, Jan 7, 2013 at 8:07 PM, Robert P. J. Day <span dir=
=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpj=
day@crashcourse.ca</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Mon, 7 Jan 2013, Alex J=
 Lennon wrote:<br>
<br>
</div><div class=3D"im">&gt; On 07/01/2013 17:53, Robert P. J. Day wrote:<b=
r>
&gt; &gt; fatal: The remote end hung up unexpectedly<br>
&gt; &gt; fatal: early EOF<br>
&gt; &gt; fatal: index-pack failed<br>
&gt;<br>
&gt; fwiw there&#39;s a note here which relates to Cygwin:<br>
&gt;<br>
&gt; <a href=3D"http://stackoverflow.com/questions/2505644/git-checking-out=
-problem-fatal-early-eofs" target=3D"_blank">http://stackoverflow.com/quest=
ions/2505644/git-checking-out-problem-fatal-early-eofs</a><br>
&gt;<br>
&gt; I wonder if it might be worth trying the compression setting to see if=
<br>
&gt; that helps (less than ideal I know)<br>
&gt;<br>
&gt; git config --add core.compression -1<br>
<br>
</div>=A0 i&#39;m just heading out for a bit, i&#39;ll give that a shot whe=
n i get<br>
home (unless someone else wants to try it first). =A0but FWIW, i&#39;ve had=
<br>
fetching issues before with kernel source for other builds -- it&#39;s not<=
br>
like raspberry pi is the only configuration where i&#39;ve seen this<br>
error.<br>
<div class=3D"im HOEnZb"></div></blockquote></div><br></div><div class=3D"g=
mail_extra" style>As i said. We fixed an identical problem for fsl months a=
go. Fix? Github support ticket.=A0</div><div class=3D"gmail_extra" style><b=
r></div>

<div class=3D"gmail_extra" style>ag</div></div>

--20cf307813668e9a7c04d2b7685f--
