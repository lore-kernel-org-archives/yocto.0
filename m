Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53B46E0076A; Wed, 16 Jul 2014 01:43:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D56BE006C4
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:42:59 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id rp18so495004iec.12
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 01:42:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EjjUIzIJ0rDcOgxnuO+I6v5ksS6aAmoUqdn4HGH+v5o=;
	b=pVogFtOcStfaszRzK1jDg/9lNhYQMr/syRUd6eUT+RaI1HOayDd398WaWMNKDBu+OD
	tyouch6ht/QSAaLSSztPppINNnoMvKStS1dAFQWFv+0lepuoyXtp/q9nWfWvvDeUYjfO
	4O+81n37F60Tknm9YJtFL3WzQmD8YaCni8NnsG0X4w+scpZpZQukosWgaX4SrgzmfFfP
	HbH+6Bta/n6x7uV1ac4fTBhfVu296buc5WJNxke5VMZmU0l5HMKZeuvPyY+N3L7vvYRz
	gGJlQvqLCqynUxy7PkEQgxty3TFyUWz2bq8/BWQxip6VARDt4O0OXTm3kNjsLyW2x3Px
	KYZw==
MIME-Version: 1.0
X-Received: by 10.50.23.16 with SMTP id i16mr13865714igf.24.1405500178375;
	Wed, 16 Jul 2014 01:42:58 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 16 Jul 2014 01:42:58 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 16 Jul 2014 01:42:58 -0700 (PDT)
In-Reply-To: <CAMKF1srOe57Ktsw71wgEvUzzL+xdcgXxU5JS3U4-5ozV6XXNkA@mail.gmail.com>
References: <31866b6cf9d84744aff245a947cb80a0@KCHJEXMBX01.kpit.com>
	<CAH21_vEM74a_fFdXUhGuQ_8Jthxa2DyqTwDTwY6mE_9-na_21w@mail.gmail.com>
	<CAMKF1srOe57Ktsw71wgEvUzzL+xdcgXxU5JS3U4-5ozV6XXNkA@mail.gmail.com>
Date: Wed, 16 Jul 2014 14:12:58 +0530
Message-ID: <CAH21_vE+5p+jhmWf6Ai0qrW_jrAKdjVQurcE2E9OCxhGvu6o2w@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: MinGW support for qemux86-64
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
X-List-Received-Date: Wed, 16 Jul 2014 08:43:03 -0000
Content-Type: multipart/alternative; boundary=089e0158a9aadd2afa04fe4b8242

--089e0158a9aadd2afa04fe4b8242
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj,

Thanks for your suggestion.
But still i am not able to build Windows compatible toolchaing using MinGW
support by adding bblayer.conf file with meta-mingw adder as a layer file
in source directory.
Also as per your suggestion i am keeping SDKMACHINE unchanged(i686).
But it's generating toolchain for linux support as a self extractable
script.

Thanks and regards,
Atul
On 15 Jul 2014 23:50, "Khem Raj" <raj.khem@gmail.com> wrote:

>
> On Jul 15, 2014 6:08 AM, "atulkumar singh" <atul.singh008@gmail.com>
> wrote:
> >
> > Hi All,
> >
> > Please let me know what I need to be updated for SDKMACHINE, when I am
> building meta-toolchain with MACHINE as =E2=80=9Cqemux86-64=E2=80=9D in l=
ocal.conf
>
> nothing else unless you want to run sdk on different (64bit) host
> >
> > For qemux86, we are mentioning it as SDKMACHINE ?=3D "i686-mingw32".
> >
> >
> > Thanks and Regards,
> > ATUL KUMAR SINGH
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e0158a9aadd2afa04fe4b8242
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Khem Raj,</p>
<p>Thanks for your suggestion.<br>
But still i am not able to build Windows compatible toolchaing using MinGW =
support by adding bblayer.conf file with meta-mingw adder as a layer file i=
n source directory.<br>
Also as per your suggestion i am keeping SDKMACHINE unchanged(i686).<br>
But it&#39;s generating toolchain for linux support as a self extractable s=
cript.</p>
<p>Thanks and regards,<br>
Atul</p>
<div class=3D"gmail_quote">On 15 Jul 2014 23:50, &quot;Khem Raj&quot; &lt;<=
a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br t=
ype=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<p dir=3D"ltr"><br>
On Jul 15, 2014 6:08 AM, &quot;atulkumar singh&quot; &lt;<a href=3D"mailto:=
atul.singh008@gmail.com" target=3D"_blank">atul.singh008@gmail.com</a>&gt; =
wrote:<br>
&gt;<br>
&gt; Hi All,<br>
&gt;<br>
&gt; Please let me know what I need to be updated for SDKMACHINE, when I am=
 building meta-toolchain with MACHINE as =E2=80=9Cqemux86-64=E2=80=9D in lo=
cal.conf</p>
<p dir=3D"ltr">nothing else unless you want to run sdk on different (64bit)=
 host<br>
&gt;<br>
&gt; For qemux86, we are mentioning it as SDKMACHINE ?=3D &quot;i686-mingw3=
2&quot;.<br>
&gt;<br>
&gt; =C2=A0<br>
&gt; Thanks and Regards,<br>
&gt; ATUL KUMAR SINGH<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>
</blockquote></div>

--089e0158a9aadd2afa04fe4b8242--
