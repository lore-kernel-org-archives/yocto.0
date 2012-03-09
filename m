Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C05DE013A8
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 09:08:15 -0800 (PST)
Received: by pbbjt11 with SMTP id jt11so3256802pbb.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 09:08:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=2P0iT1iEsYwkteKukyUfsAZ1I1Kpmn4cXQJ34h2UeIc=;
	b=Rt7lDR6BFOShfxutE8onsvgtjtNB9ks3OWtLnCKInZBX4ftapPBFWpWdb7X6bcMz3O
	o3yaxT81qEdleyHepTIilidHd5Z8sRitYpguGKypHfoM3iHsgac39F8KlIUYwXa9g+U5
	V+pU1fawo21t9u3B7QbKIGozgQZV2lVcC6PK8+/FosbBtKvecOjyvu/py0FOiOgech9Y
	niAyK4JD1PrdoMh9wqXLFk4PG2foF7+fFSMKz6V+it1LiXnfeoyPyjjypZWCS1z+zTmW
	8VrDihXrXlyJbX3i5eVqZ9eR+llSklNajuXp2+9VBRI9U6PX4xT3kZ5rziJJMkUvLD/7
	DYvw==
MIME-Version: 1.0
Received: by 10.68.241.131 with SMTP id wi3mr5667715pbc.1.1331312894962; Fri,
	09 Mar 2012 09:08:14 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.12.11 with HTTP; Fri, 9 Mar 2012 09:08:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1203091156090.28222@oneiric>
References: <alpine.DEB.2.02.1203090547080.16743@oneiric>
	<CA+gsK-rP0ZFZuaoF5AgcmXuijAzjTjDRS4A-DZ_e2xMd-tVgWA@mail.gmail.com>
	<alpine.DEB.2.02.1203091156090.28222@oneiric>
Date: Fri, 9 Mar 2012 09:08:14 -0800
X-Google-Sender-Auth: U39mJDub4Ubi8DpcvqurUXOh21g
Message-ID: <CA+gsK-oKn1_buQdExdscONe5MZeQXVsvypnvn2by8-OZo9OBnw@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQlWBM86WZdJNj9mcwuMKZel0haLsHReZuEiPrHVjMcAVHp3OiX4gFpN8r4P3GXvQRU2pSLs
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: contradictory explanations of IMAGE_INSTALL in yocto manuals
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
X-List-Received-Date: Fri, 09 Mar 2012 17:08:15 -0000
Content-Type: multipart/alternative; boundary=047d7b3395af306cb304bad270ca

--047d7b3395af306cb304bad270ca
Content-Type: text/plain; charset=ISO-8859-1

I don't think that there is a difference. At least not from my experience.
Every time I have the choice I tried both variants and then examined the
resulting variable e.g.

bitbake <recipe> -e | grep IMAGE_INSTALL

It looked the same. My conclusion is to use += and =+ for variables and
_append and _prepend for tasks. But I could possibly be wrong since there
are definitely many more cases than I have tried. Hence, it would probably
be prudent to dig into Bitbake's code to see how it handles _append and
_prepend. I have not had time to do that.

Rudi

On Fri, Mar 9, 2012 at 8:56 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Fri, 9 Mar 2012, Rudolf Streif wrote:
>
> > I tried the versions _append and += as well as _prepend and =+ with
> > the IMAGE_INSTALL and other variables. So far I have not run into
> > any issues where one would behave differently from the other. The
> > only thing you have to remember with the _append and _prepend
> > versions is that you have to include a space at the beginning for
> > _append and at the end for _prepend. Although I have found that not
> > always to be consistent either. However, an additional space does
> > not hurt.
>
>   well, as i mentioned, the manual suggests quite strongly that there
> is a fundamental difference.  i'd just like to understand clearly what
> that is.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>

--047d7b3395af306cb304bad270ca
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I don&#39;t think that there is a difference. At least not from my experien=
ce. Every time I have the choice I tried both variants and then examined th=
e resulting variable e.g.<div><br></div><div>bitbake &lt;recipe&gt; -e | gr=
ep IMAGE_INSTALL</div>
<div><br></div><div>It looked the same. My conclusion is to use +=3D and =
=3D+ for variables and _append and _prepend for tasks. But I could possibly=
 be wrong since there are definitely many more cases than I have tried. Hen=
ce, it would probably be prudent to dig into Bitbake&#39;s code to see how =
it handles _append and _prepend. I have not had time to do that.</div>
<div><br></div><div>Rudi<br><br><div class=3D"gmail_quote">On Fri, Mar 9, 2=
012 at 8:56 AM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rp=
jday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Fri, 9 Mar 2012, Rudolf Streif w=
rote:<br>
<br>
&gt; I tried the versions _append and +=3D as well as _prepend and =3D+ wit=
h<br>
&gt; the IMAGE_INSTALL and other variables. So far I have not run into<br>
&gt; any issues where one would behave differently from the other. The<br>
&gt; only thing you have to remember with the _append and _prepend<br>
&gt; versions is that you have to include a space at the beginning for<br>
&gt; _append and at the end for _prepend. Although I have found that not<br=
>
&gt; always to be consistent either. However, an additional space does<br>
&gt; not hurt.<br>
<br>
</div></div> =A0well, as i mentioned, the manual suggests quite strongly th=
at there<br>
is a fundamental difference. =A0i&#39;d just like to understand clearly wha=
t<br>
that is.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crashcour=
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
</div></div></blockquote></div><br></div>

--047d7b3395af306cb304bad270ca--
