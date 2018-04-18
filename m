Return-Path: <mans.zigher@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E155FE00C27; Tue, 17 Apr 2018 21:56:59 -0700 (PDT)
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
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8A9AE009CF
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 21:56:58 -0700 (PDT)
Received: by mail-ot0-f172.google.com with SMTP id p2-v6so527638otf.3
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 21:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eadfGMIZZjBpogJ8Wkk+m1NKoPFmxy4Qc0LJTpli5mk=;
	b=f97joNsQIgF//HJwFziwSDax+3DrvM7pFDLqDAXIpQZeZZyl2vnFzBmhrnh4RYcH9e
	dnKFJwNtMIZGsr+KiUtvgCC4hRK5WwrsEo/TLB6JdE4wkGuJcOuX0ejmcQVyyhr9qnDA
	z/80OSCyx05QOh4CiPLz1aR7FHT3m78EdJvAIIOV0FzTJaewer+Odb0STCY3IR6jdOy5
	U6Y2rvYjlI5Y2H4Gxe8BmzeK7O/f0k2LEraFZtEX8RPzf4RyiCfxn+BAXkvh5OQatWbk
	Ne/IBizRCVuWSdqDy3K2D/yi143ya1fGzBgJ5PR/mHE+A5vruV2MV7i+WmVNj8mokppO
	oxOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eadfGMIZZjBpogJ8Wkk+m1NKoPFmxy4Qc0LJTpli5mk=;
	b=pi33TilumOQpG1Sq3Fa4OCk482anLqi9yxXh7ixL/U80JJnTmrh3FCRUxps0kDpRos
	Yiy3P6vj9XlHkDdVoXzHuc/PkJiqwdUMdHqPPHUiUP8J7m0juoV9cwkzg/2SCq3rgqp+
	Tmygbs1Rwke7V9lf8o4d+JF9P45HN9sjQAbk/ojaicgHf9N7M3VxJTxEe+m/nro/X1uf
	l1AP+yaWgwWmx9t83X6IG3hYHGt92OuFkgkv+zn8Jn0Hc9o3JdKIzHaMKDfIEHAK7Wrt
	ZwBi1tOWcaDgPZuTTan1ywWU8BJ1uH68Tc/ylYqdLEJIgZwBbc8pDY2TkOf4dNOati3P
	mT7w==
X-Gm-Message-State: ALQs6tDn5Jot3UdY95VH94igWLoC5svjD/C7VNOe/ioMtxNacqkg9AjU
	h27kD3KfjyfdHlER7JdCfv9cYHGLYYHuhekgwVg=
X-Google-Smtp-Source: AIpwx49hAg4iGHLaNb6HhAbAD+9pNJS/eYHYZk2I/MqygtQBResvKKLGzFwAIFzMT8w2vDOGseQGJ455KNdAXkLACGE=
X-Received: by 2002:a9d:116c:: with SMTP id
	p41-v6mr366284otp.306.1524027417568; 
	Tue, 17 Apr 2018 21:56:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.153.83 with HTTP; Tue, 17 Apr 2018 21:56:57 -0700 (PDT)
In-Reply-To: <CAEhQi8kVuBfTGy2Bx-cdnhYXtrd2_sWkWpoWqEiw7FNu3DjtJQ@mail.gmail.com>
References: <CAEhQi8khVFOsFzoM=LWZnDMnsbO2o=eodSokurZFSteXTNHjGA@mail.gmail.com>
	<78ba1681-5c7d-2f2b-1784-474d29be6a8b@posteo.de>
	<CAEhQi8kVuBfTGy2Bx-cdnhYXtrd2_sWkWpoWqEiw7FNu3DjtJQ@mail.gmail.com>
From: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Date: Wed, 18 Apr 2018 06:56:57 +0200
Message-ID: <CAEhQi8nQyVJ7zSbs7o-NbrC-gVem77GqH6KKif_4kG4NOuqRkw@mail.gmail.com>
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
X-List-Received-Date: Wed, 18 Apr 2018 04:56:59 -0000
Content-Type: multipart/alternative; boundary="000000000000da28e4056a184826"

--000000000000da28e4056a184826
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dennis,

