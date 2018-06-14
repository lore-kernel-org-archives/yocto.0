Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFCB7E01335; Thu, 14 Jun 2018 14:50:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BADAE0113E
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 14:50:31 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id b77-v6so4590125vkb.5
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 14:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hOzwC46cZBfSLXpoeBrLQsWXdMNh4fO+2FMy3LX7ZBs=;
	b=X/2TwUUOj3jR00/hO8I407C9cWVHv+OGAs80Gko/XM0Q6WnVykG0ypaDu0b/ZxR+ic
	HG1zGR5VxaRSOVQAduDSiBSbaOUZxMwueHTlActWs1fGFyCycNBV45Q8Tet6e4RpbiIU
	Go6b8PmO8hsSepOc80jQo4Cgxu284MeGSNTg3+BEol3Rzx0ZAwjdVYSwfY5wbpBbiYHx
	4R1FLsXURfq/d6hx5Ja7GoyH73/Fpqcu19SWJUM0kP0Mt7/rOUKhiwIILsAQiAWuqZ+f
	9zkgHGsmtzd06OuYEnHI/9SbKAtsyhFFRrt9pdfQtTm0UaAo0Ngyi2C9exo/r7NaPEQu
	oRWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hOzwC46cZBfSLXpoeBrLQsWXdMNh4fO+2FMy3LX7ZBs=;
	b=SbykDgKLLt/NCeN3YiiWWoH8otN89ZjcazgRsGG098VxhDmZZswPuD6ZI8lzyrsPSc
	wGfDaHFWXWQICOEM8NY1bWsbrcSF5u9fYOP8gcPjJNXpeOzIP0nYqa7Adud84MLgUVjs
	NgC3RAB7Bj+0oeK82kPDJ76VjG0XqzvOAQ0wTKxp5HNE3+M5WBO/EGE750IGfUIREbrG
	EYnzkzriuFx13XcRwoUsZ3XpcWECuTZHEibiIzL4QYwGKd0Ccnb/f1R8b4rJoPO78ojO
	DxN5MHRfg9ReZXmxa0BXjNULl8pFF7syFZM1m+rDuJPn3z1hx4aVt/pX3jkXFHRi2zWC
	fCYw==
X-Gm-Message-State: APt69E0aeDL4VX4lKC86czJuZAKaWXC3ncMHZFioIG1k/7KmOA7cxR/h
	6YlXeZ1shj7Uv396Nx2a8UfeMbBEDgfrc/K5OpY=
X-Google-Smtp-Source: ADUXVKIrWgbJ5N128dEgig00fMfb6nav0Kz69lZCetCP6aVFmwzhUoF/360QAG55/y9w25IztPtkQHWNyDpS/pCCzTY=
X-Received: by 2002:a1f:7c4:: with SMTP id 187-v6mr2729230vkh.60.1529013030451;
	Thu, 14 Jun 2018 14:50:30 -0700 (PDT)
MIME-Version: 1.0
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
	<CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
	<aade00d6-6ad7-a894-420b-47a97fb68d37@gmail.com>
	<CANge7vVnftfefRnx80EjvEKfZUkPNvd0mf9QUMqXeXc-6UkCag@mail.gmail.com>
	<CAMKF1so9RB+wb3TJPYNkFuW_LU4fgW8Hpjhgz0S1+b0QDdwgng@mail.gmail.com>
	<CANge7vUjYRAiGSZY-QGzLTU0p57xcOPS3JryxaO0sLVDSZ-ZZw@mail.gmail.com>
In-Reply-To: <CANge7vUjYRAiGSZY-QGzLTU0p57xcOPS3JryxaO0sLVDSZ-ZZw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Jun 2018 14:50:19 -0700
Message-ID: <CAMKF1spu_eeWWqxJFFGqZ_kdp9BJQSC-1ExHwt9G8ZYPs=k57g@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Thu, 14 Jun 2018 21:50:31 -0000
Content-Type: multipart/alternative; boundary="000000000000897d8d056ea116e7"

--000000000000897d8d056ea116e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 14, 2018 at 1:08 PM Jon Szymaniak <jon.szymaniak@gmail.com>
wrote:

