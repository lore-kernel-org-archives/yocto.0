Return-Path: <fede.vitali@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03585E00AC7
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 03:50:37 -0700 (PDT)
Received: by mail-ob0-f175.google.com with SMTP id uy5so2364274obc.34
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 03:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=miwO6SVstzkl13k5x6Uqz7FNRTzDOqh+2CuOaWAKTeU=;
	b=g8EH8i1RggR3i9+pnaR1an/WoQnWr9OxLPYvivpCsv+3vFrNu5VZi+MZbggPrNLORt
	UTlXm/d9MGpB41/oqf6eErJnTbPfaafikt8TbosvD9H5yWDb5sXwqWTK8C7O4w7tUVb1
	L2inUL7Hvzkg1zpr2bEWgIbI2udBXaG634bDNbAGdxmFM9NqHgQhUIE95cS+ez+6yfV3
	1Udg6J0P9L1DKoCY+k83eBF1pbfNliHYKuSZ4z78keB1yJSdE/S6o5MImCkLNj0639Ly
	uKbYDhYaqv4c9G9gzCp9wmUWee+PPpSdTvYLiQ1SGKKc6NA4QPBpomhu6FL9P5gS3K12
	hLYg==
MIME-Version: 1.0
X-Received: by 10.60.43.229 with SMTP id z5mr6028570oel.50.1394794236602; Fri,
	14 Mar 2014 03:50:36 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Fri, 14 Mar 2014 03:50:36 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Fri, 14 Mar 2014 03:50:36 -0700 (PDT)
In-Reply-To: <CAP71Wjx9ab3bf_6=k-oocYTo0vZuy+oBbq=kTWGQBibsHonyNw@mail.gmail.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
	<5322C771.8070601@mlbassoc.com>
	<CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>
	<CAD78y+5oXeVFhmq8QYiftL+SXLY0SuPx=PS2gWE1-+a6aVimMg@mail.gmail.com>
	<CAP71Wjx9ab3bf_6=k-oocYTo0vZuy+oBbq=kTWGQBibsHonyNw@mail.gmail.com>
Date: Fri, 14 Mar 2014 11:50:36 +0100
Message-ID: <CAD78y+7cUxjf-0MKA3o1T_XMGkJSvZpVSvHabVsnZ47p0P6KTw@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 10:50:40 -0000
Content-Type: multipart/alternative; boundary=001a11330b8801edb104f48ed7d5

--001a11330b8801edb104f48ed7d5
Content-Type: text/plain; charset=ISO-8859-1

Thank you Nicolas. Sorry, but I'm new to this extremely powerful building
system, I'm a little confused. Now I'll read the sections you suggest!
Thank you again!

Federico
Il giorno 14/mar/2014 11:18, "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
ha scritto:

> Frederico,
>
> On Fri, Mar 14, 2014 at 11:09 AM, Federico Vitali <fede.vitali@gmail.com>
> wrote:
> > Thank you Nicholas and Gary! I'm quite experienced in linux embedded
> > developement, but I'm new to yocto / openembedded.
> > Nicolas, can you please explain me how to use my sources separate from OE
> > build dir tree and still using oe built system?
> > Do I have to edit the sources directly in builddir/tmp/work/etcetera or
> can
> > I keep it separate?
>
> Please have a look at
>
>
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc
>
> http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-from-an-external-source
>
> let us know if you have additional questions
>

--001a11330b8801edb104f48ed7d5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Thank you Nicolas. Sorry, but I&#39;m new to this extremely powerful bui=
lding system, I&#39;m a little confused. Now I&#39;ll read the sections you=
 suggest! <br>
Thank you again! </p>
<p>Federico </p>
<div class=3D"gmail_quote">Il giorno 14/mar/2014 11:18, &quot;Nicolas Deche=
sne&quot; &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.deches=
ne@linaro.org</a>&gt; ha scritto:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
Frederico,<br>
<br>
On Fri, Mar 14, 2014 at 11:09 AM, Federico Vitali &lt;<a href=3D"mailto:fed=
e.vitali@gmail.com">fede.vitali@gmail.com</a>&gt; wrote:<br>
&gt; Thank you Nicholas and Gary! I&#39;m quite experienced in linux embedd=
ed<br>
&gt; developement, but I&#39;m new to yocto / openembedded.<br>
&gt; Nicolas, can you please explain me how to use my sources separate from=
 OE<br>
&gt; build dir tree and still using oe built system?<br>
&gt; Do I have to edit the sources directly in builddir/tmp/work/etcetera o=
r can<br>
&gt; I keep it separate?<br>
<br>
Please have a look at<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.h=
tml#ref-classes-externalsrc" target=3D"_blank">http://www.yoctoproject.org/=
docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc</a><br>
<a href=3D"http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.htm=
l#building-software-from-an-external-source" target=3D"_blank">http://www.y=
octoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-fro=
m-an-external-source</a><br>

<br>
let us know if you have additional questions<br>
</blockquote></div>

--001a11330b8801edb104f48ed7d5--
