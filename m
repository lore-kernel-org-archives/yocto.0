Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61656E0085E; Sun, 26 Oct 2014 10:42:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5F92E0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 10:42:18 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id u10so4569837lbd.20
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 10:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=rKWtuGePDIjbUCFEjmIRXCBcx0GF0rFdc+8PiyRWsA8=;
	b=WiD8gfnSJ4W54Pco+AjTMu3dep8MVwCxYyodr+9N23kMnSKbS0Tznjw6h39swNU6dt
	KLvmdqaOgIehGbCaEbSIF5hwaUN+yFDCznfroUEPXWiaCkDfNXp0BDooI3jDxE3nk1Q0
	fxGribeLLEXWiY+amhO378VURpmbda9r6YrP0pNuew7Ue4ugyMwt+Vopz93JDqXTSwEc
	8ut3PN36HxBfi+zMD9RuUU/LGPWDc17SAoILX3ZRFl4oD4JwAcXR9FMEJb3zGFrhV12O
	XBstD95XzPbfV3GJtIxm/4Ll+CbpQIUpaqohLWNNXX7hDsyUVtIn2oaNlC7rooigh6lC
	gm4w==
X-Received: by 10.152.7.233 with SMTP id m9mr18437616laa.32.1414345336560;
	Sun, 26 Oct 2014 10:42:16 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.6.234 with HTTP; Sun, 26 Oct 2014 10:41:56 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE65219103779841148434@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841148434@AZ-US1EXMB03.global.avaya.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Sun, 26 Oct 2014 10:41:56 -0700
X-Google-Sender-Auth: q0UzzmOIuO6QAOzWqSLFhsQhJxQ
Message-ID: <CABcZAN=5YKuffJM6hTYVfc_rfYzX7Gkck8gmqx5WifgVb68nTw@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't override task from bbclass with - in its name
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
X-List-Received-Date: Sun, 26 Oct 2014 17:42:26 -0000
Content-Type: multipart/alternative; boundary=001a11c34e3e60209d050656ef20

--001a11c34e3e60209d050656ef20
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 26, 2014 at 8:15 AM, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> I have custom classes that override a task thus (in foo.bbclass)
>
>         foo_do_something () {
>                 ...
>         }
>
>         EXPORT_FUNCTIONS do_something
>
> but if I change the name to foo-bar.bbclass and change the class thus
>
>         foo-bar_do_something () {
>                 ...
>         }
>
>         EXPORT_FUNCTIONS do_something
>
> then building fails with "foo-bar_do_something: not found" and, sure
> enough,
> run.do_something does not contain the definition of foo-bar_do_something.
>

- isn't a valid character in a shell function, so while potentially
irritating, it's not surprising :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c34e3e60209d050656ef20
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Oct 26, 2014 at 8:15 AM, Vuille, Martin (Martin) <span dir=3D"ltr">=
&lt;<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":gz" c=
lass=3D"a3s" style=3D"overflow:hidden">I have custom classes that override =
a task thus (in foo.bbclass)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 foo_do_something () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 EXPORT_FUNCTIONS do_something<br>
<br>
but if I change the name to foo-bar.bbclass and change the class thus<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 foo-bar_do_something () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 EXPORT_FUNCTIONS do_something<br>
<br>
then building fails with &quot;foo-bar_do_something: not found&quot; and, s=
ure enough,<br>
run.do_something does not contain the definition of foo-bar_do_something.</=
div></blockquote></div><br></div><div class=3D"gmail_extra">- isn&#39;t a v=
alid character in a shell function, so while potentially irritating, it&#39=
;s not surprising :)<br>-- <br>Christopher Larson<br>clarson at kergoth dot=
 com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<b=
r>Senior Software Engineer, Mentor Graphics
</div></div>

--001a11c34e3e60209d050656ef20--
