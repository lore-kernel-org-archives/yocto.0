Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E2FE00AE2
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 08:51:53 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id 10so934812lbg.7
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 08:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=nvBlF58TkKvrln07ZEFSRDRE4rtJhgogIWJkp27HSHk=;
	b=GyI+tMNWDiztBTsjF05WZxfJWRpX9VtiyxaOvnendyUyYnbzZ1XU/S+qcnnym9k9mA
	RuHj7sxmR+J/TRbaLpdoLw+F4h5qrztKPwZZDz2vITV7ZrN5B604JvRzlRakJy9lGLwQ
	rRJtZewePeMAHXkAUSgpunGEwPGmQQIHlXP4up2Q12lR9klFEVWUneV3WCCFSAFDDjRr
	N26QpxVNS9O0/TnTjsacniAcT9wgAUYCRYkjjzO6ekcGfSXVQa17M2FlvQ3JeRqwUUE6
	OuEjz76zDQ5NZmoy+hRBDSpe28G0NC7nxlH+SVKAQWMgbhVIwXHcj805yamsymcHFBiv
	7lXQ==
X-Received: by 10.112.234.167 with SMTP id uf7mr503104lbc.66.1398268312265;
	Wed, 23 Apr 2014 08:51:52 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Wed, 23 Apr 2014 08:51:32 -0700 (PDT)
In-Reply-To: <5357DFF4.2060305@mlbassoc.com>
References: <5357CAF3.1070702@mlbassoc.com>
	<CABcZANmHUB-v=zek8jxLWtUjSEGYZCjqL2q=3a=fUKXiMn4nSw@mail.gmail.com>
	<5357D4BE.6090309@mlbassoc.com>
	<CABcZAN=n__L01vXz2Kup3C=Vej-qCXjzwOhY7HgNnsOq6xdfFw@mail.gmail.com>
	<5357DFF4.2060305@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 23 Apr 2014 08:51:32 -0700
X-Google-Sender-Auth: 8dN31n_f3gkvqtRAsnYGVSjqXEg
Message-ID: <CABcZANm+zczfdsO6D5wt19UBjutQTXGS=ZAj34Scs=OqvUcaYA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How does python-native work?
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
X-List-Received-Date: Wed, 23 Apr 2014 15:51:54 -0000
Content-Type: multipart/alternative; boundary=001a11c3c2280da9ff04f7b7b604

--001a11c3c2280da9ff04f7b7b604
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 23, 2014 at 8:44 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> First, it's a bit worrisome that you're inheriting a class for distutils
>> when your build doesn't actually use distutils.. but beyond that, I don't
>> think the classes inherited by
>> distutils assume you'll be running python-config. Add this:
>>
>>      export BUILD_SYS
>>      export HOST_SYS
>>
>
> I went back to only inheriting pythonnative (I was a bit
> overzealous to follow your 'or a class that inherits it').
>
> I found that I also needed:
>   export STAGING_INCDIR
>   export STAGING_LIBDIR
>
> Perhaps pythonnative should imply those exports, as without
> them, python-config is useless.
>
> Anyway, now the recipe successfully builds the python interface!!


Ah! I knew there was exports needed, but apparently I remembered them
wrong. Sorry about that. Glad you got it going, though. I don't think
pythonnative exporting those would necessarily be appropriate, though. Not
everyone inheriting pythonnative needs to do anything more than run python
itself :) Perhaps we need a new class.. though the class proliferation is
already a bit much.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3c2280da9ff04f7b7b604
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Apr 23, 2014 at 8:44 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D=
"">First, it&#39;s a bit worrisome that you&#39;re inheriting a class for d=
istutils when your build doesn&#39;t actually use distutils.. but beyond th=
at, I don&#39;t think the classes inherited by<br>


distutils assume you&#39;ll be running python-config. Add this:<br>
<br>
=C2=A0 =C2=A0 =C2=A0export BUILD_SYS<br>
=C2=A0 =C2=A0 =C2=A0export HOST_SYS<br>
</div></blockquote>
<br>
I went back to only inheriting pythonnative (I was a bit<br>
overzealous to follow your &#39;or a class that inherits it&#39;).<br>
<br>
I found that I also needed:<br>
=C2=A0 export STAGING_INCDIR<br>
=C2=A0 export STAGING_LIBDIR<br>
<br>
Perhaps pythonnative should imply those exports, as without<br>
them, python-config is useless.<br>
<br>
Anyway, now the recipe successfully builds the python interface!!</blockquo=
te></div><br>Ah! I knew there was exports needed, but apparently I remember=
ed them wrong. Sorry about that. Glad you got it going, though. I don&#39;t=
 think pythonnative exporting those would necessarily be appropriate, thoug=
h. Not everyone inheriting pythonnative needs to do anything more than run =
python itself :) Perhaps we need a new class.. though the class proliferati=
on is already a bit much.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c3c2280da9ff04f7b7b604--
