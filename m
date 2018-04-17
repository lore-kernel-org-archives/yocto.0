Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09ACAE00C1B; Tue, 17 Apr 2018 11:31:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mans.zigher[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 540E0E00831
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 11:31:35 -0700 (PDT)
Received: by mail-ot0-f175.google.com with SMTP id p2-v6so5659623otf.3
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 11:31:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=y3PCu6jNC9BlW4L2Jk1vue3CgPpRlROSeAvwEogNkFo=;
	b=gFFvO7JcwywHXg53xUuK/XvwjsljyCPyYyTPOk0IKw8OLUe/sbKZbTt8LbWpSPHNSQ
	epeUuNuP3N1JxV66QUp1UsRI3EHERzjwRvU1uz9pTVq959o2/c9+giL2XrvavaULb0DX
	ZzcL1o10MAGoJ4Yyb9qOf63e5B/wfsMerijeNUOtv3Zgb5BB+w9nUInjHU+mmvDAQIFw
	ZYdxu6llfUwNguh80twpK+FXt+Y1FHGOlfrAycgpLkZKQw0qCwcILLr0WWgyb++21wyk
	zYUDWTZ6bU3VvIvRGW/KL9yVmbYeo2Ss7XrhuXDi7Z4hO6x2LkCcsoMvh62whuSCGg7l
	a2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=y3PCu6jNC9BlW4L2Jk1vue3CgPpRlROSeAvwEogNkFo=;
	b=FV1PU+akrZuOqp+Z46HCw4EbS+48ph5iBmSl8JZdu8Gqfpw9QfFdOIvdlVd89RnFSC
	K0jz6C6NzbLolQhQ+CQwYTKSnUJyMywAuqkSEUMxP3tQg0bXDWmTi/iQbRY3cdrIR8TT
	as2dmgMnAXElW5eJZMDJhpInfcysRWNDT4FBb+h5N+H29W6SXLro0l45oTejgvFEnsdg
	zEMiHagmwuyQVcvEn5aus+xzVArg2d6HldSbFcvBANQ9mOphXf7idgMMyrMXGCGyPia8
	S1GVYWWQsjMRWXj7qBoqMzNhCeaf6pGRzgNqSvwUAblVDHpP9A4+wUBwjSih4J0Xu/TO
	PPXQ==
X-Gm-Message-State: ALQs6tBqaMyW4t9EiD/sGsmGyioN5zuT/r4t8wRsNhfoLICbmNhbNL3G
	w7EaPAat0SwBsixJxHycjcXF8VRhv5Ozscg9cIE=
X-Google-Smtp-Source: AIpwx4+k/V3BN0wIXIhi7pHYmTl7T2CJPaDWXsYYqAOtUSX7mxMJb30/zqLC8VOnks1+k2r5GG5gceYXTCKgm+Q9Qv0=
X-Received: by 2002:a9d:605:: with SMTP id 5-v6mr2067218otn.360.1523989895370; 
	Tue, 17 Apr 2018 11:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
	<78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
In-Reply-To: <78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Tue, 17 Apr 2018 18:31:24 +0000
Message-ID: <CAEhQi8kVuBfTGy2Bx-cdnhYXtrd2_sWkWpoWqEiw7FNu3DjtJQ@mail.gmail.com>
To: Dennis Menschel <menschel-d@posteo.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rocko cmake buld cstdlib:75:15: fatal error: stdlib.h: No such file or directory
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
X-List-Received-Date: Tue, 17 Apr 2018 18:31:37 -0000
Content-Type: multipart/alternative; boundary="0000000000005aedc9056a0f8c2b"

--0000000000005aedc9056a0f8c2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I actually managed to locate the problem to the cmake project where it
added include_directories(SYSTEM which then is translated into -isystem
this call was not included when building in the SDK so that explained why
this was only triggered when building with bitbake. Thanks for the tip I
will try it out and see what "cmake_do_configure()" can offer.

Br
Mans Zigher


On Tue, Apr 17, 2018, 19:57 Dennis Menschel <menschel-d@posteo.de> wrote:

> Hi Mans,
>
> Am 17.04.2018 um 13:15 schrieb M=C3=A5ns Zigher:
> > Hi all,
> >
> > Have anyone experienced this error message before?
> >
> >     c++/7.3.0/cstdlib:75:15: fatal error: stdlib.h: No such file or
> >     directory
> >     |  #include_next <stdlib.h>
> >     |                ^~~~~~~~~~
> >
> > I am not seeing this error when cross compiling using the sdk. I can se=
e
> > in the output that the -isystem is added which when googling the error
> > appears to be a problem when cross compiling. Since the sdk works I am
> > guessing this flag is added by OE/poky. Any pointers on how to go
> > forward is appreciated.
> >
> > BR
> > Mans Zigher
>
> if I recall correctly, the problem can be circumvented by adding the
> option "-DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1" when invoking cmake.
>
> You can find a reference in the function "cmake_do_configure()" located
> inside "poky/meta/classes/cmake.bbclass"
>
> Best regards,
> Dennis
>
>

--0000000000005aedc9056a0f8c2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I actual=
ly managed to locate the problem to the cmake project where it added includ=
e_directories(SYSTEM which then is translated into -isystem this call was n=
ot included when building in the SDK so that explained why this was only tr=
iggered when building with bitbake. Thanks for the tip I will try it out an=
d see what=C2=A0<span style=3D"font-family:sans-serif">&quot;cmake_do_confi=
gure()&quot; can offer.=C2=A0</span></div><div dir=3D"auto"><span style=3D"=
font-family:sans-serif"><br></span></div><div dir=3D"auto"><span style=3D"f=
ont-family:sans-serif">Br</span></div><div dir=3D"auto"><font face=3D"sans-=
serif">Mans Zigher</font></div><br><br><div class=3D"gmail_quote" dir=3D"au=
to"><div dir=3D"ltr">On Tue, Apr 17, 2018, 19:57 Dennis Menschel &lt;<a hre=
f=3D"mailto:menschel-d@posteo.de">menschel-d@posteo.de</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">Hi Mans,<br>
<br>
Am 17.04.2018 um 13:15 schrieb M=C3=A5ns Zigher:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; Have anyone experienced this error message before?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0c++/7.3.0/cstdlib:75:15: fatal error: stdlib.h: No =
such file or<br>
&gt;=C2=A0 =C2=A0 =C2=A0directory=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0|=C2=A0 #include_next &lt;stdlib.h&gt;=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ^~~~~~~~~~=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<br>
&gt; <br>
&gt; I am not seeing this error when cross compiling using the sdk. I can s=
ee<br>
&gt; in the output that the -isystem is added which when googling the error=
<br>
&gt; appears to be a problem when cross compiling. Since the sdk works I am=
<br>
&gt; guessing this flag is added by OE/poky. Any pointers on how to go<br>
&gt; forward is appreciated.<br>
&gt; <br>
&gt; BR<br>
&gt; Mans Zigher<br>
<br>
if I recall correctly, the problem can be circumvented by adding the<br>
option &quot;-DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1&quot; when invoking cmake.=
<br>
<br>
You can find a reference in the function &quot;cmake_do_configure()&quot; l=
ocated<br>
inside &quot;poky/meta/classes/cmake.bbclass&quot;<br>
<br>
Best regards,<br>
Dennis<br>
<br>
</blockquote></div></div>

--0000000000005aedc9056a0f8c2b--
