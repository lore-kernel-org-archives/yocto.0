Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A398E00ACA
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 07:40:57 -0700 (PDT)
Received: by mail-lb0-f180.google.com with SMTP id 10so4733868lbg.11
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 07:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=hvK/wfQ+OYIwo4HekhfOYTn4QCSKfJcS8mTCOjhHGVk=;
	b=LaLAl+2pARZWIsC0Bh7A9PgPlFS4tLOMAAhCKCftu6Sh8icVQnDFyUNxc3k1Yoz5YA
	bPel3zaIJXXGkbbFlku4QEQWVy3+WgcnA4MvhcAbE5PbyZVX1AmSmbaxQ1UiF9dKaX6w
	JkE8Q2fXpHD1k1ZHgxrsclGLX44qicAI0hAMmEx+AtXC3UJ2AG4aLYG1l1TOV2JQtfIo
	vZDnmAAw2K9Xlbx0ATFvzyE4/rIoGq8qALvA6KQ/74kMvNGiwdJB8NIpDy/4FeUHhYjn
	Z2KRQg/z05f8Yjbt9hNlq6oCu4zRgV0dPQR4xyaUUWI42V2R5ID2+5r+gzEce5gCRD3z
	rIpw==
X-Received: by 10.112.26.199 with SMTP id n7mr14341124lbg.27.1394462455854;
	Mon, 10 Mar 2014 07:40:55 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.200 with HTTP; Mon, 10 Mar 2014 07:40:34 -0700 (PDT)
In-Reply-To: <791845630.156378.1394452936701.open-xchange@email.1und1.de>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
	<531D9C64.4010806@enea.com>
	<58476941.152432.1394449910667.open-xchange@email.1und1.de>
	<531D9FFA.7060407@enea.com>
	<1342303316.154219.1394451169246.open-xchange@email.1und1.de>
	<531DA573.5000408@dynamicdevices.co.uk>
	<791845630.156378.1394452936701.open-xchange@email.1und1.de>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 10 Mar 2014 07:40:34 -0700
X-Google-Sender-Auth: ISJ6VSCq-tW40jMLN9-dSRhp1dk
Message-ID: <CABcZANm94ynVoidZozpiwtreFthVaAFFG=+nE+pSA-kZaAoH5g@mail.gmail.com>
To: Josef Holzmayr <jholzmayr@the-exact-steps.net>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
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
X-List-Received-Date: Mon, 10 Mar 2014 14:40:58 -0000
Content-Type: multipart/alternative; boundary=001a11337302557c6104f441974f

--001a11337302557c6104f441974f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 10, 2014 at 5:02 AM, Josef Holzmayr <
jholzmayr@the-exact-steps.net> wrote:

> Hello Alex,
>
> > Alex J Lennon <ajlennon@dynamicdevices.co.uk> hat am 10. M=C3=A4rz 2014=
 um
> 12:43
> > geschrieben:
>
> > fwiw I'd have thought myself that string comparison should be string
> > comparison (=3D=3D) as if you use an object identity comparison as a st=
ring
> > comparison (is), you potentially introduce opaque problems when the
> > strings are the same - i.e. same bytes of data - but the objects are no=
t
> > the same for whatever reason.
>
> I've interpreted it roughly the same so far, but they ValueError point
> seems to
> valid to me too (gah, I really know why I usually avoid dynamically typed
> languages!). But the solution for me in this context seems to be then to
> use
> something like:
>
> DUMMYSTRING =3D "foobar"
> def safestringcompare(stra, strb):
>   return type(DUMMYSTRING) =3D=3D type(stra) and type(stra) =3D=3D type(s=
trb) and
> stra
> =3D=3D strb
>

Strings should be compared with =3D=3D, not is. And there's nothing that wi=
ll
explode if you compare against None with =3D=3D. Try it yourself.

>>> "foo" =3D=3D None
False
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11337302557c6104f441974f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Mar 10, 2014 at 5:02 AM, Josef Holzmayr <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:jholzmayr@the-exact-steps.net" target=3D"_blank">jholzmayr@the=
-exact-steps.net</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div id=3D":ij" class=3D"=
" style=3D"overflow:hidden">Hello Alex,<br>
<br>
&gt; Alex J Lennon &lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajl=
ennon@dynamicdevices.co.uk</a>&gt; hat am 10. M=C3=A4rz 2014 um <span tabin=
dex=3D"0" class=3D""><span class=3D"">12:43</span></span><br>
&gt; geschrieben:<br>
<div class=3D""><br>
&gt; fwiw I&#39;d have thought myself that string comparison should be stri=
ng<br>
&gt; comparison (=3D=3D) as if you use an object identity comparison as a s=
tring<br>
&gt; comparison (is), you potentially introduce opaque problems when the<br=
>
&gt; strings are the same - i.e. same bytes of data - but the objects are n=
ot<br>
&gt; the same for whatever reason.<br>
<br>
</div>I&#39;ve interpreted it roughly the same so far, but they ValueError =
point seems to<br>
valid to me too (gah, I really know why I usually avoid dynamically typed<b=
r>
languages!). But the solution for me in this context seems to be then to us=
e<br>
something like:<br>
<br>
DUMMYSTRING =3D &quot;foobar&quot;<br>
def safestringcompare(stra, strb):<br>
=C2=A0 return type(DUMMYSTRING) =3D=3D type(stra) and type(stra) =3D=3D typ=
e(strb) and stra<br>
=3D=3D strb</div></blockquote></div><br></div><div class=3D"gmail_extra">St=
rings should be compared with =3D=3D, not is. And there&#39;s nothing that =
will explode if you compare against None with =3D=3D. Try it yourself.<br><=
br>&gt;&gt;&gt; &quot;foo&quot; =3D=3D None<br>

False<br>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder=
 - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Softwa=
re Engineer, Mentor Graphics
</div></div>

--001a11337302557c6104f441974f--
