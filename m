Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D752E00A3C; Fri, 24 Jul 2015 12:38:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55B02E00942
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 12:38:02 -0700 (PDT)
Received: by igbij6 with SMTP id ij6so24513035igb.1
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 12:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=QlZa3ZbS40dWA6XFsoJ0mTH8AF8BkH3Mng0HnzIq2wA=;
	b=BhoXOOtI8jw4W1h4NBkufsa7qp1Ru+BvOrxGz/CIXgjWI+SF8zJXoqWmZVMFecauq+
	qMWLvP2cpKtQLC4AMyTdAuhGZIGcd5CNmr6Lxko91LnANhC9uqOKV1P8tnaiGmffYw3G
	hqfZ7AChuEdO61nfHjF3OO68SOvxpeMYHUkvSLLdOqyHiu8mJCDvyu9JP4pNETitec9l
	bneWP1igvnYDyLcLigr/auy6NQvpwipgRRgwrJpA1epvYUb59GOLKgJFfA7VAugTHDeC
	s/I2NEDy2htihurgwaz2ad7XjQroHS/XPG0/lwFIchV58u0s3WjZU1pyQxu4VeFukphe
	OPcQ==
X-Received: by 10.107.47.26 with SMTP id j26mr25781227ioo.17.1437766682140;
	Fri, 24 Jul 2015 12:38:02 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.199 with HTTP; Fri, 24 Jul 2015 12:37:42 -0700 (PDT)
In-Reply-To: <55B27DC9.1090307@mlbassoc.com>
References: <55B27DC9.1090307@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 24 Jul 2015 12:37:42 -0700
X-Google-Sender-Auth: lp6QqICp8Tyq9HTyNEXUJtY17RA
Message-ID: <CABcZANkvNmqOOox1KYzkMNK0nVDscOrDpiaOut5P3hVEHuUqFw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Missing certificates
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
X-List-Received-Date: Fri, 24 Jul 2015 19:38:07 -0000
Content-Type: multipart/alternative; boundary=001a113513b65be48f051ba424ff

--001a113513b65be48f051ba424ff
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 24, 2015 at 11:02 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I was trying to run a simple fetch from python using
>         url =3D '
> https://raw.github.com/Itseez/opencv/master/samples/c/fruits.jpg'
>         filedata =3D urllib2.urlopen(url).read()
>
> This failed:
>   Traceback (most recent call last):
>   File "./edge.py", line 36, in <module>
>     filedata =3D urllib2.urlopen(url).read()
>   File "/usr/lib/python2.7/urllib2.py", line 154, in urlopen
>     return opener.open(url, data, timeout)
>   File "/usr/lib/python2.7/urllib2.py", line 431, in open
>     response =3D self._open(req, data)
>   File "/usr/lib/python2.7/urllib2.py", line 449, in _open
>     '_open', req)
>   File "/usr/lib/python2.7/urllib2.py", line 409, in _call_chain
>     result =3D func(*args)
>   File "/usr/lib/python2.7/urllib2.py", line 1240, in https_open
>     context=3Dself._context)
>   File "/usr/lib/python2.7/urllib2.py", line 1197, in do_open
>     raise URLError(err)
> urllib2.URLError: <urlopen error [SSL: CERTIFICATE_VERIFY_FAILED]
> certificate verify failed (_ssl.c:581)>
>
> I can see that it was looking for some certificates in /usr/lib/ssl/certs
> but that directory is missing.
>
> Anyone know what I might be missing (or have misconfigured)?
>

At least in the past, we=E2=80=99ve been highly inconsistent in certificate=
 store
configuration in various recipes, some pointing at a dir, some a file, and
the paths vary. I don=E2=80=99t know if anyone ever fixed that, however =E2=
=80=94 this is
from memory.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113513b65be48f051ba424ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Jul 24, 2015 at 11:02 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":2pa" class=3D"a3=
s" style=3D"overflow:hidden">I was trying to run a simple fetch from python=
 using<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 url =3D &#39;<a href=3D"https://raw.github.com/=
Itseez/opencv/master/samples/c/fruits.jpg" rel=3D"noreferrer" target=3D"_bl=
ank">https://raw.github.com/Itseez/opencv/master/samples/c/fruits.jpg</a>&#=
39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 filedata =3D urllib2.urlopen(url).read()<br>
<br>
This failed:<br>
=C2=A0 Traceback (most recent call last):<br>
=C2=A0 File &quot;./edge.py&quot;, line 36, in &lt;module&gt;<br>
=C2=A0 =C2=A0 filedata =3D urllib2.urlopen(url).read()<br>
=C2=A0 File &quot;/usr/lib/python2.7/urllib2.py&quot;, line 154, in urlopen=
<br>
=C2=A0 =C2=A0 return opener.open(url, data, timeout)<br>
=C2=A0 File &quot;/usr/lib/python2.7/urllib2.py&quot;, line 431, in open<br=
>
=C2=A0 =C2=A0 response =3D self._open(req, data)<br>
=C2=A0 File &quot;/usr/lib/python2.7/urllib2.py&quot;, line 449, in _open<b=
r>
=C2=A0 =C2=A0 &#39;_open&#39;, req)<br>
=C2=A0 File &quot;/usr/lib/python2.7/urllib2.py&quot;, line 409, in _call_c=
hain<br>
=C2=A0 =C2=A0 result =3D func(*args)<br>
=C2=A0 File &quot;/usr/lib/python2.7/urllib2.py&quot;, line 1240, in https_=
open<br>
=C2=A0 =C2=A0 context=3Dself._context)<br>
=C2=A0 File &quot;/usr/lib/python2.7/urllib2.py&quot;, line 1197, in do_ope=
n<br>
=C2=A0 =C2=A0 raise URLError(err)<br>
urllib2.URLError: &lt;urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certif=
icate verify failed (_ssl.c:581)&gt;<br>
<br>
I can see that it was looking for some certificates in /usr/lib/ssl/certs<b=
r>
but that directory is missing.<br>
<br>
Anyone know what I might be missing (or have misconfigured)?</div></blockqu=
ote></div><br>At least in the past, we=E2=80=99ve been highly inconsistent =
in certificate store configuration in various recipes, some pointing at a d=
ir, some a file, and the paths vary. I don=E2=80=99t know if anyone ever fi=
xed that, however =E2=80=94 this is from memory.<br>-- <br><div class=3D"gm=
ail_signature">Christopher Larson<br>clarson at kergoth dot com<br>Founder =
- BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Softwar=
e Engineer, Mentor Graphics</div>
</div></div>

--001a113513b65be48f051ba424ff--