This makes me a bot confused in cmake_do_configure we have

          -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \
          ${EXTRA_OECMAKE} \
          -Wno-dev

I would think that I am using this cmake_do_configure so then the
-DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 should already be called correct?

BR
Mans Zigher

2018-04-17 20:31 GMT+02:00 M=C3=A5ns Zigher <mans.zigher@gmail.com>:

> Hi,
>
> I actually managed to locate the problem to the cmake project where it
> added include_directories(SYSTEM which then is translated into -isystem
> this call was not included when building in the SDK so that explained why
> this was only triggered when building with bitbake. Thanks for the tip I
> will try it out and see what "cmake_do_configure()" can offer.
>
> Br
> Mans Zigher
>
>
> On Tue, Apr 17, 2018, 19:57 Dennis Menschel <menschel-d@posteo.de> wrote:
>
>> Hi Mans,
>>
>> Am 17.04.2018 um 13:15 schrieb M=C3=A5ns Zigher:
>> > Hi all,
>> >
>> > Have anyone experienced this error message before?
>> >
>> >     c++/7.3.0/cstdlib:75:15: fatal error: stdlib.h: No such file or
>> >     directory
>> >     |  #include_next <stdlib.h>
>> >     |                ^~~~~~~~~~
>> >
>> > I am not seeing this error when cross compiling using the sdk. I can s=
ee
>> > in the output that the -isystem is added which when googling the error
>> > appears to be a problem when cross compiling. Since the sdk works I am
>> > guessing this flag is added by OE/poky. Any pointers on how to go
>> > forward is appreciated.
>> >
>> > BR
>> > Mans Zigher
>>
>> if I recall correctly, the problem can be circumvented by adding the
>> option "-DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1" when invoking cmake.
>>
>> You can find a reference in the function "cmake_do_configure()" located
>> inside "poky/meta/classes/cmake.bbclass"
>>
>> Best regards,
>> Dennis
>>
>>

--000000000000da28e4056a184826
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Dennis,<div><br></div><div>This makes me a bot confused=
 in cmake_do_configure we have</div><div><br></div><div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 \</div><div>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${EXTRA_OECMAKE} \</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -Wno-dev</div></div><div><br></div><div>I would think tha=
t I am using this cmake_do_configure so then the -DCMAKE_NO_SYSTEM_FROM_IMP=
ORTED=3D1 should already be called correct?</div><div><br></div><div>BR</di=
v><div>Mans Zigher</div></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">2018-04-17 20:31 GMT+02:00 M=C3=A5ns Zigher <span dir=3D"ltr">=
&lt;<a href=3D"mailto:mans.zigher@gmail.com" target=3D"_blank">mans.zigher@=
gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"aut=
o">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I actually managed to l=
ocate the problem to the cmake project where it added include_directories(S=
YSTEM which then is translated into -isystem this call was not included whe=
n building in the SDK so that explained why this was only triggered when bu=
ilding with bitbake. Thanks for the tip I will try it out and see what=C2=
=A0<span style=3D"font-family:sans-serif">&quot;cmake_do_configure()&quot; =
can offer.=C2=A0</span></div><div dir=3D"auto"><span style=3D"font-family:s=
ans-serif"><br></span></div><div dir=3D"auto"><span style=3D"font-family:sa=
ns-serif">Br</span></div><div dir=3D"auto"><font face=3D"sans-serif">Mans Z=
igher</font></div><div><div class=3D"h5"><br><br><div class=3D"gmail_quote"=
 dir=3D"auto"><div dir=3D"ltr">On Tue, Apr 17, 2018, 19:57 Dennis Menschel =
&lt;<a href=3D"mailto:menschel-d@posteo.de" target=3D"_blank">menschel-d@po=
steo.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Mans,<br>
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
option &quot;-DCMAKE_NO_SYSTEM_FROM_<wbr>IMPORTED=3D1&quot; when invoking c=
make.<br>
<br>
You can find a reference in the function &quot;cmake_do_configure()&quot; l=
ocated<br>
inside &quot;poky/meta/classes/cmake.<wbr>bbclass&quot;<br>
<br>
Best regards,<br>
Dennis<br>
<br>
</blockquote></div></div></div></div></blockquote></div><br></div>

--000000000000da28e4056a184826--