> On Thu, Jun 14, 2018 at 14:18 Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Thu, Jun 14, 2018 at 9:56 AM Jon Szymaniak <jon.szymaniak@gmail.com>
>> wrote:
>> >
>> > On Thu, Jun 14, 2018 at 11:43 Khem Raj <raj.khem@gmail.com> wrote:
>> > > Do you have capstone development headers/libs installed on your buil=
d
>> host ?
>> > >
>> >
>> > No, and I understand that's an easy thing to address on the build host=
.
>> >
>> > However, I don't think this should be necessary build host dependency.
>> > QEMU includes the capstone codebase as a git submodule, so everything
>> > that's needed is there.
>> >
>> > Maybe it's just a matter of tweaking the recipe to set
>> > CMAKE_INSTALL_PREFIX appropriately so that when the build dives down
>> > into the capstone directory, this points to the correct prefix?
>> >
>> > It looks like the inclusion and use of capstone is new, as of the QEMU
>> > version included with sumo. (i.e. This appears not to be the situation
>> > with the version used in rocko and pyro).
>>
>> Least intrusive approach would be to disable it if its not something you
>> depend on.
>
>
> Makes sense, thank you.
>
> Two workarounds that worked for me were either adding qemu-native to
> ASSUME_PROVIDED or appending =E2=80=9C--disable-capstone=E2=80=9D to qemu=
=E2=80=99s EXTRA_OECONF.
>

The fact that not everyone sees this issue makes me think that it might be
something in your environment that=E2=80=99s triggering this but if we disa=
ble it
then we make the issue irrelevant

>
> I=E2=80=99ll try to follow up with a patch to the recipe in oe-core, unle=
ss you
> suspect that the source of this is merely something on my end.
>
>

--000000000000897d8d056ea116e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Thu=
, Jun 14, 2018 at 1:08 PM Jon Szymaniak &lt;<a href=3D"mailto:jon.szymaniak=
@gmail.com">jon.szymaniak@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div><div><div><div>On Thu, Jun 14, 2018 at 14:18 Khem Raj =
&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.=
com</a>&gt; wrote:<br></div><div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">On Thu, Jun 14, 2018 at 9:56 AM Jon Szymaniak &lt;<a href=
=3D"mailto:jon.szymaniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.c=
om</a>&gt; wrote:<br>
&gt;<br>
&gt; On Thu, Jun 14, 2018 at 11:43 Khem Raj &lt;<a href=3D"mailto:raj.khem@=
gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; &gt; Do you have capstone development headers/libs installed on your b=
uild host ?<br>
&gt; &gt;<br>
&gt;<br>
&gt; No, and I understand that&#39;s an easy thing to address on the build =
host.<br>
&gt;<br>
&gt; However, I don&#39;t think this should be necessary build host depende=
ncy.<br>
&gt; QEMU includes the capstone codebase as a git submodule, so everything<=
br>
&gt; that&#39;s needed is there.<br>
&gt;<br>
&gt; Maybe it&#39;s just a matter of tweaking the recipe to set<br>
&gt; CMAKE_INSTALL_PREFIX appropriately so that when the build dives down<b=
r>
&gt; into the capstone directory, this points to the correct prefix?<br>
&gt;<br>
&gt; It looks like the inclusion and use of capstone is new, as of the QEMU=
<br>
&gt; version included with sumo. (i.e. This appears not to be the situation=
<br>
&gt; with the version used in rocko and pyro).<br>
<br>
Least intrusive approach would be to disable it if its not something you<br=
>
depend on.</blockquote><div dir=3D"auto"><br></div></div></div></div></div>=
</div><div><div><div><div><div class=3D"gmail_quote"><div dir=3D"auto">Make=
s sense, thank you.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Two workarounds that worked for me were either adding qemu-native to ASSU=
ME_PROVIDED or appending =E2=80=9C<span style=3D"color:rgb(49,49,49);word-s=
pacing:1px;background-color:rgb(255,255,255)">--disable-capstone=E2=80=9D t=
o qemu=E2=80=99s=C2=A0</span><span style=3D"color:rgb(49,49,49);word-spacin=
g:1px;background-color:rgb(255,255,255)">EXTRA_OECONF.</span></div></div></=
div></div></div></div></blockquote><div dir=3D"auto"><br></div><div dir=3D"=
auto">The fact that not everyone sees this issue makes me think that it mig=
ht be something in your environment that=E2=80=99s triggering this but if w=
e disable it then we make the issue irrelevant=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div><div><div><div><div class=3D"gmail_quote"><div dir=3D"au=
to"><span style=3D"color:rgb(49,49,49);word-spacing:1px;background-color:rg=
b(255,255,255)"></span></div><div dir=3D"auto"><span style=3D"color:rgb(49,=
49,49);word-spacing:1px;background-color:rgb(255,255,255)"><br></span></div=
><div dir=3D"auto"><span style=3D"color:rgb(49,49,49);word-spacing:1px;back=
ground-color:rgb(255,255,255)">I=E2=80=99ll try to follow up with a patch t=
o the recipe in oe-core, unless you suspect that the source of this is mere=
ly something on my end.</span></div><div dir=3D"auto"><br></div></div></div=
>
</div>
</div>
</div>
</blockquote></div></div>

--000000000000897d8d056ea116e7--
