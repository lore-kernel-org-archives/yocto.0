Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f51.google.com (mail-oa0-f51.google.com
	[209.85.219.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06C4AE00348
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 10:12:40 -0700 (PDT)
Received: by mail-oa0-f51.google.com with SMTP id i4so6857413oah.38
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 10:12:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0b9yBQGqXYjIiig2R4jXI5DkmkyZ85pOKRt1Ae45LuA=;
	b=W+1KRzHFaPjAYXa+hN+4Ol4T/ZBLMl3US1aknUKqtUX48oH9vQJpR1CCk2T5RLoDjq
	fSWMyuEIZCHZvAbW/X5TXThsMYvThZYocyseQI34y3GzyJ6gOn0aKU9HkaY+Co7Q70pX
	dwZObQMPhuV/P6xzZJY1s7cP0nrTQMLOxv8pextbtdbufhguasUEisE1OkobLgCrwmqo
	n8Fd1AyUKBwWICUMTLKiTZO8bD6mZJyP4WVOdfmIFq2UOrqhS9s6pl4O52P3koj/nZeN
	NOutYPRyiUKIPHR80qAP8QbExZFdqah6ZM/li3J35gSkZaPEmdGWAzeXdPTaPnQ4faT7
	alWQ==
X-Received: by 10.60.144.129 with SMTP id sm1mr2801803oeb.21.1371661959747;
	Wed, 19 Jun 2013 10:12:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Wed, 19 Jun 2013 10:12:19 -0700 (PDT)
In-Reply-To: <968299F3-E07A-4ABD-8C29-1E12ABFABC44@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1BA55B7D@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkWkUiy0omM_fYteVco1r_RQTbJdRpoqURrvrTAbB4ACgA@mail.gmail.com>
	<CA+Z6RkUqGZS7bcrdLHokC8a8ZwuZx1ETF9gRqhm8bvRWZSbXNw@mail.gmail.com>
	<968299F3-E07A-4ABD-8C29-1E12ABFABC44@gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 19 Jun 2013 22:42:19 +0530
Message-ID: <CA+Z6RkUH736Lg76qE4B2HhyeH24wE6=rw22_1F9Pm=W+BFk6Ew@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Qt build error for Debug and Release mode
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
X-List-Received-Date: Wed, 19 Jun 2013 17:12:41 -0000
Content-Type: multipart/alternative; boundary=047d7b339f15dce4b004df84efba

--047d7b339f15dce4b004df84efba
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

It Worked :)
Thanks


On Wed, Jun 19, 2013 at 2:11 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jun 18, 2013, at 9:15 AM, Navani Srivastava <
> navani.srivastava@gmail.com> wrote:
>
> Hi,
>
> I am using poky-danny (Poky-8.0). I am facing problem in building Qt
> application.
>
> When we are building Qt application with =93qmake CONFIG+=3Ddebug && make=
=94 it
> appends =93-g=94 to build the application in debug mode but when we are
> building application in release mode by issuing following command  =93qma=
ke
> CONFIG+=3Drelease && make=94, then also it appends =93-g=94 to it.
>
> So building Qt application in release mode also results in debug mode
> output.
>
>
> While it will be stripped in the end and won't make much difference as fa=
r
> as the packages are concerned it probably coming from
> SELECTED_OPTIMIZATION variable which cmake is using to construct the
> release cflags
>
> You can set DEBUG_FLAGS =3D "" in your local.conf and it will not show up
>
> Any fix for this?
>
> Thanks and Regards
> Navani Kamal Srivastava
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--047d7b339f15dce4b004df84efba
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It Worked :)<br></div>Thanks<br></div><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote">On Wed, Jun 19, 2013 at 2:11=
 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" t=
arget=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><br><div=
><div class=3D"im"><div>On Jun 18, 2013, at 9:15 AM, Navani Srivastava &lt;=
<a href=3D"mailto:navani.srivastava@gmail.com" target=3D"_blank">navani.sri=
vastava@gmail.com</a>&gt; wrote:</div>

<br><blockquote type=3D"cite"><div dir=3D"ltr"><div class=3D"gmail_quote"><=
div><div><p>Hi,</p><p>I am using poky-danny (Poky-8.0). I am facing problem=
 in building Qt application.</p><p>When we are building Qt application with=
 =93qmake CONFIG+=3Ddebug &amp;&amp; make=94 it appends =93-g=94 to build t=
he application in debug mode but when we are building application in releas=
e mode by issuing following command =A0=93qmake CONFIG+=3Drelease &amp;&amp=
; make=94, then also it appends =93-g=94 to it.</p>

<p>So building Qt application in release mode also results in debug mode ou=
tput.</p><div><br></div></div></div></div></div></blockquote><div><br></div=
></div><div>While it will be stripped in the end and won&#39;t make much di=
fference as far as the packages are concerned it probably coming from</div>

<div>SELECTED_OPTIMIZATION variable which cmake is using to construct the r=
elease cflags</div><div><br></div><div>You can set=A0DEBUG_FLAGS =3D &quot;=
&quot; in your local.conf and it will not show up=A0</div><br><blockquote t=
ype=3D"cite">

<div class=3D"im"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div><p>=
Any fix for this?</p><p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
</div></div></div><br></div></div>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>

</blockquote></div><br></div></blockquote></div><br></div>

--047d7b339f15dce4b004df84efba--
