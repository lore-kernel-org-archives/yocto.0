Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A033E0084A; Fri, 14 Nov 2014 09:10:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D02D3E007C2
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 09:10:14 -0800 (PST)
Received: by mail-ie0-f178.google.com with SMTP id rp18so18343001iec.37
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 09:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dN5jIO7UranTh0gkprjLe+RkaRJP6vnYGbU21/imbTs=;
	b=DnWqaURh+PUYG9Jm5D29YtVYYXL0Q4q0UKkyNm84JWGaytLwsvfZnlHYOm2W6LeUGX
	34KTzk+bhf6T0kFr+ynBkhxuoqQq7q79OMOQJIuowMBeh2TAb0NkfhlwtaVSJJFEp1tK
	m1lXFt1XsCB6pOLzHGvjPsnTCK2ITYZ2x/rYoNNZBWYXlDcfXZs7R5LrbjfKL2J9w/GC
	Ug9P6B1OpMIgzHxtZcDuDwPasP4jQiMKI2btgzgq6hm/Mvhqx+Q3qSkwGXDTipN8R96P
	KultNzfe7bClCgbOzpKQxKP9RGvoay+VStX8E8Cdtu8GCbuMQFzl+Mx6GhEO0rpTRH3w
	wHZg==
MIME-Version: 1.0
X-Received: by 10.50.171.129 with SMTP id au1mr764979igc.0.1415985014033; Fri,
	14 Nov 2014 09:10:14 -0800 (PST)
Received: by 10.50.155.170 with HTTP; Fri, 14 Nov 2014 09:10:13 -0800 (PST)
In-Reply-To: <1415952791.3565.1.camel@open-rnd.pl>
References: <CAGMdoFnkFtyjZ7R1jzBM3WUCYEi_A-httnntQZFBVgiahBz9tw@mail.gmail.com>
	<1415952791.3565.1.camel@open-rnd.pl>
Date: Fri, 14 Nov 2014 09:10:13 -0800
Message-ID: <CAGMdoFkAvhdgSr4L9Ej8AAy3nc+WUh-q88-=a8hX7PJe52rgUA@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: maciej.borzecki@open-rnd.pl
Cc: yocto@yoctoproject.org
Subject: Re: Web frameworks on embedded linux
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
X-List-Received-Date: Fri, 14 Nov 2014 17:10:30 -0000
Content-Type: multipart/alternative; boundary=089e01183bd0c4d20c0507d4b33d

--089e01183bd0c4d20c0507d4b33d
Content-Type: text/plain; charset=UTF-8

On Fri, Nov 14, 2014 at 12:13 AM, Maciek Borzecki <
maciej.borzecki@open-rnd.pl> wrote:

> On czw, 2014-11-13 at 23:12 -0800, Edward Wingate wrote:
> > I've been trying to get an existing python flask application running
> > on an embedded linux distro (Poky).  The web app was originally
> > deployed on a Debian distro.  I need to move the application to a less
> > heftier board and wanted to try a distro created by Yocto, rather than
> > try to pare down Debian.
> >
> > I've been following the chain of dependencies for the web application
> > and adding them to Yocto to try and get the app to work (nginx, uwsgi,
> > python, pyserial, etc.), and hit a bump - Python's built-in logging
> > and codecs modules are not provided by Yocto.  Maybe I can add them
> > myself, or maybe I'll rip them out of the application, but I wanted to
> > take a step back and see if maybe Python/Flask is not the best app
> > framework to use in an embedded linux distro.
> Have you installed python-modules pacakge? This package pulls in all
> standard python modules as dependencies.
>
>
No, I haven't.  I still have a lot to learn about Yocto and recipes.  I
went ahead and pulled python-modules in and and got a lot further in making
this app work.  Thanks, Maciek, for your help.

The ramdisk image ballooned to 22MB though.  It's expected, but due to
flash size constraints, Python may not be an option in this case.


> I've used Tornado to provide a REST-ful API for an Android application
> and some basic web pages with status information and so on. Worked quite
> well.
>

Do you remember what your final ramdisk image size was?

I would still love to hear what web frameworks others here have used on
embedded linux.

--089e01183bd0c4d20c0507d4b33d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Nov 14, 2014 at 12:13 AM, Maciek Borzecki <span dir=3D"ltr">&lt;<a href=
=3D"mailto:maciej.borzecki@open-rnd.pl" target=3D"_blank">maciej.borzecki@o=
pen-rnd.pl</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span>On czw, 2014-11-13 at 23:12 -0800, Edward Wingate wrote:<b=
r>
&gt; I&#39;ve been trying to get an existing python flask application runni=
ng<br>
&gt; on an embedded linux distro (Poky).=C2=A0 The web app was originally<b=
r>
&gt; deployed on a Debian distro.=C2=A0 I need to move the application to a=
 less<br>
&gt; heftier board and wanted to try a distro created by Yocto, rather than=
<br>
&gt; try to pare down Debian.<br>
&gt;<br>
&gt; I&#39;ve been following the chain of dependencies for the web applicat=
ion<br>
&gt; and adding them to Yocto to try and get the app to work (nginx, uwsgi,=
<br>
&gt; python, pyserial, etc.), and hit a bump - Python&#39;s built-in loggin=
g<br>
&gt; and codecs modules are not provided by Yocto.=C2=A0 Maybe I can add th=
em<br>
&gt; myself, or maybe I&#39;ll rip them out of the application, but I wante=
d to<br>
&gt; take a step back and see if maybe Python/Flask is not the best app<br>
&gt; framework to use in an embedded linux distro.<br>
</span>Have you installed python-modules pacakge? This package pulls in all=
<br>
standard python modules as dependencies.<br>
<br></blockquote><div><br></div><div>No, I haven&#39;t.=C2=A0 I still have =
a lot to learn about Yocto and recipes.=C2=A0 I went ahead and pulled pytho=
n-modules in and and got a lot further in making this app work.=C2=A0 Thank=
s, Maciek, for your help.=C2=A0 <br><br>The ramdisk image  ballooned to 22M=
B though.=C2=A0 It&#39;s expected, but due to flash size constraints, Pytho=
n may not be an option in this case.<br>=C2=A0<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
I&#39;ve used Tornado to provide a REST-ful API for an Android application<=
br>
and some basic web pages with status information and so on. Worked quite
well.<br></blockquote><div><br></div><div>Do you remember what your final r=
amdisk image size was? <br></div></div><br></div><div class=3D"gmail_extra"=
>I would still love to hear what web frameworks others here have used on em=
bedded linux.<br><br></div></div>

--089e01183bd0c4d20c0507d4b33d--
