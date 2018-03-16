Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C031E00AD8; Thu, 15 Mar 2018 22:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49808E0073D
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 22:29:40 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id i21so2625521uak.8
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 22:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=otJO2m+mJWWx6VbDpIMet+SIp2a992Mr64RJR8O8Bkc=;
	b=hjaXpsU7/qQBrwHC7yrlG7im2R0Y+1n6s5IeA7i/t391ctCC2dUjymfOP772QsocGI
	9FTh3xf/MKWgUDJ9TtwyYLzZRkv/V1MIwB/6KMoBvenQjj1xHEIfm+xmCOMT1poo9Kuj
	Kqy5tzvO0sAe+dwnVVMMN+HG9NsjCuaPWhc7ejNPgq3R7k0zKS8wqlZWcv/A491W+aOD
	TaUp9Y3egPa2r5q6BnqHrYSoPUOjEEA/8hBdqE0QdiNpVqKCAfaDpwlw+qqogfOlwoo2
	BKVNp+rqLCTWv2CoUPOF/rfgMpIg5PNfwZJWB6PaI1hjFQ7UahgIrJY69eMTZ441J/6I
	lPVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=otJO2m+mJWWx6VbDpIMet+SIp2a992Mr64RJR8O8Bkc=;
	b=J5jIvrFNm40i23vo8fLWQOQv+udq+9L5+Uh7WS8DASi9yqP6b1Lzuv78kSDvZOpkm3
	I26RWFZGEssdtOpZVEhHVI1dYzKioiEuvGT+yK7Y00rJYHnT328gymKIrlOmlih5od+h
	WrL2BaCYETh58WZFPrJ4tbcP+pBAF1AlXCtx31XSnZ2Nu+380T40CCrWDWYIBR/riSiJ
	l4/+H+5UfbwQFNpqJ/pgxRTZ9E8q1P/a/fOm70i1SxRlcEX4i488OkvDqBYds+OUFvoo
	qbaEvNnE+Okq63WtDqmTnjwtXOOH8fk15yFJrAXgtqNCnr/N+XDdBib5SHoQVWiFGeDc
	IM4Q==
X-Gm-Message-State: AElRT7GQRxJwGzf+Usni/GjXcu0NncOadU1GhyuZg6n3orq3n1m6oGWj
	NnJm4tS6oQ8uShXxMa/XpaLT1GmUa9XRwVEboK8=
X-Google-Smtp-Source: AG47ELvVJYjWZyREei/5VAEsIMIXESy+lpN55sPLmiqseJNCCEm7f/ekgOYm7xmXDzT/SZXUDdocjcNwE5QJnLdp1wI=
X-Received: by 10.176.4.231 with SMTP id 94mr299521uaw.80.1521178180079; Thu,
	15 Mar 2018 22:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAFq4t4ghBNE+1SXZ7L-KuRMfw6z7E0a4ageKi33UbKbftXL0rQ@mail.gmail.com>
	<alpine.LFD.2.21.1803150856190.32449@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1803150856190.32449@localhost.localdomain>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 16 Mar 2018 05:29:29 +0000
Message-ID: <CANx9H-Ci26zKAYyKxpv5UehejFwpDF5Ww_JRzJnNNqhJFZy7hg@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: OpenCV with python3
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
X-List-Received-Date: Fri, 16 Mar 2018 05:29:43 -0000
Content-Type: multipart/alternative; boundary="94eb2c124da21058c8056780e555"

--94eb2c124da21058c8056780e555
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ditto for Robert=E2=80=99s comment. Please look at the bitbake manual and
understand what the syntax means [1].

Also,  =E2=80=9Cpython-foo=E2=80=9D means the python2 version. The default =
PACKAGECONFIG
[2] for opencv builds for python3. You need =E2=80=9Cpython3-opencv=E2=80=
=9D.

Finally, I would encourage you to use CORE_IMAGE_EXTRA_INSTALL [3] rather
than IMAGE_INSTALL in the local.conf context.

[1]
https://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-=
manual.html#appending-and-prepending
[2]
http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support=
/opencv/opencv_3.3.bb?h=3Dmaster#n90
[3]
https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-CO=
RE_IMAGE_EXTRA_INSTALL

On Thu, Mar 15, 2018 at 5:57 AM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Thu, 15 Mar 2018, Peter Balazovic wrote:
>
> > Hello all,
> > I have python module of OpenCV for python 2.7 on my Yocto image adding
> via local.conf
> >
> > IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D
>
>   i know i've harped on this before, but can people please stop
> combining the constructs "_append" and "+=3D" in the same expression?
>
> rday--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c124da21058c8056780e555
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Ditto for Robert=E2=80=99s comment. Please look at t=
he bitbake manual and understand what the syntax means [1].</div><br><div d=
ir=3D"auto">Also, =C2=A0=E2=80=9Cpython-foo=E2=80=9D means the python2 vers=
ion. The default PACKAGECONFIG [2] for opencv builds for python3. You need =
=E2=80=9Cpython3-opencv=E2=80=9D.</div></div><div dir=3D"auto"><br></div><d=
iv dir=3D"auto">Finally, I would encourage you to use CORE_IMAGE_EXTRA_INST=
ALL [3] rather than IMAGE_INSTALL in the local.conf context.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">[1]=C2=A0<a href=3D"https://www.yocto=
project.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#appen=
ding-and-prepending">https://www.yoctoproject.org/docs/current/bitbake-user=
-manual/bitbake-user-manual.html#appending-and-prepending</a></div><div><di=
v dir=3D"auto">[2]=C2=A0<a href=3D"http://cgit.openembedded.org/meta-openem=
bedded/tree/meta-oe/recipes-support/opencv/opencv_3.3.bb?h=3Dmaster#n90">ht=
tp://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/o=
pencv/opencv_3.3.bb?h=3Dmaster#n90</a></div><div dir=3D"auto">[3]=C2=A0<a h=
ref=3D"https://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html=
#var-CORE_IMAGE_EXTRA_INSTALL">https://www.yoctoproject.org/docs/current/re=
f-manual/ref-manual.html#var-CORE_IMAGE_EXTRA_INSTALL</a></div><br><div cla=
ss=3D"gmail_quote"><div>On Thu, Mar 15, 2018 at 5:57 AM Robert P. J. Day &l=
t;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashco=
urse.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, 15 M=
ar 2018, Peter Balazovic wrote:<br>
<br>
&gt; Hello all,<br>
&gt; I have python module of OpenCV for python 2.7=C2=A0on my Yocto image a=
dding via local.conf<br>
&gt;<br>
&gt; IMAGE_INSTALL_append +=3D =E2=80=9C python-opencv=E2=80=9D<br>
<br>
=C2=A0 i know i&#39;ve harped on this before, but can people please stop<br=
>
combining the constructs &quot;_append&quot; and &quot;+=3D&quot; in the sa=
me expression?<br>
<br>
rday--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c124da21058c8056780e555--
