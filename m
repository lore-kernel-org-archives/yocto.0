Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25179E016A1
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 07:53:00 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id u14so5862085lbd.30
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 07:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=7dAg7Zo8EfDWpliSyUGjrIPHp8eiQUTYrSycCLN5ss4=;
	b=QMQzRuOrGc3w1vX1MvnU1SvFIwnbALikM04kVHPftiyjHxlEqCpoAaP3M+ZkVTRVDL
	8wcpRSG8AG5RmZMB3LdwskKXVwBuQRERkUugQGmXPzFudr8t2H5oM7cdVQSG0zpYo83J
	aAI9rHa4n6llQqh9vUQOYIuJ8zM46HheC4DoobL4XqaIJbehww/zdEOTsZSIeKRjigRQ
	XMM5QTCu0nY1J4/7JeKoooqLGAu7i6mRUPLDGGRYkBDFUFF4HD7PDnn+zIZgOy+gJ79T
	2zh88MGWBjyVHOnLYkE649rGXRiB9vaMYXNsdnKhP87ZLbIb8WlcPgQh3xB7bbZdRGRu
	Ig2w==
X-Received: by 10.152.30.74 with SMTP id q10mr7335790lah.27.1381762379113;
	Mon, 14 Oct 2013 07:52:59 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Mon, 14 Oct 2013 07:52:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1310140635060.11179@oneiric>
References: <alpine.DEB.2.02.1310140635060.11179@oneiric>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 14 Oct 2013 07:52:39 -0700
X-Google-Sender-Auth: 5SAeZ7OUf_CmoTghzIgDgVggQS4
Message-ID: <CABcZANkeyykX+45PdR1+9Gyf6qjG5JKph3royJ622EME8QKs1Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is *anyone* using BBVERSIONS?
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
X-List-Received-Date: Mon, 14 Oct 2013 14:53:01 -0000
Content-Type: multipart/alternative; boundary=089e0158c410c569a604e8b49f57

--089e0158c410c569a604e8b49f57
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 14, 2013 at 3:38 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>   really more of a bitbake question but ... i'm also zipping through
> the inline user manual that comes with bitbake and in section 2.1.20,
> there is a discussion of Variants that includes:
>
> BBVERSIONS = "1.0 2.0 git"
> SRC_URI_git = "git://someurl/somepath.git"
>
> BBVERSIONS = "1.0.[0-6]:1.0.0+ \
>               1.0.[7-9]:1.0.7+"
> SRC_URI_append_1.0.7+ =
> "file://some_patch_which_the_new_versions_need.patch;patch=1"
>
>   i have over a dozen layers checked out, and i don't see the use of
> BBVERSIONS in *any* of them -- the only thing a recursive search turns
> up is BBVERSIONS being mentioned in the docs.
>
>   is this feature active? deprecated? just curious.
>

The idea was we could avoid scattering metadata across many files and
instead handle it the way we do with bbclassextend, but I don't think
anyone ever really used it, except me when I was implementing it :) I'm not
sure if it'll end up deprecated or not, but it wouldn't surprise me given
the lack of use.

If you want to see my testing repository where I was playing with this in
actual recipes, see https://gist.github.com/kergoth/338382 - where I was
working on teaching the system to be able to build every version of nano
that had been released, because I'm crazy like that.
-- 
Christopher Larson

--089e0158c410c569a604e8b49f57
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Oct 14, 2013 at 3:38 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.=
ca</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":ln" style=3D"overflow:hidden">=C2=A0 really mo=
re of a bitbake question but ... i&#39;m also zipping through<br>


the inline user manual that comes with bitbake and in section <span class=
=3D"" tabindex=3D"0"><span class=3D"">2.1.20</span></span>,<br>
there is a discussion of Variants that includes:<br>
<br>
BBVERSIONS =3D &quot;1.0 2.0 git&quot;<br>
SRC_URI_git =3D &quot;git://someurl/somepath.git&quot;<br>
<br>
BBVERSIONS =3D &quot;1.0.[0-6]:1.0.0+ \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 1.0.[7-9]:1.0.7+&quot;<br>
SRC_URI_append_1.0.7+ =3D &quot;file://some_patch_which_the_new_versions_ne=
ed.patch;patch=3D1&quot;<br>
<br>
=C2=A0 i have over a dozen layers checked out, and i don&#39;t see the use =
of<br>
BBVERSIONS in *any* of them -- the only thing a recursive search turns<br>
up is BBVERSIONS being mentioned in the docs.<br>
<br>
=C2=A0 is this feature active? deprecated? just curious.</div></blockquote>=
</div><br>The idea was we could avoid scattering metadata across many files=
 and instead handle it the way we do with bbclassextend, but I don&#39;t th=
ink anyone ever really used it, except me when I was implementing it :) I&#=
39;m not sure if it&#39;ll end up deprecated or not, but it wouldn&#39;t su=
rprise me given the lack of use.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If you want=
 to see my testing repository where I was playing with this in actual recip=
es, see=C2=A0<a href=3D"https://gist.github.com/kergoth/338382">https://gis=
t.github.com/kergoth/338382</a>=C2=A0- where I was working on teaching the =
system to be able to build every version of nano that had been released, be=
cause I&#39;m crazy like that.<br>

-- <br>Christopher Larson</div></div>

--089e0158c410c569a604e8b49f57--
