Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9654DE002AB
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 10:14:20 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id l5so8927359lah.11
	for <yocto@yoctoproject.org>; Mon, 24 Dec 2012 10:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GNOf9FDYYkT8kN8abdSYUA+ipVNh8PHPF06CS/KE/ac=;
	b=NpIOiZrxwtpeF5jUWnZWFWJInTipniAB6BUez7jaSbmRlViK3tkMcdXEP8++YkBSlM
	lEwVwZ6hdTHKcTaJQkQj+cwucbKeNQs1nrc+1FKeTUj0KCOgHi+c4lv7pXIzFjhZRhQp
	/JqaRJ51p5U1qLJJ94Pukp4X1J63r8R3jmzkoaN1A5c3QlFTFDjFMREYxY9e/5SnTkpM
	hP+thZO4eLT9Bm9RuMop8U7+RlnEfYiZLvnKhoy1Yzd32GpQQh2zTSGiRaB1fyDEQGQ7
	GXCSBaxwayraoX18mFrSXvKVv5B2fSG7eIaBbdj5n5uEFv/vde2S1HgCaVIcOqW4lYKD
	lwxw==
MIME-Version: 1.0
Received: by 10.112.87.104 with SMTP id w8mr9106005lbz.49.1356372859064; Mon,
	24 Dec 2012 10:14:19 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Mon, 24 Dec 2012 10:14:18 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212241018290.21944@oneiric>
References: <alpine.DEB.2.02.1212241018290.21944@oneiric>
Date: Mon, 24 Dec 2012 14:14:18 -0400
Message-ID: <CADkTA4PArQKsk60PT-sBzaf-zZpBFL-PCFKfTe8gkx6KefS3ow@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: what's the rationale for kern-tools-native bbappend in poky-extras?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Dec 2012 18:14:21 -0000
Content-Type: multipart/alternative; boundary=bcaec554e0f67290fa04d19d2a73

--bcaec554e0f67290fa04d19d2a73
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 24, 2012 at 12:28 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>  i just noticed, in the poky-extras layer,
> kern-tools-native_git.bbappend, which describes itself as for "local
> kern-tools work".
>
>   is there a use case for this?  oe-core already supplies
> kern-tools-native, and that bbappend appears to simply let the
> developer work with the head of kern-tools rather than a fixed SRCREV.
>
>   so is it just providing the ability to work with the dev source for
> developers who want the bleeding edge?
>

Pretty much, it provides the ability to point at a local git tree, and
turns on
AUTOREV. Something that I always use, and something that anyone else
doing local work could use as well (not that they can't just create their
own
bbappend to do the same thing, but it doesn't hurt to have it sitting
there).

Cheers,

Bruce


>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--bcaec554e0f67290fa04d19d2a73
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Dec 24, 2012 at 12:28 PM, Robert P. J. Day <span dir=3D"ltr=
">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cra=
shcourse.ca</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
=A0i just noticed, in the poky-extras layer,<br>
kern-tools-native_git.bbappend, which describes itself as for &quot;local<b=
r>
kern-tools work&quot;.<br>
<br>
=A0 is there a use case for this? =A0oe-core already supplies<br>
kern-tools-native, and that bbappend appears to simply let the<br>
developer work with the head of kern-tools rather than a fixed SRCREV.<br>
<br>
=A0 so is it just providing the ability to work with the dev source for<br>
developers who want the bleeding edge?<br></blockquote><div><br></div><div =
style>Pretty much, it provides the ability to point at a local git tree, an=
d turns on</div><div style>AUTOREV. Something that I always use, and someth=
ing that anyone else</div>
<div style>doing local work could use as well (not that they can&#39;t just=
 create their own</div><div style>bbappend to do the same thing, but it doe=
sn&#39;t hurt to have it sitting there).</div><div style><br></div><div sty=
le>
Cheers,</div><div style><br></div><div style>Bruce</div><div>=A0</div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Thou s=
halt not follow the NULL pointer, for chaos and madness await thee at its e=
nd&quot;
</div></div>

--bcaec554e0f67290fa04d19d2a73--
